Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BFA1714BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mq5oDkijaBn7FyG5mm27CtoYyBQ8DfzvEzMF2kg0da4=; b=WFv2Y9S6sU9ECa
	wOvzEwd03xrqw815nCci3iWZo8frVp3dF7ibaIkvttsMPaDfX8pqgZrvbqhc0JJzjLfHMZ+T+amXP
	v0wdfMF5Vl4pATQ4VH9zPx5sb6PFbzWU0VsaszQWvcNv/HTgxSHSA3P/437EshWL0/D8EIKvvHJnm
	GCbdS0bHJ5CuqtYuZ0YSAaINe/o5nR6V7/IrmAT5su+J25NhQQMYRnknlFbcrH0deAXFbmccxFCMa
	c1WegH74aefTb9Ifx8J+xLGWqv0ymjqw5HNzsYSDY8QuWOEO9AUAM0xDXxAEmq03CKTsOk1xfVZcj
	Mgu+x9JyLEMlNjWN3Z8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7G4D-00060b-H7; Thu, 27 Feb 2020 10:06:53 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7G3O-0005JK-Rg
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:06:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vkl6OZDp8PHimQWXU64A5kdKKfZY/Ry1mIPM+Y3JqbpRrFMT6EgnMk0Ki6CDKyuuJMH0/U7qN2tC3l3NN/mQ+0I+PuLQ0i/qjntSBsgD1F37atWbk242A/WQfUfVpCFvZD2RH68msZFxD3Iku78QQquiaMVxOHapDnN0szOxoJX2XIj561lCTp/X4SEHBoInn6ajlGCq+wMjFLDYD34DV3J8q62l/FkG+lwq+BK2QXpsRq/lOBo6Ttt04KMeyQYvm/xwEFYU/xlUJvfRCbUGse2+1W7hsYm2HmSbd/pPHLffQjty9r89W3lex2Y8gaoLGpuMof+1J8HsvCDmvopqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JlPpWvGSJKm+y2zafLgmgMSbC8j48W3H7kIf2uNvbg=;
 b=WC1CgKMSafL4/yZwy/Fu/31+/nsRJYQ8y/Nvs6yDk2/YNoeG0q1qoc495tbk6ByUAH+k3+sdThBL7myAW+eOd+lYNaJ0qFdwHQyIArwyD1yrX0O4BsA4nZXlu4myQQ4GqIrG0klW4G3LsramE9dEkqdeOhZ0Xq/qf5ccgF0pea4TpxxkV6HxcdlDenRCuwMKhNvXhxcdMf1JZgDsNbe3ip87GTo/SDq2polMBOroITa+dS2h137+EkWtUMHSO2XB1bC5zDc9pwBt+d6zHmgRbru2Cf/bZDPJRgHwiUCryhmmnrOB5GBV0X86Ovp4dEoZ/zt/AtQvEP9kOOJWdtJSlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JlPpWvGSJKm+y2zafLgmgMSbC8j48W3H7kIf2uNvbg=;
 b=J8TvloSd+IJ/iFJunghIJg1H93QUfWfD/dXfgAinrsbuOxIU7YuvhXPCDsmtfJ6YyZWowILEX6vMmZ2V+s0Oal+MjxyYWXqfsKvR8dc7UB7qm6dpwwyGQGhDjexbV2RgS+fzwhll0dACrOWZwAoNYaH5JNaAmfnCq8qt93hNomM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com (20.179.0.89) by
 AM6PR04MB4312.eurprd04.prod.outlook.com (52.135.165.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Thu, 27 Feb 2020 10:05:55 +0000
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e]) by AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e%6]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 10:05:55 +0000
From: laurentiu.tudor@nxp.com
To: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Subject: [RFC PATCH 3/4] bus: fsl-mc: Add ACPI support for fsl-mc
Date: Thu, 27 Feb 2020 12:05:41 +0200
Message-Id: <20200227100542.13819-3-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM6P192CA0056.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:82::33) To AM6PR04MB5878.eurprd04.prod.outlook.com
 (2603:10a6:20b:a2::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM6P192CA0056.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Thu, 27 Feb 2020 10:05:54 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 52c69214-5e67-488d-066d-08d7bb6ca27d
X-MS-TrafficTypeDiagnostic: AM6PR04MB4312:|AM6PR04MB4312:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4312DBF31505FF170B965B6AECEB0@AM6PR04MB4312.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:174;
X-Forefront-PRVS: 03264AEA72
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(66476007)(1076003)(66946007)(966005)(478600001)(52116002)(6486002)(5660300002)(66556008)(4326008)(7416002)(6666004)(2906002)(8936002)(6506007)(16526019)(86362001)(26005)(9686003)(36756003)(8676002)(186003)(6512007)(316002)(2616005)(81156014)(81166006)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4312;
 H:AM6PR04MB5878.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9K6lZUmNYGHqCAMq55suFymLQl1hBQYxuYCxwLmv9p2AOb2AVlHKd5eODgc+5nar7PnlANjUB2xrPOQ7dlAlCv5W3xe2XjjqCXvK+qJinbvmgnJfkZrS27Vyflql7z+bxfUuf0FLFeCOKG8fUUcVxhPgMoKhLiKktpRN/eFMEXq4Lt0p+jD4eRQAd/D2EcZ0JRGBmdRnonxOWkGcMAFvu7TmeBsH2TdyMXT/VgIT/jQhmoVN348VTKvUmHcBlhuHTE1qBEaUm5I7emMf3wzB5y94H9gUMn+4VopwFmBbN2XSVC9ssm1iAyWD7+IH0XtuoGuAKYZGbWbsQPIploEXEaFKz2OXAudq7woLdO1rpe02CWzrmnic4xfrVRUIOgiC8sq3FRbBgPBgAEgYVo8lffT8gHyrD9ZDUsRLAuCzrryBq7AntsEdV/4PQbniguzeN2jaNU+8L0kmw8w9aWiigPKh5RPJbFAZx25ACSJi2ce7e8rw14tWkEfUQLoOAKu5amDj5jzOLSd/jgvGj98Hxw==
X-MS-Exchange-AntiSpam-MessageData: hhEbMpgq7VzKkU+Ykh7ZlrZBlLQLWcA7B30z1TL7ax7P/N5Ps/EN3g223dz4OmylRLrpCP9NjLTTaVvbPwu1XAKajLLbyRCyt6Pj1Y/cN1Gept+GZrirJGtT4NJ0DUAEzvqLtNwDxjwTUNoigt5+lQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c69214-5e67-488d-066d-08d7bb6ca27d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2020 10:05:55.5348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xdooB2rF1vlY7tHPxXwSK/vo5+F7ly3hR6YG7mczvk1OS2O5abWZ/EsmL1O+SFPOsoViOG4zN8lLZRPIoJpMLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_020602_904962_C1BDC8BD 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: lorenzo.pieralisi@arm.com, calvin.johnson@nxp.com,
 ard.biesheuvel@linaro.org, maz@kernel.org, pankaj.bansal@nxp.com,
 diana.craciun@oss.nxp.com, jon@solid-run.com, jeremy.linton@arm.com,
 makarand.pawagi@nxp.com, cristian.sovaiala@nxp.com, V.Sethi@nxp.com,
 ioana.ciornei@nxp.com, tglx@linutronix.de, robin.murphy@arm.com,
 joro@8bytes.org, jason@lakedaemon.net, Stuart.Yoder@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Makarand Pawagi <makarand.pawagi@nxp.com>

ACPI support is added in the fsl-mc driver. Driver will parse
MC DSDT table to extract memory and other resorces.

Interrupt (GIC ITS) information will be extracted from MADT table
by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.

IORT table will be parsed to configure DMA.

Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
---
Previous attempt, here: https://patchwork.kernel.org/patch/11353735/

 drivers/bus/fsl-mc/fsl-mc-bus.c             | 35 ++++++-----
 drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 69 ++++++++++++++++++++-
 2 files changed, 87 insertions(+), 17 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index eafaa0e0b906..c4742a9c0714 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -941,7 +941,7 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 	phys_addr_t mc_portal_phys_addr;
 	u32 mc_portal_size;
 	struct mc_version mc_version;
-	struct resource res;
+	struct resource *plat_res;
 
 	/*
 	 * The MC firmware requires full access to the whole address space plus
@@ -967,16 +967,9 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 	/*
 	 * Get physical address of MC portal for the root DPRC:
 	 */
-	error = of_address_to_resource(pdev->dev.of_node, 0, &res);
-	if (error < 0) {
-		dev_err(&pdev->dev,
-			"of_address_to_resource() failed for %pOF\n",
-			pdev->dev.of_node);
-		return error;
-	}
-
-	mc_portal_phys_addr = res.start;
-	mc_portal_size = resource_size(&res);
+	plat_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	mc_portal_phys_addr = plat_res->start;
+	mc_portal_size = resource_size(plat_res);
 	error = fsl_create_mc_io(&pdev->dev, mc_portal_phys_addr,
 				 mc_portal_size, NULL,
 				 FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, &mc_io);
@@ -993,11 +986,13 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "MC firmware version: %u.%u.%u\n",
 		 mc_version.major, mc_version.minor, mc_version.revision);
 
