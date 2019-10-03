#Consultas SQL Chamados CE - Inacabado

select `T`.`chamado` AS `CHAMADO`,`C`.`name` AS `CATEGORIA`,`L`.`name` AS `LOCALIZACAO`,`T`.`Data_Referencia` AS `DATA_REFERENCIA`,`T`.`Ano_Data_Referencia` AS `ano_data_referencia`,`T`.`Mes_Data_Referencia` AS `mes_data_referencia`,`T`.`Dia_Data_Referencia` AS `dia_data_referencia`,`T`.`Meskey_Data_Referencia` AS `meskey_data_referencia`,`T`.`Status` AS `status`,`T`.`qtde` AS `qtde`,`T`.`qtde_aberto` AS `qtde_aberto`,`T`.`qtde_fechado` AS `qtde_fechado` from (((`GLPI_VW_CHAMADOS` `T` left join `glpi_itilcategories` `CI` on((`T`.`itilcategories_id` = `CI`.`id`))) left join `GLPI_VW_ITILCATEGORIES` `C` on((`CI`.`itilcategories_id` = `C`.`id`))) left join `glpi_locations` `L` on((`T`.`locations_id` = `L`.`id`))) where ((`T`.`DELETADO` = 'NAO') and (`C`.`name` in ('SAP - Ativo (FI-AA)','SAP - Bancos (FI-BL)','SAP - Compras E Estoque (MM)','SAP - Contabilidade (Fi-Gl)','SAP - Contas À Pagar (FI-AP)','SAP - Contas À Receber (FI-AR)','SAP - Controladoria (CO)','SAP - Fiscal (TDF)','SAP - Fluxo de Caixa (Cm)','SAP - Manutenção (Pm)','SAP - Vendas (Sd)','SAP - Viagens (Fi-Tv)','SAP PO','SAP HANA')) and (isnull(`L`.`name`) or (`L`.`name` in ('Desenvolvimento','Duvida','Incidente','Melhoria','Pós - Implantação'))));
select * from glpi_tickets where itilcategories_id in ('SAP - Ativo (FI-AA)','SAP - Bancos (FI-BL)','SAP - Compras E Estoque (MM)','SAP - Contabilidade (Fi-Gl)','SAP - Contas À Pagar (FI-AP)','SAP - Contas À Receber (FI-AR)','SAP - Controladoria (CO)','SAP - Fiscal (TDF)','SAP - Fluxo de Caixa (Cm)','SAP - Manutenção (Pm)','SAP - Vendas (Sd)','SAP - Viagens (Fi-Tv)','SAP PO','SAP HANA');
#fazer de para dos nomes ITIL_CATEGORIES para ID_CATEGORIES e repetir a busca

SELECT glpi.glpi_itilcategories.name, glpi.glpi_itilcategories.completename, glpi.glpi_itilcategories.itilcategories_id FROM glpi.glpi_itilcategories 
where glpi.glpi_itilcategories.completename like '%SAP - Ativo (FI-AA)%'
or glpi.glpi_itilcategories.completename like '%SAP - Bancos (FI-BL)%'
or glpi.glpi_itilcategories.completename like '%SAP - Compras E Estoque (MM)%'
or glpi.glpi_itilcategories.completename like '%SAP - Contabilidade (Fi-Gl)%'
or glpi.glpi_itilcategories.completename like '%SAP - Contas À Pagar (FI-AP)%'
or glpi.glpi_itilcategories.completename like '%SAP - Contas À Receber (FI-AR)%'
or glpi.glpi_itilcategories.completename like '%SAP - Controladoria (CO)%'
or glpi.glpi_itilcategories.completename like '%SAP - Fiscal (TDF)%'
or glpi.glpi_itilcategories.completename like '%SAP - Fluxo de Caixa (Cm)%'
or glpi.glpi_itilcategories.completename like '%SAP - Manutenção (Pm)%'
or glpi.glpi_itilcategories.completename like '%SAP - Vendas (Sd)%'
or glpi.glpi_itilcategories.completename like '%SAP - Viagens (Fi-Tv)%'
or glpi.glpi_itilcategories.completename like '%SAP PO%'
or glpi.glpi_itilcategories.completename like '%SAP HANA%'
or glpi.glpi_itilcategories.completename like '%SAP - Controladoria (CO) C.E%'
or glpi.glpi_itilcategories.completename like '%SAP ABAP%';



SELECT * FROM glpi_tickets
where itilcategories_id in (1, 436, 437, 441, 446, 453, 455,458,461,466,468,476,493,513,5754,5758,5767,5784,5787,5792,5799,5803,5813,5815,5823,5838,6082);
