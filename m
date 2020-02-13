Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1460E15B83E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGVBovOcz18ZdoKvR1PdruJxhjVOhB+c2S51x2n13qo=; b=A3iztObMhOObFD
	QxSCJ4c6RNWB46py7IeYPLZPwoNINRjlH2yK2sjfKo2Z2iXe+wdwb5wrpco9LoPkdr6fGpSdTU2UB
	gEqH9e+E1sb5j2/W16RhF9qhFqHuh5UvISNdeixjRwnWZaGpgxy2OneyAkt96ygpPewhj3OLlUBVu
	s68Sfu5zthnPBlnP9hQuDfJh6L2h3MBh/HFnf0eZmwWOonhWYNiL+GEa2FLx1HnyS2zVfSfclXlPg
	UF/tHU/FLiL8HzWjwBmG0Jenb8Z9rLRFYyF02Q62hrK75lc7AQIJAZWIzwXvPq95DU9stxBUwx5VE
	aGEdcnc0twq9mWLD3CvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25q5-0006ws-Ci; Thu, 13 Feb 2020 04:10:57 +0000
Received: from mail-eopbgr150079.outbound.protection.outlook.com
 ([40.107.15.79] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25pC-0005CV-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:10:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TS8aBSJ1UuBBRHZxSruDBEzaCMGH7JpX5Bcb3VD9rz5XYtC+TtQiFhx28ncqzhJnna4L0g2OfunTKR6jqt4mUJ8VwtGoOyIOIZtpCVy42o+7vr/sUoQq8odZoixK2ZfRXFzmexKutJZJIqaWnNgTjbZB9QTbJ34FIWymvBnlnhv6x96p9H03wGBx0KlVUpzkPFX2ty5tga2lqVRAopN4sl7TkiS/qdjeMP5fdOVB2u613XT+2PjTRQDSBMzvb8YxBaRPFP7CRwaqTj28/MhZygscZnaqTeMAEMVzy/DFkVgS32XryzWuiuu7ZkbeETO3k76RsGjG9x3o7618VIGb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IgMzdizRhpEhuRxESop9DYMGAk+LXhQrH1XmHl+up+I=;
 b=QFcP9zOywcuM8rhusGC3CrYEo3t97RBsDvfXMIw4aq1/ATLR2Mjdw/3CPa/opRcwxcqngwisyDE/degrrMe4WXqhbeEgMwilE5s723sYWQmv38dPiLL52SPhomOdq8+xcg3RtcLBeDz51E/XH7eg8XkPnfN3JSK1hFZe36ZEXM/VpobbKvAX/ubUy8KyGylu85su1vJFy9UKzNqweJP67E1wW9AOLYT+uRGc3U0AhTBd+K9+Rddm5+FQ7QSWyw7gvpjMBDAwGcVFNb5D5YVBRqslVu/882dicXt3QJqmoit8NwThFB15mIR8TawsY6x1Wah+xGASFUAB90eHAlOO/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IgMzdizRhpEhuRxESop9DYMGAk+LXhQrH1XmHl+up+I=;
 b=qi08in6bJ36+T97xj8TtRflQ9uKcUg3eTiCfyUkvuUyHaZAUbT3u2gz9/UMrhOU/HfysV9vQiwZ+cSQh8f/Eb5WdsqXRTIrau3/+X2dHMwTCnYon3g4JtSzf/rmmuODbe5efcXO868lJypQxG+2lePcOuPLOx0J6q/phsv7FIjM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7084.eurprd04.prod.outlook.com (52.135.63.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 13 Feb 2020 04:09:59 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2707.030; Thu, 13 Feb 2020
 04:09:59 +0000
From: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
 arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
 shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv10 03/13] PCI: mobiveil: Collect the interrupt related
 operations into a function
Date: Thu, 13 Feb 2020 12:06:34 +0800
Message-Id: <20200213040644.45858-4-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
X-ClientProxiedBy: HK2PR04CA0069.apcprd04.prod.outlook.com
 (2603:1096:202:15::13) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.73) by
 HK2PR04CA0069.apcprd04.prod.outlook.com (2603:1096:202:15::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Thu, 13 Feb 2020 04:09:53 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.73]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3190ae7e-e02c-4992-0eb6-08d7b03a9778
