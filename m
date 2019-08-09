Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48A887EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aajhxxbfp3m9kWKSjBO9tZVa8Y/KZFf08rNJhsfSBTY=; b=Ro81Sou8oKJs9I
	lVx2OR5ySVKY/Fho4fcEaoIVL9iIFYo3mGiYqNTwoehCkxpU5OUR0QPO4OE+DUio3DRa0QnA8wwJ9
	jLfl9c1PTDn03rH6lCThYRz18+I2G8cuNLP3nuxH6Ly4AF7iNpDltpSUCJJTYUBafCjtbDYtPJQSl
	yRLdGLZKA9hUEB2N5R54HwamuFYHEuxAYmt4WtZ+K1ZJ1JYsOaEDyZeSjxRCyAlyzov2NoaDBrgyM
	VwYVDILmod2yPPs2ItMaxB7tiOV/1OVcyzTweMSHW1NVLE2MRNziOVTbd8XVXLDnz4Q25TDTDs4jB
	Uh2eQgXAPJSMGYrkCbcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7G2-0002qs-OD; Fri, 09 Aug 2019 15:56:46 +0000
Received: from mail-eopbgr130137.outbound.protection.outlook.com
 ([40.107.13.137] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7Ft-0002qO-1J
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:56:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OpS2M7XOdNqVXsgp0GlRnE0KfML1GroeJcj0+56i0BA9mLg3brD2ViXmxIjeo+Taks9aEm2jaS/F2uUFXzoKWJs+9DugFPBTAN/+5nhBO8zD9hMDrP23bqvd4eK+dihPf0e68w3QplwHESH4adx4vq43s1cwiarwt+NBNvcp9PWB2qG0ePoeqdG5Mwt1f6Nh7auKfdRHjqoJ2KWXIHwcc3ncL1Jxj7q8cV5JnmDJtz5lAF/aN1l/mmZkjGHc4vC7g0+P057vNbKGugI7UwRd7xmVX7D2mNXqNibXaCDUXelboXjneKpOFmFOemyhcHl+1RpPF+30dJDW9KrI1piELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GxijHg1RImng/GGNgVAKjxuEE7GYPKDx4BXqZba51o=;
 b=N1L8duGhI3fJ9XTopmOqd6ad/ChZX4CGlSPyTpmERiA7xMf72SIDsNyMYnmwSrhVBXPrOs42/sz8lUrxU1TM0N4kTa7zXrKrtRM7M4W79PCTtvmCKyDhYGzBz+O1hluqSTBdYoF90QQUBCsq996XfU3veFWsI1XbgyfGYYGEXe5NgM8l3TMk/BzWL37sCnsyPkOFcGw1G/RB6axfu8qFehqakfK6ZIFfrjBoabmX6HCipeIABs5vwc74E6L4k9e5Do+74hSuAzhQk5UN6Ne7+FmXFyjmh1nrw0+8keotKS9gdyWeBpeB8mChuWY8ushdEpk0LxocoRKGuEEigynOaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GxijHg1RImng/GGNgVAKjxuEE7GYPKDx4BXqZba51o=;
 b=UvBVcdmzfQlm7SQrkW90BUzOiEBFDugIq4swCXzmdCRRD6Avsa4h1pdLoPTzQ7DdrnuIje/qv3M3srq9+/05BkmJEjDP0If9+E5VpPWi1DwXYAZaH1D27aTVVLAE4mpU7CAa2+T7TyBgPDatSBLhQLIY0P9mj/i4wgd1PNbQeRc=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6752.eurprd05.prod.outlook.com (10.186.160.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:56:33 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:56:33 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 21/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Topic: [PATCH v3 21/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Index: AQHVTPncmFS3dEmGc0GmkSQDT7oboKby/BMA
Date: Fri, 9 Aug 2019 15:56:32 +0000
Message-ID: <8e910a22de1ac80f60209c2a4b2031f41c3412b2.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-22-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-22-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0aef483c-739a-4889-9823-08d71ce22688
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6752; 
x-ms-traffictypediagnostic: VI1PR05MB6752:
x-microsoft-antispam-prvs: <VI1PR05MB67526DEB9520A7D422AE40F3FBD60@VI1PR05MB6752.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:327;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39850400004)(366004)(346002)(136003)(396003)(189003)(199004)(99286004)(2906002)(478600001)(316002)(71190400001)(305945005)(2201001)(5660300002)(110136005)(118296001)(54906003)(7736002)(64756008)(66946007)(66556008)(66446008)(229853002)(6512007)(66476007)(6486002)(53936002)(6436002)(36756003)(256004)(14444005)(71200400001)(91956017)(76116006)(6506007)(186003)(86362001)(102836004)(4326008)(76176011)(2501003)(446003)(25786009)(6116002)(14454004)(6246003)(46003)(44832011)(11346002)(2616005)(476003)(486006)(7416002)(8936002)(81166006)(8676002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6752;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1lHMwmordATfUO8LOWe8zl8hk3NHNS6fbdy/q8vqRfqL3QiOTEGnvw7Bo881hZMxiHZ0QR1IuMyG0PkWhzNKVxWk/drQ6x+S4mqlx/dEZ/Z206sV4PGl3VorGh3MTcZ4hANd/rc+iXfgqHvcQV0uG4JjuLaj/shbw8ggp9ahI/6+biFnS4LzvXi5Z7YqKEnPbJtk+5FJWsEexnsEeX3OuLcJN5lpEKSNxwJgFHsE0XuCLj0xBFSDQtItGCVrT1vw9QfsV1Nr0UNQAC7tP7+BILisffmydI8/bdIHi1gijVnGk3rX8kdVmXtkzv0HKLwrI3wxU1brhzNbYqPMXfSq85cv4RoIU+OTfDNKozfaY0+dBfjJB4UQm8LnwuoZonpDKiZKKA8PH/e0Fo2JaNuhtJcHOhALlG2LytUG6YGhpMU=
Content-ID: <AB385BDA23BF814FBB3A01FFBD7521FE@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aef483c-739a-4889-9823-08d71ce22688
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:56:32.9458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OBQV/NlohUqKIDrWAdZzd16PNtOBEYiW1ywM7yhrOkQcO6yXNKOqTYN6lb0YkXkD3HTQvM8tltNEsbl/wpMW079Ps4daK/vwCb/pO1BGnm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_085637_083096_A611C5C3 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.137 listed in list.dnswl.org]
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philippe

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> This commit adds UHS capability to Toradex Eval Boards

How about any other carrier board?

> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> 
> ---
> 
> Changes in v3:
> - New patch to make use of ARM: dts: imx7-colibri: fix 1.8V/UHS
> support
> 
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 576dec9ff81c..90121fbe561f 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -210,9 +210,16 @@
>  };
>  
>  &usdhc1 {
> -	keep-power-in-suspend;
> -	wakeup-source;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_cd_usdhc1>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_cd_usdhc1>;
>  	vmmc-supply = <&reg_3v3>;
> +	vqmmc-supply = <&reg_LDO2>;
> +	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	enable-sdio-wakeup;
> +	keep-power-in-suspend;
>  	status = "okay";
>  };
>  
> -- 
> 2.22.0

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
