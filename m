Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99785AD255
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pOw1qArJeARPXn7RB4R74gY6VhYuUJQ+AucpwBgr2E=; b=fH3pkddGrBegkt
	LhFvKhg3Y7x2S9CzoLD38m1yIZHf5CQT/30fb3d9DrBuiLS4VxZqETY14qM9hrhBvr1HV3ABm/riU
	SGhNBH7Dhg+R323MJzN7+DyzA4PAPVLmaPjqCUo863RmfXUWV5N7lJ2T/7N/CHxeBZLnfyA0ATSKC
	Ujr7KSSyz92v/y0pNYQGfA1yuFOv4X4g3PPOEIlkEx55GaB5hl1fJ4Ecc3rhG5LbS0UNq9eZsGMox
	60dfzRpMm3VVOkkxeHNDFx7Ndw4/6Z1h2i+UbRMi53dmZYW2/+lTmMpTB952ZyU58mpAk6XxQwdby
	qbCYy1zqWtkzWpQHrWPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AYZ-00067d-QW; Mon, 09 Sep 2019 03:41:35 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AWv-0003ss-W8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:39:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjfePzGVq7LLHl/TMh+E3BCBCWxw7SbSzmw92VzUwSJ3NSS/utlRg6s0N3RKZvwopT7NBU958L9B2oIApeTN98lJ8wC2WsRrv+7nFY+CRZqvvixB6hUDfLlrGjg8VkyNIzq9r/TquRhDTCwy+RxFMgAFxqtN2Wcp/0IG82nL/CK2FWB7tezxjs6O3vSAuMOvx8KVG2V5S+GKXEZnxVdZekg7v2EjmAT6/u4sIoNev3R9/jXAMQmCpGSYLLIFzzTJ4v2vz+28voJwQLT2JlTIHjfDcLggy3YN+ylsLdiqllivrsTqsNH/3n4vpedDc64XPdz8N4j/YoUlDY5Iq7rBQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oiaDP0ZDyvNz//HolrWkdurzO3KpfwzpGK8qC/QAq/I=;
 b=FssKVWo1ULKspT/EnxTw2F5nZDN2EVswtdcglGt91A2dGa1ga/ka10bcDHWrc6ctwCy2BNOcmefwsFBVeQq7PsKI4rYxVoWZWJGEKjWrSfMAEjTNpRK4eEOKrj+bfIRofTuRXDescvRYfJQDPy38eg0IrcdKQYAje2w6CmU4dtcXRgG7LgNPttkYORMtkqMEesmJnlwGrQXY4+jH7T2N/7jtOcCNbWcM4l3HtAl292fmaHW8hXutGJ2egXczlisHGIlzaQqI0wfa5oqnv7uPcGxt/8AWUU1XeNYH1JhTSl2H0zdMu9aPDLrvMRZ6RQ8LwFnQnQon9mUdgKrYIai2oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oiaDP0ZDyvNz//HolrWkdurzO3KpfwzpGK8qC/QAq/I=;
 b=pDf2kKKgOs30cWAAtKCDN0HGgRNaUZRphbVTh2e4c0b2kfkIoyWvLaKE7KhJNkJDZRLgTTSdUzpIBTZdySW7IBomjrzEmFV8tYHqfSP0U4vRsthuvhhMkJXkteKk+3m7dehhKTkqrMs7fsljpjRNPbNMMcCAPr08OasDq3DsdSw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6020.eurprd04.prod.outlook.com (20.179.32.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 03:39:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 03:39:50 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V3 4/4] clk: imx: imx8mn: fix pll mux bit
