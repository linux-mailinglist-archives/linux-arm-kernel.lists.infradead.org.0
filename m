Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0FB169BA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:13:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8dH1CIE5WEm+HzsPm1uJl98LgaIazSW6x4rrlVRwoQ=; b=LyHMtv9jFuFiS/
	1dwnoCx2P2y29CatxivkeSfPlEnskcjtm5mymmrBqKXYM+0zKPSwVQAHgNagDIqVRm+jQcXcbAsao
	Vl5dX/L+gx31rcfkpCSJbmGq+oc1zzY8CK7CHOoJj+nNFVjJbYVYb59JvOpXeLYdB7sdgXI+ECvg8
	qYX0jUQKqolDkoAghenst5rYdKpYdnCiK/34XcCGEAYBjmYmS6eJLCmdWmpEWEHolqgtz31NOXx07
	oISY4mk8gCGolH1RoCjEfosDj6Sunox9CWOJ09PAOIMrxQDxr/rckiL6N6M+WQcuAf5dWPd1px55c
	JWYob8Xu4BVy5Y1W8XtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62Jk-0003TK-0m; Mon, 24 Feb 2020 01:13:52 +0000
Received: from mail-eopbgr00086.outbound.protection.outlook.com ([40.107.0.86]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62JW-0003Sh-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:13:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dRpYxmG6RESaz4vext5QxwsFTAHqAL90CV3D3owFaSr/z8rmSIE1g/0SL/PfPnXp6yztw2q211oMMKObJuVMwr6AMhwZGYXCtBLTWdXRRyIs5GmTKob4GFKM0ida7ZAXrPboDdKEcuIC5+Tt0g4KnEyMnjd+raPnylH66F1BZT3XbNiCo6ClnS6xjfw+h0T8Q7YGLXwrjRBuNihDZ3itS+qyQijJtbSqqBgYT0g1Xc4AAqs8CUmL3sjh3bHdXdPe9l9eAnvQxnPUKwK1INtDsxWxS9GCpS3J4iFg26/SBArd7WEkeBDfSD+zsuuV4doY8zZDOQeEGCW85KYOLkfifA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GTaeFQzM9ZAZi6Z7CvVHmRzhgAxeplQ48EkpyO9HGSc=;
 b=ArNHw1kAvJucw6E6sHTugcRrl2d+yqk0vMPfU/0ajKzQhMvU5DpP/W2iz1kNraYCls0EEYNj8miqyzRZMf9YMIMRZb4jXXq3iM087dUCMeQlBcTSCuDW6Kxzxkd/zqK59D1IxdsK7tIqYcTpTygrkHgFvomLcJnmMtyVAkneccHsXhrcD/yZHz6ZOkqNKVWIWMHEV3qMQabl+mEZ0YT36tvzME4flphenxLiFLGXmZJRE1znlRr/ejtPnx0zgiTQK8NInm+ZU0Z2G0xVVnGzdJXNuBLfnKIZu1rp7MR7FmmHbhfVjJ74a8j8jeuwQjbZeP+/MXYT2JCqTQqDSHZRUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GTaeFQzM9ZAZi6Z7CvVHmRzhgAxeplQ48EkpyO9HGSc=;
 b=o1NuAwU4xlLS/dC9Lo56R/nHnzBy2b6XJ7EAFtzSe3dAq82wPL4W3ellLpZxeV21hRDn7v3iqnFbvWS03ndiNmj+RqGikzD8YIp8AxlHBuOku/A9kikRwxBXshNLkUpKOJH/bw2BFmM7OLxqgCIMuZWh6VW8cU+19qQVf+AUNX0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5219.eurprd04.prod.outlook.com (20.177.42.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 01:13:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 01:13:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH RESEND v3 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Topic: [PATCH RESEND v3 4/4] clk: imx: imx8mp: fix a53 cpu clock
Thread-Index: AQHV5w6f0zjaDYEaLkyYsPIcQ5s2t6gpkOhw
Date: Mon, 24 Feb 2020 01:13:35 +0000
Message-ID: <AM0PR04MB4481D310ED1E08FBDB300FC288EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
 <1582107429-21123-5-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582107429-21123-5-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [117.82.241.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3ecce32b-0f51-44ce-7f60-08d7b8c6c5bd
x-ms-traffictypediagnostic: AM0PR04MB5219:|AM0PR04MB5219:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5219EA21D43D8009B07E802988EC0@AM0PR04MB5219.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(189003)(199004)(71200400001)(8936002)(81156014)(2906002)(81166006)(44832011)(52536014)(478600001)(6636002)(8676002)(316002)(54906003)(66556008)(66446008)(66476007)(66946007)(64756008)(5660300002)(86362001)(7696005)(33656002)(186003)(6506007)(4326008)(110136005)(9686003)(55016002)(76116006)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5219;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ci+zyzSvPoOtt64WjM/EpXsXOaatBxubNKhDrvCMCZUm654e8k8kQ3/SKpod7dZA2NrPJwWbg1hGpaxDytFBcaIu1FkSFO9Nm7mQO4YdALfnqCFPHMEkMnwjI7oBu7Br89AlWplgVJZFBQA1etVf3FS3Z0PuQucFT+opHOChC763lcH7WMXiLJyQwgyN8HIkuFC2NOIFPVS6zKhHnazvVJtmLRgf0xQrhp6bg3J1tCyJ1JRRMxmHpHE/kxWiKEsxdGdscvqiR5W+3dhjPtVUrLoPh8iCP4nWFI75sNSK2L1DPloJ6tnkHPvgfFgS0ACtYlAZ6LZ65pL7mBOFokmZ1gCsQkVQT+u/f/AtgB1f+S10+WfxzvIynpqgK95ZyDuHObatSPWG4/RlOuQ/Tej+Dwft1rDOfKwqdTTWokAi3ELgPl98iCOQFAU2PdLvaJVS7kD6JpRjQKs1pbL7/iOVe7SJBsSmaR1tWlO2KU0EVF3lYauyadcqY8HDQAiCKeA0
x-ms-exchange-antispam-messagedata: 4jEg0mRZlRdh6Zm1mI3CXRaRqeMk/0anjesKm6V4KQWuRv/mgTaOGNpC6WA+Da3fV0HKstjnGeXUtVm4ruPtP9GKlWeqXI+sferFMfwyAY6QsD8V5hyG8NZr48SsLD1efrrLsakppxbspLKqq/5pow==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ecce32b-0f51-44ce-7f60-08d7b8c6c5bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 01:13:35.4161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0AKlRZOoVUcnoyyf0AQQlmSaLQXUaW2QRWuwETBZyPjhbzNXArtG1iAPeLA80cYDGEeQ6WgZz2FZvsyc8tyiYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_171341_777914_BAFEF53F 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
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

Hi Shawn,

> Subject: [PATCH RESEND v3 4/4] clk: imx: imx8mp: fix a53 cpu clock

Would you pick up this? Without this patch, i.MX8MP will hang when
booting.

Thanks,
Peng.
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root signoff
> timing is 1Ghz, however the A53 core which sources from CCM root could run
> above 1GHz which voilates the CCM.
> 
> There is a CORE_SEL slice before A53 core, we need configure the CORE_SEL
> slice source from ARM PLL, not A53 CCM clk root.
> 
> The A53 CCM clk root should only be used when need to change ARM PLL
> frequency.
> 
> Add arm_a53_core clk that could source from arm_a53_div and arm_pll_out.
> Configure a53 ccm root sources from 800MHz sys pll Configure a53 core
> sources from arm_pll_out Mark arm_a53_core as critical clk
> 
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
>  include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
>  2 files changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> index a16af4fce044..d67ee36b84de 100644
> --- a/drivers/clk/imx/clk-imx8mp.c
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -34,6 +34,8 @@ static const char * const imx8mp_a53_sels[] =
> {"osc_24m", "arm_pll_out", "sys_pl
>  					       "sys_pll2_1000m", "sys_pll1_800m",
> "sys_pll1_400m",
>  					       "audio_pll1_out", "sys_pll3_out", };
> 
> +static const char * const imx8mp_a53_core_sels[] = {"arm_a53_div",
> +"arm_pll_out", };
> +
>  static const char * const imx8mp_m7_sels[] = {"osc_24m", "sys_pll2_200m",
> "sys_pll2_250m",
>  					      "vpu_pll_out", "sys_pll1_800m",
> "audio_pll1_out",
>  					      "video_pll1_out", "sys_pll3_out", }; @@
> -554,6 +556,9 @@ static int imx8mp_clocks_probe(struct platform_device
> *pdev)
>  	hws[IMX8MP_CLK_HSIO_AXI_DIV] =
> imx_clk_hw_divider2("hsio_axi_div", "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
>  	hws[IMX8MP_CLK_MEDIA_ISP_DIV] =
> imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base + 0x8400,
> 0, 3);
> 
> +	/* CORE SEL */
> +	hws[IMX8MP_CLK_A53_CORE] =
> imx_clk_hw_mux2_flags("arm_a53_core",
> +ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels,
> +ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
> +
>  	hws[IMX8MP_CLK_MAIN_AXI] =
> imx8m_clk_hw_composite_critical("main_axi", imx8mp_main_axi_sels,
> ccm_base + 0x8800);
>  	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi",
> imx8mp_enet_axi_sels, ccm_base + 0x8880);
>  	hws[IMX8MP_CLK_NAND_USDHC_BUS] =
> imx8m_clk_hw_composite_critical("nand_usdhc_bus",
> imx8mp_nand_usdhc_sels, ccm_base + 0x8900); @@ -724,11 +729,14 @@
> static int imx8mp_clocks_probe(struct platform_device *pdev)
>  	hws[IMX8MP_CLK_VPU_ROOT] = imx_clk_hw_gate4("vpu_root_clk",
> "vpu_bus", ccm_base + 0x4630, 0);
>  	hws[IMX8MP_CLK_AUDIO_ROOT] =
> imx_clk_hw_gate4("audio_root_clk", "ipg_root", ccm_base + 0x4650, 0);
> 
> -	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
> -					     hws[IMX8MP_CLK_A53_DIV]->clk,
> -					     hws[IMX8MP_CLK_A53_SRC]->clk,
> +	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC],
> hws[IMX8MP_SYS_PLL1_800M]);
> +	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE],
> hws[IMX8MP_ARM_PLL_OUT]);
> +
> +	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> +					     hws[IMX8MP_CLK_A53_CORE]->clk,
> +					     hws[IMX8MP_CLK_A53_CORE]->clk,
>  					     hws[IMX8MP_ARM_PLL_OUT]->clk,
> -					     hws[IMX8MP_SYS_PLL1_800M]->clk);
> +					     hws[IMX8MP_CLK_A53_DIV]->clk);
> 
>  	imx_check_clk_hws(hws, IMX8MP_CLK_END);
> 
> diff --git a/include/dt-bindings/clock/imx8mp-clock.h
> b/include/dt-bindings/clock/imx8mp-clock.h
> index 2fab63186bca..c92d1f4117eb 100644
> --- a/include/dt-bindings/clock/imx8mp-clock.h
> +++ b/include/dt-bindings/clock/imx8mp-clock.h
> @@ -294,7 +294,8 @@
>  #define IMX8MP_CLK_DRAM_ALT_ROOT		285
>  #define IMX8MP_CLK_DRAM_CORE			286
>  #define IMX8MP_CLK_ARM				287
> +#define IMX8MP_CLK_A53_CORE			288
> 
> -#define IMX8MP_CLK_END				288
> +#define IMX8MP_CLK_END				289
> 
>  #endif
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
