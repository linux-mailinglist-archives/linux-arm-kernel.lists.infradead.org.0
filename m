Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83592C0D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGHyPCbUwing+dpesxrggmEs/95O/E/jtHapdBNcdPE=; b=oDsSJ5DkUCCeS8
	eQhcmLZr6kYSH/WR2q3U75L166/whSn5pE05iy2o0QCRBP/OqK/SjW5Y1M6PTft0D4C4pEFzz6eZA
	u0dZV5zEVkvhc3Ei/sTegu4fUjCjbE4a/bD09FGu+swc2GQ9NjnA33a8SBXhvq1yLqlyXGwEkzslI
	eUB28zYhCnKP3ckhvsz1r3agLI1OckFdsPqjy+11phxlxKUjISZGRZWEP602DCcBekLXTGVtRVs0o
	iAxDYbyaX7tzSGrp7R2SAf0AMnjnKwDtNFZZ6vFzmZ8PT38hXQI9aHoyc3WUgLn8ZXHAOoY0DTefo
	cawND3n7pYKC9VzLCxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVX7y-0001uE-OQ; Tue, 28 May 2019 08:06:34 +0000
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVX7q-0001t2-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MoNLWbJcE8ciyEKeH01oMsXT/BViZQqnsxUC4nHRJtI=;
 b=I+2HUIkG119oF5QQZ7g2+/FweH4Qph7KQV123mGrx50qiqyIlXHSAmF1qFSsTkcDulbT1WUkNnDfzathR1pNlPPQ+CNFpSKjd6gRut3OddbJ/Q2EpXNN6tc5YGdc/Z6dhtnAFrbzfqbxBWhFr6lJ4BIHiu2XJFjZOrGILDzcVns=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB4429.eurprd04.prod.outlook.com (20.177.55.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Tue, 28 May 2019 08:06:21 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 08:06:21 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: [PATCH RESEND] PCI: Kconfig: Simplify PCI_IMX6 depends on
Thread-Topic: [PATCH RESEND] PCI: Kconfig: Simplify PCI_IMX6 depends on
Thread-Index: AQHVFSw8Xw38Z2BmoUmojX3hMgzVBQ==
Date: Tue, 28 May 2019 08:06:21 +0000
Message-ID: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0701CA0045.eurprd07.prod.outlook.com
 (2603:10a6:800:90::31) To VI1PR04MB5055.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e33275a9-99d6-4cc3-62db-08d6e3435ef9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4429; 
x-ms-traffictypediagnostic: VI1PR04MB4429:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR04MB44292480EA47B353C789A57CEE1E0@VI1PR04MB4429.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(366004)(189003)(199004)(71200400001)(71190400001)(66066001)(118296001)(6506007)(102836004)(14444005)(52116002)(66476007)(25786009)(386003)(73956011)(256004)(68736007)(316002)(66946007)(99286004)(4326008)(53936002)(81156014)(14454004)(110136005)(478600001)(6436002)(54906003)(6306002)(2906002)(6512007)(36756003)(6486002)(66446008)(486006)(476003)(44832011)(2616005)(186003)(7736002)(66556008)(86362001)(966005)(5660300002)(3846002)(6116002)(64756008)(26005)(50226002)(305945005)(81166006)(8936002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4429;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JMmqbHWFrOnbO04NHgLXo1W4flfXZnIusIUKVTa1zdH9aGAuCsFJjACcNr8x6JVCYJXXootlFiyXjALse3Cz4eI+eOGB0hZNAF7XJQMs4P9QTknY5LUPHBpeWM56dA4dWz9OUQYcq1x3EluUBUcb9KyxEZG4birVPOxplfwKEtlxa0DM6RkLzIr2CuIMYo91BGvTfjNYl4HhApKZ2kJAwYErt+blisgr+PJ6joX7vsvdJygI12o+gNzjMmwi2BgO+8oNrGrIPvbxDDtifPRrnTxL1XH/SBJpDjI63M+1JYj5J9qTwB6pelBLzjlxSApWGxwmRKCJXFkE0u/mbRt62wRcBjNUt7+vGsy2PJrmcC+xtrCZ6M6GUs9RxFEBqNO84c6fg+Rqpalld0okIJ6Y5SPBveqlziDFKA51sK2EW9U=
Content-ID: <A61F5307C3403A4FB9AD816E95AC5FCC@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e33275a9-99d6-4cc3-62db-08d6e3435ef9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 08:06:21.8628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010626_825285_62179306 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Stefan Agner <stefan@agner.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Trent Piepho <tpiepho@impinj.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver can be used on imx6sx without enabling support for
imx6q or imx7d but the "depends on" condition doesn't allow that.

Instead of making the condition even longer just drop the per-soc
defines and make it depend on "ARCH_MXC || COMPILE_TEST" instead,
similar to many other drivers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/pci/controller/dwc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Link to v1: https://patchwork.kernel.org/patch/10848143/

No objections were raised other than a request for Lucas to Ack the
patch.

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 6ea74b1c0d94..21747fd0e799 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -88,11 +88,11 @@ config PCI_EXYNOS
 	depends on PCI_MSI_IRQ_DOMAIN
 	select PCIE_DW_HOST
 
 config PCI_IMX6
 	bool "Freescale i.MX6/7/8 PCIe controller"
-	depends on SOC_IMX6Q || SOC_IMX7D || (ARM64 && ARCH_MXC) || COMPILE_TEST
+	depends on ARCH_MXC || COMPILE_TEST
 	depends on PCI_MSI_IRQ_DOMAIN
 	select PCIE_DW_HOST
 
 config PCIE_SPEAR13XX
 	bool "STMicroelectronics SPEAr PCIe controller"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
