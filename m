Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF5182D8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79Rbqm2tzCwUNzrmVxJDOALcCTO1NNvoURxGiSmfiCc=; b=bKT+JQFR/44Skc
	OZLHi+1tMDd0tLT2NscICFQ/mtAL6wcBQ5/nSlIOQm8TWq2ftsPx42594sUM8e0QnwaSRrt/fA2e7
	x0SKyztFOi3RLJ631ES+XER1EcNsU8yaMtEg22bdG5RHbf/QH1Il8MgNRm2o3mVXpZy2zDhCpipHM
	8Rl7HVo8pcjqHqPrFBxzLG7VTDQ5Mmdd4zDzN6nmF5c3vI14EPuXa8EJebT4g7sEDlkIy/3yAFne3
	pIPwp0i4oFs3BDTZyphQGazd+b8VRp4mCCCb2lfQcXeSEpvKRu0Fk7Z9o2LZKo9DtsyTwOO4SLaCO
	Y7bhwig14seJdom0DD8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL44-00082c-Pz; Thu, 12 Mar 2020 10:27:45 +0000
Received: from mail-eopbgr60079.outbound.protection.outlook.com ([40.107.6.79]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL3I-0007V4-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:26:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duR7sjoqvAPikR+yRv5gLKpYiRXSi2q5Rxm+vKQi1ad+8DzoAKEYGm5Wf3kCdnXWKHv3ht/Nq+ssjUifqbj5yRTnV1NcHP3BU2dGe/JGaUKiLnsdn2yfPhKvaIF7JHPc59Lu8rQCClij1h49BFM9UQ1fdLrwhQNobdjk8v/fTnAodzqUErE2mzw73k7kg3mgA4vwJBc+DRdDjsPXlIBq+bp/JSPvWti7/XQIkqBwm19fDv/qfAXgsyAhzpazYY7cyBSmw431RefI5jmBuP5l+6/PQtJU01+9O/94PAc+4WAa2saC3/vFZ0JMZ3j7j22WmYwbzSySggdBZtxR74ne7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rUAUsCpQUZJ9gP+pfE8jSDock7QDQS5zmJjQN2H95gM=;
 b=j5+9clOsg9FaSirNr9MoaN4ysGfSy8auKbbz4VXaN4cVHhdBoiwK4gxrFRAASTDXUGMnp/BCuaHhqIZ6GoK95+2hA1wCNOmSXh9FZiktpUyq9woqbYAQaO5y+OUCFqIS4ZONQafaJZj0eRbgJyH4rs0dfWVBoQMvoXxd7U4GfeDHtrwFlxdiH7cr85FcJ7sNBiTEngMRwy9SL35pZ9FrbFA0dDwT7QnZbjwucSE23z1nBUicEXCyagrHLzNzIygVqWIzIWq/Qr/VZXvUDYhA5Qljk3OZIwarSEaEh144UZgV3rK1pIY2dv0QL/Si0i3bi9KEuLA/jpuqMXooIQxq/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rUAUsCpQUZJ9gP+pfE8jSDock7QDQS5zmJjQN2H95gM=;
 b=PzWHygPOaz8HzkJaCFfSqmQVB2YizJVZxaqHLWzgrsz8SozaiH5TAZq9nl6UOHk2eGWvM9sEPxTid6brlxhBwqYI6rGq3T/Cfqr50CCLQHAtGnaBN3aTBtjWxpUrt3Omq9qwpa7FQheoCIEf5QLxDOMNlTa/kAkNsX6YVPyxcEc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4195.eurprd04.prod.outlook.com (52.134.92.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 10:26:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:26:51 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 03/10] clk: imx: imx8mp: fix pll mux bit
Date: Thu, 12 Mar 2020 18:19:37 +0800
Message-Id: <1584008384-11578-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:26:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8046d009-1c17-41ec-6fc7-08d7c66fe0d8
X-MS-TrafficTypeDiagnostic: AM0PR04MB4195:|AM0PR04MB4195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4195F49468B778F30C5D61A888FD0@AM0PR04MB4195.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(956004)(26005)(6512007)(9686003)(2616005)(86362001)(8676002)(186003)(6506007)(81166006)(6666004)(8936002)(7416002)(6486002)(478600001)(52116002)(69590400007)(316002)(66946007)(66476007)(16526019)(5660300002)(66556008)(36756003)(81156014)(4326008)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4195;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mF63hHsdEv20yGxfzZyroQ9oMaSdPli8f4yhOgexCtcY2e70h/EqOFC/XnFHvdKUo9qNpllpVZ6vX52NOfMBJxBUvtHv5rUh8QoCMsvzf+2nxOkVidEOCSC54J5BIwnFehM1zSdkuTidmIpYuO/11JTf2xRnUMK6dt6xMFl6MdaAqun2kNmsIBh/xfkaUg/ZtkzqQsL2fcCSnfM0ZzuaBBSFcD9e79cblGHMN03/0Q9aZENOfWTsRtXEUnZ1HdjTUGNuCnTSgrkK5ux4mGjVBoqf/D2cdkcbY2sLEzpYpxqvFu76LB2kr0WAGQfYWytEG68kFoCRfN/r/CivgnY5If6ggNQ8AoUIibbWi3157oqk/7VOM8PIz08VdHzm7fC43oWLXkZr/wZWpd63OOJeWEnfuhxarhqVH9ndNrPTabfR/D4xjQnXkJu41T+Tq+ojPuFUmMmzCR/3Jd/IysA34v6J9q8nDrkIWGTNXkY+GnYwMMREgPLRdiLCi0t6Z+thZmHuGzQSaWMPd4aHZ+DxzA==
X-MS-Exchange-AntiSpam-MessageData: lhFqjPL3ykMoX6q9WiD7lcWT3ZJG/ClHQC/XOOqEgVVgU2z10+/2WzyFQlfyx5Bq/vtRf9rLdKyOWY4jsNbrzmcXV2AgqMZlRRNqa2pQc+wlXNMJuPebjk5CsrjK7kqcqizi71xnNisPg7yWXcrEWw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8046d009-1c17-41ec-6fc7-08d7c66fe0d8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:26:51.4923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8MkY/+1j3ElNe+Qd9GmYcpclgUw4b+nhAWQ+YliAIbRq/0p9kMk8Lj5kDHT68IuZPLzCCN716abcfuOw4UbpwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032656_869538_B2232DA1 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
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
 drivers/clk/imx/clk-imx8mp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index e05ec56df285..e9ed8a188031 100644
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
