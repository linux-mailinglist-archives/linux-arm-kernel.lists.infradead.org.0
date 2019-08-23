Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A839A457
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 02:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVKbNI26S6u+sZkzduJRx78e8hB2ibZjjwhh1n+xRoI=; b=Q2SzMcZB/MdqiF
	744jdfNw7yut5Cfvhgant2GrQ9rS+GB0MiVU43ajrRAFaqJMf7JvzT8EufDVsNd7az/LdVeT5iFn9
	6f3lmzL9lmCdYSVSNqNoaGaRHhv8NCR4+Dg36BUhe5p3BHUTbLqgrN+tRXLzLvNp7vnYW+4rdQxzU
	cX5BU5toij36KxFjPKuHLpi5rOgEkroG7i4U08g8x1+VTggdrelB1uPNtHaOqDNBodpukHjjhRr5W
	w2Vl7X0f6mCLgAMQMJsQFIc3L0TlLR6ToxEgzmFcuTx6YmQMF09UsQOTJ4NcFBnzf4hinD0cBkrvx
	XcTvsVhrFq0kFNcP2Myw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0xaW-0000GA-PG; Fri, 23 Aug 2019 00:37:56 +0000
Received: from mail-eopbgr140040.outbound.protection.outlook.com
 ([40.107.14.40] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0xaE-00008d-VR
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 00:37:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FM/+w6EZb7azJ2dPYo2qefegLdhYd9rhyN/u5Rmd5xij+31pFVqy+01dW6p1MMIiuaIiuqSeSJPgNMVL9bQumGGSngjUQCSDgwamCd6+Z8yo4pPKmPvUm/YWHhEihsQEh2KewpdgSQrfHdhNqE/EYxHYi+kn6sM2HVgKIDaWxsldoGUeU6SKTSgaqYx9PplougclVTgbRmiZNBSLvF34d3jOBvllwOZGF/SvXXE0ke2OXJ1VMF/bYiLoeYZCGitfx9ZWTh8dBf95OL8N6bdZDEUvhb6heHTzEQ4prIrdp57vVaxX5xjc4NOUOr7JeBKl+5up/6y9eqBDRiwKtvui1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFHoVRyshSnuwD7ZrWTFrVyea3LTERa6XZf17qufvV4=;
 b=lHF6t2pXI0s8rxDK6vbZZE9GhU9e8t//vnvJ0awjIAWFjPmvq60yMxV68ZHhXwWVHHxS/jHaIMWpuYNpHIeO/LnFG2dRQMj9mObDSIStEr38YZ+HfNhul7JLQl0JNCjHVbnaYzIoYYTJCG0QV1p2t1i4ZzVNdzb8J7Eu3+ZNWnq+Gzl7q0oTHT+Vhn5EQg8FRUsH6ct+c3+6A4AU7pJyYXJaG0Gdfxrr/qFq8rqKFhR7QsX45QAjCtPcVqLwz5SSNE0+REnij2OPMZp+9fomVhSF/c488gQ5h3FyX5M3aORLjLz26F263nSnrJFqnPdir+odSJx81uadV59wJrejmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFHoVRyshSnuwD7ZrWTFrVyea3LTERa6XZf17qufvV4=;
 b=smgT8UJXSm1Haidzm6iqOokZMiHICPhkD0gIGYg/F4RUNFD2ajvJeb24AsLL3v2Blf3bqUnD83Yi8HyZ2ap50v7V+/YL71xUQUsz09x8d0RlpWt7zbNSztycQxc3/iuWcCVxxt9k64Q2vcKan0nab2Ub00ZRMJ2DMlOVsW5nalI=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB4662.eurprd04.prod.outlook.com (20.177.38.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Fri, 23 Aug 2019 00:37:35 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::559a:24e4:40bb:faed]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::559a:24e4:40bb:faed%7]) with mapi id 15.20.2178.018; Fri, 23 Aug 2019
 00:37:35 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [PATCH 2/2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
Thread-Topic: [PATCH 2/2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
Thread-Index: AQHVWUr1au1vBfNheEmiNgH4/hdPdQ==
Date: Fri, 23 Aug 2019 00:37:35 +0000
Message-ID: <20190823003600.8317-2-chen.fang@nxp.com>
References: <20190823003600.8317-1-chen.fang@nxp.com>
In-Reply-To: <20190823003600.8317-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0232.apcprd06.prod.outlook.com
 (2603:1096:4:ac::16) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16944f96-2e01-4d7e-cb81-08d727621781
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB4662; 
x-ms-traffictypediagnostic: AM6PR04MB4662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4662463B1A55BF3C3B374C2CF3A40@AM6PR04MB4662.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(366004)(199004)(189003)(2906002)(2616005)(256004)(476003)(71190400001)(71200400001)(446003)(53936002)(36756003)(11346002)(2501003)(186003)(6116002)(64756008)(6506007)(3846002)(486006)(5660300002)(66446008)(386003)(66556008)(25786009)(76176011)(66946007)(26005)(52116002)(102836004)(4326008)(1076003)(66066001)(8936002)(305945005)(8676002)(81156014)(81166006)(66476007)(99286004)(50226002)(7736002)(14454004)(2201001)(316002)(478600001)(54906003)(86362001)(110136005)(6486002)(6436002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4662;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sHSR6V5VsMU6DuH49pTCjAO7wmed1zQ3fcDreDo2QPfRFiEIDNoaDl4c53k8eAtPHOjvxO9zQJY09r6mtVgKEGMsPIohs4pRbuIGetloGIzBjXdBtGOc429Y8Eip9lI1I8V316kEsTXnSiQlXQJmeRQIG3y9oOv2LSeMkl5FhDAidv8ov1zOzITpYXNmDY7jT7c3cocpZ8EUIXHOg5EsnpE2l7PkOGDyzYgwLEkt7i9QMZcKI8vCs2TR1j5FnwxxXnzPcHNas5IbHjK9B4sM9+tfWT0Vj7+67eHySb4VmRxCfCkeHw9ly6cW2e6Pu+AMJqrfXnV/B1t1GgEJ4m2s1y8CEwu9iKGFI43FZrZaFBvJRbEI3gRlac6XldVt0COnOhZHCBnFf8d4cYIB+jq9Cp/+7LjBYZOIEPFiYH/Bq48=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16944f96-2e01-4d7e-cb81-08d727621781
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 00:37:35.4113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: is0VbZygNncpMtBVroGxIK65lBIOHD4AovfIHhwGMbQXsN4//HUzJnV09dsLtTj+gjGV6/T0RtiOjZk76zTYVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_173739_013729_02EBD225 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jana Build <jana.build@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LnxRevLi <LnxRevLi@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mipi pll clock comes from the MIPI PHY PLL output, so
it should not be a fixed clock.

MIPI PHY PLL is in the MIPI DSI space, and it is used as
the bit clock for transferring the pixel data out and its
output clock is configured according to the display mode.

So it should be used only for MIPI DSI and not be exported
out for other usages.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 .../devicetree/bindings/clock/imx7ulp-clock.txt   |  1 -
 drivers/clk/imx/clk-imx7ulp.c                     |  3 +--
 include/dt-bindings/clock/imx7ulp-clock.h         | 15 +++++++--------
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
index a4f8cd478f92..93d89adb7afe 100644
--- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
+++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
@@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
 		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
 		 <&scg1 IMX7ULP_CLK_UPLL>,
 		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
 		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
 		 <&scg1 IMX7ULP_CLK_ROSC>,
 		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 2022d9bead91..459b120b71d5 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -28,7 +28,7 @@ static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dumm
 static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
 static const char * const nic_sels[]		= { "firc", "ddr_clk", };
 static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
-static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
+static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
 static const char * const arm_sels[]		= { "divcore", "dummy", "dummy", "hsrun_divcore", };
 
 /* used by sosc/sirc/firc/ddr/spll/apll dividers */
@@ -75,7 +75,6 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
 	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
 	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
-	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np, "mpll");
 	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
 
 	/* SCG1 */
diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
index 6f66f9005c81..f8d34fb4378f 100644
--- a/include/dt-bindings/clock/imx7ulp-clock.h
+++ b/include/dt-bindings/clock/imx7ulp-clock.h
@@ -49,15 +49,14 @@
 #define IMX7ULP_CLK_NIC1_DIV		36
 #define IMX7ULP_CLK_NIC1_BUS_DIV	37
 #define IMX7ULP_CLK_NIC1_EXT_DIV	38
-#define IMX7ULP_CLK_MIPI_PLL		39
-#define IMX7ULP_CLK_SIRC		40
-#define IMX7ULP_CLK_SOSC_BUS_CLK	41
-#define IMX7ULP_CLK_FIRC_BUS_CLK	42
-#define IMX7ULP_CLK_SPLL_BUS_CLK	43
-#define IMX7ULP_CLK_HSRUN_SYS_SEL	44
-#define IMX7ULP_CLK_HSRUN_CORE_DIV	45
+#define IMX7ULP_CLK_SIRC		39
+#define IMX7ULP_CLK_SOSC_BUS_CLK	40
+#define IMX7ULP_CLK_FIRC_BUS_CLK	41
+#define IMX7ULP_CLK_SPLL_BUS_CLK	42
+#define IMX7ULP_CLK_HSRUN_SYS_SEL	43
+#define IMX7ULP_CLK_HSRUN_CORE_DIV	44
 
-#define IMX7ULP_CLK_SCG1_END		46
+#define IMX7ULP_CLK_SCG1_END		45
 
 /* PCC2 */
 #define IMX7ULP_CLK_DMA1		0
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
