Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED772BF8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0o94cB0GBEg2zZ0BBb4g6AtUZ2FX6m6oQWnxHBOJYs=; b=sMmOI5rREld257
	iY14WMkGdzUM2CKQ/QREYW7D6QeTTlUrseLn79jyVbpYHgi0PRHXwZ6RMoGfGW5zmxg6xw8qenOHH
	/g8fv8OdNXa40zT53ObV+Lfz6SWcigQu1Q+Z64SGxsY8CYI1DYChjhmvkz3x1UFJAcpSxASnXg7IF
	xQjNMoeJ/3Q94zSzOYIMRf8r8n6DZX/UE1R0K+4eIU+U4Sbltkc4+fYsXMTwTZVNEVPubQL1sJZdL
	xzzFT1cTtVZh0xrIm81stzy4fQjZOTgZoJ9iQ938ecFuvxe0JqIDvfoOmeNTgTWLd+pv0IjfiU4hu
	etKaGLdX2ek7wgEdQMvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVwl-00042Z-FY; Tue, 28 May 2019 06:50:55 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVwC-0002ni-Mf
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zATrfxR2Kmu5qtNNWHEcttgEhfMnLDPBFRVbL6TPC+Q=;
 b=iRjtAL5OgT5VzYzrbr9W8zShk99SKxKJHg5/dna5ZxEfiQVmgMjT1YHARSNvVDpq2r9JAtgB02uptBwnX8AEEPQj0Xde9AvuGwI7JttLu5f8hVKb4aAciz4Q7E+x8BlcUB5nW2KWzfj0h/UqBP4QVpr+vbGx8zMWdaLjq8rfXZc=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB5495.eurprd04.prod.outlook.com (20.178.93.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 06:50:12 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:50:12 +0000
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
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv6 2/6] PCI: mobiveil: Make mobiveil_host_init() can be used to
 re-init host
Thread-Topic: [PATCHv6 2/6] PCI: mobiveil: Make mobiveil_host_init() can be
 used to re-init host
Thread-Index: AQHVFSGZDtYLTsp2jkq4RgNgM5Wy0Q==
Date: Tue, 28 May 2019 06:50:12 +0000
Message-ID: <20190528065129.8769-3-Zhiqiang.Hou@nxp.com>
References: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0128.apcprd02.prod.outlook.com
 (2603:1096:202:16::12) To AM6PR04MB5781.eurprd04.prod.outlook.com
 (2603:10a6:20b:ad::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fe185ca-0e86-45f5-718a-08d6e338bb68
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB5495; 
x-ms-traffictypediagnostic: AM6PR04MB5495:
x-microsoft-antispam-prvs: <AM6PR04MB549518E2838A54CFD3E6F4D3841E0@AM6PR04MB5495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(6486002)(86362001)(6116002)(6436002)(66066001)(6512007)(2201001)(386003)(2906002)(53936002)(25786009)(3846002)(7416002)(4326008)(71200400001)(71190400001)(66476007)(54906003)(11346002)(81156014)(73956011)(64756008)(66556008)(50226002)(8676002)(316002)(5660300002)(81166006)(8936002)(110136005)(305945005)(76176011)(102836004)(52116002)(14444005)(186003)(26005)(36756003)(68736007)(6506007)(7736002)(256004)(446003)(478600001)(486006)(1076003)(99286004)(66946007)(66446008)(2616005)(476003)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5495;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yBiR+elnfGclYjyzxaphZIemQJpgNWtIkoCkUSAHKMOHVmtnnvxLKAepZmrADEBz4Ig092X7Xu0yeoHrjMsOICKRVur3zv0QhVHAafWbQ3o/oso/CG8YtMcudjzW8Ln67IoYDAPGDxeB8g8Hai4/yOgg3s2J7O/AMMRb4278O92BazbXeX8CzswC/AiLcv5v01W0wmoF+DviR+PC6AqeezyWt46IxT2Tzs97FjbSlUjk66qzsqDpFmRUFkc8M9NyPZGLREimVWubp8T+9oBnK5wh6F73LGwySD2TrWM/e69sBoZU7qBqa9ZZi3Esxr0oFXk5gddcBcIB0nlrmX+3vKAY69zcjr7fqSKCZbgamH7gJFq16DjfeaVuAUmRZv+vNeI/SLNF2J3BUmbt/Tmo4T26w/sa8KkhMgSM2nDdcmg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fe185ca-0e86-45f5-718a-08d6e338bb68
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:50:12.5149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235021_633849_E0696B1C 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Make the mobiveil_host_init() function can be used to re-init
host controller's PAB and GPEX CSR register block, as NXP
integrated Mobiveil IP has to reset and then re-init the PAB
and GPEX CSR registers upon hot-reset.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - No change.

 .../controller/mobiveil/pcie-mobiveil-host.c  | 41 ++++++++++---------
 .../pci/controller/mobiveil/pcie-mobiveil.h   |  3 +-
 2 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index c4b98a31d426..fc401af030de 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -219,7 +219,7 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
 }
 
