Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A187E1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGzR35fNks+VYYDN6AVfg7H7iXDx8A70ow1dgZIGBUE=; b=ckVd+kPH53zHwo
	mKegOWL8FddpIExs9YmH21L3+RELgbeFWjsCPQ/y6denPx+UF3UtrbW7oekjVF5eon0OM7gguCM15
	hG7yfo8J+qn8HZ35rQfMum7fUfgp3GZAOeMOKAN/hvMuGAo3CtHyG/xZuRFB+Ae7F30BsnVnvVCew
	C1ro4Z+Xz0BKj6LhtiAca7DKbi0/YL/P4VAErZvEyNsTkzk3cKSrP6BqmhnB2OL8ONTNOuziLF9CB
	JjVEmSK3sIccFQdMHCznfEQSPrIfJ5yqwK9t96lf2n5YIog34ARM1p/jzMyq2k3iVLQg7uzdmnJer
	EXr2VCS5Msgj3aewLPAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6vY-0001xA-1R; Fri, 09 Aug 2019 15:35:36 +0000
Received: from mail-eopbgr10113.outbound.protection.outlook.com
 ([40.107.1.113] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6vO-0001wZ-T9
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:35:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pcs77kLXzz5pNGW4mbVXY+NMUPcagWfj4cfVuvfzzySEcIzDqSBz5b6kv1Xjr0dccJJiuFZ7q47bknuvIJWj8EDynqd0hxWF830jeGg0V+tT5RiA6qT3bTtETWitqeCs9FDpKXm221dKbdXE8HuWUcI9bC5T6DdEvpZOTLBJn19RDaCu1oCwRZm5Z2W/2tHz83GuIpItIrj1A5UqrvQi2T9i+kIE0pVP8ZueihEwSIdjeobSbVE9FOYc2YdUKlIC//KlpZPU6yNn20FxKZW9A5SgeaACq8QatanQHaNHI+DT6ygQJ1OgCf7mTf2l5w1GHm3QTuifZRLt631qxu1LAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fus1xpv+pdnahuQCa4w81wMKvSS0NLtupueKWJf6tsU=;
 b=g9oWaR+O5ODCDSKWmcvq9aZ7Tr9+vJRpYNpi4nNKX4aFaBjyNbnfx3wYP+lSmQ6joP1uAYdIJXsuJezxPRDEEPX0Z7tc32QYUvEze6wlqEEUKpcrnOTJV1NnJdIKHV9k2aY0m8tL//5LexetblVMIWxN/dNDjOmlP+t4z0NAJa1qpDaR8aAMiE79gmGopB7SDvrwfb3RKewsDa48z98qS91vcqWTmC5cURH+77SO3zwgsulUYfu+vLgH1+rVxVOJ/8hrqU22juW3k8pdMBiOFnBe+nXATPZtcyfdXMIbD8Lmqxu2cgQMnn2q1QKb1jKqP5Pa779WuIOqPDx52OdTGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fus1xpv+pdnahuQCa4w81wMKvSS0NLtupueKWJf6tsU=;
 b=AS0DVPaiQ0xJldCT579vsLScJid9baotHZRducOgyM+eFh8J98NjEl1fkatxsS83rcFxj2+F+5VV5cuQmmtSXjRdbRxnQ1j8F0YwhmDfDbSg4+rui++YtV3LKGp6DWjD14POOylT/7L1YwEeJPHJaDmLIOVkotBo7+B/wuqmqsc=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4909.eurprd05.prod.outlook.com (20.177.51.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 15:35:20 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:35:20 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Topic: [PATCH v3 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Index: AQHVTPnRZ2IxbStZgES4tR0yMF4TW6by9iWA
Date: Fri, 9 Aug 2019 15:35:20 +0000
Message-ID: <e8bba2172801ca926a556e828dc08292a07f5704.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-13-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-13-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 718fabf7-6505-4dea-5285-08d71cdf2feb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4909; 
x-ms-traffictypediagnostic: VI1PR05MB4909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB490957E0D5BB1FADABF7EE75FBD60@VI1PR05MB4909.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(376002)(39850400004)(199004)(189003)(186003)(14444005)(256004)(6506007)(446003)(11346002)(102836004)(6116002)(46003)(76176011)(2616005)(118296001)(478600001)(476003)(44832011)(71200400001)(71190400001)(66446008)(8936002)(66476007)(66556008)(486006)(66946007)(64756008)(2906002)(91956017)(76116006)(2501003)(25786009)(4326008)(53936002)(6512007)(86362001)(2201001)(305945005)(99286004)(7736002)(14454004)(7416002)(6436002)(36756003)(6486002)(5660300002)(110136005)(316002)(6246003)(54906003)(229853002)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4909;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nqKAd0xk7keIp8cPSWVAFKDYLrOhB9U+VdOjN6J+B5BHK2/wlW4RbO11X1JmrluAp18E0FkWvODn7GxVaDGO7MOqveTRrWJ2GLs2JzkK42W/jbw/eyRT4AmFnKNszlwFG1QDGK1kDiaO+bbix73VmQigygqM1Jm9dx0Fgu9WpLfsuypXCv8/vNzQi3XnxkRc/6Jn91539w9aYE7+OGFl+cyHcObztBsHOvvyfqZZFYQJCqEh4AwMQnqQ3kaAIbZZLUObtmube33J4eujB0XpLZMzWnpQhlg75XkAqTx74AmA0NiHSQmMHySth7usvsQV95ABNvL5qGzr0524FNj6CQz4Sl6zi3wTyE5dbd7PxlMEwtXit9Fn+yd4+a1HgF9K5vuYCPqVXkalV2GZ2UXhyT/N3YGnCFMFNKvDHypfPQ0=
Content-ID: <D22C3F5D34AF6A48ABB2B25F40AF38C6@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 718fabf7-6505-4dea-5285-08d71cdf2feb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:35:20.1841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fyqGKTFY6AYjH9k+kSEROPkCEf8QjogsCnK4ObynaiO4hwq8fBA4Zweu9Uj3T1AfZbhZCzeXQUjKXfO+C6Qt+0dyynY8HSSCsqlMOJWJlCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_083527_106959_2D1FCFFB 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.113 listed in list.dnswl.org]
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
> This commit adds the touchscreens from Toradex so one can enable it.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> 
> ---
> 
> Changes in v3:
> - Fix commit title to "...imx6-apalis:..."
> 
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Put a better comment in there
> 
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 31
> +++++++++++++++++++
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++++++
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++++++
>  4 files changed, 70 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 9a5d6c94cca4..763fb5e90bd3 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -168,6 +168,21 @@
>  &i2c3 {
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
> +		pinctrl-0 = <&pinctrl_pcap_1>;
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/*
> SODIMM 28 */
> +		reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;	/*
> SODIMM 30 */
> +		status = "disabled";
> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	rtc_i2c: rtc@68 {
>  		compatible = "st,m41t0";
> @@ -175,6 +190,22 @@
>  	};
>  };
>  
> +&iomuxc {
> +	pinctrl_pcap_1: pcap-1 {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /*
> SODIMM 28 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10	0x1b0b0 /*
> SODIMM 30 */
> +		>;
> +	};

What exactly are the above which get used further up vs. the below
which do not seem to get used anywhere?

> +	pinctrl_mxt_ts: mxt-ts {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_CS1__GPIO2_IO24	0x130b0 /*
> SODIMM 107 */
> +			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14	0x130b0 /*
> SODIMM 106 */
> +		>;
> +	};
> +};
> +
>  &ipu1_di0_disp0 {
>  	remote-endpoint = <&lcd_display_in>;
>  };
> diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> index 0edd3043d9c1..4665e15b196d 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> @@ -167,6 +167,19 @@
>  &i2c1 {
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
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13
> */

Wouldn't above two pins also need resp. pinctrl entries?

> +		status = "disabled";
> +	};
> +
>  	pcie-switch@58 {
>  		compatible = "plx,pex8605";
>  		reg = <0x58>;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> index b94bb687be6b..a3fa04a97d81 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> @@ -172,6 +172,19 @@
>  &i2c1 {
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
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13
> */

Ditto.

> +		status = "disabled";
> +	};
> +
>  	/* M41T0M6 real time clock on carrier board */
>  	rtc_i2c: rtc@68 {
>  		compatible = "st,m41t0";
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> index 302fd6adc8a7..5ba49d0f4880 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> @@ -171,6 +171,19 @@
>  &i2c1 {
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
> +		reg = <0x4a>;
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13
> */

Ditto.

> +		status = "disabled";
> +	};
> +
>  	eeprom@50 {
>  		compatible = "atmel,24c02";
>  		reg = <0x50>;

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