-	error = get_mc_addr_translation_ranges(&pdev->dev,
-					       &mc->translation_ranges,
-					       &mc->num_translation_ranges);
-	if (error < 0)
-		goto error_cleanup_mc_io;
+	if (dev_of_node(&pdev->dev)) {
+		error = get_mc_addr_translation_ranges(&pdev->dev,
+						&mc->translation_ranges,
+						&mc->num_translation_ranges);
+		if (error < 0)
+			goto error_cleanup_mc_io;
+	}
 
 	error = dprc_get_container_id(mc_io, 0, &container_id);
 	if (error < 0) {
@@ -1024,6 +1019,7 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 		goto error_cleanup_mc_io;
 
 	mc->root_mc_bus_dev = mc_bus_dev;
+	mc_bus_dev->dev.fwnode = pdev->dev.fwnode;
 	return 0;
 
 error_cleanup_mc_io:
@@ -1064,11 +1060,18 @@ static const struct of_device_id fsl_mc_bus_match_table[] = {
 
 MODULE_DEVICE_TABLE(of, fsl_mc_bus_match_table);
 
+static const struct acpi_device_id fsl_mc_bus_acpi_match_table[] = {
+	{"NXP0008", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(acpi, fsl_mc_bus_acpi_match_table);
+
 static struct platform_driver fsl_mc_bus_driver = {
 	.driver = {
 		   .name = "fsl_mc_bus",
 		   .pm = NULL,
 		   .of_match_table = fsl_mc_bus_match_table,
+		   .acpi_match_table = fsl_mc_bus_acpi_match_table,
 		   },
 	.probe = fsl_mc_bus_probe,
 	.remove = fsl_mc_bus_remove,
diff --git a/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c b/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
index 606efa64adff..6d67834722c9 100644
--- a/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
+++ b/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
@@ -4,9 +4,11 @@
  *
  * Copyright (C) 2015-2016 Freescale Semiconductor, Inc.
  * Author: German Rivera <German.Rivera@freescale.com>
+ * Copyright 2020 NXP
  *
  */
 
+#include <linux/acpi_iort.h>
 #include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/irq.h>
@@ -66,7 +68,65 @@ static const struct of_device_id its_device_id[] = {
 	{},
 };
 
-static int __init its_fsl_mc_msi_init(void)
+static int __init its_fsl_mc_msi_init_one(struct fwnode_handle *handle,
+					  const char *name)
+{
+	struct irq_domain *parent;
+	struct irq_domain *mc_msi_domain;
+
+	parent = irq_find_matching_fwnode(handle, DOMAIN_BUS_NEXUS);
+	if (!parent || !msi_get_domain_info(parent)) {
+		pr_err("%s: Unable to locate ITS domain\n", name);
+		return -ENXIO;
+	}
+
+	mc_msi_domain = fsl_mc_msi_create_irq_domain(handle,
+						     &its_fsl_mc_msi_domain_info,
+						     parent);
+	if (!mc_msi_domain)
+		pr_err("ACPIF: unable to create fsl-mc domain\n");
+
+	pr_info("fsl-mc MSI: domain created\n");
+
+	return 0;
+}
+
+static int __init
+its_fsl_mc_msi_parse_madt(union acpi_subtable_headers *header,
+			  const unsigned long end)
+{
+	struct acpi_madt_generic_translator *its_entry;
+	struct fwnode_handle *dom_handle;
+	const char *node_name;
+	int err = -ENXIO;
+
+	its_entry = (struct acpi_madt_generic_translator *)header;
+	node_name = kasprintf(GFP_KERNEL, "ITS@0x%lx",
+			      (long)its_entry->base_address);
+
+	dom_handle = iort_find_domain_token(its_entry->translation_id);
+	if (!dom_handle) {
+		pr_err("%s: Unable to locate ITS domain handle\n", node_name);
+		goto out;
+	}
+
+	err = its_fsl_mc_msi_init_one(dom_handle, node_name);
+	if (!err)
+		pr_info("fsl-mc MSI: %s domain created\n", node_name);
+
+out:
+	kfree(node_name);
+	return err;
+}
+
+static int __init its_fsl_mc_acpi_msi_init(void)
+{
+	acpi_table_parse_madt(ACPI_MADT_TYPE_GENERIC_TRANSLATOR,
+			      its_fsl_mc_msi_parse_madt, 0);
+	return 0;
+}
+
+static int __init its_fsl_mc_of_msi_init(void)
 {
 	struct device_node *np;
 	struct irq_domain *parent;
@@ -100,4 +160,11 @@ static int __init its_fsl_mc_msi_init(void)
 	return 0;
 }
 
+static int __init its_fsl_mc_msi_init(void)
+{
+	its_fsl_mc_of_msi_init();
+	its_fsl_mc_acpi_msi_init();
+
+	return 0;
+}
 early_initcall(its_fsl_mc_msi_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