-static int mobiveil_host_init(struct mobiveil_pcie *pcie)
+int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit)
 {
 	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
@@ -231,11 +231,16 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	for (i = 0; i < pcie->ppio_wins; i++)
 		mobiveil_pcie_disable_ib_win(pcie, i);
 
-	/* setup bus numbers */
-	value = csr_readl(pcie, PCI_PRIMARY_BUS);
-	value &= 0xff000000;
-	value |= 0x00ff0100;
-	csr_writel(pcie, value, PCI_PRIMARY_BUS);
+	pcie->ib_wins_configured = 0;
+	pcie->ob_wins_configured = 0;
+
+	if (!reinit) {
+		/* setup bus numbers */
+		value = csr_readl(pcie, PCI_PRIMARY_BUS);
+		value &= 0xff000000;
+		value |= 0x00ff0100;
+		csr_writel(pcie, value, PCI_PRIMARY_BUS);
+	}
 
 	/*
 	 * program Bus Master Enable Bit in Command Register in PAB Config
@@ -281,7 +286,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &pcie->resources) {
+	resource_list_for_each_entry(win, pcie->resources) {
 		if (resource_type(win->res) == IORESOURCE_MEM) {
 			type = MEM_WINDOW_TYPE;
 		} else if (resource_type(win->res) == IORESOURCE_IO) {
@@ -552,8 +557,6 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 	resource_size_t iobase;
 	int ret;
 
-	INIT_LIST_HEAD(&pcie->resources);
-
 	ret = mobiveil_pcie_parse_dt(pcie);
 	if (ret) {
 		dev_err(dev, "Parsing DT failed, ret: %x\n", ret);
@@ -562,34 +565,35 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 
 	/* parse the host bridge base addresses from the device tree file */
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, &iobase);
+						    &bridge->windows, &iobase);
 	if (ret) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return ret;
 	}
 
+	pcie->resources = &bridge->windows;
+
 	/*
 	 * configure all inbound and outbound windows and prepare the RC for
 	 * config access
 	 */
-	ret = mobiveil_host_init(pcie);
+	ret = mobiveil_host_init(pcie, false);
 	if (ret) {
 		dev_err(dev, "Failed to initialize host\n");
-		goto error;
+		return ret;
 	}
 
 	ret = mobiveil_pcie_interrupt_init(pcie);
 	if (ret) {
 		dev_err(dev, "Interrupt init failed\n");
-		goto error;
+		return ret;
 	}
 
-	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
+	ret = devm_request_pci_bus_resources(dev, pcie->resources);
 	if (ret)
-		goto error;
+		return ret;
 
 	/* Initialize bridge */
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->rp.root_bus_nr;
@@ -604,7 +608,7 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 	/* setup the kernel resources for the newly added PCIe root bus */
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret)
-		goto error;
+		return ret;
 
 	bus = bridge->bus;
 
@@ -614,7 +618,4 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 	pci_bus_add_devices(bus);
 
 	return 0;
-error:
-	pci_free_resource_list(&pcie->resources);
-	return ret;
 }
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index dce7871761e1..a729a4f879fe 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -154,7 +154,7 @@ struct mobiveil_pab_ops {
 
 struct mobiveil_pcie {
 	struct platform_device *pdev;
-	struct list_head resources;
+	struct list_head *resources;
 	void __iomem *csr_axi_slave_base;	/* PAB registers base */
 	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
 	void __iomem *apb_csr_base;	/* MSI register base */
@@ -168,6 +168,7 @@ struct mobiveil_pcie {
 };
 
 int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
+int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit);
 bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
 int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
 void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
