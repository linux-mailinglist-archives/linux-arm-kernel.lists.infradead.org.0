Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A459D97B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHAkqmqoGkvP8OyF0sefesa9q+w1jUMS8w3DLMrfAtk=; b=TaqcE1yyWKLlHw
	V97NlSl0lFuZzsXydGHoQCFpxJJJEt1uFoI32TLx7Ryp6wj7y7thjf4xGG4k/wuKW8/Prr+naEom1
	twUSe9aH1l6kXueWvsqikj/3XlMBAyRkXQdNmk6yXndAaNwGpKBlySS5/jDC2IpjFTDaHW5kYrgNV
	0Ppdj0nm679Yj2kdZrGSpI3e0LHBeoeA9FrlND/ThRHxMtav1UqDJRErwPJ5/awa+hZkd7lJtPm36
	Ue4ivD1wrDgWh4qMJLTRssMZtNb+KgpzXfmorz9qW0DKgmR6J3K/o6WW8wIJijAHGJ8QO1/C5WXD2
	W2/y73WV/AUCZBezgcPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmNy-0007my-8H; Wed, 16 Oct 2019 16:42:54 +0000
Received: from mail-ve1eur02on0717.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::717]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmNm-0007lm-Ck
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:42:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=geEr/2NPVFG2/8yQ+tSRiEvB5gxd11ftjFyIejRirbgMthy55IirW7FSCevQfl3FV8WyuX+KpdVj4BiZBsDIKv/BZ4XLTTSB8kQRBFD4RuMyAetezMPXxtfckZLJjsi9OJmqm6wIMuw8I6KDPgdPUHSOwB/oe0eVng8k+3TGAO+c1Gz4UcmpF7CBfrU+LDW/ILiWZQnoqrXvYRVfjIwHd3qLVImPuNgeM877saZhq+HsTOpzslbg2M+/gDNKYZF+NXMBcdj4JWNRC9HpXcPto7RzM0UzzjVbaRrTjZ1HeRXDNIHhd+01omSJz2Pj68YJXAxDxv5slqLPKMWBebi0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XIY+H5yg8w3AzpsLEfMLJDIhwKwlDbWaFkp7/rM930g=;
 b=OkdDI5CkkPBj7yP7DJft9ShpqrJvmJUw7hnumCfSOFNZvRejqJB6pGYImaB7Wk81cUaGZPcPf8IAXF0e2JshPgR7CmmAWMs/cflItys0Z72rfhOnGlMF9TgDqQrIgQBLCcVbGZlXu7TYlJkNL639uBBRCQJGega47AZIm6GWdhfyGZNWLSEccn7ucqn62pau6xCLrxJs5zg7fgpwrkjHGF/kKMQUBx6RnO1KPtPrhDO7bfyfxBCalJyc1JtiMnO0QGkkbqZXeKgamt78yt06Lu5JjCSgc1Bc8B5+VNoQ5S/YgEK1/ep/oNCvbSXltARIRqcrQ6TA9O28HOFYv0PXbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XIY+H5yg8w3AzpsLEfMLJDIhwKwlDbWaFkp7/rM930g=;
 b=U+gGoInrxuvNCoQ/2Nu5oLd0/C/TmNF63/XuvZv+dD4x9b3EFvMenw+8JrLi+ejUwUr6EJ1wFy2j9Se5YkLgvg4mFcphl3Aq6OJlIp/HGJc/LnZRgUyoo5RtqpjVlSDI8AYGO+t4+ctjUEVBp245L+S3iSMj6z5yHweKEQJHK0o=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB4016.eurprd05.prod.outlook.com (52.134.18.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 16:42:36 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:42:36 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH v1 1/2] arm: dts: imx*(colibri|apalis): add missing
 recovery modes to i2c
Thread-Topic: [PATCH v1 1/2] arm: dts: imx*(colibri|apalis): add missing
 recovery modes to i2c
