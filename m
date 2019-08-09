Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F52E87E56
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x0RQMBRizwBMTX+2taJ2ImBuzoL/3l6JCnlqgKV/aM=; b=evaTOecKhZrVhe
	gc2ll4p8hV/tEtmqwsSc6nnY6EYhZKYd+1Qt/9X5TvDGcQQpQgA1LGOYMXnR+hyTArOnkMwt92ryW
	+5Xl/hlWpalVSFDUSGqqaCX1RUhKfL3pNtkhf/MtFFh3xaxT10q1d1DlSOSRWq8CEDrEK+S51tb/Y
	bMCM8IsnZ+nhPDqupv2Olu8lkUiCl69Vyl5rJegrrN3IIiO9bFsTb4FZpO1Do1uJ+IpvcRNvy9RA9
	ECwSMVBsMv1lqqGlxzGVfCOFpvmSP/s/8aMPhI4RTarzqj37vujs05+cc68zaPA8STUDLjB6TCsBR
	Qes0GAP1EZa76k18Nt9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw73A-00051X-Sk; Fri, 09 Aug 2019 15:43:28 +0000
Received: from mail-eopbgr30120.outbound.protection.outlook.com
 ([40.107.3.120] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw731-00050W-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:43:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLLVC7nmStCxQTjdNrdGQ8UfwMzx8OAjpMHeDTqUMcwYgXvd0Qo112b+OoBu+XzH8+BCfljhyMXkx9bp5xpJIf6UBlQ3J/nm36RW8KDL8crIgMh7Liqb1Aew8QJDestS0ljodWxnGz/p+K4JxyEZ9ckjaNoB0eBnkZhHUvVIkKB5fDeab+Cw+EVyUSfhnG3fFOK1NGnL+tQJZd94/iOVCraQLL2L1jJkcZYWNIdTdVW40SrRlHT2kij0M3NEciH+OWYf6KHpj0gNTWnDDg/jErGkYgRxFDzM29JXVNGxGMnPdraSR0Voc46XX8noMJ+9Uh/smdX6v+OexLsw2ayQKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4y1JdZ9/yl0cE7140GCL8o8T5/ImPXruaQp1egAGZQ=;
 b=N2Fu+sW7467UaFvdB94YYGvSOAOc8yByVej4BUY4ao8qZF8LY/LUq3Z2fZUfMQWqrfPNVWYGGh94nXbgHxTjqLxlx70Imnp335i6FYQs7jMjEWF/Cpu14w56IHiy6Y6NIVjITCm6bLkHBpfAHOH2aRKOcj8dC/QOe6T+lKykncrr+yeCR4QOPknounduCAiHWS4DktDAOx3IzsPjCES/sD/hQ3/DKqqq162fHBx+boUz0GHYPEFlHOqadRx6DxV9NtSRkM4wbPQUfU4M5hAXVvnsTpTESMJ+CZH+fo4kCmBIxcHR0YyFNABzV7ldbz8CSB091OlKL8emuBJB0rqZhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4y1JdZ9/yl0cE7140GCL8o8T5/ImPXruaQp1egAGZQ=;
 b=XTfDr7+JxZ0iVbrljub9x+UutPNJcl8vh661E9+UVwcM1eaCwvR+R7/AEimLvW3RGjUBylD18/EaR5jMulFQ2rZABn8Onfz+rl3Ov3RwmQDdSZwib7T2OSJCHC0hxGT1Ri/fEAQMN9BZ1SUWkWLY41XjzWxdbm7wCxBMjqMjzqo=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5823.eurprd05.prod.outlook.com (20.178.122.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 9 Aug 2019 15:43:13 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:43:13 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Topic: [PATCH v3 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Index: AQHVTPnV79tSXC+1fEesojD6I0AgYaby+FkA
Date: Fri, 9 Aug 2019 15:43:13 +0000
Message-ID: <1012c9f70373cb4f87f75d8c636029f0871e55c9.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-17-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-17-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6558519a-f369-4161-6e61-08d71ce049d5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5823; 
x-ms-traffictypediagnostic: VI1PR05MB5823:
x-microsoft-antispam-prvs: <VI1PR05MB58237FA01D0BD9842349ED8EFBD60@VI1PR05MB5823.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(396003)(366004)(346002)(136003)(376002)(189003)(199004)(478600001)(66446008)(2201001)(81156014)(36756003)(46003)(2501003)(446003)(86362001)(7416002)(14454004)(25786009)(8676002)(118296001)(6246003)(99286004)(6116002)(8936002)(81166006)(66556008)(66946007)(76176011)(66476007)(64756008)(6506007)(229853002)(71190400001)(305945005)(110136005)(76116006)(102836004)(53936002)(6486002)(6512007)(91956017)(2906002)(6436002)(11346002)(486006)(476003)(44832011)(4326008)(256004)(71200400001)(54906003)(5660300002)(2616005)(7736002)(186003)(316002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5823;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qhSPlkvEBFZLCmenbUFLM7zdKVG5fH6f90mC0m6bhePP1SwWXd/6Z4W/9gDRbZEZBib+RDBh+S4TLCqIaAJ1EC8Ymul6Ioq4lbNCIJU9xdBYbHurHUz1ddoFlfOlbhFVm90lz7+J6Te4VDfkmsI/Iyc0Oja8E4cZP7j5moaB+SqFYFMhWcFhfw8i5HXwfRXcaNkD3T5OQu6bB7DEzGayxuh4Sr2DKWn0jldg9RNQUthnJQczqZI+F2AHVOYl+NICnxWla4L57g1rC7GQP2Uq6WnGCAU/+V3aXTDyjxL2cIcr563uX8SEMP2NMaUqkH50efyUpTZU4gGo6DKN6H/Khhme6vitnFy+VKzNRYMU7ZA2eYy8ExjNaynycQI7SB/vHEO2dmWzYMS0VmbDpfQ4KDHjxApz3s8rKRZSF9YOF7s=
Content-ID: <9EEF78776F113A40AA7D891B9AAA5C6C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6558519a-f369-4161-6e61-08d71ce049d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:43:13.2201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VWYWJXtxSSsaiB2lnaORjIAY2pdTTR//YDKYrHmZngsGlAK4A2sOTngC7grtKK5PihpFztsb9/+xGJ8/tSjLeveceE2VXwBtEldoroq4Tes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084319_718950_9BBCC30C 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.120 listed in list.dnswl.org]
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
> This patch adds the watchdog to the imx6ull-colibri devicetree
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6ull-colibri.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index 1f112ec55e5c..e3220298dd6f 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -199,6 +199,12 @@
>  	assigned-clock-rates = <0>, <198000000>;
>  };
>  
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +};
> +
>  &iomuxc {
>  	pinctrl_can_int: canint-grp {
>  		fsl,pins = <
> @@ -506,6 +512,12 @@
>  			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x14
>  		>;
>  	};
> +
> +	pinctrl_wdog: wdog-grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_RESET__WDOG1_WDOG_ANY    0x30b0
> +		>;
> +	};
>  };
>  
>  &iomuxc_snvs {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