Thread-Topic: [PATCH V3 4/4] clk: imx: imx8mn: fix pll mux bit
Thread-Index: AQHVZsA7ASB3/aYtU0CHBAGk/cnUnA==
Date: Mon, 9 Sep 2019 03:39:50 +0000
Message-ID: <1568043491-20680-5-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0004.apcprd03.prod.outlook.com
 (2603:1096:203:2e::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 705d22b5-2f70-42df-cb07-08d734d75e3f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6020; 
x-ms-traffictypediagnostic: AM0PR04MB6020:|AM0PR04MB6020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB602027938233DD417F2D3AD488B70@AM0PR04MB6020.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(189003)(7736002)(186003)(26005)(54906003)(316002)(66446008)(64756008)(76176011)(50226002)(446003)(2616005)(4326008)(6512007)(11346002)(44832011)(3846002)(6116002)(66946007)(102836004)(110136005)(2201001)(25786009)(8676002)(52116002)(2501003)(386003)(478600001)(36756003)(14454004)(99286004)(66556008)(5660300002)(66476007)(86362001)(71190400001)(6506007)(2906002)(256004)(476003)(486006)(53936002)(8936002)(6486002)(66066001)(81166006)(6436002)(71200400001)(81156014)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6020;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JJnUx1CG5bSAprRLeC02C4iSpFEt/p4cujAUFGsrehpSusTytw0iO2Y7tV7BHuJ1u7lvC7vfVPRPHhTgETlaIvPLAguqSSNdX+FXAliLTpxLlCvTQ20vX2Fn+ZN5dmoozn9GnV5S9daPt6rNv3PXMFMFsU4197Twa+dx6PHEIC9ryIKxA9khv8u3kXst7beSB2accr01Jj7taqQnfTvUouHqQmcDJ85XoDrQy5wRqAwB2SDeJaEfgqDt0ac61+dRHzJan3B9uznMFqXpHh2NTg7+HC21Tdvj+9Vy5CZBbNOdZi55frXNq/1xZKZepjKTSXDDrpFmFB5xHZ0e6bYPoE0RR3GVn5VyHeKG+D4ap/qgCYdDt4/l9Bn/Yb+bRVCRsThzpQJkGz0Tk+K/QyTEREVEkTDUeqipLLtbXvDpEZo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 705d22b5-2f70-42df-cb07-08d734d75e3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 03:39:50.1915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /eIteS62uZd03KYA5yZA2nii1QBGi8wexdrlH3TI3jba1VUSYp1AeVKLhrNmmqQg3DN/w+5Jiny22o9ZE6qtPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_203954_349675_4CEEBE65 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Suggested-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 None
V2:
 New patch

 drivers/clk/imx/clk-imx8mn.c | 32 ++++++++++----------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index f41116d59749..f767d18679ea 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -421,28 +421,16 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx8mn_sys_pll);
 
 	/* PLL bypass out */
-	clks[IMX8MN_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 4, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 4, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 4, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 4, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 4, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 4, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 4, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 4, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MN_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 4, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
-
-	/* unbypass all the plls */
-	clk_set_parent(clks[IMX8MN_AUDIO_PLL1_BYPASS], clks[IMX8MN_AUDIO_PLL1]);
-	clk_set_parent(clks[IMX8MN_AUDIO_PLL2_BYPASS], clks[IMX8MN_AUDIO_PLL2]);
-	clk_set_parent(clks[IMX8MN_VIDEO_PLL1_BYPASS], clks[IMX8MN_VIDEO_PLL1]);
-	clk_set_parent(clks[IMX8MN_DRAM_PLL_BYPASS], clks[IMX8MN_DRAM_PLL]);
-	clk_set_parent(clks[IMX8MN_GPU_PLL_BYPASS], clks[IMX8MN_GPU_PLL]);
-	clk_set_parent(clks[IMX8MN_VPU_PLL_BYPASS], clks[IMX8MN_VPU_PLL]);
-	clk_set_parent(clks[IMX8MN_ARM_PLL_BYPASS], clks[IMX8MN_ARM_PLL]);
-	clk_set_parent(clks[IMX8MN_SYS_PLL1_BYPASS], clks[IMX8MN_SYS_PLL1]);
-	clk_set_parent(clks[IMX8MN_SYS_PLL2_BYPASS], clks[IMX8MN_SYS_PLL2]);
-	clk_set_parent(clks[IMX8MN_SYS_PLL3_BYPASS], clks[IMX8MN_SYS_PLL3]);
+	clks[IMX8MN_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MN_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
 	clks[IMX8MN_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