X-MS-TrafficTypeDiagnostic: DB8PR04MB7084:|DB8PR04MB7084:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB70849603EC2C959DD4D97F83841A0@DB8PR04MB7084.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(36756003)(6506007)(5660300002)(26005)(66476007)(7416002)(66556008)(66946007)(6512007)(4326008)(52116002)(6666004)(16526019)(86362001)(478600001)(1076003)(2616005)(956004)(6486002)(69590400006)(81156014)(8676002)(81166006)(8936002)(186003)(2906002)(316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7084;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gVMkDB997TTci/K1E3+3ErbXEkgNo+Lpqby0AClo7XmzNrEqczeaqYTM7/dvFXq8KFI8Mhmz0iQ94Y3b3qniEoI1zhHgwsj7DjUcWs4vLTGejtHVDmIsgpak3nQWnyCecfQMWqplqiwDH/K6M7tD2L0bdIhTaOCyA6Xh/afuCXh4otDklLsvgmAnOctpMGJWPs7SG+JpGT27ouKN+xe82Hm94mMDiYQHq1CT+EMH5DR03oUA/2XGGaz0Bd66nkKbQ//q5DDHx/CiC2bnz0qGZEgsfDBvakSrjTnV96KF0H2GQj1iI1b3ywApS+eP+vEWQl+nooFI+pGB4qQmHF59Idt0x0Uq1x3HxXOdkJt+L6hmiUPDkNOKAPQ7GbeIPJoph3Z5mdubMFPV0MWi7LJVsyESRAHXGtOzkDsUwsFpd6Nlik14V8VdD2tP+/wdJk5SfPcqB6sBVzaNH794vwp47GOmdiLWcoRyzW0JvVqHjWgaGyXAtiwHdE8GsrVHP9zNK0c7bomMRbuhKPLCcENf1aDeIsjjQAwmt4pOnLclY5TiP7FiwvrzlDEaq4+2yIGnFaN7rUjmpOFevKM9cWXV/w==
X-MS-Exchange-AntiSpam-MessageData: T+VQppsdudpdil4m7yeDxyRt/6S/9YWpWIwCVOY9b7tZdYW9XicQtnUXQAXH5HBpSLhBa7U2TJTUZW/EbVSjN6ozbS5tqAkCAB63xwgSxP+kJJ4uNLkKO9EhA83H+8aTFobWA79xjliZ/WyT65qFDg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3190ae7e-e02c-4992-0eb6-08d7b03a9778
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:09:59.4672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TYouU61tq/fRCoLbesRvPmqTM5XO5hwR0jb8JNbfS4fk5Vng2ZNjClDvsjrYNvUY5Bf+FUB6DKxVVlUMABhaDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_201003_169550_D8F0EAD4 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Collect the interrupt initialization related operations into
a new function such that it is more readable.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V10:
 - Refined the subject and change log.

 drivers/pci/controller/pcie-mobiveil.c | 65 +++++++++++++++++---------
 1 file changed, 42 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 01df04ea5b48..9449528bb14f 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -454,12 +454,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 		return PTR_ERR(pcie->csr_axi_slave_base);
 	pcie->pcie_reg_base = res->start;
 
-	/* map MSI config resource */
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
-	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
-	if (IS_ERR(pcie->apb_csr_base))
-		return PTR_ERR(pcie->apb_csr_base);
-
 	/* read the number of windows requested */
 	if (of_property_read_u32(node, "apio-wins", &pcie->apio_wins))
 		pcie->apio_wins = MAX_PIO_WINDOWS;
@@ -467,12 +461,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
 		pcie->ppio_wins = MAX_PIO_WINDOWS;
 
-	rp->irq = platform_get_irq(pdev, 0);
-	if (rp->irq <= 0) {
-		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
-		return -ENODEV;
-	}
-
 	return 0;
 }
 
@@ -618,9 +606,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
 	mobiveil_csr_writel(pcie, pab_ctrl, PAB_CTRL);
 
-	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
-			    PAB_INTP_AMBA_MISC_ENB);
-
 	/*
 	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
 	 * PAB_AXI_PIO_CTRL Register
@@ -670,9 +655,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	value |= (PCI_CLASS_BRIDGE_PCI << 16);
 	mobiveil_csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
 
-	/* setup MSI hardware registers */
-	mobiveil_pcie_enable_msi(pcie);
-
 	return 0;
 }
 
@@ -873,6 +855,46 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 	return 0;
 }
 
+static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
+{
+	struct platform_device *pdev = pcie->pdev;
+	struct device *dev = &pdev->dev;
+	struct mobiveil_root_port *rp = &pcie->rp;
+	struct resource *res;
+	int ret;
+
+	/* map MSI config resource */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
+	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(pcie->apb_csr_base))
+		return PTR_ERR(pcie->apb_csr_base);
+
+	/* setup MSI hardware registers */
+	mobiveil_pcie_enable_msi(pcie);
+
+	rp->irq = platform_get_irq(pdev, 0);
+	if (rp->irq <= 0) {
+		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
+		return -ENODEV;
+	}
+
+	/* initialize the IRQ domains */
+	ret = mobiveil_pcie_init_irq_domain(pcie);
+	if (ret) {
+		dev_err(dev, "Failed creating IRQ Domain\n");
+		return ret;
+	}
+
+	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
+
+	/* Enable interrupts */
+	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
+			    PAB_INTP_AMBA_MISC_ENB);
+
+
+	return 0;
+}
+
 static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 {
 	struct mobiveil_root_port *rp = &pcie->rp;
@@ -906,15 +928,12 @@ static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 		return ret;
 	}
 
-	/* initialize the IRQ domains */
-	ret = mobiveil_pcie_init_irq_domain(pcie);
+	ret = mobiveil_pcie_interrupt_init(pcie);
 	if (ret) {
-		dev_err(dev, "Failed creating IRQ Domain\n");
+		dev_err(dev, "Interrupt init failed\n");
 		return ret;
 	}
 
-	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
-
 	/* Initialize bridge */
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
