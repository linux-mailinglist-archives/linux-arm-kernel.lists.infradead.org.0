Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256987E7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJZLEt6avseX5L7EqbmOcBqBCjAoubk5qJvDg7tPO6g=; b=P60lkOLksLX5o6
	jZ0V+pBRSB9/wE8w5W6/GpPMLK9vCISYGG7P2/lzv2zgNBHo4f/tAEdbko+OilT40kfukehB6pMhb
	UnXP3pLuZ9LjzA8XiPZgn/d9qyWabtP7hi//U7MG6kYRDfkBTFevM3zepwVoosEKXRa2xMQtNphYe
	Z1xhB9qr080FleDY83IG7IYD+a1L5DAKkvg45SFZ8ImtgMDB+nedCucnmcp7x0hj5SqL4K+tEJI7f
	nSP1koZE8ZpmVbSRL6JF+4UIqXiEfcsw8sJ4lO7RPITEvs1TMEOW0nCUc/OfA7A0gjOaXi0TgjQr3
	xbO5XMnX0IG3Y0yWK4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7AJ-0000xp-FR; Fri, 09 Aug 2019 15:50:51 +0000
Received: from mail-eopbgr130121.outbound.protection.outlook.com
 ([40.107.13.121] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7AA-0000xO-6j
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:50:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JkjKRwgVVxbBSxe3HkJzIMwOo79hh5BJBh7Zf0WERYKj+/6vnJptS+fOCbHUg5MDJKQyAy0r72VGqkd4jmYxBJv+pLDz4PfV464HYlaXh1+V2gbycAOEAJsKLHSKae/Am7hdCvCvysssqoNtPt2YyPKeXAtf6qXznZrQ4OoQgt8vZH5c4BpaapUp+6sRCw2GjYuBkFX0r4ZfizbjEeiXr++2pYeY7EEkGcuSDGLUO1TQPFQwr2aLiCyIkzNx4rPZbKFJ8j200wIhFZ4FRuG3OH7N9K92Sri1fTEV9dYV8Q/wHdcskh5KJJNw7WNZj3JTR8wNwhhj88oy946MhsHO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQn7mq8toMqEP/+PSd/VhC717E+adFw9fT3aj8Ik0Ko=;
 b=NTPTZHhdhloJfHP2me7rcQzQ6YxZpC6Zf6QyOfB1R/KT1t5TXX1KhQBDjvy6HRJUhPX4+Om5Hi9P02cLjIIwGzTeORrkFCUb2nGFtgddYh68nLJMgUoHGp1EhU14TsHTy7mkHxtX/LsF9mElLOm9Xs0swKM5hVmRPSMiT2LlJwddrKlavQy0NixSpWTqeKzizDUejp78NRkJAPk89rQsLnEz0U1ToirJ2qvZwXZKR21PZbJAeLyxGmBS9J07vR6nQbelQWB8r+5ZLxbjwT4PpFKDKDMEBHDolJ0AUUO2DOC7SXHULGfpYuO5SBzzGzw1glv7/oSwM7lebxEeVKauyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQn7mq8toMqEP/+PSd/VhC717E+adFw9fT3aj8Ik0Ko=;
 b=qiXvZbYEB8hAzouB2rrnEZpHWu0OMjnN/ePFZmNUK+dGgrUR1EkenZiGpp1H/4kK690EfZIGS8OOXCrUEZZs1XzXfn2ietqVXkW4S+Q5K4QCHGW9tMFSFJuAWDU2mhtGlpgViohdeV1nSoS0kjo1POYoook5xkJ/7CloqIIsxgY=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6752.eurprd05.prod.outlook.com (10.186.160.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:50:39 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:50:39 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Topic: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Index: AQHVTPnaMq+cBhrhOESMmkEjvAhy56by+m0A
Date: Fri, 9 Aug 2019 15:50:38 +0000
Message-ID: <6fdbd56b71c1192c67b2e28accd611ced92de555.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-20-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-20-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ff4c43d-d14c-46fc-987b-08d71ce1538e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6752; 
x-ms-traffictypediagnostic: VI1PR05MB6752:
x-microsoft-antispam-prvs: <VI1PR05MB67526F7488A4D06DE354A459FBD60@VI1PR05MB6752.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(136003)(366004)(39850400004)(376002)(199004)(189003)(86362001)(4326008)(102836004)(186003)(76176011)(2501003)(6506007)(446003)(486006)(476003)(2616005)(11346002)(44832011)(7416002)(46003)(81156014)(8676002)(8936002)(81166006)(6116002)(25786009)(14454004)(6246003)(118296001)(54906003)(110136005)(7736002)(99286004)(316002)(478600001)(2906002)(2201001)(5660300002)(71190400001)(305945005)(71200400001)(14444005)(256004)(76116006)(91956017)(229853002)(6512007)(66556008)(66946007)(64756008)(66446008)(36756003)(6436002)(6486002)(66476007)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6752;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t8vUtCw3QfQ+Ie9PFrZNTdIEKStjlJ7FbrwdBYFBp1zbqPpnqybe6ETmlOfrBP2M6RCC3AB9DqXF7/uLwKLYj5qr9OHfZEvQxG5VedvjGCHUNvH4JaEcJedjLKJ0V2yGor3b9ZJytN0X5VElCabvdWczBJcLhNJUeE571oK8WcSI9sE3doq4cwXNnyKM4x+tm+R5E+pZ2vp2QT+apceIPPMtAN7jv0M+rGrCtxvoUYbX7le0I1AMWMx3HuoN9MzkRttEoanpXMShJdhSUKZnOOEWKGRowzDVD2tr8u+BcrTdxT4bGyXG8JuQ6wRrPADutWaUs1bhf5wzue5yME92ABesJPtiMUp3BAok5Im4u9uTuAi9q97xRI07wqtr3DQt1f0j9CvZgu7NLHAmZ0bZGNh/DBZ9gH74WWE3yGdGkgE=
Content-ID: <D139DAE6FC76ED4083AA45298C565149@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff4c43d-d14c-46fc-987b-08d71ce1538e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:50:38.9698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7sw1CZJCxdd08u5mUkofBaEskKYyzMJQ3cnJ7OMwnox/01JBf3Z6vUVxLY1m1nHqhyBV+tj/oL3bPM6r16Cw/ncJFK8CvdhZ50Mwa5be6l0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_085042_251285_0AB93089 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> In order for the otg ports, that these modules support, it is needed
> that dr_mode is on otg. Switch to use that feature.

Isn't further extcon integration required for this to truly work?

> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 2 +-
>  arch/arm/boot/dts/imx7-colibri.dtsi    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 9a63debab0b5..6674198346d2 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -388,7 +388,7 @@
>  &usbotg {
>  	pinctrl-names = "default";
>  	disable-over-current;
> -	dr_mode = "peripheral";
> +	dr_mode = "otg";
>  	status = "disabled";
>  };
>  
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi
> b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 67f5e0c87fdc..42478f1aa146 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -320,7 +320,7 @@
>  };
>  
>  &usbotg1 {
> -	dr_mode = "host";
> +	dr_mode = "otg";
>  };
>  
>  &usdhc1 {

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
