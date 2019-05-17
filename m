Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2332142F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xxf/+UhS7f6c69UfyaN8iGIvgeJ//fZgZhduozAnzGo=; b=PAWaUNhzM/165Q
	YnxSmrw+M2mLW1hKawnIJY+ENjnxe1BGLnkRDeOxYVr6SuPp2KCWgURfRZayCyk2IALXrVlRiQ5f8
	z/7sSk9Es21bjrBwzV6nutleJu8iUwGQFe7oRfte6BFRORRwo8V4m6va9+T9UAtWqLAU4tVtOWb3a
	VGaXJeSEPYEkOglHH4euRrPIeLwvQZtJyYk6dyrpAEqNJVJ621PySQbmFjyb6Ve6vuI10YcPjA8FM
	YHnBMEHbGHrdSVr83z9tsJK/KuxHrprNjHnXrf20hBxs68BA/voOrKpD6OhYrEynb5X75GXwX/y1X
	7m+4DlBo+kJi/uTblswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXGt-0005uv-TJ; Fri, 17 May 2019 07:27:15 +0000
Received: from mail-vi1eur04on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::623]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXGm-0005uP-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bhZjDN2ZVQoc+RchWUkdNoIkiO7Pz2E3XwsAtc3vEWI=;
 b=eKN7cutLnBTapOgGavIkaxQIwbg9bqqrYwOs1i4xIC0jBJxs1zFHBT1T+VY8VGVtQebqP6VpevxqI0n0+wzxoo+ay2FiTYZQZBdAVsTcbIyUyv/K4iW/mucXjA5gN1d3TIPBUjqepfwRPjnISZQ9JyDzx1tu5iOjxRMHlp0TJbY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4658.eurprd04.prod.outlook.com (52.135.149.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 07:27:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 07:27:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH V2] clk: imx: imx8mm: fix int pll clk gate
Thread-Topic: [PATCH V2] clk: imx: imx8mm: fix int pll clk gate
Thread-Index: AQHVDIHsPBmx0qvGqk+whAsCcaHkFA==
Date: Fri, 17 May 2019 07:27:03 +0000
Message-ID: <20190517074039.22614-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR01CA0051.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b53e6245-023d-4cc2-32ec-08d6da990eae
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4658; 
x-ms-traffictypediagnostic: AM0PR04MB4658:
x-microsoft-antispam-prvs: <AM0PR04MB4658640FBE6C11A0D0029CB6880B0@AM0PR04MB4658.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:336;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(396003)(136003)(346002)(189003)(199004)(53936002)(386003)(476003)(6486002)(5660300002)(6506007)(4326008)(102836004)(14444005)(7736002)(256004)(36756003)(2616005)(68736007)(66476007)(73956011)(1076003)(66556008)(64756008)(66446008)(50226002)(66946007)(66066001)(2906002)(6436002)(44832011)(486006)(186003)(6512007)(305945005)(52116002)(71200400001)(8936002)(7416002)(99286004)(71190400001)(2201001)(25786009)(81156014)(81166006)(110136005)(26005)(8676002)(6116002)(86362001)(478600001)(14454004)(2501003)(316002)(54906003)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4658;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D26b/oY1UZkujZBnI/JK+8WyDvn6GI6v0vcPuRJsRIAUPoBrtmf5xt8WwOA6lvV4J6TX0LuQI29JLyvBcB3DDWUpszHCWpoGmNQB70DFWOXB+SNZJNqBct7WKQyTBlRKWix2dem9yVd/+QK4rPGXHUGz+365kmfTyBFjs1jG+qcEG3UpzH2JyVMwFacjiwb2A6287KKIYZ8LsqknB6HJ9IrXOLjEIeGK/9hsbOonNeKbnqVIwEA6IROjlAXmhEZOAAhsqub5mqpP4USetwGJpNj65vC9Ktj84KiI96Kd5QKwypfteJZ2gmGnVy/UEHBvagcen48xqIsq+3oApZaxAHGTLZdCvYJ6llFVQeB2YXYBIDgOam3pyQbo2zQhKi693PVwUJhQiUHuvCz8+XLZt1ScvUqoQh5q4KtZVTCPY5U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b53e6245-023d-4cc2-32ec-08d6da990eae
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 07:27:03.5709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4658
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_002708_982529_57DA425B 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:623 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
To Frac pll, the gate shift is 13, however to Int PLL the gate shift
is 11.

Cc: <stable@vger.kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
---

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
