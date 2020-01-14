Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ED913A221
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIyLFnNXr2r/nMqNcIw26eu8Z5AnFX4otm6/bZLDRhs=; b=hWKx1cqQeAdGZD
	uTZV+Ml25HYHVJbuRUyG0AYM8zBwX8bHzPxQ+bnekzl2xSWyYSbImGrlNTqzv840QyECKpg5443Zh
	8lJyLxTxsT/VmTQ/xhm+4UEhcxCHK4DRhProKpyx8IWVike2z/0zOYieBWFaCQRfiXZkIFMizTNp0
	mxdvyWZsk7i4NHa235qVB2acYQPYdun0kxCejAPmKAusBeSoNzYdj5b7MsOhTx3Jqpa6wmnZbBn4v
	YMNFw1hhXAF83E1Ey6iK1FfK9whIyX09i5IR4vgHab1TDdFAB1HsfQZbdYrQdxyFA0f5PWH1sSxUI
	biX0/dw2zpZgMt7QBFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGd2-0003lW-Eq; Tue, 14 Jan 2020 07:28:44 +0000
Received: from mail-ve1eur01on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::615]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGbv-0002mg-B4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:27:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkQJEKBOf60BxppePpUtPzMDhzD8/HBmeAveVwpgBXeiKLwMzvMoT3gMgQo0bJVp9bmxkzj0JceJ7xp+igUKJiRZmPWTVShMQac9V6PdtOLb2pShIvE6eHA9nrytIKAl+u/1RJnO+2Duobbt5pNmbBrmgT9L7hJYOxWjWFjxxyi8D/Z6zL8mGGkaL6VSt6kRnCc36RKDWQzyFqXlVPezMUeaxEouAP3WbseHQPqNiVDKOjm6Lxx3zDEAHbtQqTkxR7nFSabHPdtzWf2bl8xI16m3C9Gs/gLrh4RHQNX9NqFsrL2L33g8wzGZIJMBsG7x5bOZDersWR4971EqhZzfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bjg/P8ZE54mEmXQrCAZ3IcfFh6AgOTtACWGF/NSzCBg=;
 b=lSBIBafpoqmqBy5e+h8Dd+uResb5h0GZniuNp6sRLMsxB2GfM2U531YGppBkReWrLP3K4JptB8HeRmz/HCrrt2sj22wMtX4wNED5J5+ex13lotBiQ0uCpbVGrMbuHmY02ktefg9LAOWaETc7d3U8rP47nhZihT840TMmhZW0Ss0+0bL7ksVQCfXQVZrDVwBZjxgvbA2sxTxep/J4KcRO+/4r6uj2a9UqEeV3XL6EGALZrFI8Wd7qf9FaheY2Il0RxR7OhAtSwuGzNZo/eXk4PATSUZuf9NX8t3QaqcuOi57sf1je9RcisPEA1/+XRRYL6N+0wlVBYLsBn5Uw5zkEvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bjg/P8ZE54mEmXQrCAZ3IcfFh6AgOTtACWGF/NSzCBg=;
 b=oWUZ0yx/ehYGBr5zLt/zI1gSAIuXlrLCIjCk/0+/Qxy1D1WEIyv6rZe/HyROXAlAPy+CsOfdXkQC7pKKXCRS/+0UNb6RMTYbgt1enYijK515TmVQvsBf8hc+AZ/SFrKZmysBap4dRJCo8jy18JtgYe6Vn61utV5XSAhW3JTz7a8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6211.eurprd04.prod.outlook.com (20.179.34.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Tue, 14 Jan 2020 07:27:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 07:27:33 +0000
Received: from localhost.localdomain (119.31.174.66) by
 SGXP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.9 via Frontend Transport; Tue, 14 Jan 2020 07:27:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Topic: [PATCH V2 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Index: AQHVyqwVgLXhQDIHI0mgOwyl4endfg==
Date: Tue, 14 Jan 2020 07:27:32 +0000
Message-ID: <1578986576-6168-5-git-send-email-peng.fan@nxp.com>
References: <1578986576-6168-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578986576-6168-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SGXP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::21)
 To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4087361c-97ac-4e23-5005-08d798c33813
x-ms-traffictypediagnostic: AM0PR04MB6211:|AM0PR04MB6211:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6211FEBBE9B5C4493D409CD588340@AM0PR04MB6211.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(64756008)(66446008)(6512007)(26005)(66946007)(6486002)(956004)(2616005)(66556008)(52116002)(66476007)(6506007)(86362001)(110136005)(316002)(54906003)(2906002)(36756003)(44832011)(5660300002)(4326008)(6666004)(478600001)(6636002)(186003)(16526019)(8676002)(81156014)(71200400001)(8936002)(69590400006)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6211;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XDpLXpM4hTxecuYDsrNdgTeMaEMg82KjuMD83wt8fEuMekRzWtTwWTEVAAi+0gmdU9kz5WHqWS7PsnQAjm8YTCQrqZzhwM7NTWjtViPz6DNehxs7KtMO4Vv2PCMARdTXxN6twxIC82/a10dVVNByP4qlbo4JsE1abvd3gVCvH43XDVKOuqX+117xYt0KvUwHrplQY5K2oewjCDMssucWR8jPe23CSi7wrQs01+wVWfJUxy54G/crOUKU3UKOZAsoNLMudn5ifDExM43o9jCX1BUmJxQB5ErwvOMImWYEncVd02hEs2EeKXN0DxzKDB+7Y1n4XWbancufDuz7cZ5Sh7yX1o/XcG77dijPfEzRHB6HknvyXGRT1Ejkf2rR+eZSMlYyKTlGXiIbPeTLYD3+EuhkuGdkgooO2wIOsWWoTRP2QVfbvwfphj2pMIpE7bum6sfeeAemEfiIBriAaGYGqBMmnEP86n19Nu6wKlWVENXEh1Daq08/9xLpYYsksAO1u1QrTmJemGaxU3lQBWxnuw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4087361c-97ac-4e23-5005-08d798c33813
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 07:27:33.0284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8uY0LVuvijDwofxcY/4f1gWjVQq8Oc93gK95xyr0Kgb+iqohsssfm521OdonDhDjcpNgdWg0L5w7GV7GAIMSVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232735_431434_A80249D7 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:615 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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

V2:
 Fix build

 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index f6c120cca0d4..6ac4746898cb 100644
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
+	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
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
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC], hws[IMX8MP_SYS_PLL1_800M]);
+	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE], hws[IMX8MP_ARM_PLL_OUT]);
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
