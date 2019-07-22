Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AAA6FDD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uGcCxYUfALXJA4m6VLgmkrK8+IVMzg3cd7lTe04mbw=; b=ter8r7uEmUOsez
	2dma9qBrgsKCqPz/Oxd1AqMfsYO9D+x95sX8lJ2B27CHkRRfPpF3rlwekjSmxamJD901dLsycgF8v
	Q8L+8OobTx4lmWJnJp3YW+R65reGdmtlG1tNPvOFrZLqqS4HHmItdmk0IPK8LFdDp5PMOfwp+rVpC
	ouu4++qgBcDaAjlLHpdz95mY2zrBi7wsrcybcLhqxnxArebt0d7JNMzhIGbzM/ozNqRMmZrVb+BbS
	2i9oWvdPfqtlYtmydu6Mf8vatZFO6fgek6kSakRA8TW3VIdETaiEBywZ8WOdxesICYGogQyaIBJJF
	xs8jz/IBe8TmUiYa1hGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVbi-0002HI-OU; Mon, 22 Jul 2019 10:31:50 +0000
Received: from m4a0041g.houston.softwaregrp.com ([15.124.2.87])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVbY-00026m-7c; Mon, 22 Jul 2019 10:31:42 +0000
Received: FROM m4a0041g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0041g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 22 Jul 2019 10:31:26 +0000
Received: from M4W0335.microfocus.com (2002:f78:1193::f78:1193) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 10:30:18 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.124.8.14) by
 M4W0335.microfocus.com (15.120.17.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 10:30:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VJ/ND9g3rEpGlxvo0/vQ9Au/j7LtHNRYbNCTkYoBF5l0fFyYFC0FB/+Klx+IwvaMoa+SFcgrw+YIGT0dekOpXyE9vkgHIUEog7aj11P8DmXho+SDz9lJYMWKnYE8iK03Q/sjMHncrjk+Mat5d9hWgaQQZBZM+G2tI9HFDTuNNfPp3hIJb9cpqXEjjjI0Yz8B5OMGEP63pK6a/1hjeZwGobPkQ/j2+aLJbNWT5VJw/5+twMF8gPVcMdVsXzfU4S0Ll3CVsz771RLgwOrfH4ZLzlyriKZpzftL4VximQS0YYca0P32+x9NoSFanB6qRHZQl8xsvgU+nQBl2J0Z7qB+4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcRxf9osr6e5J8ENjAdLSgN8JRcWPNx0lQlACfnFZRs=;
 b=Dq5MPUu/On+Xl4GUpYO9aI1wU7ns5FZyar7zeAOQIcFBbPd8PLic/HghTxIWoEqkpms+uVr203tCHTGzxcWl7hlaRGh59RSQEWfr684DQmEB34H0ub5LNE9xVKsBvScYecdvpPaMmuK5Y2pZuhJzXLyZeBWCR7XwifFhJH4gapEY/ePgtguwI8BK7fg8tZ2HiXa0+5bamL3dQW+4kmdqEh8b4VmY7hMWM0m3fAN7jMHmqyGRUCwKRidCK+rTFjFCDm+yDm0Q5loKOSGIF6W1codkAX+PbE51e7wtvx0thsejE6N+zIsf0/UZxGsVzImUAQc2zmFlEe/EIvUIa63VWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1814.namprd18.prod.outlook.com (10.165.88.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 22 Jul 2019 10:30:16 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 10:30:16 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, "Mark
 Rutland" <mark.rutland@arm.com>, Michael Turquette <mturquette@baylibre.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "Rob Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 07/18] clk: bcm2835: Introduce SoC specific clock
 registration
Thread-Topic: [PATCH 07/18] clk: bcm2835: Introduce SoC specific clock
 registration
Thread-Index: AQHVQFIzUqMNCJwNjUS795VxR5w6P6bWcDiA
Date: Mon, 22 Jul 2019 10:30:16 +0000
Message-ID: <187d93e0-c6a9-5034-f98f-476964c7d251@suse.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-8-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563774880-8061-8-git-send-email-wahrenst@gmx.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0208.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::28) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c9babf0-6c2b-44ae-82be-08d70e8f9669
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1814; 
x-ms-traffictypediagnostic: CY4PR1801MB1814:
x-microsoft-antispam-prvs: <CY4PR1801MB1814E4A1408CCA6BFCD97E97BAC40@CY4PR1801MB1814.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(199004)(189003)(7416002)(76176011)(31686004)(86362001)(446003)(2906002)(52116002)(31696002)(478600001)(486006)(186003)(11346002)(2616005)(476003)(7736002)(3846002)(6116002)(66066001)(305945005)(71190400001)(6506007)(229853002)(71200400001)(53546011)(26005)(53936002)(54906003)(386003)(25786009)(14444005)(256004)(36756003)(110136005)(8676002)(99286004)(102836004)(66946007)(316002)(6436002)(66556008)(30864003)(66476007)(6486002)(81156014)(81166006)(4326008)(8936002)(6512007)(68736007)(66446008)(64756008)(53946003)(14454004)(6246003)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1814;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uHHyTW5qvTghF30u/5XqhLwHUaiQMgwVY+lg58DWYmZ8F2OxbQ81Tpzq0hrUs7Mf3N6vWYTFqrv5VUV3bmkXzyVkVFuCsbVKni4uwrahkQAt6A/UETK90tAnt4/aqufM/jp8KBg9jMhgYJdWbADrrAJFUsrlxvCmzA7m0mGwlgdcoT4tIQh6UE2KozXzySEJ5rkwlhu7rKACVonM3LpJQJNoUKWDoVuQE039Yf9oSkONuGNpz+XLPXGaqwkugu4+WxywP0NQf2xnHUijWRoy9w2/pEAp1NOWqOhhADgm9XY6gxsAI+pqj0WOqEUvQrsrRY1ORh5PCFUGLUHwhhchDCQg7tdImDPl6dy3OspSeOExl4nhHtyyzij5bhS2KauakjmMTZEPSuVWi2xnSB/Cx5sC//Cbja/DQ3FNSb2fGG0=
Content-ID: <F49EC41DC6781D4BA12A81C996B3B322@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c9babf0-6c2b-44ae-82be-08d70e8f9669
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 10:30:16.4043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1814
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033140_395586_211E9885 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.2.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/07/2019 07:54, Stefan Wahren wrote:
> In order to support SoC specific clocks (e.g. emmc2 for BCM2711), we
> extend the description with a SoC support flag. This approach avoids long
> and mostly redundant lists of clock IDs.
> 
> Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>  drivers/clk/bcm/clk-bcm2835.c | 103 +++++++++++++++++++++++++++++++++++-------
>  1 file changed, 86 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 867ae3c..3231b76 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -31,7 +31,7 @@
>  #include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> -#include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  #include <dt-bindings/clock/bcm2835.h>
> @@ -289,6 +289,9 @@
>  #define LOCK_TIMEOUT_NS		100000000
>  #define BCM2835_MAX_FB_RATE	1750000000u
> 
> +#define SOC_BCM2835		BIT(0)
> +#define SOC_ALL			(SOC_BCM2835)
> +
>  /*
>   * Names of clocks used within the driver that need to be replaced
>   * with an external parent's name.  This array is in the order that
> @@ -1451,22 +1454,28 @@ typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,
>  					       const void *data);
>  struct bcm2835_clk_desc {
>  	bcm2835_clk_register clk_register;
> +	unsigned int supported;
>  	const void *data;
>  };
> 
>  /* assignment helper macros for different clock types */
> -#define _REGISTER(f, ...) { .clk_register = (bcm2835_clk_register)f, \
> -			    .data = __VA_ARGS__ }
> -#define REGISTER_PLL(...)	_REGISTER(&bcm2835_register_pll,	\
> +#define _REGISTER(f, s, ...) { .clk_register = (bcm2835_clk_register)f, \
> +			       .supported = s,				\
> +			       .data = __VA_ARGS__ }
> +#define REGISTER_PLL(s, ...)	_REGISTER(&bcm2835_register_pll,	\
> +					  s,				\
>  					  &(struct bcm2835_pll_data)	\
>  					  {__VA_ARGS__})
> -#define REGISTER_PLL_DIV(...)	_REGISTER(&bcm2835_register_pll_divider, \
> -					  &(struct bcm2835_pll_divider_data) \
> -					  {__VA_ARGS__})
> -#define REGISTER_CLK(...)	_REGISTER(&bcm2835_register_clock,	\
> +#define REGISTER_PLL_DIV(s, ...) _REGISTER(&bcm2835_register_pll_divider, \
> +					   s,				  \
> +					   &(struct bcm2835_pll_divider_data) \
> +					   {__VA_ARGS__})
> +#define REGISTER_CLK(s, ...)	_REGISTER(&bcm2835_register_clock,	\
> +					  s,				\
>  					  &(struct bcm2835_clock_data)	\
>  					  {__VA_ARGS__})
> -#define REGISTER_GATE(...)	_REGISTER(&bcm2835_register_gate,	\
> +#define REGISTER_GATE(s, ...)	_REGISTER(&bcm2835_register_gate,	\
> +					  s,				\
>  					  &(struct bcm2835_gate_data)	\
>  					  {__VA_ARGS__})
> 
> @@ -1480,7 +1489,8 @@ static const char *const bcm2835_clock_osc_parents[] = {
>  	"testdebug1"
>  };
> 
> -#define REGISTER_OSC_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_OSC_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_osc_parents),	\
>  	.parents = bcm2835_clock_osc_parents,				\
>  	__VA_ARGS__)
> @@ -1497,7 +1507,8 @@ static const char *const bcm2835_clock_per_parents[] = {
>  	"pllh_aux",
>  };
> 
> -#define REGISTER_PER_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_PER_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_per_parents),	\
>  	.parents = bcm2835_clock_per_parents,				\
>  	__VA_ARGS__)
> @@ -1522,7 +1533,8 @@ static const char *const bcm2835_pcm_per_parents[] = {
>  	"-",
>  };
> 
> -#define REGISTER_PCM_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_PCM_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_pcm_per_parents),		\
>  	.parents = bcm2835_pcm_per_parents,				\
>  	__VA_ARGS__)
> @@ -1541,7 +1553,8 @@ static const char *const bcm2835_clock_vpu_parents[] = {
>  	"pllc_core2",
>  };
> 
> -#define REGISTER_VPU_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_VPU_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_vpu_parents),	\
>  	.parents = bcm2835_clock_vpu_parents,				\
>  	__VA_ARGS__)
> @@ -1577,12 +1590,14 @@ static const char *const bcm2835_clock_dsi1_parents[] = {
>  	"dsi1_byte_inv",
>  };
> 
> -#define REGISTER_DSI0_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_DSI0_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_dsi0_parents),	\
>  	.parents = bcm2835_clock_dsi0_parents,				\
>  	__VA_ARGS__)
> 
> -#define REGISTER_DSI1_CLK(...)	REGISTER_CLK(				\
> +#define REGISTER_DSI1_CLK(s, ...)	REGISTER_CLK(			\
> +	s,								\
>  	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_dsi1_parents),	\
>  	.parents = bcm2835_clock_dsi1_parents,				\
>  	__VA_ARGS__)
> @@ -1602,6 +1617,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * AUDIO domain is on.
>  	 */
>  	[BCM2835_PLLA]		= REGISTER_PLL(
> +		SOC_ALL,
>  		.name = "plla",
>  		.cm_ctrl_reg = CM_PLLA,
>  		.a2w_ctrl_reg = A2W_PLLA_CTRL,
> @@ -1616,6 +1632,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.max_rate = 2400000000u,
>  		.max_fb_rate = BCM2835_MAX_FB_RATE),
>  	[BCM2835_PLLA_CORE]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plla_core",
>  		.source_pll = "plla",
>  		.cm_reg = CM_PLLA,
> @@ -1625,6 +1642,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLA_PER]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plla_per",
>  		.source_pll = "plla",
>  		.cm_reg = CM_PLLA,
> @@ -1634,6 +1652,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLA_DSI0]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plla_dsi0",
>  		.source_pll = "plla",
>  		.cm_reg = CM_PLLA,
> @@ -1642,6 +1661,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.hold_mask = CM_PLLA_HOLDDSI0,
>  		.fixed_divider = 1),
>  	[BCM2835_PLLA_CCP2]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plla_ccp2",
>  		.source_pll = "plla",
>  		.cm_reg = CM_PLLA,
> @@ -1663,6 +1683,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * AUDIO domain is on.
>  	 */
>  	[BCM2835_PLLC]		= REGISTER_PLL(
> +		SOC_ALL,
>  		.name = "pllc",
>  		.cm_ctrl_reg = CM_PLLC,
>  		.a2w_ctrl_reg = A2W_PLLC_CTRL,
> @@ -1677,6 +1698,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.max_rate = 3000000000u,
>  		.max_fb_rate = BCM2835_MAX_FB_RATE),
>  	[BCM2835_PLLC_CORE0]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllc_core0",
>  		.source_pll = "pllc",
>  		.cm_reg = CM_PLLC,
> @@ -1686,6 +1708,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLC_CORE1]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllc_core1",
>  		.source_pll = "pllc",
>  		.cm_reg = CM_PLLC,
> @@ -1695,6 +1718,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLC_CORE2]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllc_core2",
>  		.source_pll = "pllc",
>  		.cm_reg = CM_PLLC,
> @@ -1704,6 +1728,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLC_PER]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllc_per",
>  		.source_pll = "pllc",
>  		.cm_reg = CM_PLLC,
> @@ -1720,6 +1745,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * AUDIO domain is on.
>  	 */
>  	[BCM2835_PLLD]		= REGISTER_PLL(
> +		SOC_ALL,
>  		.name = "plld",
>  		.cm_ctrl_reg = CM_PLLD,
>  		.a2w_ctrl_reg = A2W_PLLD_CTRL,
> @@ -1734,6 +1760,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.max_rate = 2400000000u,
>  		.max_fb_rate = BCM2835_MAX_FB_RATE),
>  	[BCM2835_PLLD_CORE]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plld_core",
>  		.source_pll = "plld",
>  		.cm_reg = CM_PLLD,
> @@ -1743,6 +1770,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLD_PER]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plld_per",
>  		.source_pll = "plld",
>  		.cm_reg = CM_PLLD,
> @@ -1752,6 +1780,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLD_DSI0]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plld_dsi0",
>  		.source_pll = "plld",
>  		.cm_reg = CM_PLLD,
> @@ -1760,6 +1789,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.hold_mask = CM_PLLD_HOLDDSI0,
>  		.fixed_divider = 1),
>  	[BCM2835_PLLD_DSI1]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "plld_dsi1",
>  		.source_pll = "plld",
>  		.cm_reg = CM_PLLD,
> @@ -1775,6 +1805,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * It is in the HDMI power domain.
>  	 */
>  	[BCM2835_PLLH]		= REGISTER_PLL(
> +		SOC_ALL,
>  		"pllh",
>  		.cm_ctrl_reg = CM_PLLH,
>  		.a2w_ctrl_reg = A2W_PLLH_CTRL,
> @@ -1789,6 +1820,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.max_rate = 3000000000u,
>  		.max_fb_rate = BCM2835_MAX_FB_RATE),
>  	[BCM2835_PLLH_RCAL]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_rcal",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
> @@ -1798,6 +1830,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 10,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLH_AUX]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_aux",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
> @@ -1807,6 +1840,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLH_PIX]	= REGISTER_PLL_DIV(
> +		SOC_ALL,
>  		.name = "pllh_pix",
>  		.source_pll = "pllh",
>  		.cm_reg = CM_PLLH,
> @@ -1822,6 +1856,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* One Time Programmable Memory clock.  Maximum 10Mhz. */
>  	[BCM2835_CLOCK_OTP]	= REGISTER_OSC_CLK(
> +		SOC_ALL,
>  		.name = "otp",
>  		.ctl_reg = CM_OTPCTL,
>  		.div_reg = CM_OTPDIV,
> @@ -1833,6 +1868,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * bythe watchdog timer and the camera pulse generator.
>  	 */
>  	[BCM2835_CLOCK_TIMER]	= REGISTER_OSC_CLK(
> +		SOC_ALL,
>  		.name = "timer",
>  		.ctl_reg = CM_TIMERCTL,
>  		.div_reg = CM_TIMERDIV,
> @@ -1843,12 +1879,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * Generally run at 2Mhz, max 5Mhz.
>  	 */
>  	[BCM2835_CLOCK_TSENS]	= REGISTER_OSC_CLK(
> +		SOC_ALL,
>  		.name = "tsens",
>  		.ctl_reg = CM_TSENSCTL,
>  		.div_reg = CM_TSENSDIV,
>  		.int_bits = 5,
>  		.frac_bits = 0),
>  	[BCM2835_CLOCK_TEC]	= REGISTER_OSC_CLK(
> +		SOC_ALL,
>  		.name = "tec",
>  		.ctl_reg = CM_TECCTL,
>  		.div_reg = CM_TECDIV,
> @@ -1857,6 +1895,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* clocks with vpu parent mux */
>  	[BCM2835_CLOCK_H264]	= REGISTER_VPU_CLK(
> +		SOC_ALL,
>  		.name = "h264",
>  		.ctl_reg = CM_H264CTL,
>  		.div_reg = CM_H264DIV,
> @@ -1864,6 +1903,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 1),
>  	[BCM2835_CLOCK_ISP]	= REGISTER_VPU_CLK(
> +		SOC_ALL,
>  		.name = "isp",
>  		.ctl_reg = CM_ISPCTL,
>  		.div_reg = CM_ISPDIV,
> @@ -1876,6 +1916,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * in the SDRAM controller can't be used.
>  	 */
>  	[BCM2835_CLOCK_SDRAM]	= REGISTER_VPU_CLK(
> +		SOC_ALL,
>  		.name = "sdram",
>  		.ctl_reg = CM_SDCCTL,
>  		.div_reg = CM_SDCDIV,
> @@ -1883,6 +1924,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 0,
>  		.tcnt_mux = 3),
>  	[BCM2835_CLOCK_V3D]	= REGISTER_VPU_CLK(
> +		SOC_ALL,
>  		.name = "v3d",
>  		.ctl_reg = CM_V3DCTL,
>  		.div_reg = CM_V3DDIV,
> @@ -1896,6 +1938,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * in various hardware documentation.
>  	 */
>  	[BCM2835_CLOCK_VPU]	= REGISTER_VPU_CLK(
> +		SOC_ALL,
>  		.name = "vpu",
>  		.ctl_reg = CM_VPUCTL,
>  		.div_reg = CM_VPUDIV,
> @@ -1907,6 +1950,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* clocks with per parent mux */
>  	[BCM2835_CLOCK_AVEO]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "aveo",
>  		.ctl_reg = CM_AVEOCTL,
>  		.div_reg = CM_AVEODIV,
> @@ -1914,6 +1958,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 0,
>  		.tcnt_mux = 38),
>  	[BCM2835_CLOCK_CAM0]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "cam0",
>  		.ctl_reg = CM_CAM0CTL,
>  		.div_reg = CM_CAM0DIV,
> @@ -1921,6 +1966,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 14),
>  	[BCM2835_CLOCK_CAM1]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "cam1",
>  		.ctl_reg = CM_CAM1CTL,
>  		.div_reg = CM_CAM1DIV,
> @@ -1928,12 +1974,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 15),
>  	[BCM2835_CLOCK_DFT]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "dft",
>  		.ctl_reg = CM_DFTCTL,
>  		.div_reg = CM_DFTDIV,
>  		.int_bits = 5,
>  		.frac_bits = 0),
>  	[BCM2835_CLOCK_DPI]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "dpi",
>  		.ctl_reg = CM_DPICTL,
>  		.div_reg = CM_DPIDIV,
> @@ -1943,6 +1991,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* Arasan EMMC clock */
>  	[BCM2835_CLOCK_EMMC]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "emmc",
>  		.ctl_reg = CM_EMMCCTL,
>  		.div_reg = CM_EMMCDIV,
> @@ -1952,6 +2001,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* General purpose (GPIO) clocks */
>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "gp0",
>  		.ctl_reg = CM_GP0CTL,
>  		.div_reg = CM_GP0DIV,
> @@ -1960,6 +2010,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.is_mash_clock = true,
>  		.tcnt_mux = 20),
>  	[BCM2835_CLOCK_GP1]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "gp1",
>  		.ctl_reg = CM_GP1CTL,
>  		.div_reg = CM_GP1DIV,
> @@ -1969,6 +2020,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.is_mash_clock = true,
>  		.tcnt_mux = 21),
>  	[BCM2835_CLOCK_GP2]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "gp2",
>  		.ctl_reg = CM_GP2CTL,
>  		.div_reg = CM_GP2DIV,
> @@ -1978,6 +2030,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* HDMI state machine */
>  	[BCM2835_CLOCK_HSM]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "hsm",
>  		.ctl_reg = CM_HSMCTL,
>  		.div_reg = CM_HSMDIV,
> @@ -1985,6 +2038,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 22),
>  	[BCM2835_CLOCK_PCM]	= REGISTER_PCM_CLK(
> +		SOC_ALL,
>  		.name = "pcm",
>  		.ctl_reg = CM_PCMCTL,
>  		.div_reg = CM_PCMDIV,
> @@ -1994,6 +2048,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.low_jitter = true,
>  		.tcnt_mux = 23),
>  	[BCM2835_CLOCK_PWM]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "pwm",
>  		.ctl_reg = CM_PWMCTL,
>  		.div_reg = CM_PWMDIV,
> @@ -2002,6 +2057,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.is_mash_clock = true,
>  		.tcnt_mux = 24),
>  	[BCM2835_CLOCK_SLIM]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "slim",
>  		.ctl_reg = CM_SLIMCTL,
>  		.div_reg = CM_SLIMDIV,
> @@ -2010,6 +2066,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.is_mash_clock = true,
>  		.tcnt_mux = 25),
>  	[BCM2835_CLOCK_SMI]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "smi",
>  		.ctl_reg = CM_SMICTL,
>  		.div_reg = CM_SMIDIV,
> @@ -2017,6 +2074,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 27),
>  	[BCM2835_CLOCK_UART]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "uart",
>  		.ctl_reg = CM_UARTCTL,
>  		.div_reg = CM_UARTDIV,
> @@ -2026,6 +2084,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* TV encoder clock.  Only operating frequency is 108Mhz.  */
>  	[BCM2835_CLOCK_VEC]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "vec",
>  		.ctl_reg = CM_VECCTL,
>  		.div_reg = CM_VECDIV,
> @@ -2040,6 +2099,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
> 
>  	/* dsi clocks */
>  	[BCM2835_CLOCK_DSI0E]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "dsi0e",
>  		.ctl_reg = CM_DSI0ECTL,
>  		.div_reg = CM_DSI0EDIV,
> @@ -2047,6 +2107,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 18),
>  	[BCM2835_CLOCK_DSI1E]	= REGISTER_PER_CLK(
> +		SOC_ALL,
>  		.name = "dsi1e",
>  		.ctl_reg = CM_DSI1ECTL,
>  		.div_reg = CM_DSI1EDIV,
> @@ -2054,6 +2115,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 19),
>  	[BCM2835_CLOCK_DSI0P]	= REGISTER_DSI0_CLK(
> +		SOC_ALL,
>  		.name = "dsi0p",
>  		.ctl_reg = CM_DSI0PCTL,
>  		.div_reg = CM_DSI0PDIV,
> @@ -2061,6 +2123,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 0,
>  		.tcnt_mux = 12),
>  	[BCM2835_CLOCK_DSI1P]	= REGISTER_DSI1_CLK(
> +		SOC_ALL,
>  		.name = "dsi1p",
>  		.ctl_reg = CM_DSI1PCTL,
>  		.div_reg = CM_DSI1PDIV,
> @@ -2077,6 +2140,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  	 * non-stop vpu clock.
>  	 */
>  	[BCM2835_CLOCK_PERI_IMAGE] = REGISTER_GATE(
> +		SOC_ALL,
>  		.name = "peri_image",
>  		.parent = "vpu",
>  		.ctl_reg = CM_PERIICTL),
> @@ -2109,9 +2173,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	const struct bcm2835_clk_desc *desc;
>  	const size_t asize = ARRAY_SIZE(clk_desc_array);
> +	unsigned int soc;
>  	size_t i;
>  	int ret;
> 
> +	soc = (unsigned int)of_device_get_match_data(&pdev->dev);
> +	if (!soc)
> +		return -ENODEV;
> +
>  	cprman = devm_kzalloc(dev,
>  			      struct_size(cprman, onecell.hws, asize),
>  			      GFP_KERNEL);
> @@ -2147,7 +2216,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
> 
>  	for (i = 0; i < asize; i++) {
>  		desc = &clk_desc_array[i];
> -		if (desc->clk_register && desc->data)
> +		if (desc->clk_register && desc->data && (desc->supported & soc))
>  			hws[i] = desc->clk_register(cprman, desc->data);
>  	}
> 
> @@ -2160,7 +2229,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>  }
> 
>  static const struct of_device_id bcm2835_clk_of_match[] = {
> -	{ .compatible = "brcm,bcm2835-cprman", },
> +	{ .compatible = "brcm,bcm2835-cprman", .data = (void *)SOC_BCM2835 },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
> --
> 2.7.4
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
