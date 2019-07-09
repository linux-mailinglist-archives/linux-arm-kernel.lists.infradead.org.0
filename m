Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73234631B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w/o3Zy55Imw2BtL0h6lBAUK92CCAGv/VKP+zQd6EaPM=; b=Fi9ypmroFMZO27
	E+gEQFVXtMFb56xfwofCsBONhKehiFVX9ANL4qYmeG5iDs22nChBgpWWumqO57iYmyr17nz2UOaip
	emVUy2PkVEi1OAOGS4oGc1fNxnIJzcNXovZ7w8w9Bbazkb8z197eAZwmJow63hCB+0i6IpBCT+4dE
	z6ytfKAySPyVfOXwcD4hqSidJsr7AT4ffQ0ZA9HAlkdR/Z8EdDkvXBzpB6nE4W7wXtEDcFECH5A/B
	hWpPGVSrp2jc8s9MPHRRzGI6dfjCa+/HzXNsJQYgS6ZURimjAOTh4xmAmg2BbT+ENLdvGQRG906VZ
	tlfkvd+CcO2jrKTIx4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkOF-0006yD-Gd; Tue, 09 Jul 2019 07:18:15 +0000
Received: from mail-ve1eur02on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::60a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkO2-0006x7-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA2knaqHcsWhG3WxuMgsw9SlhANhWDuoivatKmcXKuM=;
 b=VoUAknYWtDSDyrk+MsNWmVQYSkSb4sBAah5JFmq/MoOfNyRDsKglu2PSJatHUJOroJlR0y9178MHftpGCsW5rXhkFeIeUKKhKkfQDDfhoFgGfLJcenT/tCNYmb9wRi9768QPzGm+5OvItczcAfpyIY8cj7BL90rbdxGATGJVWIY=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB5880.eurprd04.prod.outlook.com (20.179.3.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Tue, 9 Jul 2019 07:17:57 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 07:17:57 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Jacky Bai
 <ping.bai@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Topic: [PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Index: AQHVNiZucEoeUC3dx0S5hLcPWPQBeQ==
Date: Tue, 9 Jul 2019 07:17:56 +0000
Message-ID: <20190709071942.18109-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0P153CA0007.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::19) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:7::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c14cc16-b6c4-4c64-e5cc-08d7043d90e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5880; 
x-ms-traffictypediagnostic: AM6PR04MB5880:
x-microsoft-antispam-prvs: <AM6PR04MB588006799FD199A755591E13F3F10@AM6PR04MB5880.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(6506007)(14454004)(2501003)(486006)(476003)(2616005)(2201001)(26005)(52116002)(110136005)(54906003)(36756003)(86362001)(5660300002)(3846002)(478600001)(4326008)(66066001)(186003)(7736002)(305945005)(102836004)(81166006)(25786009)(1076003)(6116002)(71190400001)(53936002)(71200400001)(50226002)(6486002)(66476007)(66446008)(2906002)(66946007)(73956011)(8936002)(64756008)(66556008)(68736007)(316002)(99286004)(256004)(386003)(6436002)(81156014)(6512007)(8676002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5880;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ju6xHc2lPxpiZ26dYawoXHieXx1OcyJi6NZZa4/+jyOZHDXQnD6gFj2+xS0raNG5LYyygIMtjuNGDY4v+pvuVGYvz2Fj6+ISKZ8k0mj7DAaRy1yAqN+QcIjKkUq2/EaE9b/qtdtcKzGZ4izbtCxAYzIWtxtfvF9iz0TxciSzdxU/s0c0M3dnB6chLE9Xhiez9+XihY4CmeDigFzZ1CqWaKqNNULD1uD6Y7cY6UEaG8kN6n7/Y5LQEsLWoakvb8z8ExydsIOAKUDexxqnhZp7oHInHAvsu9u0NL5OP+7MLZseo/WgQO3y8r5H84ySffSbmMnXhr/NYex0n+h+jwTL50rxn4maFbhiwsHRR0AS7qE6ZY/U4yz7UUCuesUTcJAiMPfR8cf0ELrxL1YKruKM37pfOBEG+S69AlS9DZdCxrw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c14cc16-b6c4-4c64-e5cc-08d7043d90e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:17:57.0386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001802_752765_465F643A 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:60a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
