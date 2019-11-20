Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B1103263
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 05:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYGQNfotHE2pONZ1+Moq7OjazDKEme2k6GnuCx5Hymc=; b=UKapyOuMD18BMq
	8oJhqLZcPole4ChOX0uR+aB5MNwvXelXjmPZBzVv1A5EqyJHBoEymeggotll5j5HkxLNq+x3x+DIT
	Y2G00B70EvkTC8jNKIO/sRLEMRJ8Pnzg6Mou+uoR9SQri8B0ippfBc20s6nYNcGJgY9kn/hF9s8/j
	+XF91zPWWWhskxlxYmUVeBJ38qrZf08HUg8NHAdBtvLa8Bzmy+L4MPbntLs72yRhEWHrhxQH4M7rL
	3/syH82czHJJBcUKI9RMViy5Nq7Q/goE0s+YobC4MBHADJFToaWvJ4Wi9vG5H12IPmMKRKYa7+yh5
	E2OOPqWuwdWgYwZvoKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXHAH-00071D-VX; Wed, 20 Nov 2019 04:00:25 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXHA6-0006aj-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 04:00:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SiuW22Dmj2dqaQ6tr9aX6ypsRE9XsPkPA7nF5DZkTuEfAtszqP1tQVbppxsdWMnAl6GwFZimK83Utwdyd69Rl/CxOkb5sTEE7xCEueAxvgQVYZr8t+2YAlRDEVm4iXjthrwV8rriVdIajx5u0a571+qMokoOsVJnqjDyd+cZd59hjYW1F5ey4ubU+VoUXzMIXzuffdgI/DOBet8welTqpee5926ofMbyc6bjSXJnOXHdfYgDsRkeGELF5lvuviMOumX1dbClXR0EhxDlwOIgLaT5qLF1ImBkbOgG2UDLp3+u4E7ge5jhSyyWHk3TSD2GLN0OEigAXhBFREKR5DrHMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhRdvfp/buVxJcqzu5df9l8rFPWtluuhwF82UHEkgb4=;
 b=eaDR8sZbk0idkxWVuw67d5yJgjheWxrNKC84ql4gPy3P3SxWtdolvJAfAE8ewcdlO9v+TAJOfiAh9vHLYSpVieRWLOO8MwTqIwMq4i7mDS9kBbtfmGFvIQ5r12j+5ojpAs3oJNWs0PfRYFWS3uBNUn+vZFmPGxfUpWYkvGdtg4FErU50xmz0GfvpI/YWYbQqwDgqRZH17BjQChMrj6rljpzeqUHzit3bWixpNgNkP4lGQqAc7V/tKEOHXlAkzdO41AcTwJq37ZmUaeunxgeqCQTXIT25hj9AmmLTSWv0zQgYbpBxt9wDK3/nVVOdRiddBOPorkH0r9E/JXVMwd/1+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhRdvfp/buVxJcqzu5df9l8rFPWtluuhwF82UHEkgb4=;
 b=cvq8rJ9XQmeqJUnUEjy9qoJ5dGzLYx8Tiar0NQKdy4ZpB9stv2jS3hqT6KYtsuJwINY+1H5kZ7CRNbjbqEV+8dyUKdcqD/ha3JT9lbVjX88euhni5M9PGq5z/nPvuSlMsowjjnzo/alyQ6BwtIwLpY9U6gcFFPRfIun5BjpKzhY=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:45:24 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:45:23 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>
Subject: [PATCHv9 01/12] PCI: mobiveil: Re-abstract the private structure
Thread-Topic: [PATCHv9 01/12] PCI: mobiveil: Re-abstract the private structure
Thread-Index: AQHVn1TwFR8APo0fq0uUrHwI6ZwoQQ==
Date: Wed, 20 Nov 2019 03:45:23 +0000
Message-ID: <20191120034451.30102-2-Zhiqiang.Hou@nxp.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c143fa4-1a4b-4721-b3fa-08d76d6c12c1
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5657173DB3C7095047FDE812844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(14444005)(30864003)(5024004)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(11346002)(446003)(76176011)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OWPjMoEY9MtEkcyCoHxZPaptCKJUVBnX9xXTSLDjygQ7zWrj7hffG1UrF4Kwft2vAP09tanaMc/4gwv2/a6hKKHWniiiuHc1ucM0j95MVvsBHyRNkAtLJP/3hzkF2Uo6m3CYigmq0IS1OFPMhy58pBIUmBj+3jfDUXNYcx2f8txjA/JlAempdJ6WWdoYwj5t0uxj02+nt3WCnWxIg0fkxrH37v7JEKZd6d/eEzb1SC2jYlgKfwFoDQcKXBReCd9U3P2Blw9G9x1RbzijUsLept+2Iv/Zfxj+0uPQFWUBpSsMxPrJpxuP5Oku75LNqhfxzIEe4KYg9HvXlZZTDr2iUYbS6sAd4eZmept+4EBRxK1IZg0DMq93Nt0c4bUWaTZ+DjuEwcJcxN2xYlT/EiIRgyTCZfnmI7g2fJbhEN81JfNP2+T/eWeJaLgfMwRejFS1
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c143fa4-1a4b-4721-b3fa-08d76d6c12c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:45:23.8742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BfVDUzk6Jnb0AZ1MWPJmfvBnr0vffKANfggYhw23fAEZzc5aFUtn+wjrA+GAPD+EMKV8pF6LqLoyRjKz8qMPlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_200015_149225_CBEDB7A5 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

