Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60566229D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTVfbu6KyLCh8C3Me4Dl/2PPezc+2UhkEj1u4G1eUzQ=; b=OnRH5qP+pagex8
	0tWwMeKUG6mmYPbFt10pvsjL0KtaHnQ9fGVoqWQkWI0NhoOWF/bh7jAnLaRXmq/tAxf72PGnzVEi9
	jyytCRQJW+YRdVtzyCzPe8twjJ6QjCH1tKOZZ8IP0KsAwQ0+KVtEfPnIPWmOwONJ/xvsIkknWm7xM
	gYu8fgXBEzUnIFng5MQHY7680kSn0mQywWwUawCVR1pNuXDdX5aaijrj3kakWR48EwoLryxQsHIRH
	X8j2PDSiHkaMVB4YivEexG4vtVwz1PaE6P06dqwePkinh0vPPBXAHuQ+tePPvUzUG9BQLXqki1V2S
	7kFa10536gtczqkCPRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSXeJ-0003uC-CK; Mon, 20 May 2019 02:03:35 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSXeA-0003sx-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 02:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v67WAPFusspV4Na++nTAAaHMTMAUhVCwGAFZkhqJawo=;
 b=QxUvbXmhaYhHynZ3q1kmG4Osd/ltbF6qfyFnPaRQpwnReIl/gBP3DtyTHp7FXrD31oVBb1QWCZSq02gVU9A8ANS+Se2yukyOLn0iOCchTHK/13SlVO2Hli+O7EJk9YroqWyiYRw5AVjSYK+yaIsApxZD/UWXukx327gdhNEazqU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4628.eurprd04.prod.outlook.com (52.135.148.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 02:03:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 02:03:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH V3] clk: imx: imx8mm: fix int pll clk gate
Thread-Topic: [PATCH V3] clk: imx: imx8mm: fix int pll clk gate
Thread-Index: AQHVDrAyQ1ZpJItbgUWgZmYb6FWXWQ==
Date: Mon, 20 May 2019 02:03:19 +0000
Message-ID: <20190520021702.3531-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK2PR02CA0160.apcprd02.prod.outlook.com
 (2603:1096:201:1f::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad5505f9-d739-41b1-de4d-08d6dcc75461
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4628; 
x-ms-traffictypediagnostic: AM0PR04MB4628:
x-microsoft-antispam-prvs: <AM0PR04MB4628BA9BAE10652958BC4B1588060@AM0PR04MB4628.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(346002)(396003)(189003)(199004)(25786009)(305945005)(2906002)(52116002)(99286004)(2501003)(486006)(316002)(44832011)(476003)(1076003)(14444005)(68736007)(2616005)(53936002)(256004)(66066001)(36756003)(71200400001)(71190400001)(6436002)(4326008)(386003)(6506007)(186003)(3846002)(6116002)(6486002)(26005)(5660300002)(102836004)(6512007)(66476007)(8936002)(7736002)(14454004)(81156014)(81166006)(66446008)(54906003)(8676002)(86362001)(66556008)(2201001)(66946007)(110136005)(64756008)(73956011)(478600001)(50226002)(7416002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4628;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lnREfV7/y+twbPywYdw/Cs4vYm5s0IzfozCGDQihASUGJwIAI2Piaz+SuTDeGhvoMFCT+sYf87zi5rldyq4A5XcG/Wb6mceIdaf+YRLoUmqim4OA7za0wUDuxtkMDEtxccuDYn2slOb/nTzTLxguAFRPgfY9+fvW0KPbzmdyGf6hy0xifoFdZDg1PBPcYtdcfYaudD8VwYk1Vj+seB1aaAgXix0IVmbQiKkpqoKES7CBFj7QWgP9QDF7+Zn+0U67qlJvjhMLD7YjgzjSCeTyEgdB0F77T/mJqNF7H1UI3VprJe+dnvkD5MpDdrrYfg6V1c3QV50Pw1fNt5uvvdVoYWtIwxzzcQW6gayXcbe8qH65ow+cKwKcqu03JHjlait5oLSSaoesHVPN9X7w54X6Q1U0zupS/TyXiuR2ZgMjx0g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad5505f9-d739-41b1-de4d-08d6dcc75461
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 02:03:19.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_190326_819513_5F29DBD4 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To Frac pll, the gate shift is 13, however to Int PLL the gate shift
is 11.

Cc: <stable@vger.kernel.org>
Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
---

V3:
 Move Fixes Tag to correct place
V2:
 Update commit with Fixes, Add R-b and cc stable

 drivers/clk/imx/clk-imx8mm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 1ef8438e3d6d..122a81ab8e48 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -449,12 +449,12 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x14, 13);
 	clks[IMX8MM_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
 	clks[IMX8MM_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
-	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 13);
-	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 13);
-	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 13);
-	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 13);
-	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 13);
-	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 13);
+	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
+	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
+	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
+	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
+	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
+	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
 	/* SYS PLL fixed output */
 	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
