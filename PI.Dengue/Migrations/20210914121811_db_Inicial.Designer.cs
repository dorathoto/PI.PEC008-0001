﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using PI.Dengue;

namespace PI.Dengue.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20210914121811_db_Inicial")]
    partial class db_Inicial
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.9")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("PI.Dengue.Models.FocoDengue", b =>
                {
                    b.Property<Guid>("FocoDengueId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("DataCadastro")
                        .HasColumnType("datetime2");

                    b.Property<double>("Latitude")
                        .HasColumnType("float");

                    b.Property<double>("Longitute")
                        .HasColumnType("float");

                    b.HasKey("FocoDengueId");

                    b.ToTable("FocosDengue");
                });
#pragma warning restore 612, 618
        }
    }
}
