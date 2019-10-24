Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048D4E27E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHvJB+RvaGDgCT+Eu3A++WmTvJV0xynb1nNWOEKUwvM=; b=aCgZqxHzOHwVkd
	VXkgXHJVPLyV0blJhkQgP72GuLCd6eFrxaOJj0yaGuH1/8gAlOpRZgfR0w0gcJrahCvzvGT9cdl6b
	dcMVUkteedUBHfcHaAMYqTdNewgyhwdaoR/uUvWo1uzWWTSJtlc2whrlSIqzqTPN03NGHsYuZbNDc
	5Vwagwm98wZUA/ORFQF/JNbjVG/p25qEz6lcN11BgRG5OvnmeoSwsK8wWApqAu3wyJdJ+F9mLUAJu
	6xiZf0WmNdPJ6qm9bR3N7s3B/50Qcp7WvERLSqloaBk1pX/bAJaZEMgmrtJdVUQKMAN5Z86CjGCgu
	ggkNAQ/3CADCfJucJBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSPA-0003HB-LW; Thu, 24 Oct 2019 01:59:12 +0000
Received: from mail-eopbgr20049.outbound.protection.outlook.com ([40.107.2.49]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSOd-00033d-9l
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dt0sUf5eqk6DDLoMNLttsKxfP3KHDWQzMkCICMzZtU1g6YW2O9VB8oq2s0yvPIbiuypHZKLy9/RrG+62gKpn2keZa2yOmA0lNLH4b/0N2lnyvwwlmAXlnAGSFThcB+YWh+GCYIsUeOii7i1/E7fgj2JVzg8ij4+MXKE6zHc/2EolO/JAH4Rnhjb0xbscrnMuziKTvupYqZzUx0ZUyQNbr5HujGglMQXxkyXE0ko3xjK4AXzmHQQTpl6raWXrPa3IO7/Nq7fp3GPp9Liif0a3nuzlPWA46omanIHI26KfewvPExQcOoxmQEHVSd6lMCTaD84f3OPqn0d0cPKXce1ReQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AdwFpOOQQAxrAxE9yVpjHUfb4Eck97SrQBfAPjSXg8U=;
 b=QsRiynI6vJhRXrLa40yKkICsPMOKnlmZtWnee3ahDe2/BlxasRHOcZNwEqNTPcTW1MHp2aU5oe0dpXMStbqwsb6D57McKMtEA+qa5/U39Vr1gBm8d5cSmsb02XJ86nqseabJSqLfgdpOUaL/tGkM2w8urrSrTK0bG6FZhkLCqtzLG+aeX224TFUO9FAzD+fBUk6Te3sUSu/GhMNBNki9e36BoDuSU3XOeKJxudJ/iuaTzfXLcw2fhrqONu6V314fHok8Yr4O+3okLWrIlE6qVEDXvZ0+51ZhnOMo4lrPehnZPSNzwoBv24OCAYmjveqGUSVuxyN2ApfPTt9ylYjYyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AdwFpOOQQAxrAxE9yVpjHUfb4Eck97SrQBfAPjSXg8U=;
 b=EoHz3Xp+YxbcWtGj8RuFFeI9fb2d6ddy51mBYnj6cCE8CExOgpNVm0j42291sOrqm7Mf/c6/wjCwb5Aa4RcnZm4I7FtzAYRPc8JLm3R8DlRgfUMIBFb5AgIlU0uimJ3gf0PRxEPpASXjMPGaYFq5qmCW1P7euhW1p+GJwmLvFEI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5988.eurprd04.prod.outlook.com (20.178.115.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Thu, 24 Oct 2019 01:58:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 01:58:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Topic: [PATCH V2 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Index: AQHVig6MQ103hGnd4Ee+AlCTudVChg==
Date: Thu, 24 Oct 2019 01:58:37 +0000
Message-ID: <1571882110-10191-2-git-send-email-peng.fan@nxp.com>
References: <1571882110-10191-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571882110-10191-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0082.apcprd04.prod.outlook.com
 (2603:1096:202:15::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a391c253-1b64-4dd3-7021-08d75825af20
x-ms-traffictypediagnostic: AM0PR04MB5988:|AM0PR04MB5988:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5988B92170B4DF8C3645F8B1886A0@AM0PR04MB5988.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(186003)(26005)(316002)(4326008)(64756008)(6116002)(71190400001)(6512007)(6436002)(2201001)(76176011)(305945005)(25786009)(36756003)(14454004)(54906003)(71200400001)(478600001)(110136005)(2501003)(5660300002)(7736002)(52116002)(66556008)(2616005)(99286004)(6486002)(476003)(446003)(8936002)(256004)(44832011)(386003)(86362001)(50226002)(6506007)(486006)(102836004)(2906002)(11346002)(66946007)(81156014)(81166006)(66066001)(66476007)(8676002)(66446008)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5988;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2vxNC8d+We1h/TJlE7fnajgZgTHs3u4QSW2+/mxMzfr+WxM/gNGWYKnErZRJNN9UnFZeecKEGL0GY8tvA+TbevO1Kxu3rYtNBsySRjgmRzfvb7ffssg+KoUkQZJ9DQij4vE/g4zBeq9s0/1kwvQiDpstbQQXwJAEO5brguDB4bhaI6cZiZpKYjx/kZZq7wLXmMnTK4YUW3s3Ml3DPsSsDZQHX6pIA4Xb8ng4k4W6G1XxYK8d4b3G6V5KnvvK6+NOs9BaZfZxZQ+nFHm05HqCKIU0Brtepz5Tn7Q0XTshQOJzoCjiMlOg8UpQYyOwiXgdZMKyoHp1iS9Yv84r44MMmaMHS+Nyu2ny147kNYrrbrvmppcdKcL2DzXwez9fH6frJpXXt2k/Qp0Eogi4aPDrzVBRAc/iN0lJjTFeWt33Ky1pKEKfznno4PplSV/7vm7m
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a391c253-1b64-4dd3-7021-08d75825af20
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 01:58:37.2926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hOMgRNTHaJ+Z8cbmbHvYBxhgrSzkgKN9C5wqxlsYQXqQaD9bDD5GAOOHy/FPBuc4Tz4Bwq+SLy4nmAYyRFVHLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_185839_344552_A8684F0D 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

According Architecture definition guide, SYS_PLL1 is fixed at
800MHz, SYS_PLL2 is fixed at 1000MHz, so let's use imx_clk_fixed
to register the clocks and drop code that could change the rate.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 46 +++++++++++++++++++-------------------------
 1 file changed, 20 insertions(+), 26 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index bbd212eb904e..ef307145e5d3 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -34,8 +34,6 @@ static const char *dram_pll_bypass_sels[] = {"dram_pll", "dram_pll_ref_sel", };
 static const char *gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };
 static const char *vpu_pll_bypass_sels[] = {"vpu_pll", "vpu_pll_ref_sel", };
 static const char *arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", };
-static const char *sys_pll1_bypass_sels[] = {"sys_pll1", "sys_pll1_ref_sel", };
-static const char *sys_pll2_bypass_sels[] = {"sys_pll2", "sys_pll2_ref_sel", };
 static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 
 /* CCM ROOT */
@@ -325,8 +323,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL_REF_SEL] = imx_clk_mux("gpu_pll_ref_sel", base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_VPU_PLL_REF_SEL] = imx_clk_mux("vpu_pll_ref_sel", base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_ARM_PLL_REF_SEL] = imx_clk_mux("arm_pll_ref_sel", base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_SYS_PLL1_REF_SEL] = imx_clk_mux("sys_pll1_ref_sel", base + 0x94, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel", base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
@@ -336,8 +332,8 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
-	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
-	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
+	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
 	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
 
 	/* PLL bypass out */
@@ -348,8 +344,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
@@ -363,15 +357,15 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
 	/* SYS PLL1 fixed output */
-	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1_bypass", base + 0x94, 27);
-	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1_bypass", base + 0x94, 25);
-	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1_bypass", base + 0x94, 23);
-	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1_bypass", base + 0x94, 21);
-	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1_bypass", base + 0x94, 19);
-	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1_bypass", base + 0x94, 17);
-	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1_bypass", base + 0x94, 15);
-	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1_bypass", base + 0x94, 13);
-	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
+	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1", base + 0x94, 27);
+	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1", base + 0x94, 25);
+	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1", base + 0x94, 23);
+	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1", base + 0x94, 21);
+	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1", base + 0x94, 19);
+	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1", base + 0x94, 17);
+	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1", base + 0x94, 15);
+	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1", base + 0x94, 13);
+	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1", base + 0x94, 11);
 
 	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
 	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
@@ -384,15 +378,15 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
 
 	/* SYS PLL2 fixed output */
-	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2_bypass", base + 0x104, 27);
-	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2_bypass", base + 0x104, 25);
-	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2_bypass", base + 0x104, 23);
-	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2_bypass", base + 0x104, 21);
-	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2_bypass", base + 0x104, 19);
-	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2_bypass", base + 0x104, 17);
-	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2_bypass", base + 0x104, 15);
-	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2_bypass", base + 0x104, 13);
-	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
+	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2", base + 0x104, 27);
+	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2", base + 0x104, 25);
+	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2", base + 0x104, 23);
+	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2", base + 0x104, 21);
+	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2", base + 0x104, 19);
+	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2", base + 0x104, 17);
+	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2", base + 0x104, 15);
+	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2", base + 0x104, 13);
+	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2", base + 0x104, 11);
 
 	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
 	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
