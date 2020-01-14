Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6713139FE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huGmjNazO7uPBjX0KG689PtC2tP6WDY8IP1tnvfIM5k=; b=llxfmoEA5b3dC+
	3k8aQXdqVmalyCr4i0/BfB1JSYkVucQBGrdiNgxwCiyT+WAu8dePgt1OWk8Hh+06JfJkAjuEwKjeO
	xbA0lUEzRfCNk0CJ7D7XKz9iyDHhV4f8CT4HDFTBR/AlzQXbfq0cU4qQcXfyjtwDLJntGYT5bvfj0
	Wlb5Vp2H3aqt4kRvJ7h/m10kfytbfrdPTATvYlJoB0ev4FBEPV0Ww9i1QtJVVgCO2BAUGtQj0Ox4M
	GNM2ckC/enl7TUWV2Nip0lJGf5lQs8rhxP8lAJU66e8B5ZGot9RiT23x/XxCMHy9aRaS9BjJJLUNm
	WZGxEQQNwfLXzM7jVbEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCjZ-0007O1-5N; Tue, 14 Jan 2020 03:19:13 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCiY-0006eQ-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 03:18:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RT4cHfcPb41nh65Ghk1dVgQBI2hVcsCXEe4KI5/rMYIjZt8RvTsRzNdl/VYdVesnvF/+2ajj3QOF/8QbhVRXtiAUJmnwEimiN6uHCu4G4lCIQX1K8JNwlKcImTJiU+8QkLzZ5y3/4O5JhpHYrGRdCM38bpNmoxRT49mO/3Wlh1Cn0VNsx7iwfDKl38cegeOCkQr84AnciBb93JO3I0sCedYKgOsOXA/90A5HdG4mIjFAFkTONmXYeD5JdR17O0kbt4kmcXgKRupJVrR/6Vlhw9C0HOzvWdv86Xuo4HAKSIeIqgPhv7W8rKLwT+JPXoFzb+Y3V5Y9GXXvPQJDRpZu2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGJGx+bmaGvG1Urcf+/E89Cw7MIFdmWGSxHNkDBuCs4=;
 b=JP9we2CykDzoN8Swz8CazCMGgMaDiIpXgpjk8CUkSsO6EbC6xHA3UjVK4AwI9Pb6XT02RMrhakTd6VJ5qFUui+G1hVUdya1o0rylKenKLjlxN0RHBMOoL2pt/LtXkEuwfh8hCZYRF3xtp3yYnqMFceoi6GrbSE76O9LrIGQPyBvD+Yg9W96isLmn4wct5T+RlbMa208Xf2jL1IDzrqEaeaO6GomTdNKaV2LjWhYzhLiPYKSqONM4EjDbNUJ2wxUgPe/7Dc282eLmy/tmj+LZ8ZHncRv3juJP4l9H9t+oskIs93D+U337dLqeXx6bf1SX+sNfb8IbLi8GBGcznirkGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGJGx+bmaGvG1Urcf+/E89Cw7MIFdmWGSxHNkDBuCs4=;
 b=W5SKmtR5XsVZiy1ly1jSuEMn6m5WHlYPGnUzfZtq4ORYUc4mBCwNSnEIbjFuDVv7mELYObUM9EfKkZjcuSDXe6x72GCLl2iJ6G3ttn4jFIHbQr7VWf0TQXKuwC13bVTXzJCTZMs7eS987Ean8wi9ymKdtLuMzv/c7P9Xb8QGqcs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4402.eurprd04.prod.outlook.com (52.135.148.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 03:18:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 03:18:07 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0002.apcprd03.prod.outlook.com (2603:1096:202::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Tue, 14 Jan 2020 03:18:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Topic: [PATCH 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Index: AQHVyok9IoaFwrOhrEqVCCN442+qiA==
Date: Tue, 14 Jan 2020 03:18:07 +0000
Message-ID: <1578971599-4277-5-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: 7b76f586-45dd-47c4-1ed5-08d798a06005
x-ms-traffictypediagnostic: AM0PR04MB4402:|AM0PR04MB4402:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4402896662E2CE36BB0DA89B88340@AM0PR04MB4402.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(199004)(189003)(54906003)(316002)(6512007)(5660300002)(36756003)(86362001)(26005)(8676002)(956004)(71200400001)(110136005)(2616005)(44832011)(2906002)(69590400006)(186003)(4326008)(52116002)(6486002)(16526019)(81166006)(81156014)(8936002)(66476007)(66446008)(478600001)(6506007)(64756008)(6636002)(66556008)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4402;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1oiiEx4ZE0C60d2XVURyXMLquF4wCtdhcgGM7GdeTrvVUJEnDIawvNSlKhsvg/PKEozbNutlY2TyX81Vr7F7twfZMusx/aly6ZWTnkrg75MOeL3TomgtQJFxq+goyqCCEw3LmYgENUPEfwVAMc0I3tNgWqQKq8P+uy7xwRMIK6kCav4b3mYmavY11nnIzoMAp6lJVcrc946IB8osXjj0Klc9FLxF+TMu4X4XtFi77VmRHvVuN1X4FrjCCp/bw8ST14Vjw2mXjgbKGy5eMeGIYgxnOq/YxP1vIoOCg+KVI6U69UALNyZIrV9pjKOlEEJakeoeefvYUbpTB0hB8MKZ1xq7TpUJRzD36HQXIDrM7wWuisfi9QSYVB9Q7aLHAPa/O3mdAu3c9PpPG5OHkgaBeMaZEUkreQGCwFBQIPc/FAY59IeA3FPlhYLZue2Ag1JJPVL8OSs5sl2S7Uh7hMb7EWf36uApM1UiaQGA8JDxirm5NqcVMPU9RpCInLaHG72klzBIvxNxAqSS7yAs34tEOQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b76f586-45dd-47c4-1ed5-08d798a06005
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 03:18:07.1940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QQabR/ShQja2PVMRw/hagyBD9lheEiBYpBSt0wczbPqNoWizP58Tw5oFuMy+Y4yt7shvJaMTfQyasX6LX61Xzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_191810_793320_C5FC33AB 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.53 listed in list.dnswl.org]
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
Mark arm_a53_core as critical clk

Reviewed-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index f6c120cca0d4..8a73aef845bb 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -34,6 +34,8 @@ static const char * const imx8mp_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pl
 					       "sys_pll2_1000m", "sys_pll1_800m", "sys_pll1_400m",
 					       "audio_pll1_out", "sys_pll3_out", };
 
+static const char * const imx8mp_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char * const imx8mp_m7_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll2_250m",
 					      "vpu_pll_out", "sys_pll1_800m", "audio_pll1_out",
 					      "video_pll1_out", "sys_pll3_out", };
