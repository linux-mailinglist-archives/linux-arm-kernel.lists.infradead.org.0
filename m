Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0080A652FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQc6zyjVaqpSfiDibcHkzSa/Szp6ZVm6FSxMfPIxP90=; b=sTQFTa1HGTYeZt
	q0Dnsiy00sAf+g84V99Fye+DcmDkNVsJmiobH0srs2N2KfQEmHeLfgtnpMGxEbknUvA9qbz6oqS68
	cpuuEKQVH442bm7yBdnbFQfD03C+fc/Cpz08b3J7W5ruQh2GvIi09b5lv1aQ/azn166M81c9QLkiU
	NgrSnr11bz9tpqAAbu41hc5wvJSrXoJBnfW3AGij1Z4NKfZOSZFk02Wy9xwf54bSZXvFPedIt4GOi
	18SFODL+4/d5HEmA5H4HYpI8f/D1rpgXGUn88SexVni3ZOnEwQVgk2u7g0kOBzllq/eKqFonbjZFp
	GM2jGYVTamlHtzK0gQ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUHA-0007Au-Hq; Thu, 11 Jul 2019 08:18:00 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUGw-0007AN-UN
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 08:17:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BcQ8ST1TCyJRhGaB26DYgyyMidy+dNZNN8FpCr9uDk=;
 b=lv+SyOtLvrnm9lz00pmKGJH5KgKHhOdJDKJDvhIwTAJWD8BTdcnEVoePTsd7cWnmMb3SLpMYSs9wkTeJZZCryEg5wUw99lioO3Uj668mpdiftOX6IdJjfyKOlpsefEulUy5IB/SFHzP0eQWJaVoCOUKOpWvP4cZS18cjYnBMr7M=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4626.eurprd04.prod.outlook.com (52.135.151.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Thu, 11 Jul 2019 08:17:44 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2052.022; Thu, 11 Jul 2019
 08:17:44 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [RESEND PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Topic: [RESEND PATCH 1/2] clk: imx8mm: rename lcdif pixel clock
Thread-Index: AQHVNtXYsppc9iHvSUKCRoa1/AmVEabFFI6A
Date: Thu, 11 Jul 2019 08:17:43 +0000
Message-ID: <20190711081743.r73g5zqtrgdw5xlp@fsr-ub1664-175>
References: <20190710041546.23422-1-chen.fang@nxp.com>
In-Reply-To: <20190710041546.23422-1-chen.fang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4681e66-2fdc-45e5-2399-08d705d84001
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4626; 
x-ms-traffictypediagnostic: AM0PR04MB4626:
x-microsoft-antispam-prvs: <AM0PR04MB46265BDE847E9164CFF2B4DBF6F30@AM0PR04MB4626.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(186003)(256004)(26005)(6246003)(478600001)(7736002)(305945005)(1076003)(71190400001)(86362001)(68736007)(71200400001)(5660300002)(66066001)(91956017)(66946007)(76116006)(64756008)(66476007)(66556008)(66446008)(102836004)(6506007)(53546011)(11346002)(476003)(44832011)(446003)(33716001)(6862004)(2906002)(54906003)(25786009)(316002)(6486002)(4326008)(76176011)(6116002)(3846002)(8936002)(14454004)(9686003)(6512007)(229853002)(81156014)(99286004)(8676002)(81166006)(53936002)(6436002)(486006)(7416002)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4626;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XcdkKHSCVaZKZl2+v+Ss6YQ1arLDVJdMEHgrSpreNLXXCQSLjvBibpYfqB6c1YlFtKE+r+eofJQhkJA1JK2kpE5fHEoiVOQiNFonoDDXWiLb1rE6cyqQ3JgQ/SthqHF7mwezZOJ/jMypsJnIoQU6wZRZgT3Wyo2kUG+4V3NzDS7FzkxdyaZs0YWMmaxUccSJXFAe1AdcDdOJ8LDL0KyQCv3ufDdVM5jKsQ3l0lHr1ZeUZQK73Jo5mBu6vdW17wCr5dGTlTI2tNsYkI6Xo78nzuTVWJuWbMKFhU72wF2HKaK8ywJnpuvf33+ZNN3UyRbXNVCRfM8HGiO1rq3/cifo9XIzy7lfnaIeiEd3hGbm0b/3MEfmCxs0IwZ0M3tjOmbCTyguwwLuR64R9Q42DPU77IkQu0oGEDcQdvKOB+LMDQ8=
Content-ID: <0031DD8A96E813439B342C5DCC30EFC0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4681e66-2fdc-45e5-2399-08d705d84001
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 08:17:43.9886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4626
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_011746_982707_988E08EC 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Jacky Bai <ping.bai@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-10 04:13:37, Fancy Fang wrote:
> Rename 'lcdif' pixel clock related names to 'disp' names, since:
> 
> First, the lcdif pixel clock is not supplied to LCDIF controller
> directly, but to some LPCG clock in display mix. So rename it to
> 'disp' pixel clock is more accurate.
> 
> Second, in the imx8mn CCM specification which is designed after
> imx8mm, this same pixel root clock name has been modified from
> 'LCDIF_PIXEL_CLK_ROOT' to 'DISPLAY_PIXEL_CLK_ROOT'.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>

For the entire series.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mm.c             | 4 ++--
>  include/dt-bindings/clock/imx8mm-clock.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 6b8e75df994d..42f1227a4952 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -210,7 +210,7 @@ static const char *imx8mm_pcie1_aux_sels[] = {"osc_24m", "sys_pll2_200m", "sys_p
>  static const char *imx8mm_dc_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
>  					     "sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
>  
> -static const char *imx8mm_lcdif_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
> +static const char *imx8mm_disp_pixel_sels[] = {"osc_24m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out",
>  						"sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out", "clk_ext4", };
>  
>  static const char *imx8mm_sai1_sels[] = {"osc_24m", "audio_pll1_out", "audio_pll2_out", "video_pll1_out",
> @@ -535,7 +535,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
>  	clks[IMX8MM_CLK_PCIE1_PHY] = imx8m_clk_composite("pcie1_phy", imx8mm_pcie1_phy_sels, base + 0xa380);
>  	clks[IMX8MM_CLK_PCIE1_AUX] = imx8m_clk_composite("pcie1_aux", imx8mm_pcie1_aux_sels, base + 0xa400);
>  	clks[IMX8MM_CLK_DC_PIXEL] = imx8m_clk_composite("dc_pixel", imx8mm_dc_pixel_sels, base + 0xa480);
> -	clks[IMX8MM_CLK_LCDIF_PIXEL] = imx8m_clk_composite("lcdif_pixel", imx8mm_lcdif_pixel_sels, base + 0xa500);
> +	clks[IMX8MM_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mm_disp_pixel_sels, base + 0xa500);
>  	clks[IMX8MM_CLK_SAI1] = imx8m_clk_composite("sai1", imx8mm_sai1_sels, base + 0xa580);
>  	clks[IMX8MM_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mm_sai2_sels, base + 0xa600);
>  	clks[IMX8MM_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mm_sai3_sels, base + 0xa680);
> diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
> index 07e6c686f3ef..91ef77efebd9 100644
> --- a/include/dt-bindings/clock/imx8mm-clock.h
> +++ b/include/dt-bindings/clock/imx8mm-clock.h
> @@ -119,7 +119,7 @@
>  #define IMX8MM_CLK_PCIE1_PHY			104
>  #define IMX8MM_CLK_PCIE1_AUX			105
>  #define IMX8MM_CLK_DC_PIXEL			106
> -#define IMX8MM_CLK_LCDIF_PIXEL			107
> +#define IMX8MM_CLK_DISP_PIXEL			107
>  #define IMX8MM_CLK_SAI1				108
>  #define IMX8MM_CLK_SAI2				109
>  #define IMX8MM_CLK_SAI3				110
> -- 
> 2.17.1
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
