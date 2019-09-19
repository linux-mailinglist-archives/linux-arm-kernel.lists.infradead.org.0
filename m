Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088B5B7468
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwGIurXbDjV52GtV1N44Yhtm0lOtJqaxupl40uLOWu4=; b=G0/RB1VIp9Did1
	a0IJl4uf7oTdhNp43jHO0Vicoui8wGbYr6pHxHDCd/DPGL3BqYKy185BG2ypd7XCF3XgbUm6HGzYT
	5WvOrqEDwgHRmE4JNr/v3xFqkHEg2RQ76rF3aDY3xPi2vZ75b4Le7J5754q4BjEeE7DhWFvnN9SYu
	Np0rB5UeWd1m9KNvK8jt5q44COk6MK8t64ccOShHspy0SWxxI0XyyJakGyJXhAkGpIQOyHigdDWu8
	CoV8UgcDGWU2cqtdq1eS+b5QXhsAms0fsejAFMU6S1ejA4hkzd7ssWgZR3QdxRAEUVudL/tO2IPCN
	R2VvKa0bILNANbAtXmCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArBw-0008PP-Sb; Thu, 19 Sep 2019 07:49:29 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArAG-0008Nz-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:47:54 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3h6dpag7N5rKjPg0pJ0Yu0/Y1t/El6KXYl6Vra1dgA85AXqsZ3I67zEtO+SQNCi+qE9XCyv/iZ
 wDbag4v62GfYT9v7rWvS2oGPNJnEe58r9O9C3/k6DCDMU+fhC29PpG7g8lJTvNG3dSsg4KOM38
 tUOSHqnJGictf4dvFW8aCXz8NmqQdErIDD7ysVpJiJYDito4fN+Y9eeuoD0vLwRiu1Cf7JK4bQ
 iGuf7q8KgB+7AyufVaQE2VZ5+LBi6douS5h8pvuGk86IjBHiwQV9gK7H898CcXPBQ26fssLb3b
 iKk=
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="49492057"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Sep 2019 00:47:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Sep 2019 00:47:34 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 19 Sep 2019 00:47:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRq5K5M8IyIJh3XAEzW5yjmPcB35Y4FcwxWOIaLvS6iF1a8WQox/udATNUKfhIXJHtcwF/AmnbhW4CppPBy2WwSNM+gZ8WHHiA9iTvNWwBrqW+mAnJWhJ4QYOK+IkITpCAzChzxqKa10ho6j74MaYfO73vGjXCdMO1ebjRktLm3TqcFLANez9FVpqxy63pPB4fBoaxEKOh9xEiLXIYAoeIL3bbrysoJxZxuH4UBvlC5mW3GVcyDfEVal77ylG6It1FZBGaaJp9a88oStmTOFLEZlvCOHy9QVAtoMKo/WF/7smjdAEWBQnIUw/M/hNXtKe5/ZAe9jr4re26EUtskFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XQ/GAUEealLUZMMuK8niriOHs6GKPsnLIp2RDO+Mhk=;
 b=OVoQwKTGRR1ZH1lOpbOwcFHupDXd4OUEMAkkYMWbNldQzAOcK75aUUFxaOLOPB6ktmII59WIIEDHKrEWO26VEA5smV9CTf2y9PT+XwAjxt2AkAVdwvlrcarUZMI9cxh0O5EC8zL608V8lrUyGRxkN3xW5Xlg1eYNA726o5r955avVeyRUkrmFRA84l/K53n/zePOgRAED+vuP30Pf0cZLGtCJSIh3xAKiMv6Wtz2AZdr02yNrVXERKNt52r+xemk9VYFQ/7e169H/9KzSt6hOErSxzp2tb3rczb/BS/b4pjhiDdkwAtlHNuSdINaWGtADR0Ceu8QGMzjsjLuIVJnqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XQ/GAUEealLUZMMuK8niriOHs6GKPsnLIp2RDO+Mhk=;
 b=sSECsxonJo0rOGZFYgn5CTbwQU9ViGNeaOaJzJoJo9JtsUC6h3Cq9fZt9Gac6R1smEG48ZxPuFesF7h9pnDBGWYtBH4QahL6HjFWCgdW49tZdAnu/Nx2MiKkN2WqLLv1R01PgQvSNLfI7i2C4KBhzpRXJ9C4E8SPN3yq7iaQ/K0=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1680.namprd11.prod.outlook.com (10.172.54.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 07:47:27 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c%12]) with mapi id 15.20.2263.023; Thu, 19 Sep
 2019 07:47:27 +0000
From: <Claudiu.Beznea@microchip.com>
To: <kamel.bouhara@bootlin.com>, <thierry.reding@gmail.com>,
 <linux-pwm@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] pwm: atmel: Remove platform_device_id and use only dt
 bindings
Thread-Topic: [PATCH v2] pwm: atmel: Remove platform_device_id and use only dt
 bindings