@@ -553,6 +555,9 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_HSIO_AXI_DIV] = imx_clk_hw_divider2("hsio_axi_div", "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
 	hws[IMX8MP_CLK_MEDIA_ISP_DIV] = imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base + 0x8400, 0, 3);
 
+	/* CORE SEL */
+	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
+
 	hws[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mp_main_axi_sels, ccm_base + 0x8800);
 	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
 	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
@@ -722,11 +727,14 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_VPU_ROOT] = imx_clk_hw_gate4("vpu_root_clk", "vpu_bus", ccm_base + 0x4630, 0);
 	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk", "ipg_root", ccm_base + 0x4650, 0);
 
-	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
-					     hws[IMX8MP_CLK_A53_DIV]->clk,
-					     hws[IMX8MP_CLK_A53_SRC]->clk,
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC], clks[IMX8MP_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE], clks[IMX8MP_ARM_PLL_OUT]);
+
+	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
+					     hws[IMX8MP_CLK_A53_CORE]->clk,
+					     hws[IMX8MP_CLK_A53_CORE]->clk,
 					     hws[IMX8MP_ARM_PLL_OUT]->clk,
-					     hws[IMX8MP_SYS_PLL1_800M]->clk);
+					     hws[IMX8MP_CLK_A53_DIV]->clk);
 
 	imx_check_clk_hws(hws, IMX8MP_CLK_END);
 
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 2fab63186bca..c92d1f4117eb 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -294,7 +294,8 @@
 #define IMX8MP_CLK_DRAM_ALT_ROOT		285
 #define IMX8MP_CLK_DRAM_CORE			286
 #define IMX8MP_CLK_ARM				287
+#define IMX8MP_CLK_A53_CORE			288
 
-#define IMX8MP_CLK_END				288
+#define IMX8MP_CLK_END				289
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
