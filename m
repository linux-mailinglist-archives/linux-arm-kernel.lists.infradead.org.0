Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627E913109D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ti8XB1yGJYBnUYVLW3n3D/o1zEsuD/ngvdn1vKlxMg=; b=TD/2BuTbHtBsKY
	GDUlQqJr/mo1WPjU6XZfKlZq0g66XiIGw6LX085wjR/R3Jb5o5xnQaQ3HS1GfQff+01d/MfQhvy5Y
	nnL74X8RO66ij6Beosaw+9m6HzExKoS30VRAygWiotVD8G/wLCl9wllxxE2OsyCvWigewVg1NEfjn
	zhczk9LA8ZvOQ9MWTzF11Hzcbtmym5yrGIftjLwgjEKU/Y0ahJHmC+Mpk5KC9BQ9sdl8a1xrzkxBV
	BgHMm0MXoKLD4dBBFNebbi0fnjrCeIIvxQ/oK90XjVizmFg12EPGuI0Y4gfOdnxJM/1fzXVS1knpL
	XRf4/XkN4x4Ofx5hwFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPgs-0005vW-Tz; Mon, 06 Jan 2020 10:32:54 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPgh-0005tw-1R; Mon, 06 Jan 2020 10:32:46 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CAJK7AaDLfln2am8pZlWU5LsN/pPkVAj2SCpldtUKNIsIPjMTrpOgDFIF3oMjeXOCTqURi1Ii/
 d4v/3L9rPKFkcDdPS1NDPENDkCYkjqXzjRYfmHbvQKDVfhPJcgbN+KCulfqQ1rHBF8Igkb1G/1
 F968Zg/GdG0JaNiDrjVFJd/SzvVqt5znjwl8zNtMujIMaPHBWakMg982ujsyWPC7nARGnR9qaQ
 bd8AyxYFyWwSl0WpAjg84GSijoeq8dF5NpnrPhZU0zrTazs3zwSYKu1zA3tmvEVHPMNbftuDST
 Mhg=
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="59761197"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 03:32:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 03:32:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 6 Jan 2020 03:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EUtxK/5QvOowv5pS0802tLzbu+z+DS6a064yGuPAKGcQjlJIfcci21Sph674KhHKclOe2HCbj6Ce9tFagWi0v1xgJ9YmaJ0HSC+ob8JRBX5yUGRvCVxTGdcGPv//Ajb/bbLjL6YW9LOTlg/QW7/+6qUlO3nPvdpFRcHXolY65iIWwHJSh/iB8l2jzaFPABmYWKVL5TQy09vhqePktsEy4cXQz57STej0DTn8zyjx3c+zlPXMaKFJbT/uqKrtFBBNP5TX1u+GXtoA5Se/Dnk+lYl60lZodBOo+O6xOaPsd1G2mr5ZSOqqwYIN4dsQuBjWc/NOzaZYOeJ118wS+qu1SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAdhuUagr/hEGfEZFuPAry1k38rWdKCbMiBPO8JkBS4=;
 b=IyVcGJMUuMyAB7DvrC9XLiLXQoKvEO7pNM7qtmX9H45t67l4/fRxqZm4S3Or75aRXrN37gKO7RVJ+uBRbP0eH6kLssWhljvx1te0imA+ZyJCJs3w0qXBdPGYtYrGbehaUndBNiLatvCBnkv3ClNcjybQZ3bQWX76jgXMvTHG/6Bopqlsk6sL5KFu1lkD5HJFkj6QBvXSIX/tF2ha7qeTSbosLmpoO5IR7i4SBxyA7+rXNFKAs2CZni3T43ZnhRFhDh5DZt2vkfm3KQaT0H+2xkkKnXTXXz1Vo+0CmHL6FHHonCcQdifaqI9sY9KZZEgBkHDuWZW4jF85xzbR47WcSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAdhuUagr/hEGfEZFuPAry1k38rWdKCbMiBPO8JkBS4=;
 b=AHxrrVs5t8NEFvmbWSMrtDOtgq2Tlkztn4K7DZ2dVB3sieZOPgrvrV9uxuSx25jj3agXdNBGrZocBKsoql4J7ewzvJo824+gzNqkAufixIsLnneZ9DcMMFp7eIhmdlxDNh9rWwjh5x/TS1yqe0RzbWzZd89vWQKNBoJQQNC67gw=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4393.namprd11.prod.outlook.com (10.255.9.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Mon, 6 Jan 2020 10:32:37 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 10:32:37 +0000
From: <Claudiu.Beznea@microchip.com>
To: <tiny.windzz@gmail.com>, <thierry.reding@gmail.com>,
 <u.kleine-koenig@pengutronix.de>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <f.fainelli@gmail.com>,
 <nsaenzjulienne@suse.de>, <shc_work@mail.ru>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <kernel@pengutronix.de>, <festevam@gmail.com>,
 <linux-imx@nxp.com>, <vz@mleia.com>, <slemieux.tyco@gmail.com>,
 <khilman@baylibre.com>, <matthias.bgg@gmail.com>, <heiko@sntech.de>,
 <palmer@dabbelt.com>, <paul.walmsley@sifive.com>, <mripard@kernel.org>,
 <wens@csie.org>, <jonathanh@nvidia.com>, <linux@prisktech.co.nz>,
 <linux-arm-kernel@lists.infradead.org>, <linux-pwm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-rpi-kernel@lists.infradead.org>,
 <linux-amlogic@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-riscv@lists.infradead.org>,
 <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 32/32] pwm: atmel: convert to
 devm_platform_ioremap_resource
