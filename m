Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F6EAD05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDZBvhPVLtplTee1Iyd4Pq/HKaPsTkOUfLZmY7Ui8VE=; b=cf4tAXWdP3SMqI
	D7txlAhQIymlkhhR2ilkLQ/C5dXQtBLrqTAjjgoNcMfCzLrDywakNZw0Sg8MKQGFEuTYe4y4379VU
	krh739xPRfK2nBr2POIt0kbJpckgGneukieJkM8Lb2UW3UYG0JkBpUK8pcCLom0C+9u9ZYFmSwDDY
	IzRH4Hi9rBkBGGodm25hk91L10IbvUsN/M/49oO8Ri/m+q5glqb/sTeRXj8AQWylf3sUjm34nf2iB
	q1Cl1bNDa4NGOPKrQ70pffywcopY+3Sysajjaqos7CaQtgnzUahgzDgA/ZIyyVecTqUVRaKuCa9Qu
	cHN6yZ+tiwMfLDCB8ObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7Hs-0000RW-Ge; Thu, 31 Oct 2019 10:02:40 +0000
Received: from mail-eopbgr150054.outbound.protection.outlook.com
 ([40.107.15.54] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7HI-0008Sw-75
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:02:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XS0CP8K/y7heaeGaoOx4PBSUCTmpmcYEFBl+LH6cgf5Hjf4XKyHmetAzjXhOgAD++E90AcyhcdiZfdWSemL6NdVEZVDN2G7Zs8+DeeBc3pN3s3YFf3wc3VbF7AUUcHaBI/FPmRC/b2vm3AteROJy8h4WDb87CsyEGusmGbI9saJm8acl+xt6/RY1ofxCrjjThztseCE6qqt5LCMEtbvrmFiquRFkspsewqnirH2N9wL1lrRY3BWkY7xQExWCsMtwCYbTkj/MHsr02Jfk1xpvw1rnQP4SRQ8C9G1ZeqSs7n0C0E+19BvsrW/RWENa5CgIuh/CAXTQ//q0HoPPnMhVuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u9jCLTDb36RC2va2i/w6VXlYE81gCHs04E2EgyMcrgU=;
 b=XIkWtR3PtHjoDk+O5DAnvkU1c79v9ilxgOLAXBWWrqzdssFsUPaeDFl6z9DTVuh3KSkBNTPD1Jl38n1tInXWdA+moEnvXPfViEwpEMeKnMsQlQIhmrl1pqBx2uFKg8usx9UAWFOp7mynR8ypGhlGC1zSkNZtj9TTNSTZNioHCblhTep+OiQxa6VlsxpBoGt3zqIOMUYSB1ZQ2j2MkMQOqat8Z6l0aYJ9D082XACMn1VaK7Tj4Zxfejm5tnnUc29/yWSui2ConacPfdkQiYvxYMvTHzHe/Z3O2J9bY33B74qu303mz+MVivuHqsIToVBUGZ25WMlnrKEX6ZtiQY895g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u9jCLTDb36RC2va2i/w6VXlYE81gCHs04E2EgyMcrgU=;
 b=kd81AX2H31DA1uE/8B4uTVamRfoUI3hRROy1NTSzwxKdk0Tsy4gyKB4Kznli+/+09yEg5I9A1Myels3zRJ15simvrh7/ClKasG1G6I2R3DkeXjPZrYP9lodXKPqzO+Z7WvdVECDin5KyxIKUL7lVe/4YvPw/YxD2rUIalppP1zo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6722.eurprd04.prod.outlook.com (20.179.252.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.28; Thu, 31 Oct 2019 10:02:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 10:02:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/2] clk: imx: imx7d: remove clk_set_parent
Thread-Topic: [PATCH 2/2] clk: imx: imx7d: remove clk_set_parent
Thread-Index: AQHVj9I92AhYNbamKEyejI7asTmq+g==
Date: Thu, 31 Oct 2019 10:02:00 +0000
Message-ID: <1572515888-3385-3-git-send-email-peng.fan@nxp.com>
References: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:203:b0::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21cb476b-2e59-47b5-4457-08d75de95f76
x-ms-traffictypediagnostic: AM0PR04MB6722:|AM0PR04MB6722:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB672214016F5FAC8A7A10494E88630@AM0PR04MB6722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(446003)(2501003)(71190400001)(71200400001)(6436002)(11346002)(8936002)(2616005)(99286004)(316002)(6636002)(66946007)(476003)(478600001)(50226002)(256004)(14454004)(110136005)(54906003)(305945005)(7736002)(2906002)(2201001)(102836004)(76176011)(44832011)(66446008)(64756008)(66476007)(6486002)(66556008)(486006)(3846002)(66066001)(26005)(386003)(86362001)(52116002)(81166006)(81156014)(186003)(5660300002)(8676002)(25786009)(36756003)(6512007)(4326008)(6116002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6722;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +jiVyIFCxwe9q6jRDi14gGyuxiVfOyGQPDr6jI7YzR+6CPgJdKRzTmYTtYZ9oVor0rmRyKdCbmxkyIjmKWXFYb+85KJjxf2iBocCrId4Mjsv9IECk/9+BuB4wF1nnGITczSwgSpxtn0Q1vim2tVvKQR5oQvbCFEy3VC12v3nPy60K4pdU9v+tDd1qF6T7SYc8cbz6d4azKHtiCIkpCqE1plx50nrKB/ewk5TLBW/z1jX0xFPgTyhc3zdmiVF4BRnatBAHIcDE587b9MKcrboMdI7siAK+SiDBOlvdORDhoFh8ZcQZ0sVeW6uP6gVkNqLg3OiOs3gvSttLIBnREe1vXxHGbnhf36kj0EflPRvXDzhEYlMk5Vy48TIAVM0oMfZZhsbSu/Z4IMej9S67xbmofZiwqZ9lWzeVamk/SyLelmTYfJAyx0hfAcpoaOJC9ti
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21cb476b-2e59-47b5-4457-08d75de95f76
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 10:02:00.8532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p5S7N/1rqRPIB3RfyseygYpuV6MirRESLRlVqO8Gjy3AkEN9zTZ4DuaIVX1jslH+hjMwtEGrmmN9xw7E4cuBiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_030204_264663_F2565ED9 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.54 listed in wl.mailspike.net]
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Since the set parent could be done by assigned-clock-parents in
dts, so no need clk_set_parent in driver.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7d.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7d.c b/drivers/clk/imx/clk-imx7d.c
index 0c9f7adb41ae..b73e3e148497 100644
--- a/drivers/clk/imx/clk-imx7d.c
+++ b/drivers/clk/imx/clk-imx7d.c
@@ -878,18 +878,6 @@ static void __init imx7d_clocks_init(struct device_node *ccm_node)
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
 
-	clk_set_parent(hws[IMX7D_PLL_ARM_MAIN_BYPASS]->clk, hws[IMX7D_PLL_ARM_MAIN]->clk);
-	clk_set_parent(hws[IMX7D_PLL_DRAM_MAIN_BYPASS]->clk, hws[IMX7D_PLL_DRAM_MAIN]->clk);
-	clk_set_parent(hws[IMX7D_PLL_SYS_MAIN_BYPASS]->clk, hws[IMX7D_PLL_SYS_MAIN]->clk);
-	clk_set_parent(hws[IMX7D_PLL_ENET_MAIN_BYPASS]->clk, hws[IMX7D_PLL_ENET_MAIN]->clk);
-	clk_set_parent(hws[IMX7D_PLL_AUDIO_MAIN_BYPASS]->clk, hws[IMX7D_PLL_AUDIO_MAIN]->clk);
-	clk_set_parent(hws[IMX7D_PLL_VIDEO_MAIN_BYPASS]->clk, hws[IMX7D_PLL_VIDEO_MAIN]->clk);
-
-	clk_set_parent(hws[IMX7D_MIPI_CSI_ROOT_SRC]->clk, hws[IMX7D_PLL_SYS_PFD3_CLK]->clk);
-
-	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
-	clk_set_parent(hws[IMX7D_GPT1_ROOT_SRC]->clk, hws[IMX7D_OSC_24M_CLK]->clk);
-
 	/* Set clock rate for USBPHY, the USB_PLL at CCM is from USBOTG2 */
 	hws[IMX7D_USB1_MAIN_480M_CLK] = imx_clk_hw_fixed_factor("pll_usb1_main_clk", "osc", 20, 1);
 	hws[IMX7D_USB_MAIN_480M_CLK] = imx_clk_hw_fixed_factor("pll_usb_main_clk", "osc", 20, 1);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