The Mobiveil PCIe controller can work in either Root Complex
mode or Endpoint mode. So introduce a new structure root_port,
and abstract the RC related members into it.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V9:
 - New patch splited from the #1 of V8 patches to make it easy to review.

 drivers/pci/controller/pcie-mobiveil.c | 99 ++++++++++++++++----------
 1 file changed, 60 insertions(+), 39 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 3a696ca45bfa..5fd26e376af2 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -3,7 +3,10 @@
  * PCIe host controller driver for Mobiveil PCIe Host controller
  *
  * Copyright (c) 2018 Mobiveil Inc.
+ * Copyright 2019 NXP
+ *
  * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
+ * Recode: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
  */
 
 #include <linux/delay.h>
@@ -138,22 +141,27 @@ struct mobiveil_msi {			/* MSI information */
 	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
 };
 
+struct root_port {
+	char root_bus_nr;
+	void __iomem *config_axi_slave_base;	/* endpoint config base */
+	struct resource *ob_io_res;
+	int irq;
+	raw_spinlock_t intx_mask_lock;
+	struct irq_domain *intx_domain;
+	struct mobiveil_msi msi;
+	struct pci_host_bridge *bridge;
+};
+
 struct mobiveil_pcie {
 	struct platform_device *pdev;
-	void __iomem *config_axi_slave_base;	/* endpoint config base */
 	void __iomem *csr_axi_slave_base;	/* root port config base */
 	void __iomem *apb_csr_base;	/* MSI register base */
 	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
-	struct irq_domain *intx_domain;
-	raw_spinlock_t intx_mask_lock;
-	int irq;
 	int apio_wins;
 	int ppio_wins;
 	int ob_wins_configured;		/* configured outbound windows */
 	int ib_wins_configured;		/* configured inbound windows */
-	struct resource *ob_io_res;
-	char root_bus_nr;
-	struct mobiveil_msi msi;
+	struct root_port rp;
 };
 
 /*
@@ -281,16 +289,17 @@ static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
 static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
 {
 	struct mobiveil_pcie *pcie = bus->sysdata;
+	struct root_port *rp = &pcie->rp;
 
 	/* Only one device down on each root port */
-	if ((bus->number == pcie->root_bus_nr) && (devfn > 0))
+	if ((bus->number == rp->root_bus_nr) && (devfn > 0))
 		return false;
 
 	/*
 	 * Do not read more than one device on the bus directly
 	 * attached to RC
 	 */
-	if ((bus->primary == pcie->root_bus_nr) && (PCI_SLOT(devfn) > 0))
+	if ((bus->primary == rp->root_bus_nr) && (PCI_SLOT(devfn) > 0))
 		return false;
 
 	return true;
