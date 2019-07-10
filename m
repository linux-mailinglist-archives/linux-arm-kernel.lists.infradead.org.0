Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EC663FE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 06:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fopyqe1KnSq5Yc8p5iKRUGqcYdkPmE6aLvRTsAJojHo=; b=CM6VLXgfSR2BsK
	9uYxpFdWpXzJ0aABbK5rr9Dq30InxRPokLFOvB5lEidTOq/rFIX8eqHe/ypGeoTa8sGUlVippxGWs
	uBYlsIXOFqyQ3Oid9Ut0qnoXx4N1yP5YYVB+/fNX+SQXDtPQEjl7+QABb+d6D1o6IFq+Ue9vFrpJS
	20jhf/shAzKkWNm5q3sZyS+1O4SKstCfVVs6zF0CCsg1LRQM1VK0YirIs1p3lboF/kcfLXLr5YZFt
	FDioZTS3o/QmFRiZU8zYxdwXvyVm3KB/nwpv5v1WCxH01e7Np43vIhgNfIuHHFh/gVxoWVpMBdl9L
	cT0zRZi38jBJiuxsOiaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3zj-0000gh-I3; Wed, 10 Jul 2019 04:14:15 +0000
Received: from mail-ve1eur02on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::61e]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3zD-0000UT-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 04:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgc0G8QrBlss85FuBtnb8WhTAc34pLGCv84LZclZDUg=;
 b=ElPFEvgUF3uwsjfX2uABYhExCsgeDIRRcpQqRBh6mR1wCENtYT6Aq0ELhURM9CxMYKKIDr7ieGRf13fQk5rabk7meTo66GeB+JskPGr2fkUVPJNJ1n/DRenwvtJAh39ht3Q2R0BB2GbJFTB70DnkacLybXHdNAkHBplyq/nsP/w=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB6695.eurprd04.prod.outlook.com (20.179.247.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.20; Wed, 10 Jul 2019 04:13:41 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 04:13:41 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [RESEND PATCH 2/2] clk: imx8mm: rename 'share_count_dcss' to
 'share_count_disp'
Thread-Topic: [RESEND PATCH 2/2] clk: imx8mm: rename 'share_count_dcss' to
 'share_count_disp'
Thread-Index: AQHVNtXbgK4OG4KMHEO9sgOp9y1opQ==
Date: Wed, 10 Jul 2019 04:13:41 +0000
Message-ID: <20190710041546.23422-2-chen.fang@nxp.com>
References: <20190710041546.23422-1-chen.fang@nxp.com>
In-Reply-To: <20190710041546.23422-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0PR03CA0111.apcprd03.prod.outlook.com
 (2603:1096:203:b0::27) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:7::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30045cbb-f3b7-44f6-5281-08d704ecfd83
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6695; 
x-ms-traffictypediagnostic: AM6PR04MB6695:
x-microsoft-antispam-prvs: <AM6PR04MB6695C85F279FA5EA30B92BB2F3F00@AM6PR04MB6695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(199004)(189003)(386003)(7736002)(76176011)(478600001)(50226002)(4326008)(5660300002)(99286004)(6436002)(66066001)(7416002)(2906002)(52116002)(2501003)(186003)(26005)(54906003)(110136005)(8936002)(6506007)(256004)(316002)(102836004)(6486002)(305945005)(1076003)(11346002)(81156014)(81166006)(25786009)(486006)(446003)(6116002)(86362001)(68736007)(3846002)(8676002)(53936002)(6512007)(2201001)(476003)(36756003)(2616005)(66446008)(66476007)(66556008)(64756008)(14454004)(66946007)(71200400001)(71190400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6695;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vy+MKuQyk+HmDnAb9SLbx1tIDAT04kORb/gQKjP4kh/9O5H+i3rEpmbu1P0Ruj3MwqgCev/HZjihdImngEPJWQtHi/lIdjniLvjUKhMu+bDfZSa3cBGu55phAlRJNV04ymVopExeHx25bxlAI/POiR9Z70j91LLcm6TB3U/crxrOAU209tCTfcOoqRV09F++6cyQKYmqC9ZIiEF/He1PL5EmeMr4BhYLnXiiuP0Ji+nl49Ry0sv1G3HlEpDqm9vDiPyrDVZEV535/UFmG2zA6oKzXPsveQMgdGTnPaGwPj9EdCBnRgRA2ODc5jlPgVrxI90lop5jFzxKjcFrhs6DdQNNMNhaBclOOUGxyECVLAhPBHoaBWF0pyPPmsHXkGMlB2qsSuqgtqKHZXnrRuU/92qavNHhUfCRf9lCLXipYC4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30045cbb-f3b7-44f6-5281-08d704ecfd83
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 04:13:41.0588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_211343_304455_BCEDE2E3 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:61e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename 'share_count_dcss' to 'share_count_disp', since the
DCSS module does not exist on imx8mm platform. So rename it
to avoid any unnecessary confusion.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 42f1227a4952..42cb33edf8e5 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -22,7 +22,7 @@ static u32 share_count_sai3;
 static u32 share_count_sai4;
 static u32 share_count_sai5;
 static u32 share_count_sai6;
-static u32 share_count_dcss;
+static u32 share_count_disp;
 static u32 share_count_pdm;
 static u32 share_count_nand;
 
@@ -644,10 +644,10 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_VPU_G2_ROOT] = imx_clk_gate4("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0);
 	clks[IMX8MM_CLK_PDM_ROOT] = imx_clk_gate2_shared2("pdm_root_clk", "pdm", base + 0x45b0, 0, &share_count_pdm);
 	clks[IMX8MM_CLK_PDM_IPG]  = imx_clk_gate2_shared2("pdm_ipg_clk", "ipg_audio_root", base + 0x45b0, 0, &share_count_pdm);
-	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_dcss);
+	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_disp);
 	clks[IMX8MM_CLK_USDHC3_ROOT] = imx_clk_gate4("usdhc3_root_clk", "usdhc3", base + 0x45e0, 0);
 	clks[IMX8MM_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
 	clks[IMX8MM_CLK_VPU_DEC_ROOT] = imx_clk_gate4("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