Thread-Index: AQHVhD7G2HgM23iAn0WcdFEjmyuWhqddePAA
Date: Wed, 16 Oct 2019 16:42:36 +0000
Message-ID: <d75236512937052dfd532d228a6fbd84824a12ed.camel@toradex.com>
References: <20191016162833.1893-1-philippe.schenker@toradex.com>
In-Reply-To: <20191016162833.1893-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f409623-eb5d-46a0-4b18-08d75257d9de
x-ms-traffictypediagnostic: VI1PR0502MB4016:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB4016B780CAE996D4E196DF39F4920@VI1PR0502MB4016.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(199004)(189003)(44832011)(86362001)(66066001)(91956017)(2616005)(6486002)(476003)(11346002)(5660300002)(446003)(486006)(76116006)(99286004)(76176011)(102836004)(26005)(229853002)(6506007)(6116002)(6246003)(186003)(8936002)(3846002)(478600001)(14454004)(7416002)(4326008)(2906002)(305945005)(7736002)(25786009)(6436002)(54906003)(110136005)(6512007)(81166006)(66446008)(8676002)(66556008)(4001150100001)(256004)(81156014)(316002)(71200400001)(71190400001)(64756008)(36756003)(2501003)(118296001)(66476007)(14444005)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4016;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: abanKF2VBeOwKMllu33rawvoYvn7GE5AZikNuK0xslaOmUxy+f0PVV5UAHM2otlNkfUb1LBUkkPrOQ1BrDnvSZBRqOaqOlyZqjaaRxPB/ir3If6vR3E23959IrSr1g7JBmpx93cUhWpg2Np3BG8JKC9xdjG5YVyF+INvN4FLOKYvIQw/ErDhqNAsJbmYVbtomOVcTD995tF0303bp9OxN8Sb/YhoS6p9ZAki8s+avchyk/QbxHZRiMfC++cv00kiV8jOae8WH9uxsReJ0dPEAJzZPI6Vjr0yC7ndfxYj5bIhR2MaeO2sGRoO83zqOGjPHXEdQOG0cb2N/CrE2Yg20Y8SjbvRysiJIz8LVc+Tq+9dawRaSfQai6GdRsG9RfqC5yExxZP53tVahCLhcv6zE0hStrWpJlz62+eBnGyc5FE=
Content-ID: <E1CF0BB0BE246A41995B3BBFD3E55C7E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f409623-eb5d-46a0-4b18-08d75257d9de
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:42:36.6031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5FE+dLOSJTGQGF6qPnH+AUozcXP3/2WfODJPgQD0nc0A8BpGz5mrGgTanNGeyXG1ZZKYaWBTxB12W82Jj4qKjKpTHi3ULgDgN4KY5JCCN8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_094242_438001_10B8F9AC 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:717 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, Luka Pivk <luka.pivk@toradex.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-16 at 16:28 +0000, Philippe Schenker wrote:
> This patch adds missing i2c recovery modes and corrects wrongly named
> ones.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

That went too fast... Will send a v2 shortly.

> ---
> 
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi  | 26 +++++++++++++++++++++--
> ---
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi |  6 +++---
>  2 files changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 7c4ad541c3f5..7baf4a6f04eb 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -205,8 +205,9 @@
>  /* I2C1_SDA/SCL on MXM3 209/211 (e.g. RTC on carrier board) */
>  &i2c1 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
>  	status = "disabled";
>  };
>  
> @@ -216,8 +217,9 @@
>   */
>  &i2c2 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
>  	status = "okay";
>  
>  	pmic: pfuze100@8 {
> @@ -372,9 +374,9 @@
>   */
>  &i2c3 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default", "recovery";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c3>;
> -	pinctrl-1 = <&pinctrl_i2c3_recovery>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
>  	scl-gpios = <&gpio3 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	sda-gpios = <&gpio3 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "disabled";
> @@ -646,6 +648,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c1_gpio: i2c1gpiogrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT8__GPIO5_IO26 0x4001b8b1
> +			MX6QDL_PAD_CSI0_DAT9__GPIO5_IO27 0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_i2c2: i2c2grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
> @@ -653,6 +662,13 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12 0x4001b8b1
> +			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13 0x4001b8b1
> +		>;
> +	};
> +
>  	pinctrl_i2c3: i2c3grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D17__I2C3_SCL 0x4001b8b1
> @@ -660,7 +676,7 @@
>  		>;
>  	};
>  
> -	pinctrl_i2c3_recovery: i2c3recoverygrp {
> +	pinctrl_i2c3_gpio: i2c3gpiogrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_EIM_D17__GPIO3_IO17 0x4001b8b1
>  			MX6QDL_PAD_EIM_D18__GPIO3_IO18 0x4001b8b1
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 019dda6b88ad..4ed7ae57030d 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -312,9 +312,9 @@
>   */
>  &i2c3 {
>  	clock-frequency = <100000>;
> -	pinctrl-names = "default", "recovery";
> +	pinctrl-names = "default", "gpio";
>  	pinctrl-0 = <&pinctrl_i2c3>;
> -	pinctrl-1 = <&pinctrl_i2c3_recovery>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
>  	scl-gpios = <&gpio1 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "disabled";
> @@ -516,7 +516,7 @@
>  		>;
>  	};
>  
> -	pinctrl_i2c3_recovery: i2c3recoverygrp {
> +	pinctrl_i2c3_gpio: i2c3gpiogrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_3__GPIO1_IO03 0x4001b8b1
>  			MX6QDL_PAD_GPIO_6__GPIO1_IO06 0x4001b8b1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
