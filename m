Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C1B87E74
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IqAChYp1ypHOb4H8cxlCnqRlVJRNs9IVXvG5Ow7s0E=; b=Veuw/wncZACFml
	NPdux/DWMxjJhGriNrjl0y3Q3STgGnIawJG2wWmzH1XxRweUUJM/Jzvmp28O/nr+GkzytpymRBVlT
	lwnEfVYnDBlOpvWWdLT6DHRovVVwGdSCpknkmrFyGBGE58en4jZxTLgCy+WypfZlmWC7rWt7Ynssg
	ScDukXBzSS/3zVALPKUWQ3zu+g2zN4/7PPsjJvOxAjvTWnfehAjfcPOr55vLUweENOb8ATYTMee1r
	xvAAzIhYr9Rnb7u4vl+M7QdfTRtRFYv4BwlA8h6w6dBGUM57vMY9QJ8VOqErXY4KpDmg9t+9Nc6fO
	EHvrwligLZW1A9GTpZUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw78X-0007re-1G; Fri, 09 Aug 2019 15:49:01 +0000
Received: from mail-eopbgr130105.outbound.protection.outlook.com
 ([40.107.13.105] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw78L-0007qs-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:48:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWBqmsscbyyRhmqwfRDZ+n3YGLuHFXajkzIPEvSl3jcxVOKqemf3B7y5Sv0k7FFtt7FeJJ1iAdbCPdbdBTmtyrGqHKUc1R5PvIAD6ZelNRs4LSS1XV8jp6f2R+0EMpMU/0V6VbkMQTcklXpZuQ1+Z8RTUx2QsUigPLzhr3HlPtiU5S527+zMFRje7miRBXQW3aM0kzt/Szt2TZCjZItytErIQUdb6V++rsI345NFdVfSC6yvR05ni7QGVMkHcXKp1iakMKRYSFX0NnZEKNbdWBZjXtdeOKGeDRVbnR3ecn+ApO86/iyK1TTNjvF2VUsenkq0RXfyhFSde7w1kQz1Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uk3EHF8ZsDq16yKTuHEuQANryO0CrTvFdSbKDaVqN5o=;
 b=LD8cnlUdJrz5wr4P5NUH4FML+PN0Unx+jP7Kx3V6GUO1kVl7a9AGZSRbgueo+EqyZ4cFERhuXW2RiMHUaXJATX/TAfFt93GkqeOuNGvvFgUgrFHfHD3u2ASnrzsXk08EfQTriKPYpmnGZ8BelMdxbj1VV2ECRmzpymWTw8UuAvltyKttu7s/tr3/mHO68iAYTMW4YeL77A78BlbNu06B3V+coXXtUZEiKj5Az3d6Pf1FJ1ZQirX5i2xRq2zScr6YJE1DoXMIkyC/BTMj16FSvJqbwQVzK3dWg/MomtglqogMzoSfKZTz0PjttxfioIqxVwvFh8NNWakQVta/+shYpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uk3EHF8ZsDq16yKTuHEuQANryO0CrTvFdSbKDaVqN5o=;
 b=lpsGzkoU3OHsXE6LKSlfOvZF21kPAuH830wPFa81nrmMV6uZKxyWXgky0VpyFprxlXekznzqUzCxxEDlCEmFCDrjAtG/bxAr0O8GJC1xdvdgPWrbbmEFMPaPmZ+n2pHNXS7LFqE7QJTpqWEbIugbXX0oJpYFZ7id2Usif4wXDbE=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB6752.eurprd05.prod.outlook.com (10.186.160.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:48:46 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:48:46 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Topic: [PATCH v3 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Index: AQHVTPnYiUb0/9FBFESOnjeVxQTgsaby+eaA
Date: Fri, 9 Aug 2019 15:48:46 +0000
Message-ID: <a6f9f8d870fc6dfa408e3c3417bcc04e37ed2417.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-19-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-19-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e92166f8-89dd-4e98-c54c-08d71ce1108a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB6752; 
x-ms-traffictypediagnostic: VI1PR05MB6752:
x-microsoft-antispam-prvs: <VI1PR05MB675249EC419ED9F5A5522D60FBD60@VI1PR05MB6752.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(136003)(366004)(39850400004)(376002)(199004)(189003)(86362001)(4326008)(102836004)(186003)(76176011)(2501003)(6506007)(446003)(486006)(476003)(2616005)(11346002)(44832011)(7416002)(46003)(81156014)(8676002)(8936002)(81166006)(6116002)(25786009)(14454004)(6246003)(118296001)(54906003)(110136005)(7736002)(99286004)(316002)(478600001)(2906002)(2201001)(5660300002)(71190400001)(305945005)(71200400001)(256004)(76116006)(91956017)(229853002)(6512007)(66556008)(66946007)(64756008)(66446008)(36756003)(6436002)(6486002)(66476007)(53936002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6752;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DrkZJaIveiU33+aadxpbh+XCIU0lv+tgFgkQlOIYWxBBbVydT6rikoe9IRDopkaGrUT5C+dfZNA219YmY/7ZxriLhlyASG3NkStFOz62IwWS3fJIvC3gUgd18J/AJRvFDKVaKSyok2akZj2/9cAGqkKXDj7A9ySRpRiq/faRPVsklOber+CeYioZ/JmfdtF68l9jZECY8y54xjOVQDqkiobPvhIwhaDtstJTr+O6Z+HxO3F/jFkRY3DWG/DbK+M1OvJbO2YLtbJWLDZQO88uZ8dsJXocKQFLuA+jZHtZjpkhz9xQraIzk2XYpYiYrqtvC57GU9QCUWymiybmPSy9aqwYiL272ZYUTfU9bKfrRQD24K8G0wynaggELUsftBqzSGSdJh+O9HlF4jaJOBdJXRy0J1IyIIbxcgeNo9rzjnw=
Content-ID: <07359E6F6703474DA5B286CB329F8648@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e92166f8-89dd-4e98-c54c-08d71ce1108a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:48:46.5274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQX2mVTh8FKyR/SLgqUPn3h4MFgoEsT+ShdpKeDr207zoCNIbk7zVU+59nnFEbHzdPE9Lz7U75CVTBrne1qjSqhaIutfprHO+PyUlE/XoBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084849_558530_62DC16C5 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.105 listed in list.dnswl.org]
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
> This adds the possibility to wake the module with an external signal
> as defined in the Colibri standard
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index 3bee37c75aa6..d3c4809f140e 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -8,6 +8,20 @@
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_snvs_gpiokeys>;
> +
> +		power {
> +			label = "Wake-Up";
> +			gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
> +			linux,code = <KEY_WAKEUP>;
> +			debounce-interval = <10>;
> +			wakeup-source;
> +		};
> +	};
> +
>  	/* fixed crystal dedicated to mcp2515 */
>  	clk16m: clk16m {
>  		compatible = "fixed-clock";
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
