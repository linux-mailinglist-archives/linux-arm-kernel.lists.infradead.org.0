Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CED7173145
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0UqcyNr3iL0FlNYjZcJYom8GhCXV6uHJWKJfzO2laWY=; b=uoA/YDosj+Aty6
	xAU2+sNyBg0zegS4vogsbszcVLFi3TUH9N/QfcJzV46gHoWMSiy3MbtaRJVRtG2dL0ob1ChoUyOOz
	c50P6ecIJ2rf9W7M9bxha6SLOcz0/ZDWqYZefP0DMArb7r3u6FYcwTA24DQXHguEBhJ4eHpTLbg+z
	txT9qiM92IJYHa8SV52zm2reu0lXmhPZphSA0steraH9qriDtq2UKuO0CMOMD453LOmQRexMX2nLk
	k/ettwK1L4xx0+PIlZg/Vaq1M+NEK3bJARG3fw/N3PJ8JMf1Kgcqn2wQ5651NYgL6lArJ/83btHWs
	kX99Kyi6Cn6sgYrI7icA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZPT-0004Ky-3d; Fri, 28 Feb 2020 06:46:07 +0000
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZPG-0004K7-H8
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 06:45:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cUE2uJ2mhLfNr49q9f0/IFZxeR5vXOJdzezRAvQBOltjOecOlv1GClnbz+Ka0RGgbPEwIiakZ7986ELoUf0q+pGbVnu6QdjESO4njFXg7Q9AWpUcjnugN2SXYY49BHz70rwEovHlscki4BHFrHW6IHS4vLWSPtZWsHiuWzKu5RloRVzZF0eClgd6zJS4uMXXbQw8YFJDEMV/4GuAtlU2hkbr1RfyMCOoQ0jsY7hoDIhIZ6N1kyyAVdOdP8C1PTLzST1Ja0QQ7lhhpy3/m66pnsNyhpx7wwWzawX6FyKWgza+iW67DtHJ2iusSA4VO0WcpuBzkKPnuiNNjEM7hYUryQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKk+32uxcc5YoqAq1DxLlfO40QKeNJu2PFmfjm/50kU=;
 b=SNmiXRc2EyuPJHHTpJCm1IpdFnvliVgIOmdSkbrEp/9ve8T5JjzCDq4RDHT8jefdDpJAmLQeH4wmkt3YefTO+EPPpjEeEjQkmLO8qq5ZEpElKMi/oh8fd+3o1UqD2Ywx7z5GDaE1eRE8epGryX8r0siTeI1fX3KcFtdiF8b4hZOu+F9Qa2qYPjc/yfsPqbdiu8FZOZfkuxX92b42+IoqcI+4MHDWxzo5dGDSCjeswQmM+L4Iqd0KslYG0X4kQOoT0YrnYwVOFAP9WPaoePJDdASkoCj0ZbWCzSFlLpnEKsENvu0wYRAh8YnyYBQ7Pdk9dMt8Kw5zhu6lXki2YVJWTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKk+32uxcc5YoqAq1DxLlfO40QKeNJu2PFmfjm/50kU=;
 b=mq+al6rT0lBHqwTCDajXphY79SekhzW8Gtmm71jhh5xH2LZmKQzRGISs+ejUM5lkVGxr3pumHhsr2HGqot7Iyi8eolhYF5Ak2qLU5p8Vr3dkcko9MnYoiaWVLSTqhf0tQTgFG09T2VuW47SoXZbbApLV5Pu1Vv9l/n9/Go/oB3Y=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6354.eurprd04.prod.outlook.com (20.179.255.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Fri, 28 Feb 2020 06:45:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 06:45:47 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V2 1/3] clk: imx: imx8mp: fix pll mux bit
