Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100FD9CCB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uHmbpTL5dN1bo/cizclA6OTXqIQq+g3pk9EloyJeiI=; b=bRLZfubi8ymIWd
	4CpAqc+1asglWi3Je1/EE75dsTe+pL2Q1yCIqVt+lU44dgSZSP5FcXkzoBYP/4yXb9VQoHvpOc3Eu
	0yrlWi7ofn78tpS4SKVrxA6iUrtjc+Kcs5G06ozbg0czJDEhXo25vqYUwC6v6TPIfLP3jiaVEb086
	Ah0xp5CEZFk/f4gehAf0b7v+zZB8QoM4BIYpiAcWo0iXBAphfbYiH7PM9J00+Gfj7GRIAiwUxtpxb
	IO41U80Lo9VfUvHV+jf+wjSsx5XTTWRTWPlFrK7oORfWNr/N8NSYBXb0S2voEny1tL9V9co8L0tpF
	5GeOQZhz3o1VUxjeKOGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BWh-00048e-Ib; Mon, 26 Aug 2019 09:43:03 +0000
Received: from mail-eopbgr60087.outbound.protection.outlook.com ([40.107.6.87]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BW7-0003lk-VM
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:42:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJsiqpH7p5TczatOznu+xif5yRBm1eQkGWTmnS713sWQUNoW4EfpSaKpKoD7sbGG8B5kM106jTC8qFJoLbRXpZKFOzECGC4FTev9FsQHkwuyavK7sT2PeLIXpVopFs1dtxv+dTxRQ0OrxRshLMYbufuCiTkwPbsaaMZLzArEzXZWSr+pwRb+oo2voBQhdWByXg7T9TvEJirnLmtmNy2jA3EQMgZxrXsKSy06rCo1q5X6nf2lRM5Oyec8HtUHnk3Y+6SqAhMLwWACJdR3wkPko6Zcf3wl+K8xLQOBEBUZhH0XYDIHgUXdJSwlGePokiJWle3vgf6KOdYDiLcovuv6BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GiKawS5LA3CHTCqVAawwCsiI2vZbDBi+l31QBpZkcDU=;
 b=dSsLtPef4L6gKqYkeZ9AryKwT/U3eBEt93CApXp9QLyrMJFdbbyqqYrS8a56ZOtZ/2QEPOeaUsOf0VcFMaICguKikDD0Y8XxOwishp6SWqNTntd3td8rk0+U+6u22oSZjXKjKDyRJ2Tp+t/NmGv3cgEDEfYf7JclO8QycVH7/tpg0Vt0Ntk+YhFSMM9mZXO1EpP5V563DwQ/pliI+XxuhLUsqgEDlfa4wsAM+kVvPYT2PSUENIKbke9YASGMiUE2byWRLBCFvmi3DRwLvJ/hotsAuhipAZ+XTc8rS3frEp6LKu1F1ElNQP5vLs+aoTh1ooPPsWehrrJBQ56WMdwA1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GiKawS5LA3CHTCqVAawwCsiI2vZbDBi+l31QBpZkcDU=;
 b=k7WcYKbTtBdzYHXVdFwjf6GMreCgZaPosOTEUhOAasU57NxinD/q06FbmENwogMnOeNWc/0NrUttrjAOr5U4sYwZNfrci6G+qcJeF5Vjz5rgq+nE1S8h70kTNIe7zimocVdCWLiU3x0EDEx7sSTBgy3q7OGW96o9mbbSmfn9Wbo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4194.eurprd04.prod.outlook.com (52.134.126.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 09:42:24 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.022; Mon, 26 Aug 2019
 09:42:24 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 3/4] clk: imx: imx8mm: fix pll mux bit
Thread-Topic: [PATCH V2 3/4] clk: imx: imx8mm: fix pll mux bit
Thread-Index: AQHVW/KQY0FURBunmEm6QINkFFySsQ==
Date: Mon, 26 Aug 2019 09:42:24 +0000
Message-ID: <1566855676-11510-3-git-send-email-peng.fan@nxp.com>
References: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0047.apcprd04.prod.outlook.com
 (2603:1096:202:14::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac674b67-56ea-4c6e-5b13-08d72a09b2f5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4194; 
x-ms-traffictypediagnostic: AM0PR04MB4194:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41946A6A99496B7CD6DC117A88A10@AM0PR04MB4194.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(189003)(199004)(478600001)(2501003)(25786009)(66066001)(81166006)(81156014)(66476007)(44832011)(7736002)(486006)(305945005)(2616005)(476003)(36756003)(8676002)(66946007)(66556008)(66446008)(64756008)(14454004)(316002)(110136005)(54906003)(6116002)(256004)(8936002)(50226002)(2201001)(99286004)(4326008)(6512007)(2906002)(86362001)(53936002)(386003)(76176011)(71200400001)(71190400001)(6506007)(102836004)(186003)(11346002)(446003)(26005)(5660300002)(52116002)(3846002)(6436002)(6486002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4194;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XwXWtmNf1nlzbGYQ8V3o7jAmr+YlsK2zKKTjB4GqZGErScZJ8lvtEYN6Ibdgem5Eixk/rygfQyWKBewy7R93o2pfefQmrCr5aYWcnH/YCLW0c+1VyoR1FBrhwLxCUo4pDU5WMECYjojpB10y4nGSepXkpvCIZoIvrSdbNB2MsprxAFCkrMePnylp2t6XoXLM4X80CDktmNxTiR5WgEmwR625G3mBOja1t8hsNjdu0681zQDpoMszxWNfu6u7Wuu/xTeUNOvhMJ8DbGi0WSdl+pRcF8tBl4Qt/InCr76ow1rTDXhxPDZAgRscqzwtCfyNCY9Z1a5iBMPtjXz2eGlr+RR8R2Q8hGoNkHCVE7vKwdRE5nC0T73Nqq8L7L+ZKQm5jBuoCTgSRFJKpuyuPnxDltJ0QrbYUvCJ6ioW+HuDT9Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac674b67-56ea-4c6e-5b13-08d72a09b2f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 09:42:24.3160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SLLbRQq25QlUgQTKzskP8qfGgaAmXCn1aDpsdgm0wpdyBDMIT+0YqeH6MTA6o0bIsNKaLM4mUPsDDnUn3TnesA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_024228_026525_D9F3B5D5 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

pll BYPASS bit should be kept inside pll driver for glitchless freq
setting following spec. If exposing the bit, that means pll driver and
clk driver has two paths to touch this bit, which is wrong.

So use EXT_BYPASS bit here.

And drop uneeded set parent, because EXT_BYPASS default is 0.

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Suggested-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 New patch

 drivers/clk/imx/clk-imx8mm.c | 32 ++++++++++----------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2758e3f0d15d..067ab876911d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -408,28 +408,16 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx8mm_sys_pll);
 
 	/* PLL bypass out */
-	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 4, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 4, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 4, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 4, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 4, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 4, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 4, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 4, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 4, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
-
-	/* unbypass all the plls */
-	clk_set_parent(clks[IMX8MM_AUDIO_PLL1_BYPASS], clks[IMX8MM_AUDIO_PLL1]);
-	clk_set_parent(clks[IMX8MM_AUDIO_PLL2_BYPASS], clks[IMX8MM_AUDIO_PLL2]);
-	clk_set_parent(clks[IMX8MM_VIDEO_PLL1_BYPASS], clks[IMX8MM_VIDEO_PLL1]);
-	clk_set_parent(clks[IMX8MM_DRAM_PLL_BYPASS], clks[IMX8MM_DRAM_PLL]);
-	clk_set_parent(clks[IMX8MM_GPU_PLL_BYPASS], clks[IMX8MM_GPU_PLL]);
-	clk_set_parent(clks[IMX8MM_VPU_PLL_BYPASS], clks[IMX8MM_VPU_PLL]);
-	clk_set_parent(clks[IMX8MM_ARM_PLL_BYPASS], clks[IMX8MM_ARM_PLL]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL1_BYPASS], clks[IMX8MM_SYS_PLL1]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL2_BYPASS], clks[IMX8MM_SYS_PLL2]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL3_BYPASS], clks[IMX8MM_SYS_PLL3]);
+	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
 	clks[IMX8MM_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
