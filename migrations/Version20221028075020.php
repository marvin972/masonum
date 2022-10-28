<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20221028075020 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE contact (id INT AUTO_INCREMENT NOT NULL, full_name VARCHAR(50) DEFAULT NULL, email VARCHAR(180) NOT NULL, subject VARCHAR(100) DEFAULT NULL, message LONGTEXT NOT NULL, created_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\', PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE astuces DROP FOREIGN KEY FK_BFDD3168A76ED396');
        $this->addSql('ALTER TABLE astuces CHANGE title title VARCHAR(50) NOT NULL, CHANGE content content VARCHAR(10000) NOT NULL, CHANGE auteur auteur VARCHAR(50) NOT NULL');
        $this->addSql('DROP INDEX fk_bfdd3168a76ed396 ON astuces');
        $this->addSql('CREATE INDEX IDX_F6BF3BFCA76ED395 ON astuces (user_id)');
        $this->addSql('ALTER TABLE astuces ADD CONSTRAINT FK_BFDD3168A76ED396 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE user CHANGE roles roles LONGTEXT NOT NULL COMMENT \'(DC2Type:json)\'');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE contact');
        $this->addSql('ALTER TABLE astuces DROP FOREIGN KEY FK_F6BF3BFCA76ED395');
        $this->addSql('ALTER TABLE astuces CHANGE title title VARCHAR(50) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE content content VARCHAR(10000) NOT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE auteur auteur VARCHAR(50) NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('DROP INDEX idx_f6bf3bfca76ed395 ON astuces');
        $this->addSql('CREATE INDEX FK_BFDD3168A76ED396 ON astuces (user_id)');
        $this->addSql('ALTER TABLE astuces ADD CONSTRAINT FK_F6BF3BFCA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE user CHANGE roles roles LONGTEXT NOT NULL COLLATE `utf8mb4_bin`');
    }
}
