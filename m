Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5489016BB5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ng9A9c/MlF5nWjFPSSHef74Nv+PCSEKxnAiB5dYTkY=; b=n0cQ0ePQqKN2mV
	u1roSTAnpYaX3ugBxbUMLkf6/4s/eROYyOVgWta3m+rXoqwr+li00jT4PHrsyuy9TeSiC8EUagi6h
	W2DUIobyiPJ7c6HZchsgPQzlXEbrTWDcyjq4l1fctjGV/X3nfyY4DzpYMQ+X58VcGlrs1+pL/b91h
	Rv31qv2orqTWTUNG6GFiGxsuKsOlerj+6VnuRb99lyH2cIpE+WLQRGLztbiR7dBHiH5mFYlFV/XbA
	TvBuqTOXDib1X6HK3uJjpZrIGGwYCzI5+hOj6n/13DlSbYmAlb1z0X1s881qwnCqqYzM2Y4rCFgoR
	F40wwnARCVBcIwuTN0pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6V53-0000bm-Gt; Tue, 25 Feb 2020 07:56:37 +0000
Received: from mail-eopbgr40082.outbound.protection.outlook.com ([40.107.4.82]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V4a-0000MW-Nv
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:56:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KgZesLsg3DmYVSLS+ShutF79UVVDGStcR1MKv3VPrY2CGZTNQ1swe/Xc2PGyzuFpSzxNnXjhKqiDWkuNLyhnerdCHDpaHlcAENlqU8Q6TuDfU+B48mjXPV8ZjojMnhEk7V8Sg0POTA1OYBQ702a3MOYCBojcLqTHJptpVkXpto60Hh6akLBVBfUQwCSb1Y+oAYKVgpDy6aMTuEGZZAOlFq42hptMR2deEwTo1mWrTNtRIbTC35XqD5SLv/U13Mdb7UtSownlGmMJVK4CWYAY7Ge8CxPEyEn+PRECSolp0Doh+twUYmjZjyOsnMez5w2z9gcTsEjPzx6dOZlZC6XuoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JZlfj+R1EEVwkKCMSzlui2yPZvXQr7hlDE5I4zQZ+Z4=;
 b=JyaU4YoFj8i5qJIu4ndQeUttVJr761Hr2ImE7wCoQRnjtwLcGFkMSM9/S1TeGs8e44rTsredBxHiMZzuQ9cFwUCglGN4+sm09XAdSMZISxCbZoBNVw+Fv/fXIMUzVKZeMKJCI5/Hd0oDdOqPYYEvv0eV02e66aAQYj7vCxtsssI7SdQ4lX9YVEEOqIM4mmxBvr+3Lqx47FoTBaTAyN8G+jB/BbcNtmwh7nzB5pkFPA9EFWNSioO0rogHaajFv+NR9T7EJpVuH9+Oq0dm9OV/kSm9nazRbovnMxOE381CmXZL5UlBd+yLhBbbRbWmiiCzCswCye4cY1ZkarxmBp7J6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JZlfj+R1EEVwkKCMSzlui2yPZvXQr7hlDE5I4zQZ+Z4=;
 b=lXN1K64v55KGHTVHPLjPka1k76BK1gS71eqgZvApIPtgkD9WavX8y14jQarihUP7m8/BlQa6HSnNOUW7iR7QN6wzGG+Qx0jsg+E3b2ymKqpSb2jVqILbE7FfI92/cdmA3lbHumlO/jIhI9Jb5ieCu8VzNwxalQRetbioBXd4dMA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4562.eurprd04.prod.outlook.com (52.135.148.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 07:56:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:56:06 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com
Subject: [PATCH 2/3] clk: imx: imx8mp: mark sys_pll1/2 as fixed clock
Date: Tue, 25 Feb 2020 15:49:18 +0800
Message-Id: <1582616959-933-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
References: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR01CA0056.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR01CA0056.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Tue, 25 Feb 2020 07:56:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d5530937-d8db-448f-a5d8-08d7b9c82afd
X-MS-TrafficTypeDiagnostic: AM0PR04MB4562:|AM0PR04MB4562:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB456225FB22087D9CD079107688ED0@AM0PR04MB4562.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(52116002)(2906002)(6666004)(86362001)(36756003)(478600001)(81156014)(5660300002)(8676002)(4326008)(8936002)(69590400006)(81166006)(9686003)(66556008)(316002)(66476007)(6486002)(186003)(2616005)(956004)(6506007)(16526019)(66946007)(6512007)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4562;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sqMdQ0dJTeam3+DgXrhY3R40aULZ40KMsnZPOa4ov/NsJoAqr7Ys1WhPUK/czU+mM+S0GUWZ2Y0TkhLiaE7OPIWmKtWRN05GwyP7qGinJvWEJtHIqZSICskfaC1L7UsWdssAH/hcetqKKXC8ZkF0n2TlLbYZqi91U4iIq9A6bn//+saor7HsvJU/8kXx2aFPGmZIKIX2sYxxSZmorwQD68Qztp/NuNbDxC1iRbz64Jd+8CmcOk3Ups15zw24Q9d+aT4gK6MwpPdFtscRJDzqRxLU6mM1KbLNgrIwDIaaMSxTJWaFmgY5OW4+e42EgH/POJXqF93ztiZ0BAoxT1ajuheTeoR2R5RXVfHGr0s3VOt0uwnTpFedSfBz3WIA8vnmMByrcqIFNZqbHL1UZSk5n+U/OdRC8d5wXkNexiVK6whBiUz+Z1tOVugJVgKpQoCkivB/Jov/BSWXP8DvVFRwJFPldJ5uNR0I+QNOkF5XJNLU84LKI8tjGUBDU/OtE+JhFRwistIOXastIV3x0We9zUIgJI3ydEH0yjrAEyItBxyHIVOFj4yX9ZyVBb4HBC1D
X-MS-Exchange-AntiSpam-MessageData: Da2NcZWn+Md6ExGI121afpt2OJVkiwErbnkHjwLefRa6CCsAygUTBzT/xeOZ3iAgenxIHVhujMhLXTI8PhqI4p73K6Z82lr40nhqykZazq/yNHXYTZyA9X0xWs/3UB8cVl1jAUiuHK9hyv6WAlpwuw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5530937-d8db-448f-a5d8-08d7b9c82afd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 07:56:06.3547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ji7+uTcek4AyCyOTd2sHBYtwu0N7+8QkiOFGsvMuaMnyvp6EzxjCiaj87mCBbhDNBNPPHCdHq5Jiex93UY58Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_235608_781808_2AC8B87E 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Same to i.MX8MN/i.MX8MM, according Architecture definition guide,
SYS_PLL1 is fixed at 800MHz, SYS_PLL2 is fixed at 1000MHz, so
let's use imx_clk_fixed to register the clocks and drop code
that could change the rate.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index a85039cfdbf1..77b79f61aab5 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -26,8 +26,6 @@ static const char * const dram_pll_bypass_sels[] = {"dram_pll", "dram_pll_ref_se
 static const char * const gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };
 static const char * const vpu_pll_bypass_sels[] = {"vpu_pll", "vpu_pll_ref_sel", };
 static const char * const arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", };
-static const char * const sys_pll1_bypass_sels[] = {"sys_pll1", "sys_pll1_ref_sel", };
-static const char * const sys_pll2_bypass_sels[] = {"sys_pll2", "sys_pll2_ref_sel", };
 static const char * const sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 
 static const char * const imx8mp_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pll2_500m",
@@ -471,8 +469,6 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL_REF_SEL] = imx_clk_hw_mux("gpu_pll_ref_sel", anatop_base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	hws[IMX8MP_VPU_PLL_REF_SEL] = imx_clk_hw_mux("vpu_pll_ref_sel", anatop_base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	hws[IMX8MP_ARM_PLL_REF_SEL] = imx_clk_hw_mux("arm_pll_ref_sel", anatop_base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	hws[IMX8MP_SYS_PLL1_REF_SEL] = imx_clk_hw_mux("sys_pll1_ref_sel", anatop_base + 0x94, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	hws[IMX8MP_SYS_PLL2_REF_SEL] = imx_clk_hw_mux("sys_pll2_ref_sel", anatop_base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	hws[IMX8MP_SYS_PLL3_REF_SEL] = imx_clk_hw_mux("sys_pll3_ref_sel", anatop_base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	hws[IMX8MP_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", anatop_base, &imx_1443x_pll);
@@ -482,8 +478,8 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", anatop_base + 0x64, &imx_1416x_pll);
 	hws[IMX8MP_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", anatop_base + 0x74, &imx_1416x_pll);
 	hws[IMX8MP_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", anatop_base + 0x84, &imx_1416x_pll);
-	hws[IMX8MP_SYS_PLL1] = imx_clk_hw_pll14xx("sys_pll1", "sys_pll1_ref_sel", anatop_base + 0x94, &imx_1416x_pll);
-	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_pll14xx("sys_pll2", "sys_pll2_ref_sel", anatop_base + 0x104, &imx_1416x_pll);
+	hws[IMX8MP_SYS_PLL1] = imx_clk_hw_fixed("sys_pll1", 800000000);
+	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_fixed("sys_pll2", 1000000000);
 	hws[IMX8MP_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3", "sys_pll3_ref_sel", anatop_base + 0x114, &imx_1416x_pll);
 
 	hws[IMX8MP_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
@@ -493,8 +489,6 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	hws[IMX8MP_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	hws[IMX8MP_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL1_BYPASS] = imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL2_BYPASS] = imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
 	hws[IMX8MP_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	hws[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out", "audio_pll1_bypass", anatop_base, 13);
@@ -504,8 +498,8 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out", "gpu_pll_bypass", anatop_base + 0x64, 11);
 	hws[IMX8MP_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out", "vpu_pll_bypass", anatop_base + 0x74, 11);
 	hws[IMX8MP_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out", "arm_pll_bypass", anatop_base + 0x84, 11);
-	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1_bypass", anatop_base + 0x94, 11);
-	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2_bypass", anatop_base + 0x104, 11);
+	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1", anatop_base + 0x94, 11);
+	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2", anatop_base + 0x104, 11);
 	hws[IMX8MP_SYS_PLL3_OUT] = imx_clk_hw_gate("sys_pll3_out", "sys_pll3_bypass", anatop_base + 0x114, 11);
 
 	hws[IMX8MP_SYS_PLL1_40M] = imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