@@ -304,13 +313,14 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
 					   unsigned int devfn, int where)
 {
 	struct mobiveil_pcie *pcie = bus->sysdata;
+	struct root_port *rp = &pcie->rp;
 	u32 value;
 
 	if (!mobiveil_pcie_valid_device(bus, devfn))
 		return NULL;
 
 	/* RC config access */
-	if (bus->number == pcie->root_bus_nr)
+	if (bus->number == rp->root_bus_nr)
 		return pcie->csr_axi_slave_base + where;
 
 	/*
@@ -325,7 +335,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
 
 	mobiveil_csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
 
-	return pcie->config_axi_slave_base + where;
+	return rp->config_axi_slave_base + where;
 }
 
 static struct pci_ops mobiveil_pcie_ops = {
@@ -339,7 +349,8 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct mobiveil_pcie *pcie = irq_desc_get_handler_data(desc);
 	struct device *dev = &pcie->pdev->dev;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct root_port *rp = &pcie->rp;
+	struct mobiveil_msi *msi = &rp->msi;
 	u32 msi_data, msi_addr_lo, msi_addr_hi;
 	u32 intr_status, msi_status;
 	unsigned long shifted_status;
@@ -365,7 +376,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 		shifted_status >>= PAB_INTX_START;
 		do {
 			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
-				virq = irq_find_mapping(pcie->intx_domain,
+				virq = irq_find_mapping(rp->intx_domain,
 							bit + 1);
 				if (virq)
 					generic_handle_irq(virq);
@@ -424,15 +435,16 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	struct device *dev = &pcie->pdev->dev;
 	struct platform_device *pdev = pcie->pdev;
 	struct device_node *node = dev->of_node;
+	struct root_port *rp = &pcie->rp;
 	struct resource *res;
 
 	/* map config resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
 					   "config_axi_slave");
-	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
-	if (IS_ERR(pcie->config_axi_slave_base))
-		return PTR_ERR(pcie->config_axi_slave_base);
-	pcie->ob_io_res = res;
+	rp->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(rp->config_axi_slave_base))
+		return PTR_ERR(rp->config_axi_slave_base);
+	rp->ob_io_res = res;
 
 	/* map csr resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
@@ -455,9 +467,9 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
 		pcie->ppio_wins = MAX_PIO_WINDOWS;
 
-	pcie->irq = platform_get_irq(pdev, 0);
-	if (pcie->irq <= 0) {
-		dev_err(dev, "failed to map IRQ: %d\n", pcie->irq);
+	rp->irq = platform_get_irq(pdev, 0);
+	if (rp->irq <= 0) {
+		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
 		return -ENODEV;
 	}
 
@@ -564,9 +576,9 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
 static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 {
 	phys_addr_t msg_addr = pcie->pcie_reg_base;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
-	pcie->msi.num_of_vectors = PCI_NUM_MSI;
+	msi->num_of_vectors = PCI_NUM_MSI;
 	msi->msi_pages_phys = (phys_addr_t)msg_addr;
 
 	writel_relaxed(lower_32_bits(msg_addr),
@@ -579,7 +591,8 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 
 static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
-	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	struct root_port *rp = &pcie->rp;
+	struct pci_host_bridge *bridge = rp->bridge;
 	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
 
@@ -629,8 +642,8 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 */
 
 	/* config outbound translation window */
-	program_ob_windows(pcie, WIN_NUM_0, pcie->ob_io_res->start, 0,
-			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
+	program_ob_windows(pcie, WIN_NUM_0, rp->ob_io_res->start, 0,
+			   CFG_WINDOW_TYPE, resource_size(rp->ob_io_res));
 
 	/* memory inbound translation window */
 	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
@@ -667,32 +680,36 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
 {
 	struct irq_desc *desc = irq_to_desc(data->irq);
 	struct mobiveil_pcie *pcie;
+	struct root_port *rp;
 	unsigned long flags;
 	u32 mask, shifted_val;
 
 	pcie = irq_desc_get_chip_data(desc);
+	rp = &pcie->rp;
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
-	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
+	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);
 	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val &= ~mask;
 	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
-	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
+	raw_spin_unlock_irqrestore(&rp->intx_mask_lock, flags);
 }
 
 static void mobiveil_unmask_intx_irq(struct irq_data *data)
 {
 	struct irq_desc *desc = irq_to_desc(data->irq);
 	struct mobiveil_pcie *pcie;
+	struct root_port *rp;
 	unsigned long flags;
 	u32 shifted_val, mask;
 
 	pcie = irq_desc_get_chip_data(desc);
+	rp = &pcie->rp;
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
-	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
+	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);
 	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val |= mask;
 	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
-	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
+	raw_spin_unlock_irqrestore(&rp->intx_mask_lock, flags);
 }
 
 static struct irq_chip intx_irq_chip = {
@@ -760,7 +777,7 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
 					 unsigned int nr_irqs, void *args)
 {
 	struct mobiveil_pcie *pcie = domain->host_data;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 	unsigned long bit;
 
 	WARN_ON(nr_irqs != 1);
@@ -787,7 +804,7 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
 {
 	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
 	mutex_lock(&msi->lock);
 
@@ -808,9 +825,9 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
 	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
-	mutex_init(&pcie->msi.lock);
+	mutex_init(&msi->lock);
 	msi->dev_domain = irq_domain_add_linear(NULL, msi->num_of_vectors,
 						&msi_domain_ops, pcie);
 	if (!msi->dev_domain) {
@@ -834,18 +851,19 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
 	struct device_node *node = dev->of_node;
+	struct root_port *rp = &pcie->rp;
 	int ret;
 
 	/* setup INTx */
-	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
-						  &intx_domain_ops, pcie);
+	rp->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
+						&intx_domain_ops, pcie);
 
-	if (!pcie->intx_domain) {
+	if (!rp->intx_domain) {
 		dev_err(dev, "Failed to get a INTx IRQ domain\n");
 		return -ENOMEM;
 	}
 
-	raw_spin_lock_init(&pcie->intx_mask_lock);
+	raw_spin_lock_init(&rp->intx_mask_lock);
 
 	/* setup MSI */
 	ret = mobiveil_allocate_msi_domains(pcie);
@@ -862,6 +880,7 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	struct device *dev = &pdev->dev;
+	struct root_port *rp;
 	int ret;
 
 	/* allocate the PCIe port */
@@ -870,6 +889,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	pcie = pci_host_bridge_priv(bridge);
+	rp = &pcie->rp;
+	rp->bridge = bridge;
 
 	pcie->pdev = pdev;
 
@@ -904,12 +925,12 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
+	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
 
 	/* Initialize bridge */
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
-	bridge->busnr = pcie->root_bus_nr;
+	bridge->busnr = rp->root_bus_nr;
 	bridge->ops = &mobiveil_pcie_ops;
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
