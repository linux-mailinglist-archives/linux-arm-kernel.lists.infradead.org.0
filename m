Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44219139FE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNWMV5KQRagkZfV+rt9Ty04rg4ZotWTnjIAY+sTyHyE=; b=rTHijwnoyk2gJd
	5bceCZINPpeLg8wOokL0zjQXHbkggXbGCZ8mQ5xtrCB2G4Ou8P4pPYrt48TZMAAswpkDUudY/PPX0
	YGzn0rFl7Lzak+fso+eDzUpd9GGDEGuKi6qy0ub0uKrAznnCZgQ7HuzBM23XYb+6PV1vWICxshgf5
	nqUcZMPkSJKXLmm4CKFy6brZ4BINZAdp5atN3QF5EnskZ2NdtBCwmmwsMnsFY5/Iy0+Z8hcYHRd9b
	HLQlVJR+bbkkQGHYgl90zeyAkUIU6ZOtFzQnI0bFCLIO+LMTXzh9eHDhJvV90LaxQkknQBDP1CUBK
	JjxnAt3tLGJ5PilsH0yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCj2-0006sd-2e; Tue, 14 Jan 2020 03:18:40 +0000
Received: from mail-eopbgr70078.outbound.protection.outlook.com ([40.107.7.78]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCiO-0006Sr-6c
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 03:18:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNpr2fab3VjZ7xAeLkl9uu24RrWHq15RPtf/SZStm78Ov7gkcwaH28K3dApgf5X5v2t9Q/ZueFKo8G+nGrASEAuW2E3KijDzobqqVWQmK3A76ajZ8sbQnNDWlUi2Z+VSyXluY8PG8uBK2enlG32urCTOU34tbCDQkLYtTSsmreyg0ZEjWQRz2G+6eQUzq4MrcODmZYaDhVSOXZEWC8TWJjLC5xZPMpHi7TPiaraMlcQ6vJuZn8PvD1803Ep+1BvVJEYgPKsAgsmG/puu1bToVReXsZ5R+MaJnVtx51RYG3XMxx0VS+lQaenmq42UhrG9fbW5vCJunUkL+iloa4+4HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1nQuaHGoDbnp1EQSQN2+vNTgjRQ/aUuIuNs4t4zrvvo=;
 b=DJb2BKMF0NyTFLlISAXtjFkCZM6cYBB59g0KrAnRsygY+ntKnFxUginY5Mo3uS5sWNIQghVYsteqrrD2rMZxreJ9xjjBTpb4ZoCZyDSq3tnvnP3u5cMco27JbGejgp2NWD2wt1kwDgdoyTusJKckwSXL/GamttxRaN39BNcgnOjJNU2HEJZ/rXn+lP6X2fowN6v5TziduNRJoraVT6v24zzzHbE/EtQPkG7Nw94Ri1ixh7jDv6EZrQNBnRsbqg6qDKbVb00njzY4r6FrLWlwUIrib0RlnWTPVRQ4AUmc6r5SQVBenRSa9gU6USy4/h056J6wuE4XGCc3F/9tLQwlgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1nQuaHGoDbnp1EQSQN2+vNTgjRQ/aUuIuNs4t4zrvvo=;
 b=NCtei6S/yIKeH7uKN5ae7Tp3Fu0Wa/1od1Bf4iSofxlMpP4ntrsKTS5Rgr2O5YEtOCzJ0OoJ9FaFdOkcjUjEA9a5HwrS2XiD7/dKSg0BLdgcjjK9iL7ENt7Z/18abo6iwAfXUI61ToElENn0THbA6KvC/glxgYcEYVF9hHcKuI0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6755.eurprd04.prod.outlook.com (20.179.252.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.11; Tue, 14 Jan 2020 03:17:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 03:17:56 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0002.apcprd03.prod.outlook.com (2603:1096:202::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Tue, 14 Jan 2020 03:17:50 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 2/4] clk: imx: imx8mm: fix a53 cpu clock
Thread-Topic: [PATCH 2/4] clk: imx: imx8mm: fix a53 cpu clock
Thread-Index: AQHVyok3cJBd4oMo6UObkRnJm6U/Zg==
Date: Tue, 14 Jan 2020 03:17:56 +0000
Message-ID: <1578971599-4277-3-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: a4c68da4-b5d6-4b90-d509-08d798a0595e
x-ms-traffictypediagnostic: AM0PR04MB6755:|AM0PR04MB6755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB67550CA1F544AFF629F8957B88340@AM0PR04MB6755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
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
x-microsoft-antispam-message-info: ZpQguvcw0Pl9ZhSkACIQT+z3U5vu3P2E5pkqO3g1xfUsbOjurw37ReOen6RWQc3ie/dtjpwMuclhK+/YK82emn711ngBTCTyjRknBuO2F2ERnE6b4H6TX0u3xz1A7T0g8pkw9BLYNqFsSQr8k8MKOAPy6jfT03yhhbKPG0jCMwRKGCIuN+6e3UL2wMFhg1jiTBYoOsu+/k4bS+CRZCttuNHVaGDNyR8t8C4cLiOEQtmrVCsHd1EjTQUk1jgACH3Grv942iECbK27ajRIhQeP7hiFhkWJdeA6gfLiLVuTJyplx19kwX7ucIlhWPnj8TWEzf9KVMQCOCwSSyh78mOqvkvfA5RDwHMwc0hfSLEoJVHZmx1tAS9l7SGrQgUYxUaiHW47U+Qmw/uHQtYQW5kTKbYb35WDgmv76ZI45+DUEXUSdUbfig3O/qSZiP5OckXBzhltzq9XPtHvG9GRzywSHyO47MWDFXKrrvUZKmP/dYx7vfGBxEQ9XpGxRro/TkTL7eC1FXZfBpTXbxb6TRgGbQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c68da4-b5d6-4b90-d509-08d798a0595e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 03:17:56.1288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U6WhjdXHys72514ze5vv5hi6ibrZWmc0BKEnR0sRzVlNWI6WinX5mYQ3A3tw4TuXIg7MnIIW25nQr+vUENFSvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_191800_280282_0237929A 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.78 listed in list.dnswl.org]
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

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Cc: stable@vger.kernel.org
Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mm-clock.h |  4 +++-
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 197ba2cdab7d..ad7a77e3276c 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -41,6 +41,8 @@ static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 static const char *imx8mm_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pll2_500m", "sys_pll2_1000m",
 					"sys_pll1_800m", "sys_pll1_400m", "audio_pll1_out", "sys_pll3_out", };
 
