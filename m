Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816AB89F63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMVlK4ZxRFMgxzV+LfRDPZ5qyLbJ+5i8JA3mBzW0sF0=; b=MaMqHCwhsWsYDX
	90bg3q+gcjtgktQxSMJavsx/ucLi2owS4uKOlfhq3KViM6ZSEDFj2vR1EYVv+Wxncec3DKZvRQosi
	nFra3Yb4YHkNNjUzNtiDD7E5xTi1YFXgDqlhjobQT3j0LU93nVA3VqSh6EYTTgb8BEay7E508MopC
	Ocosj6aP62IX64EorVXZPIrim1kwj288c76UGONiQ40Nq0k6uEGinB6Z9/EWF/t16ZY+1GuJJScp0
	jsfvsk/sSui3GR6qulAqIEItJ8/rUj/inhPKq6/7dooVAnQwXg2l8QhsnIHccWkItC/g7q0k4R/M1
	nOhoJ3NUYYStjr8hujYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAA9-0001lA-KC; Mon, 12 Aug 2019 13:15:01 +0000
Received: from mail-eopbgr80110.outbound.protection.outlook.com
 ([40.107.8.110] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxA9u-0001kP-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:14:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoSnVf4zHTxFi6NVkSzq9+UoD0RlQziK9Wx1ueTav13q2sPm8yhpDm0Iu1u5Qf47XSgTZ9NgL7XcxkUkx7YIw+Gvjc5SXA71XLzitOewkY9Z7HvVQ7XM3pCly/M0P2E70Wy5o+DLGGRdOsMdAZu7/krFKdGayeAI30VN1LqsdIsDSiPgA+kYyydYlOH3fWOBCuAN9IwhGPpW1TC0xK55LGDgMeHc4c4+AhIL+LlxXGURPDnn7O8CQtcsWv9w4vI5o6J5dktzjDaNRgIEBxVQK9MeG96xu+FZqGnwpGCLptcp5WNNqmTuA6Z56r6dRnBC1oOo/1EIOMOitDnS30kSDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXYvDWOUBBurYfUaHXWfX3cT7sFctYyYETofwq26nKQ=;
 b=D1fG0EaHeuhAGohLmxXwvi03lDgY6p3uNhNbbSxeJt1O6tvGLL5xZnB++55FuIHZi/laQU6Egv1ZNKMpUzjp24Ec+GAxRNgfovxCOSpEzqloiTr+4pF08hgasDuDvvzS9V9MyM6IILS9XwPPjS6wtnLZ/t3KRB1ULt6RZhnwVtd0GH1r72bZEKxCQPkSQYHXpoWBXng8WCPZW2Dun6UQJ0OwZ/S29sOTkSuI6d4NMsnYHn6uISXX3qI0j6Hu7lOgH9sLyAuq5q6FAsOTt+fyE891ZWmOnSYgh5cQPfgMIyQpuNAbNpPjxkwpuOosZgYKgP25JFwBImqumlyG7jKzbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXYvDWOUBBurYfUaHXWfX3cT7sFctYyYETofwq26nKQ=;
 b=WxbJZkFM7IMHixypKpPakTNABSvStXDR7jo7IhyWw1JCl5fbEyiX2mQYcZOCQXGmv+2O8/rC0qKh0n7J87ve5NRCO5SZMJ+2LhtEL/9Z/4fp+bGqjC1Yty2V56pCogeUJr7+DdiUzsZ2C3KaAriKGwtpwDqpsJzIOtNglZpMIfU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3006.eurprd05.prod.outlook.com (10.175.21.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Mon, 12 Aug 2019 13:14:42 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 13:14:42 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Topic: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVTPnauiw8XawvRE+YnPE86awA46by+52AgASKPIA=
Date: Mon, 12 Aug 2019 13:14:42 +0000
Message-ID: <f9bd4e174830600baadd4ad296bf48ba2561958f.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-21-philippe.schenker@toradex.com>
 <c3eb930aa727067e3d5bbc62523feb6b032244c0.camel@toradex.com>
In-Reply-To: <c3eb930aa727067e3d5bbc62523feb6b032244c0.camel@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 114aeca8-e8ca-457d-8107-08d71f2709bf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3006; 
x-ms-traffictypediagnostic: VI1PR0502MB3006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3006D0D30E54C80B884C51B5F4D30@VI1PR0502MB3006.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(39850400004)(346002)(199004)(189003)(7736002)(256004)(305945005)(14454004)(14444005)(4326008)(478600001)(102836004)(26005)(186003)(486006)(44832011)(476003)(446003)(11346002)(2616005)(66066001)(8676002)(25786009)(6116002)(3846002)(76176011)(6506007)(2501003)(6512007)(99286004)(316002)(71190400001)(71200400001)(110136005)(53936002)(81156014)(2201001)(6486002)(81166006)(118296001)(7416002)(6436002)(8936002)(6246003)(36756003)(86362001)(2906002)(76116006)(91956017)(66446008)(54906003)(66476007)(66946007)(66556008)(5660300002)(229853002)(64756008)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3006;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Wx9cAbgquTSNJXKb+5uKhr7sNbSj2VH9NxlBoGDEO76bc6Py6Q45ZbqRLwx9TZWEfo4Cp/1YyrVm2xzpSqi6U9ezG77RnOENX0+w54UlaowmkcFaS/Xr55WLqSC/AfLCsN522srCOEmc1kpGBWEJwDB7DzlP+F/3M4qcXs4aycpFQ/TH3coBRWpo/MyHbg/EjfH0nzET0QaUhfAASbObwWkIBC6NYZgxzSv7Ii7aKvQUSHG4vnnqMqPjRo9BvbMoN8le+iW7YjyoKas4E0Qih2xxJpIBv/PIcA4tC1HK4PEn8yq0dJyg/7lyA/QgB4gsD6C4u9uBGk5xdFg8+sCRsktsfqJ6RXK/CRibhOTAZw4yHpehGOxo/B+exGEfkz+6a8Jc6O0wc6LeA0JIgt6e6Pd/MNP3sRNp45NjtSxNRiw=
Content-ID: <CCE1A75064B45A4EB792F2CE8FF81C0E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 114aeca8-e8ca-457d-8107-08d71f2709bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 13:14:42.2456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w3kHqs+B7Lcphvb84X5PB8ex792QtyaH1oH9sCn1B+FccMT3vR9NT73jbh+E/8G2DLETHezM2CDLc7tA5myXXwDLABvPi0DdHAjK8rHhAPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_061446_528435_B632F95C 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.110 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, 2019-08-09 at 15:54 +0000, Marcel Ziswiler wrote:
> Hi Philippe
> 
> On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> > This adds the common touchscreen that is used with Toradex's
> > Eval Boards.
> 
> Is that really Eval Board specific?

Since we provide the needed signals as standard on every Eval Board,
this is not specific to the Eval Board.

> 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > ---
> > 
> > Changes in v3: None
> > Changes in v2:
> > - Removed f0710a, that is downstream only
> > - Changed to generic node name
> > - Better comment
> > 
> >  .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 24
> > +++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > index d3c4809f140e..78e74bfeca1b 100644
> > --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> > @@ -112,6 +112,21 @@
> >  &i2c1 {
> >  	status = "okay";
> >  
> > +	/*
> > +	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>,
> > PWM<C>,
> > +	 * aka pwm2, pwm3. so if you enable touchscreen, disable the
> > pwms
> > +	 */
> > +	touchscreen@4a {
> > +		compatible = "atmel,maxtouch";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpiotouch>;
> > +		reg = <0x4a>;
> > +		interrupt-parent = <&gpio4>;
> > +		interrupts = <16 IRQ_TYPE_EDGE_FALLING>;	/* SODIMM 28
> > */
> > +		reset-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;	/*
> > SODIMM 30 */
> > +		status = "disabled";
> > +	};
> > +
> >  	/* M41T0M6 real time clock on carrier board */
> >  	m41t0m6: rtc@68 {
> >  		compatible = "st,m41t0";
> > @@ -188,3 +203,12 @@
> >  	sd-uhs-sdr104;
> >  	status = "okay";
> >  };
> > +
> > +&iomuxc {
> > +	pinctrl_gpiotouch: touchgpios {
> > +		fsl,pins = <
> > +			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x74
> > +			MX6UL_PAD_ENET1_TX_EN__GPIO2_IO05	0x14
> > +		>;
> > +	};
> > +};
> 
> I guess that could also be moved to the module's dtsi for any carrier
> board to potentially profit from.

I think this clearly is physically not present on our module so I would
not do that. I like to leave that in here as is, so it offers an example
of how to hook this touchscreen up in DT.

Philippe
> 
> Cheers
> 
> Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
