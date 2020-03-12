Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506E182C04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79Rbqm2tzCwUNzrmVxJDOALcCTO1NNvoURxGiSmfiCc=; b=XrAxs1+P7QKXBv
	l52Ewvicpbtiw/RQ97Ptdmd2Py0Dbgz9eytHsOGoo6O1hhac3nO+dVWiz1gO6qpxNatZcNmJTuTHf
	K1hj6Ss3+VqRj+FdtLORbSMdR9EPicrARFbl3sG9qA8KLqOvRb7P9f1Zw3twmDuexFKdQp1RVkB0v
	hKHaErkx3rZpwtjwLUGJTAIy4ABr3G7sVwVOtJK8gfXIY1odl2p+fXrcTg6qYQUpsUgKzPa4WMBwU
	NKMLPE668vt5v3bEAuULRkiKWZZMjBnYvHeFkSX1KqsAwjMPPuvmv1uGzMiM/oSRKURNVvN3at8f7
	sGZUUM7nc+HC7TtJD4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJqP-0003uH-N6; Thu, 12 Mar 2020 09:09:33 +0000
Received: from mail-vi1eur05on2065.outbound.protection.outlook.com
 ([40.107.21.65] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJpS-0003JU-So
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:08:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jT2ZN+GPuaqfnLA/IjuTHtJoBhP37YVL0e9SHiXrNmzPh9CG/hLzJmqOvCgNMfJG3PoNeXNGxkT0omw0iywEo6as+KPqLUNr5wat3/vJ99Ct7cgKka6OLjHPX75R3xGo2AheFNXJuNvKUwbTa7zaT0JHABElwW6pfWVeGoKZXgi+qVRwcrcAyBO0oax/DwMavqTRYcUuFwkuBMIRbEZAJhrrRqQrP7cgLSFMq5Dwpj+LHbz3RlN48ij0qIbbzxqyY3zhBiplvIZNyD6rmPBse/1PEN/qfWUJs8OxzAaA/vapOt3f6nsQtpY829QO9Z77Btoz2qaM7+bFdK3SqG3IRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rUAUsCpQUZJ9gP+pfE8jSDock7QDQS5zmJjQN2H95gM=;
 b=oLBzHm4Fza+DTjZT3HFckVnKYG6IdZFVUMa6qSTNmlYlEVJ/MA3G3iE3mst4anR6wHgAEPr9G+aO4evP6E2uf0HeME73m3h65dV3VA+vxTQ+QRjDB/K4R9LVCEfR0QO4ClS8E730C1YnvLY1tEet78IU2Ja24kqS2BdaMIs5ZWwRGSEtyUULXqxQdbXq16/gJJA3nqO7owTLOMjknSIbVgadRCtoQKrnos+QQFWstvRAoRs9x7LUBi0yBCEjfS3oFO+gbSI+CLGPw3Y6qG8sB+fIu15AUq4VmRkY4QJaMit/T/OE+5jz775jy34twq8jyGgd21JEJ/NqxkVpdP1Kkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rUAUsCpQUZJ9gP+pfE8jSDock7QDQS5zmJjQN2H95gM=;
 b=PDSdP0VauaG5iecWRnjSKM5PLy+gsVrB3Z+1i4Q8rEfdzGy9QUKrezIKujyN7tCaL2PMk4nalvFgI7Ynj45b33M+XeXySHxoJgVYyMIGJ2z49/CanRdz4pabKPfEnig/gLssSQ64Dl2cEAhNDIT9bZdwholkBcCBEvaS8t7mweU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4305.eurprd04.prod.outlook.com (52.134.126.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:08:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:08:31 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 03/10] clk: imx: imx8mp: fix pll mux bit
Date: Thu, 12 Mar 2020 17:01:25 +0800
Message-Id: <1584003692-25523-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:08:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 72497bac-8f2c-4c92-e2fd-08d7c664efa6
X-MS-TrafficTypeDiagnostic: AM0PR04MB4305:|AM0PR04MB4305:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4305925AE7DBCD07B5C9A18C88FD0@AM0PR04MB4305.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(199004)(478600001)(36756003)(86362001)(2906002)(4326008)(316002)(81166006)(81156014)(8936002)(8676002)(2616005)(956004)(186003)(69590400007)(5660300002)(6506007)(26005)(66476007)(66556008)(66946007)(9686003)(16526019)(6486002)(7416002)(52116002)(6512007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4305;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tP08OA67SaZVjThKKSRLs9U462OMocDz5VIoTD41YI05A1OoTc93xTNRwPZvzO/5uebMRReo9GNz2QSobgXgDQl4Mjs0wJuLc/95ja3VHaRsNSx/EVwsZNM7kvnsLZU+TYV8mofkCkGKI2flcRfw6MPFlHfhyCAJBPmJ+h1lPiaDJ7RKsQwjU7yont8/uOfK6eBMt7sJ3Hp2IyuN6so9RkJFBZI3zwDEg0XLjhFlmJHBNEqoJUXCdnwVYMS/+MWoOkCuuRPex1G8ySPsM8IeJ2HMkhW+/IUs0XDhltP7JurpFEAEwB70ZDf31G3t1gt67DfZwIglLLEFOJmjVEIDrVkskXIFnCw70gH8WYvql4ZFrVSbPP2gcRpzNJtey0xIiPcSgfZdb3fdPHkAOMUB9AS2YPWlPjtrzW8lBHaZbb75ZCWYz+L+MHQxrIqM99BNymz25tdBbC+GXw278IQUXVUULKJe19PKEn4d9t5IMeZRfZTV4lX9Cb17RzErTasnbYPw0cnxoYnGV+GhSxf81A==
X-MS-Exchange-AntiSpam-MessageData: m82KbdOv12FXNhUkqGengwMVFTdHzks9VeRvgxLn6l4jIaQIqGzc3orgC+7CQ5pqdm+lgsszE2ULYkQuEQREbQ7whPAciL2/RXp34HlY6JnbCAkqzkjK9C9E/5gcFFgIvCJj0JeDpKDMh0Iukoe2FA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72497bac-8f2c-4c92-e2fd-08d7c664efa6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:08:31.7974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7w3iGqItBElCZ2l5iaAbFgJ5Ho2TqOOzOyosXSXdJ5RD3eAJi2wazYQF7aIH2NGy1tGPIk40yRwjK7rurYzIrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020834_988828_D3AC8167 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.65 listed in list.dnswl.org]
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