Thread-Topic: [PATCH 32/32] pwm: atmel: convert to
 devm_platform_ioremap_resource
Thread-Index: AQHVxHycAKU/bSXjtUyeJXn+AWSJqA==
Date: Mon, 6 Jan 2020 10:32:36 +0000
Message-ID: <5aef0df7-ab3a-fe81-3cd4-a81c08841a00@microchip.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-32-tiny.windzz@gmail.com>
In-Reply-To: <20191229080610.7597-32-tiny.windzz@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db77f637-7bd3-4105-9e4c-08d79293bfe8
x-ms-traffictypediagnostic: DM6PR11MB4393:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4393E533578E4ED4D982B468873C0@DM6PR11MB4393.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:299;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(396003)(136003)(39860400002)(199004)(189003)(64756008)(66446008)(8936002)(6512007)(66476007)(110136005)(316002)(71200400001)(8676002)(81156014)(81166006)(76116006)(66946007)(66556008)(91956017)(7406005)(7416002)(478600001)(36756003)(6506007)(2906002)(53546011)(31696002)(186003)(26005)(2616005)(6486002)(86362001)(5660300002)(31686004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4393;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 59SlEg5gCKH9OPWST7ew7YgA9qj+Rmz/b7UU8oUGof6+hCjrkXs7xLq0Yd6+gz2tMciAW4C8S5pU0BxdkDdvKqOF0Mm3cp2L4MVnHv/FVBzONqCHSIxgwVd0cMMw1xw3vv7pdpp4EUj9ro/oAPjGwwm+5h8Iln67uEZI7x2HnpMJqQbN0I9FyXvIEMr3PzF9JbhM8xTWg9ZAindxLTGCa2U0R2p0GpLSQy93NJ4YFGUjGzrYglJvY54lb702t60R1uijDtlhogZ9JU/HTJ2QLSmfL5R3kus2tHl0/BOeP07sBfE8ldQixtbMgX2yikeXyTdi4zsh7gV8pH7IhOc9TTC9iHl1gqAw5+nqbpcm7X6LSAh2N8aCSwwzfYLXP+68OSDXBJsIry/PLjb6SZnKpITiPmJNMHe1iudIjVXtux7KUpeEhz4Ipz9LHJYjamd2KuwV4AghY1lrCq0FrxxEL6qkBbTGm+9CvXMlcGASj5EM5HnuiuA3g8f+OhCEN0JC
Content-ID: <C0B3595014DD3C41BDEC06FF974DF51B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db77f637-7bd3-4105-9e4c-08d79293bfe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 10:32:36.7529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9nAopbNipMUBkPbXlcTJeYda8YK+Lh0bJ4W/SjTYJ+MqOPJ9AtID7OnC3C/QcbACEj1oDmG43Qm1InYa7LE0ycTJx4x8OfFks48dFF1g/Dg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_023243_184210_5D9E1186 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29.12.2019 10:06, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  drivers/pwm/pwm-atmel.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> index 9ba733467e26..86cc5ccaa46c 100644
> --- a/drivers/pwm/pwm-atmel.c
> +++ b/drivers/pwm/pwm-atmel.c
> @@ -340,7 +340,6 @@ MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
>  static int atmel_pwm_probe(struct platform_device *pdev)
>  {
>         struct atmel_pwm_chip *atmel_pwm;
> -       struct resource *res;
>         int ret;
> 
>         atmel_pwm = devm_kzalloc(&pdev->dev, sizeof(*atmel_pwm), GFP_KERNEL);
> @@ -351,8 +350,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>         atmel_pwm->data = of_device_get_match_data(&pdev->dev);
>         atmel_pwm->updated_pwms = 0;
> 
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       atmel_pwm->base = devm_ioremap_resource(&pdev->dev, res);
> +       atmel_pwm->base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(atmel_pwm->base))
>                 return PTR_ERR(atmel_pwm->base);
> 
> --
> 2.17.1
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
