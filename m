Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF24103233
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:46:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVY7RaFlgNTXUZ9YNN4UbRYCFnFvrIXj8SP+loVBPjs=; b=XmVxzDfQKlTvDz
	ie4WFD+Ztn8EV0MvoFQZ/y+z4L3dKrrrAGaT7gn8CHmfZ8J2mpyVrzHf3qmL5daw/ZMqIaG4gH1Wi
	YGwnOJ4G/DtUUmFwRTwamqqW1uhZIZQWPeYYuKbc7KFvlpww1Pt0g/7q4CPnRw0WjtOR0tx4FldZk
	BcLZ6v7FXulBooRthQ9OjPTYR851Lv21CmQmg9eBfHClf/t5ZRlUDC8TxuJgSKbLchrX5EcabdUYJ
	RYfbLJPvi4Lb+zaVDPc0ZoHTczI3yhtVKWTmxffIi/buqJoE63UldDKWaNHM8Y4BJxCilUjmdl5wg
	39b+ladKlFupk9rtWXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGwR-0007d8-3w; Wed, 20 Nov 2019 03:46:07 +0000
Received: from mail-he1eur04on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::605]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGw0-0007V6-3R
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:45:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=naO5F40ECGaHSGgXCEuaJraPJ8nDdel4P8VDSkFc3IVoSR5j/U4Q3CBsEVyolZwIQx8P3RerQmRnGWIc0z+t3s1piYiB5AFN32jZ+n+F/7IFlCGn5SrrmIEDWtSWEuoXccqSQDf76vqR5zR24E6iCXSLee64cODaZ/cDXeDAQsGVmNZIJNYtQGImyPnumJKz4BASeZfhmlErd9zTWWY5eUMxWq4eTegWhtmgxtzo2X8x8O48e4z3Cp+0wM+8TzXCk8ZxyhyIoEpTPcat9DJ22vw95/4Sc6zs71d0L4NT/MHT28IGv46U8+ZFGXBzCcdf+Mnf3+Xq/YI61NSdluLYdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYpAL7e6n70SIIHc5c1GGW0XI3T+z4Snl9EO8Aqf9gk=;
 b=FAAkNYAaF64tYja/nSd7ijLfSu6TY+nYFWmDYt0bpO83AUMDeboUqV5rN9Q2L48gnaW0thQi/W8ZD49Tr/HnzHgKZ/+D+ZdkMaYb2Takkqc+wwLzfSSDyh/PQJHZWqeKHJlyjrTUBrdpBQA/94j8JwMyGus0KQkkBIvuaAAlHYYYEbsfQMmQWRg/RFIEWG9x/szft1SLgBHxKTnY3binJOP28fPX6DX1zW+HMVKFoMbG8wrCSkxd4Zuj3PQGwdiAs/qBIhuc1wFTUtrIjmPoGhIE67DzQKMBX/5Zn/o4/ulMWUf3M8mfVAsEZSV5viIm1phpeT/Vly9kcUQY/y6gvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYpAL7e6n70SIIHc5c1GGW0XI3T+z4Snl9EO8Aqf9gk=;
 b=StgkCfx52p8E678ROcO4smaOb1njxHFvLOdXU3y+eZwVrzz7PkoOXHIWH2XDuBEx5jBKcEkcyNoZ05tfFKzEcTtDODNDI8Mm3jg4zPZ7iCmcFlGcF9OKENKLZhm0B7Xo4/51bh5PmngJd0oUnZeNmedIE16I0ObB7nHMBOGW+V4=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:45:37 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:45:37 +0000
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
Subject: [PATCHv9 03/12] PCI: mobiveil: Collect the interrupt related
 operations into a routine
Thread-Topic: [PATCHv9 03/12] PCI: mobiveil: Collect the interrupt related
 operations into a routine
Thread-Index: AQHVn1T4QPVpuPxbfUOAcnzZ5mJ3hg==
Date: Wed, 20 Nov 2019 03:45:37 +0000
Message-ID: <20191120034451.30102-4-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: 47d60390-524f-4943-1242-08d76d6c1ab4
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB56572B3650B5DD0C3FAD227F844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(11346002)(446003)(76176011)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZaGBaJFoNQTmn+cyyJx7Rbgo5Es5J8WM9tRgL0Vd2JNNL5SwoJ+MZS+HTS1Jk/Zqhykk94mItc5N8ihFZQfqna/WTtbaj1S8ua1y0K33mfrWvix6ZMyRmP2SBx2CqpAVSCF6Vhd+fcWPYOvgjwqgQZ6+DoC+Fh7rufMvhVKLarWXm6OobSbBv0WfCRE3Fc3/L+UZAY16yDt5KWIzmAUmbsXKy5CuspafEzLdWZmVGwp1At+ZdVTQFWSo+7uCYMl+wv+BKcdase8W41ouvwEkg/L/C0SKphUOzLBggSHTjgSXL75mFcZzJYvAxW2ACqCM2pFdIvl3uk1fiHRPBck2e3SkpzjI3BS5RsVE47tY/H8QLBNjLGqsxyfuzr61KEZMrC9QBf+qLlS9V4NXmqo4h8fJAMuYAjjoRX/QEneN3/Xm0heyPMXDx+3/+IW0NhU1
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47d60390-524f-4943-1242-08d76d6c1ab4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:45:37.0747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fdPEZPWEacOlux5nXLOQ1PFOeWTcFfdUuE/aSN9gw0RgfM2LggcDifRSPDRjzXWsUMn84jg3/pd7C8/Imu8VtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194540_210250_693E7E57 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:605 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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

Collect the interrupt initialization related operations into
a new routine to make it more readable.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V9:
 - New patch splited from the #1 of V8 patches to make it easy to review.

 drivers/pci/controller/pcie-mobiveil.c | 65 +++++++++++++++++---------
 1 file changed, 42 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 97f682ca7c7a..512b27a0536e 100644
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
+	struct root_port *rp = &pcie->rp;
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
 int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 {
 	struct root_port *rp = &pcie->rp;
@@ -906,15 +928,12 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
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
