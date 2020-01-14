Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA85F139FDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0srTaUSmvwl1SOLiz8ZuyuecTw3E5yiiSGmcJwc6QMc=; b=Ji52hXoNzPZcMf
	0l+SfTuJ9PEBKYlyGEhbnvHDRUs6jDNAVfdb6/54bTlp3cZJX4FcS1WchOA3GBI82f/JC+TPCRaGV
	oB0emm/V75vsNrYC+o0W3AAnfLwnp6yEvDXHJcBY8HIVlSXuGoFZwnsiN4+r1qo+Arzhnt1xktfgF
	DGzDnP85O2pvO8I29AZ9Dz9aXGE+vZKShNDMNM0guZE/GKCv0biIj7RT8FSlbQCHNyMIF1okv1+Zx
	i9mUnhYxLOWK5ZAB6TRlxFKx44oATtCT/U5LbUzBrWGfrdxuOhBpkeBYGnr3a1qPpH9isdb1v/WCp
	559ojWb63HI/nMvTjIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCii-0006XV-Kl; Tue, 14 Jan 2020 03:18:20 +0000
Received: from mail-eopbgr80049.outbound.protection.outlook.com ([40.107.8.49]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCiF-0006Mx-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 03:17:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Roo+m7FyyVLXvj4alQZAJeOu8xqGZiaST+gswVbPlWLjEtj9TZS0QKHYvap+GIefBhdwDxII08ABp2bHuorWjbzAgugURvBpFxJ0NavyNm2iGv89OpUTx0Gbd01I6mMq7CnZxtSI6zCUjlZPixCVY72b8eC6cBS6WhLKptda21BBEujV2SIkZ6H78upE5gY5Rw6EmH8dX5T/j23fyZGpStKtikfw4ayK1ABKVB2wqIG2N8QsuM9lxfx5vI7pHYF2gYXtRZqsWQ9rnTPPvaCMMffkipvLNwnebeE/vcY06eBE8Yl1JF4sggaDbbWYieMU3jG8+dFe1fmOe015nPXa1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bd41YTO7V2vcKq1lyuaUJUAGRBryQvukGajgNO7u/Vw=;
 b=Cc3jybfCDUoIiFX3upUo6XdhmeeAC3/s6LgUN+aYwSTvUrWVv+b7tC7vH51LOk+44SLW2vV3726kvzF568IA9G1oLrW+xuFnWUaq13i6IFJK7EUtXmcad7rSKLdV8dkFe2Wc1JEA1qAiXNqKANmvne/0Gs4LqPB3WirnEdQJPm5ZLo6CAC9glVqzK/gR80I+1MmYRZXDO081Qqa5JtAYfjSB+5RE+1QqJ7Fx7tY2oQjSyOuKtJtDNnYrzUDb10x5Sv13WDJwTeyy6adpZSHcrCABeB57QSNjKWphKO7dMqlsAQHg6HOL3F+q+6OOzqP21Corju+0GXjLOXEv1RHF1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bd41YTO7V2vcKq1lyuaUJUAGRBryQvukGajgNO7u/Vw=;
 b=fkW8VVzkGlkChmjjtUcJRXR8tSHaXATco9i0ZAq8i8Q6JgBuOwbvgbMiFRAAGy0HxkqADITwRiaJequIVOfiHXO7DPdrNtgEKjOTkA5vHwBTqfg68+8T2N6M+myFFEBhTjPHhjN1J1SoMsy0ltHvHnrWX7TLoH5K8nvK3g8rvZ0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6755.eurprd04.prod.outlook.com (20.179.252.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.11; Tue, 14 Jan 2020 03:17:49 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 03:17:49 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0002.apcprd03.prod.outlook.com (2603:1096:202::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Tue, 14 Jan 2020 03:17:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Topic: [PATCH 1/4] clk: imx: imx8mq: fix a53 cpu clock
Thread-Index: AQHVyokzBaGSUiSHrEmXWJ8R7ZCvJA==
Date: Tue, 14 Jan 2020 03:17:49 +0000
Message-ID: <1578971599-4277-2-git-send-email-peng.fan@nxp.com>
References: <1578971599-4277-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578971599-4277-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0002.apcprd03.prod.outlook.com
 (2603:1096:202::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 359d0b08-f4c2-4cbd-b739-08d798a0559c
x-ms-traffictypediagnostic: AM0PR04MB6755:|AM0PR04MB6755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB67554EE8C153762F0D82D3E588340@AM0PR04MB6755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(376002)(366004)(346002)(199004)(189003)(6506007)(478600001)(4326008)(2906002)(66556008)(66476007)(16526019)(64756008)(66446008)(186003)(66946007)(81156014)(81166006)(6512007)(26005)(5660300002)(52116002)(8676002)(6486002)(71200400001)(2616005)(956004)(8936002)(86362001)(36756003)(69590400006)(7416002)(316002)(110136005)(54906003)(44832011)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6755;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5h3gDqRpSWli+BJfu92ZRgcoCLsZ9htcooKvtug6pxBzbNWFmu5btCZMq+vWNaVc7H6IVMYJVOc/ERDTFzJpqt8a0xk54cigZyrieopdbgV2ljOkc2nkfzkGGOrnVmU2OeFi50wRR3m9lUgBt/PjTK4fwXnPOIbslM8+KFTqTaBKaq6A5ANbreEEUQRys32UVU5yvz2nTMHZ1Lk/xHN15sz/OX4aStnPlK2ig3opAvh7/74aQwmwSWWb3RUOd9zbcaIqX8p7qd4IcxFp7ZEWfQkDZGmqRH/2MrEXu3BklKAkf+oruPZhsa2eBwRyn4SzyloB64lqvhqPZkkqALZNz41f4Qu7BAid4fnGNYiNGqj0GQZBhOEws1OKOJkpesp7DfyvGhQ7lXQzCD5CXtepXNftSedE4iMVvzg8eOzL4yk48iq5S8jBVsduXkLws6bfbqGNKBCAbFJHG1jQso2IG2l5FzJeDAInkgTTgrUI1AQ6FBfL324qjnAz41gX2vhit9Z6O6GRaEzWofIKqaLmfQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 359d0b08-f4c2-4cbd-b739-08d798a0559c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 03:17:49.7626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +KWK3+ErCUqwaZamN1TLB22R4CUhR/4UEPmuuqNSsJ0BvTXwF3oZ+vL3+MrC9h/yxyFXQ1svJ3Zo6aZh+nu4nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_191751_994096_BCEC4D9A 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.49 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which voilates the CCM.

There is a CORE_SEL slice before A53 core, we need configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
Configure a53 ccm root sources from 800MHz sys pll
Configure a53 core sources from arm_pll_out
Mark arm_a53_core as critical clock

Fixes: db27e40b27f1 ("clk: imx8mq: Add the missing ARM clock")
Cc: stable@vger.kernel.org
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index b031183ff427..82a16b8e98a9 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -41,6 +41,8 @@ static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
 static const char * const imx8mq_a53_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
 					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "sys3_pll_out", };
 
+static const char * const imx8mq_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char * const imx8mq_arm_m4_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_250m", "sys1_pll_266m",
 					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out", "sys3_pll_out", };
 
@@ -411,6 +413,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
 	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);
 
+	/* CORE SEL */
+	hws[IMX8MQ_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mq_a53_core_sels, ARRAY_SIZE(imx8mq_a53_core_sels), CLK_IS_CRITICAL);
+
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
 	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
@@ -574,11 +579,14 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MQ_GPT_3M_CLK] = imx_clk_hw_fixed_factor("gpt_3m", "osc_25m", 1, 8);
 	hws[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 
-	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					   hws[IMX8MQ_CLK_A53_DIV]->clk,
-					   hws[IMX8MQ_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC], hws[IMX8MQ_SYS1_PLL_800M]);
+	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE], hws[IMX8MQ_ARM_PLL_OUT]);
+
+	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					   hws[IMX8MQ_CLK_A53_CORE]->clk,
+					   hws[IMX8MQ_CLK_A53_CORE]->clk,
 					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
-					   hws[IMX8MQ_SYS1_PLL_800M]->clk);
+					   hws[IMX8MQ_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 3bab9b21c8d7..ac71e9e502b8 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -424,6 +424,8 @@
 #define IMX8MQ_SYS2_PLL_500M_CG			283
 #define IMX8MQ_SYS2_PLL_1000M_CG		284
 
-#define IMX8MQ_CLK_END				285
+#define IMX8MQ_CLK_A53_CORE			285
+
+#define IMX8MQ_CLK_END				286
 
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
