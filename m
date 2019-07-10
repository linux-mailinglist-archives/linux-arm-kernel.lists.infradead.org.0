Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1D363FDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 06:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w/o3Zy55Imw2BtL0h6lBAUK92CCAGv/VKP+zQd6EaPM=; b=mTzdc7ouPBG8fD
	TwRFb+SLcVV2yQpXXGw7a03HnvW5ZDHpMsQSCKiF465OFSRjqOfPTVwLGfe9e5VhRZ6Aozx1iubQF
	aKzDSXzT0Fh9QV99LsTc6hSPZWXOnG9QK6F+lKg2B00Ox8AASJOs4BkWDTLsY1/CnAusm3Yhr27tK
	coD9WcJZK8yf01d17VL9yNOdPdnhdjfbd2tS4BuyIv7xyvqbZLolcg29zWCJXEZp29JL1H5e+FQKj
	gBkAjHTBRrdjoiQ5iJ3ePzL037tXnqpXeISlfyiERgvwxmnDjzRuqPw5qG4oELdPMaB+gJR/s1DlN
	N+gMkKXtZ56ofaGPWnrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3zR-0000VI-IC; Wed, 10 Jul 2019 04:13:57 +0000
Received: from mail-ve1eur02on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::61e]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3zB-0000UT-2U
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 04:13:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA2knaqHcsWhG3WxuMgsw9SlhANhWDuoivatKmcXKuM=;
 b=AWPejwbSaq4IQMioMVOJdx1EfNs2nSLONVXX7ovOM9tCHJfj7ODJsQ3LVNgzJUR5tfleiWQjuznwXFh3DHr9OLsQydTPj65vEFI71XZFKO/DvZij73Ox3AGA+bKob5SuzPwdaBbe2rd/+Wjg+KsKj+s2XFuQvvRDMgvhezafeY0=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB6695.eurprd04.prod.outlook.com (20.179.247.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.20; Wed, 10 Jul 2019 04:13:37 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 04:13:37 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [RESEND PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Topic: [RESEND PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Index: AQHVNtXYsppc9iHvSUKCRoa1/AmVEQ==
Date: Wed, 10 Jul 2019 04:13:37 +0000
Message-ID: <20190710041546.23422-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0PR03CA0111.apcprd03.prod.outlook.com
 (2603:1096:203:b0::27) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:7::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e2709b6-3b75-40c8-a001-08d704ecfb21
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6695; 
x-ms-traffictypediagnostic: AM6PR04MB6695:
x-microsoft-antispam-prvs: <AM6PR04MB669598E080BC8DAB55AF0821F3F00@AM6PR04MB6695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(199004)(189003)(386003)(7736002)(478600001)(50226002)(4326008)(5660300002)(99286004)(6436002)(66066001)(7416002)(2906002)(52116002)(2501003)(186003)(26005)(54906003)(110136005)(8936002)(6506007)(256004)(316002)(102836004)(6486002)(305945005)(1076003)(81156014)(81166006)(25786009)(486006)(6116002)(86362001)(68736007)(3846002)(8676002)(53936002)(6512007)(2201001)(476003)(36756003)(2616005)(66446008)(66476007)(66556008)(64756008)(14454004)(66946007)(71200400001)(71190400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6695;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aY4rFDJlLh7mlmGumTAqLUlnSyYEr+aJZswKZ3EXPGZF2AfkLArLwwiMHy4+qZm3dxxj6bE6fk+rjptQyKWaPDO9uxW20hM2nBGhh4d7vzXzYUXbFvzmK4+DqoJW+HXm8trFMhpx5W47XGaFY/4kGZO6n+D+PxTRSPHlJZUx6CIgArV3rq5Q8Z479ZTv34CnpMV+8uvQudnaT0v3xzM6bOjP36ilo7GaXRKEPUosFTz6VHFxez1UFXOyV3e4kRJWn9lG1VfQY26Gzoow+FO1rNzE6hO4yL+ujYARwKIPtc5sEhtUzB7VlV80zXqmUxh4a1edJZ5B7ZjZxsECXs6doJGWLXUIV3UgSdhwPr/yyM5zuFv1xZfsyL0UfN6k90m96+Cf1xDB7a9jK6Da6AxsP0D5YeH5cLDvbson4ZfjT8A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e2709b6-3b75-40c8-a001-08d704ecfb21
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 04:13:37.0900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_211341_217746_80B40A5E 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:61e listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename 'lcdif' pixel clock related names to 'disp' names, since:

First, the lcdif pixel clock is not supplied to LCDIF controller
directly, but to some LPCG clock in display mix. So rename it to
'disp' pixel clock is more accurate.

Second, in the imx8mn CCM specification which is designed after
imx8mm, this same pixel root clock name has been modified from
'LCDIF_PIXEL_CLK_ROOT' to 'DISPLAY_PIXEL_CLK_ROOT'.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 4 ++--
 include/dt-bindings/clock/imx8mm-clock.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 6b8e75df994d..42f1227a4952 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -210,7 +210,7 @@ static const char *imx8mm_pcie1_aux_sels[] = {"osc_24m", "sys_pll2_200m", "sys_p
 static const char *imx8mm_dc_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
 					     "sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
 
-static const char *imx8mm_lcdif_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
+static const char *imx8mm_disp_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
 						"sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
 
 static const char *imx8mm_sai1_sels[] = {"osc_24m", "audio_pll1_out", "audio_pll2_out", "video_pll1_out",
@@ -535,7 +535,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_PCIE1_PHY] = imx8m_clk_composite("pcie1_phy", imx8mm_pcie1_phy_sels, base + 0xa380);
 	clks[IMX8MM_CLK_PCIE1_AUX] = imx8m_clk_composite("pcie1_aux", imx8mm_pcie1_aux_sels, base + 0xa400);
 	clks[IMX8MM_CLK_DC_PIXEL] = imx8m_clk_composite("dc_pixel", imx8mm_dc_pixel_sels, base + 0xa480);
-	clks[IMX8MM_CLK_LCDIF_PIXEL] = imx8m_clk_composite("lcdif_pixel", imx8mm_lcdif_pixel_sels, base + 0xa500);
+	clks[IMX8MM_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mm_disp_pixel_sels, base + 0xa500);
 	clks[IMX8MM_CLK_SAI1] = imx8m_clk_composite("sai1", imx8mm_sai1_sels, base + 0xa580);
 	clks[IMX8MM_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mm_sai2_sels, base + 0xa600);
 	clks[IMX8MM_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mm_sai3_sels, base + 0xa680);
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 07e6c686f3ef..91ef77efebd9 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -119,7 +119,7 @@
 #define IMX8MM_CLK_PCIE1_PHY			104
 #define IMX8MM_CLK_PCIE1_AUX			105
 #define IMX8MM_CLK_DC_PIXEL			106
-#define IMX8MM_CLK_LCDIF_PIXEL			107
+#define IMX8MM_CLK_DISP_PIXEL			107
 #define IMX8MM_CLK_SAI1				108
 #define IMX8MM_CLK_SAI2				109
 #define IMX8MM_CLK_SAI3				110
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