Date: Fri, 28 Feb 2020 14:39:40 +0800
Message-Id: <1582871982-29662-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0028.apcprd02.prod.outlook.com
 (2603:1096:3:18::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0028.apcprd02.prod.outlook.com (2603:1096:3:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Fri, 28 Feb 2020 06:45:42 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f96d6492-6987-4900-f8be-08d7bc19d71e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6354:|AM0PR04MB6354:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6354B48C4AE336672AA6C40B88E80@AM0PR04MB6354.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0327618309
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(199004)(189003)(2906002)(81166006)(5660300002)(956004)(66946007)(16526019)(186003)(478600001)(4326008)(66476007)(66556008)(26005)(2616005)(69590400007)(316002)(8676002)(36756003)(8936002)(6506007)(81156014)(86362001)(6486002)(6512007)(9686003)(52116002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6354;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XXOdhnjThP/lERKhqPVaSaiUROfaxuVx5fcJ8ihWq3md4MD+HwwnsjZ3YI+WKVd+B5wJ0xTsx9owYiglGsPvj1aWOofgqfLaACk+fqVZ2tPSlZtiTkNVyvp7Zjf6gNUDnbpcLG9iskMyCqD82mi6aXJ85N2LfW9zUjl5fNTYGdlZCyQ0WY8WN4pYBpymadpetLtxarGY8R9C3bctB9l8lSdBhFNSeAiNkFoP4ZvupehugLl8UH5E+t/Gri1KzE3KeDIoUvCsNyGqlht8TAOKoVlOjQnnbq2qy66ycYkxuVhx0j/y+7v8Fe1afuZ8f0JYTANb1AWjZwLwHS+3CmXPrASckcOb2/cPGXDLsOEHpMs9qQ1XZrF5XXkaA7Due9L55jSCwdoLFOE/Sfn+U+m/2hEZcmcCA4rJ6+lhovF0Xa1D5xVhU1kY8r/cNgLW/4BZB849wGl3UmalZU6v6BZU55fIIhH9tcXvwdg10tPbWJWxdz58QqFoMy0IDU5hhArC57UpuSxB1sY43gmWO97/Vw==
X-MS-Exchange-AntiSpam-MessageData: CV9TC3sI7gQzmKyykXyw8ZAsgdBg2sO/wUaU44NEno7Prm9sGwTuAEjMCnQNSaluL+4SLmbQBQesdbiarA8Tk6LKwIYNvVGsOvY8F5a0WrsfkKT34KjtwMpwOIxmf7ePCLa+JNN50m27dypZ4DXZOA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96d6492-6987-4900-f8be-08d7bc19d71e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2020 06:45:47.2626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kiphgUg/q3Wv4M65ntejkqlLrGpGJD33hjG1Vxhs6oMqU1jRH9S6wlTLW4C/73MgazfA4tbL5ooKvSz+wVyOyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_224555_830312_8511C83C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Same to i.MX8MN/i.MX8MM, pll BYPASS bit should be kept inside pll
driver for glitchless freq setting following spec. If exposing the
bit, that means pll driver and clk driver has two paths to touch
this bit, which is wrong.

So use EXT_BYPASS bit here.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 None

 drivers/clk/imx/clk-imx8mp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 7d558d6334eb..a85039cfdbf1 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -486,16 +486,16 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_SYS_PLL2] = imx_clk_hw_pll14xx("sys_pll2", "sys_pll2_ref_sel", anatop_base + 0x104, &imx_1416x_pll);
 	hws[IMX8MP_SYS_PLL3] = imx_clk_hw_pll14xx("sys_pll3", "sys_pll3_ref_sel", anatop_base + 0x114, &imx_1416x_pll);
 
-	hws[IMX8MP_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux_flags("audio_pll2_bypass", anatop_base + 0x14, 4, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux_flags("video_pll1_bypass", anatop_base + 0x28, 4, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_DRAM_PLL_BYPASS] = imx_clk_hw_mux_flags("dram_pll_bypass", anatop_base + 0x50, 4, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 4, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 4, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 4, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL1_BYPASS] = imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 4, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL2_BYPASS] = imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 4, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	hws[IMX8MP_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 4, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux_flags("audio_pll1_bypass", anatop_base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux_flags("audio_pll2_bypass", anatop_base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux_flags("video_pll1_bypass", anatop_base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_DRAM_PLL_BYPASS] = imx_clk_hw_mux_flags("dram_pll_bypass", anatop_base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_GPU_PLL_BYPASS] = imx_clk_hw_mux_flags("gpu_pll_bypass", anatop_base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_VPU_PLL_BYPASS] = imx_clk_hw_mux_flags("vpu_pll_bypass", anatop_base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", anatop_base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL1_BYPASS] = imx_clk_hw_mux_flags("sys_pll1_bypass", anatop_base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL2_BYPASS] = imx_clk_hw_mux_flags("sys_pll2_bypass", anatop_base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MP_SYS_PLL3_BYPASS] = imx_clk_hw_mux_flags("sys_pll3_bypass", anatop_base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	hws[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out", "audio_pll1_bypass", anatop_base, 13);
 	hws[IMX8MP_AUDIO_PLL2_OUT] = imx_clk_hw_gate("audio_pll2_out", "audio_pll2_bypass", anatop_base + 0x14, 13);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
