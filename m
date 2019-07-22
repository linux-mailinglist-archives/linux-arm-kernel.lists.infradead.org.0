Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA556FDE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XelBmJdUpNBl++qd5p/NWFjx62kD3SnzBhgBw/RkwT0=; b=kxR5S6XD+/o/Ve
	B1GkFFZM7yGGnyAVCURbNDR78tQA5vdaVZZcNUjPjboVvn8z5TgYLyyRSu/l9RcmtRalxZTwJGl68
	i7l3P83YL6M7oS+zuD8a8ovLNGDAbr4DNmr+h6oK++iKusdC2CVYA7rgGsFSG33yVG66zIbh84xmv
	1pxsp8n6LV4ejYSDxGbSlBZ6tL0nHCg4aJm2s+mnlx4daw3cCx47GytOC1U9GmuFAAaHmUiZCwnnr
	KVsa6P7y75AjeqFZdF0EOF5JJjSHYZnxG/Zb1E4wEXBKOOY3NkGiw+EYzeb20cnFQktori7B8ui1W
	QstGAsOji+gM0lsYKW9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVee-0004B0-Cs; Mon, 22 Jul 2019 10:34:52 +0000
Received: from m4a0040g.houston.softwaregrp.com ([15.124.2.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVe0-0003Pz-UY; Mon, 22 Jul 2019 10:34:14 +0000
Received: FROM m4a0040g.houston.softwaregrp.com (15.120.17.147) BY
 m4a0040g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 22 Jul 2019 10:30:10 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M4W0335.microfocus.com (2002:f78:1193::f78:1193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 22 Jul 2019 10:30:45 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.124.72.14) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 22 Jul 2019 10:30:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R11EItcA05oBg09T/n8qLqiy6VPNG3+HlfCqucv6oB9T6q8eQ6449WJsmAflu0+NetUxPA27M0war6TNzrZiR7Pk6dQl9UXQ/uO1LFl2daSlJ2KC7lwDRLBGjQbCDuqRWQvyZZh2Q9G3N0XG2o4xIN9mvaTQ50lAzahmbcuJ0LVzae44l4/1yWWQ768N3UG3l3p7/tGE1fE3KCDnQLrwKBeAL2Nxb45NZpAItOozWYsz7kWV+Ti6rlLbKMB+5TSByERHb6TFXzqwx4DWwi31brr6IIGHL20KxgmWqNneCprGBuPqzReWNgK53gupzVKKtfnn3SlGH+shwxvxgm/ePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ez+EvbA4+RYRM46k2RHdmWHn1D0NYwH4RL2byT7xxD0=;
 b=bK+fgaVOupJHtGgxFsVERYd5e4TIXTnUviaNx66nE7r8Dme6/MmHU/vsoJx7aBbIHSjyxSi9LraIZYVrEGV03aYYpur/2uWFVsVqrz7ojIJlftb0P5G25E7BPHIaZkQTCrF+3xrb1I1ihqoa/nX72rgxFlI34dvZbxQuO72JhnR94Vv0YNjWsVr+5n+K8YWTSv4ZP00aBzd1XmjfSjharIV0TgAWzv9a0JUrtkbuHPCBX2YPp14RuP/VA7aatvnlBWe8RpdF/sbYDX7kKLaWa+FWYYbufOa7QVTxzUOiMcr5Auv51nFI9JiQBH9mCcKIn2JToIPyT15MbuEn8Xu9qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com (10.171.255.24) by
 CY4PR1801MB1814.namprd18.prod.outlook.com (10.165.88.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 22 Jul 2019 10:30:44 +0000
Received: from CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8]) by CY4PR1801MB1909.namprd18.prod.outlook.com
 ([fe80::1d84:4a66:a3f4:97f8%3]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 10:30:44 +0000
From: Matthias Brugger <mbrugger@suse.com>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, "Mark
 Rutland" <mark.rutland@arm.com>, Michael Turquette <mturquette@baylibre.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, "Florian
 Fainelli" <f.fainelli@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "Rob Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 08/18] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
Thread-Topic: [PATCH 08/18] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
Thread-Index: AQHVQFImGDIGqXRsiUOxt6xLjNyxhqbWcFsA
Date: Mon, 22 Jul 2019 10:30:43 +0000
Message-ID: <d18150b3-3c0e-04d3-c40e-c418dcdbcafd@suse.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-9-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563774880-8061-9-git-send-email-wahrenst@gmx.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0209.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::29) To CY4PR1801MB1909.namprd18.prod.outlook.com
 (2603:10b6:910:7a::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbrugger@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [37.223.144.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7e39fca-6257-427c-4bd9-08d70e8fa6d8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1801MB1814; 
x-ms-traffictypediagnostic: CY4PR1801MB1814:
x-microsoft-antispam-prvs: <CY4PR1801MB181419EA6356CAEB47342DC3BAC40@CY4PR1801MB1814.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(199004)(189003)(7416002)(76176011)(31686004)(86362001)(446003)(2906002)(52116002)(31696002)(478600001)(486006)(186003)(11346002)(2616005)(476003)(7736002)(3846002)(6116002)(66066001)(305945005)(71190400001)(6506007)(229853002)(71200400001)(53546011)(26005)(53936002)(54906003)(386003)(25786009)(14444005)(256004)(36756003)(110136005)(8676002)(99286004)(102836004)(66946007)(316002)(6436002)(66556008)(66476007)(6486002)(81156014)(81166006)(4326008)(8936002)(6512007)(68736007)(66446008)(64756008)(14454004)(6246003)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1801MB1814;
 H:CY4PR1801MB1909.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 20c6eXuNBruP70bpUnsbuS1FH5plXQ3O53+0eWtd+ChhPGRWLqs1FmiVvKjj+EvKdqOKQDWycbX5IKocQmLOsfh5aH7f5CdJz++gcH6rSlFQrCUTSI0c+hl0bktOC+WP/MxhLwR/G0gkyD7mou5Sl2SvBmb9HTVlvIPo+TAiE4Xs5pWCtsOq+suMTswL+2HXu8qRFamxOB/UtlssS6GOE3UlNCEvFTzmEl9Sjg9p0rqZ/ibHKiN3fVbDVHqkMjLo9MZnpdn3ff5Ubz0DDUPGXULNq35dGyBpK7yPD8+uPIsf56hf8dHPEObo4wyljeSz8qqCBF5GIGKzRYl7mTrw+gKy5MtV7c9hpHrHtnWXzN/F1tEHCNPmux8ws+YyW9JlCIO56l+BX2r45zixe1mcYOc7vZg0v+VcBHKIAe9QyUw=
Content-ID: <11962E45BAF04149AAFFB38C069C7677@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e39fca-6257-427c-4bd9-08d70e8fa6d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 10:30:43.9359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbrugger@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1814
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033413_098919_7544B0EA 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.2.86 listed in list.dnswl.org]
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
> The new BCM2711 supports an additional clock for the emmc2 block.
> So add a new compatible and register this clock only for BCM2711.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>  drivers/clk/bcm/clk-bcm2835.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 3231b76..fbdc4e1 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -114,6 +114,8 @@
>  #define CM_AVEODIV		0x1bc
>  #define CM_EMMCCTL		0x1c0
>  #define CM_EMMCDIV		0x1c4
> +#define CM_EMMC2CTL		0x1d0
> +#define CM_EMMC2DIV		0x1d4
> 
>  /* General bits for the CM_*CTL regs */
>  # define CM_ENABLE			BIT(4)
> @@ -290,7 +292,8 @@
>  #define BCM2835_MAX_FB_RATE	1750000000u
> 
>  #define SOC_BCM2835		BIT(0)
> -#define SOC_ALL			(SOC_BCM2835)
> +#define SOC_BCM2711		BIT(1)
> +#define SOC_ALL			(SOC_BCM2835 | SOC_BCM2711)
> 
>  /*
>   * Names of clocks used within the driver that need to be replaced
> @@ -1999,6 +2002,16 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.frac_bits = 8,
>  		.tcnt_mux = 39),
> 
> +	/* EMMC2 clock (only available for BCM2711) */
> +	[BCM2711_CLOCK_EMMC2]	= REGISTER_PER_CLK(
> +		SOC_BCM2711,
> +		.name = "emmc2",
> +		.ctl_reg = CM_EMMC2CTL,
> +		.div_reg = CM_EMMC2DIV,
> +		.int_bits = 4,
> +		.frac_bits = 8,
> +		.tcnt_mux = 42),
> +
>  	/* General purpose (GPIO) clocks */
>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>  		SOC_ALL,
> @@ -2230,6 +2243,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
> 
>  static const struct of_device_id bcm2835_clk_of_match[] = {
>  	{ .compatible = "brcm,bcm2835-cprman", .data = (void *)SOC_BCM2835 },
> +	{ .compatible = "brcm,bcm2711-cprman", .data = (void *)SOC_BCM2711 },
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