Thread-Index: AQHVbr57StGtPvVBBke1anoyhO1u4A==
Date: Thu, 19 Sep 2019 07:47:27 +0000
Message-ID: <e3a8f56f-7471-ac84-c266-1ee446531212@microchip.com>
References: <20190918145716.32022-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20190918145716.32022-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0095.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::24) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190919104717861
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5708e556-b798-42ed-da3f-08d73cd59dc3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1680; 
x-ms-traffictypediagnostic: MWHPR11MB1680:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1680FF4409690D3352E21D2087890@MWHPR11MB1680.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:125;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(376002)(396003)(39860400002)(199004)(189003)(54534003)(6116002)(3846002)(8936002)(2616005)(54906003)(53546011)(6506007)(386003)(11346002)(186003)(305945005)(7736002)(110136005)(52116002)(99286004)(486006)(316002)(76176011)(476003)(25786009)(478600001)(81166006)(446003)(102836004)(2906002)(26005)(8676002)(81156014)(71200400001)(71190400001)(229853002)(36756003)(66066001)(14454004)(6436002)(2501003)(31696002)(6486002)(6246003)(4326008)(256004)(5660300002)(66476007)(66946007)(66556008)(64756008)(66446008)(86362001)(31686004)(2201001)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1680;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sWwbQxQ/e57MKJB2QTe6EWpdQFG58xW3OpdxPlxYZWaIvtZ0O3p+7/Pljra0ib/VZWKgeJ4S2joLysKdBMp45DvJJTiuD2N2gsfpThzBphFXPttkd+59BoKQvOCSOWdLUg/OI+psnn4pyMlONH7ZlAN/glV/RaV6B+d6NcCJeDY/dIjG/nUwVubP+A57B+fnJLuqIzCT7owMgiJV1aOSBEgWgVGWjXT/SAo93FFoB7DxreTzoCQSxCerCr7DJ+biG+CNymkxtuiFLwj45p6GOQl7gGEzNVjBs2AvqUpsROjX8GUptzdUuj8wb/EHpBVtgggWXs6rtT+QcgaZBqHDGEDYAzzgnQG5/BtUB76JqWHU+rMPt+KlPXFbh0Tuxdk7LZdSSjRvFjzePBiIUBNOVyzOICypDS+d7wG5cInNqbk=
Content-ID: <E43012DF0B66B14781E1C204C02EE893@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5708e556-b798-42ed-da3f-08d73cd59dc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 07:47:27.1412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +rVx1aKAa4nvNX4dMrttRoTu2P08xR52cmbrXTvPIn4VaYSjay+5dZt8DKBlRfhV/JM4yiKy6EmsFcQla00okEFwLY25dVRhLc3deIwCWFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_004745_237216_DE7B8CD0 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, gregory.clement@bootlin.com,
 Ludovic.Desroches@microchip.com, thomas.petazzoni@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18.09.2019 17:57, Kamel Bouhara wrote:
> Since commit 26202873bb51 ("avr32: remove support for AVR32
> architecture") there is no more user of platform_device_id and we
> should only use dt bindings
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Acked-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
> Changelog:
>  v1->v2
>  
>  - Remove whole function atmel_pwm_get_driver_data and call
>  of_device_get_match_data from atmel_pwm_probe
> 
>  drivers/pwm/Kconfig     |  2 +-
>  drivers/pwm/pwm-atmel.c | 35 +++--------------------------------
>  2 files changed, 4 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index a7e57516959e..b51fb1a33aa2 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -44,7 +44,7 @@ config PWM_AB8500
>  
>  config PWM_ATMEL
>  	tristate "Atmel PWM support"
> -	depends on ARCH_AT91
> +	depends on ARCH_AT91 && OF
>  	help
>  	  Generic PWM framework driver for Atmel SoC.
>  
> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> index e5e1eaf372fa..f7cf0a86a37c 100644
> --- a/drivers/pwm/pwm-atmel.c
> +++ b/drivers/pwm/pwm-atmel.c
> @@ -318,19 +318,6 @@ static const struct atmel_pwm_data mchp_sam9x60_pwm_data = {
>  	},
>  };
>  
> -static const struct platform_device_id atmel_pwm_devtypes[] = {
> -	{
> -		.name = "at91sam9rl-pwm",
> -		.driver_data = (kernel_ulong_t)&atmel_sam9rl_pwm_data,
> -	}, {
> -		.name = "sama5d3-pwm",
> -		.driver_data = (kernel_ulong_t)&atmel_sama5_pwm_data,
> -	}, {
> -		/* sentinel */
> -	},
> -};
> -MODULE_DEVICE_TABLE(platform, atmel_pwm_devtypes);
> -
>  static const struct of_device_id atmel_pwm_dt_ids[] = {
>  	{
>  		.compatible = "atmel,at91sam9rl-pwm",
> @@ -350,19 +337,6 @@ static const struct of_device_id atmel_pwm_dt_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
>  
> -static inline const struct atmel_pwm_data *
> -atmel_pwm_get_driver_data(struct platform_device *pdev)
> -{
> -	const struct platform_device_id *id;
> -
> -	if (pdev->dev.of_node)
> -		return of_device_get_match_data(&pdev->dev);
> -
> -	id = platform_get_device_id(pdev);
> -
> -	return (struct atmel_pwm_data *)id->driver_data;
> -}
> -
>  static int atmel_pwm_probe(struct platform_device *pdev)
>  {
>  	const struct atmel_pwm_data *data;
> @@ -370,7 +344,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	int ret;
>  
> -	data = atmel_pwm_get_driver_data(pdev);
> +	data = of_device_get_match_data(&pdev->dev);
>  	if (!data)
>  		return -ENODEV;
>  
> @@ -396,10 +370,8 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>  	atmel_pwm->chip.dev = &pdev->dev;
>  	atmel_pwm->chip.ops = &atmel_pwm_ops;
>  
> -	if (pdev->dev.of_node) {
> -		atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
> -		atmel_pwm->chip.of_pwm_n_cells = 3;
> -	}
> +	atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
> +	atmel_pwm->chip.of_pwm_n_cells = 3;
>  
>  	atmel_pwm->chip.base = -1;
>  	atmel_pwm->chip.npwm = 4;
> @@ -437,7 +409,6 @@ static struct platform_driver atmel_pwm_driver = {
>  		.name = "atmel-pwm",
>  		.of_match_table = of_match_ptr(atmel_pwm_dt_ids),
>  	},
> -	.id_table = atmel_pwm_devtypes,
>  	.probe = atmel_pwm_probe,
>  	.remove = atmel_pwm_remove,
>  };
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
