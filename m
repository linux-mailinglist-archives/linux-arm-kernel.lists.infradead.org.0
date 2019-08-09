Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B0287D58
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wk70VVShqYAWoH2bspX6w6X3kV6Rv0InTT5xiNMRt1U=; b=rXXsddNk7dPKSf
	iNBlFZi+DhKpwYLrrDLLfdF4NRVJFzN6sahFCCLLeJScPsbO6BO1okJ8/IbH9na5Dr7glfnZQlOV4
	LDn+DhvyuKk2/Rz530Q3sSItnnxPBIbegHmRuD1VpzRNqOaa0Kwg+267sBVke1ueqLvTdl0aoLnIk
	09KkLgBWrePAW3yktMqHJZGb8X4p2522l/YPZTkHfitPjTkj++F+WDIoIdwM1ioWk9QJBOuEz+FAt
	Ap9bT9qKyLhaUE1P5F+KHDxsK+kAxaWaFbiM59Yb7RbNrSQgsjAoalMYKtsIdZ+aQw1yyDs0VhiT9
	Bz0r3RG2KVz+rwvSNFoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Ji-00051s-BK; Fri, 09 Aug 2019 14:56:30 +0000
Received: from mail-eopbgr20104.outbound.protection.outlook.com
 ([40.107.2.104] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6JW-00051A-QN
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:56:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrZ+xpwJg5l20/cPEWB6goVOPR0ew8y4cvN0wWy9vJA+1OJ7Xcguq4zyJvsVoEZ1SOmTyrO0sbwzyc3Gzw1ZgRBggiatK/tdjgS+J1Nqw2pIpV0/uYMPSNzvGrsIFEioScEY2OAK+h27UxJw/Yfuf6obZMKGReOtJo7lRDKJPAt2q9REZ5lgMw99rqoGRhs6XTNhhf6Ku6byJdC0IXncirup1Ybv515idYK9LWAOZ2DQpWnBWxVu7yoiwqrbOg7G6yW+YieECFbDA0XDGIlZx/c9qDqzHnr67Q+a3irw4eeeF8IrfMPWVPo1aJNOccHWFiA3YL8XwV6NSW1ZNwtCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WogOHEMkg2jyyHRAvUwE8ayB+S20B+d7r3fcyL9tXog=;
 b=iWcq7Xc0khT+ns7RYjAYfmk205x1tIZN7XJs7o3h9RNEguplPAxZWWHAsCRU+NRvVnFHRIvOrdKrLSx7XXGxzUrD5M0HvKrfp72WdUoaWM67sswV85spc0uw/dnYQ/RN0e6QU3+I6TjkN2Qq4kFNLQCVXrRWgGJNbnjLnXo6sm3omUt/3sqKDN37Zx9Lz2fXCu24DbhABvZw52Ile5Ht/4DMviYF1yQp6CLffj1uY8v6o35bdPSMHvm4YMidlg7Nnmm8RfHFJkp141xfn5rmxrloNJLVRubfgGl9xibeADmhhIzD8aJvnbW8Zse//t/n+GPK9gp1eD7dWvbh2fTKtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WogOHEMkg2jyyHRAvUwE8ayB+S20B+d7r3fcyL9tXog=;
 b=BqUZMJKInS7q1DvDaErTwSgMu6BAD0CqQPItdSKaJ7qCFgHh0GpXdnxJt+qddiN/XAm6yB7WvXt2Q/3ADbOtheQRV41G3jPyolr7pOo5RQBjeqgm6kKRw4SJfx6nSIupUVJFGcoEm6CjZtS9VgD8qTGcNFxkcRD9kK2YJdQWdtY=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4253.eurprd05.prod.outlook.com (52.133.12.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Fri, 9 Aug 2019 14:56:14 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 14:56:14 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v3 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVTPnLOqa7gLhcA0CJ95ai1QRG/aby6zoA
Date: Fri, 9 Aug 2019 14:56:14 +0000
Message-ID: <4875e91c34f7206d960ccdf7b499408b6f48364b.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-9-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-9-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 293c8ad4-c443-4930-5d3e-08d71cd9b9db
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4253; 
x-ms-traffictypediagnostic: VI1PR05MB4253:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4253B8CF8DDDD09423667CA1FBD60@VI1PR05MB4253.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:308;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39850400004)(346002)(376002)(136003)(199004)(189003)(66556008)(64756008)(305945005)(14444005)(25786009)(6506007)(46003)(476003)(91956017)(66946007)(2616005)(11346002)(446003)(86362001)(44832011)(76116006)(256004)(486006)(14454004)(66446008)(186003)(316002)(7736002)(102836004)(110136005)(7416002)(71200400001)(71190400001)(66476007)(54906003)(229853002)(6486002)(6512007)(36756003)(6436002)(53936002)(2906002)(6116002)(5660300002)(2201001)(478600001)(8676002)(99286004)(6246003)(2501003)(76176011)(8936002)(4326008)(81156014)(81166006)(118296001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4253;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H2w+vaSEszh4DxPkWSNVs/ual3VkrE1iSud9QA0W0eSmp3I9PaaR01M78qyqUAo6JVstwURnLvYo0JN9AZMnr99GDAar8n3Cot52Qm1ICiSJan3Hks60f2ZxBOJhFQWNKDt7SHiTIkx6oxblze4rXPzsIWl/MUZIpe/cOt5MyWx1Hdo3/DKWUhjrJVhl5Xh/NsMhenibTyQXzQtRTn4EE98mDkZbXLM6lwMbWzwBEYBLt0QlAhM1+WTa0BOUAWzw9ey8eNp2i/l96T0ltnXtR0fP6ZC8ZEq5a4PjzRBiFUoKsEloik1jY8xXLj34Q6WlIQPGaySovtB//HdQ/08PVt2j8uWoyxAkc4bk+MqPy6IFJKpyw8MbqY3MutBW+jHnWTkG+TbVbrycroKG9Ylo7wEpOwl6oWEDxLtObwESPqw=
Content-ID: <06F6FF2CD78DF146ADC461BDE4286D40@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 293c8ad4-c443-4930-5d3e-08d71cd9b9db
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 14:56:14.6647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cYOen78V95xwkH2aES09tET8r5SD7t3DYOeOr71YEs+HbMkzycTQQf60rYeBP0Eu0yEa1s6IhI9nbGWkEHY8M1dSnQMMMwCQKdS24dU66oA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_075618_852595_9BC0640C 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.104 listed in list.dnswl.org]
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

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> Add touch controller that is connected over an I2C bus.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3:
> - Fix commit message
> 
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Better comment
> 
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 24
> +++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index d4dbc4fc1adf..576dec9ff81c 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -145,6 +145,21 @@
>  &i2c4 {
>  	status = "okay";
>  
> +	/*
> +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>,
> PWM<C>,
> +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the
> pwms
> +	 */
> +	touchscreen@4a {
> +		compatible = "atmel,maxtouch";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpiotouch>;
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/*
> SODIMM 28 */
> +		reset-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;	/*
> SODIMM 30 */
> +		status = "disabled";
> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	rtc: m41t0m6@68 {
>  		compatible = "st,m41t0";
> @@ -200,3 +215,12 @@
>  	vmmc-supply = <&reg_3v3>;
>  	status = "okay";
>  };
> +
> +&iomuxc {
> +	pinctrl_gpiotouch: touchgpios {
> +		fsl,pins = <
> +			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x74
> +			MX7D_PAD_GPIO1_IO10__GPIO1_IO10		0x14
> +		>;
> +	};
> +};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