+static const char * const imx8mm_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char *imx8mm_m4_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll2_250m", "sys_pll1_266m",
 				       "sys_pll1_800m", "audio_pll1_out", "video_pll1_out", "sys_pll3_out", };
 
@@ -422,6 +424,9 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_GPU3D_DIV] = imx8m_clk_hw_composite_core("gpu3d_div", imx8mm_gpu3d_sels, base + 0x8180);
 	hws[IMX8MM_CLK_GPU2D_DIV] = imx8m_clk_hw_composite_core("gpu2d_div", imx8mm_gpu2d_sels, base + 0x8200);
 
+	/* CORE SEL */
+	hws[IMX8MM_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mm_a53_core_sels, ARRAY_SIZE(imx8mm_a53_core_sels), CLK_IS_CRITICAL);
+
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
 	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
@@ -587,11 +592,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 	hws[IMX8MM_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
 
-	hws[IMX8MM_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					   hws[IMX8MM_CLK_A53_DIV]->clk,
-					   hws[IMX8MM_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MM_CLK_A53_SRC], hws[IMX8MM_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MM_CLK_A53_CORE], hws[IMX8MM_ARM_PLL_OUT]);
+
+	hws[IMX8MM_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					   hws[IMX8MM_CLK_A53_CORE]->clk,
+					   hws[IMX8MM_CLK_A53_CORE]->clk,
 					   hws[IMX8MM_ARM_PLL_OUT]->clk,
-					   hws[IMX8MM_SYS_PLL1_800M]->clk);
+					   hws[IMX8MM_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MM_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index edeece2289f0..8b585a910ddb 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -265,6 +265,8 @@
 #define IMX8MM_SYS_PLL2_333M_CG			244
 #define IMX8MM_SYS_PLL2_500M_CG			245
 
-#define IMX8MM_CLK_END				246
+#define IMX8MM_CLK_A53_CORE			246
+
+#define IMX8MM_CLK_END				247
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
