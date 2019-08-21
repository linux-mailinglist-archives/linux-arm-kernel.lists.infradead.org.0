Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A430979ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJ8Dk3jkfeswocxAnY9GouGs58v0LR6GJq/t67Xhpws=; b=WKXf8qn9leZduH
	WLO7ukQdtFPoOma1eJ2XbC+n6hup6safG1uu+P57vgRzOMRDBkowxXW/6dxB+YSzKG2aoBcaRyEue
	s4pGO9y2grYql9NqZHNEMteqNBI4p/YZtxK22cfJkXIKgPPj69g2ovntSqgoZU/pVk8jGbs2PGa0t
	xWTTpYiNoIZ431FfL9U3kCQ+Dv9XbWazELoYZ1aaRnSwqMQ7+c+Jv5Bv7kEvy+ro4rblOC4nbLYDU
	Cp6hDdcE0J+yD0s8RJsgfYdrUB4tql4c3eMjddaoCz5VMUHqqFt0qOPViZ6cstB8AQF2SkO5b6PPJ
	tyc+jEDrGpZj5vg8D9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q5d-0002tY-80; Wed, 21 Aug 2019 12:51:49 +0000
Received: from mail-eopbgr50092.outbound.protection.outlook.com ([40.107.5.92]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q5P-0002sr-Jq
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:51:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lietjQ6QkXWwm9VfkVxzhbkwKZNcuTl13gtgNM4au/M86u7optBHj5QilwGBva44hTHZNVmAbkItMFnBoUXwzwrHYrmxNsJj4aGMsIBvTBXjZ+XMRM77pvRLaYAjdW6WbrYix6rpXtTu2efIobwdzjodL7C6KJYNsMN/7wHMZk/ktz6k9EsVtFm9kaAWcCAUUbPeN6BY/E+RFAAGzhRRpQqSYi0J7ghsQQDuxq2yHLV2JQQvQ/T9L7ExwOYnG17sVJ2j0j5XOXjYifbNygUwEMHyDv0/HRQfBoUr11Ieyy97vx5Fd/1ohuHEBbxUPi+KzhrCj5H/AtCYDtKyynOzBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6iEmejef1lwgsM6s0ixvegliTpwo5Av4bZ7c0U0SmfY=;
 b=mgqXkJt1GgwrZgXZ+yCTddq7Ed/m0KvMEfJ+l+JVd+Vg+LChefs3IQY+iPOvW+3qJoqCMxE4RkmLH61/851nO0eqDdC2pWrklwG8rDSiveQhouAy2Khwz/auzFhOotRmLfsze/Ik5cgggqwIeaxHdhn08FaLdT+lNkHmvP8uA3fJIoaBFW8ilRW2p4VT4ZmqdxRxrmttJOhOSLdEWlP6DT/WWrE+eq21t9D7Vs5BHXZdtPpZa5f926gi3W+wpNG/CxDthnbjpBKLEaPSm1Q/MstfL5yxaodJ09tXXjjEcB+pyVs4JfNsMSfxGj+3V7HQmbIx3y705vnzTo9A1BY4hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6iEmejef1lwgsM6s0ixvegliTpwo5Av4bZ7c0U0SmfY=;
 b=WbPrY1/0b+7Gb2FiOhwP+kdgoWgfSehsWshzmpQJP6061PdCJ6H2TquermqpfRmr1+6TlGGuj2C04hxukpghuVXQziYCXAbMfIjChPUtDKHVxwRXr8zdh2fgFusMkfaRTRn9TZ7xq8/lAldUjLVWDbXhK4pJkqtOA0VgBegOFr8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3949.eurprd05.prod.outlook.com (52.134.17.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 12:51:30 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 12:51:30 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH v4 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v4 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVURk6y2j9GnmWB0SSfLkk7hRFMqcCXkcAgAM904A=
Date: Wed, 21 Aug 2019 12:51:30 +0000
Message-ID: <155f9dc45253baca7766e52c89bba614d57ad807.camel@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-9-philippe.schenker@toradex.com>
 <20190819112124.GR5999@X250>
In-Reply-To: <20190819112124.GR5999@X250>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8beb0d3c-c2f7-41fc-8f01-08d7263649c3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3949; 
x-ms-traffictypediagnostic: VI1PR0502MB3949:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB39491C4DE1AFD5E66868E9E0F4AA0@VI1PR0502MB3949.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39840400004)(136003)(396003)(346002)(376002)(199004)(189003)(14454004)(66946007)(229853002)(6916009)(64756008)(36756003)(91956017)(66556008)(102836004)(6486002)(118296001)(6512007)(66446008)(66066001)(11346002)(486006)(2616005)(44832011)(71200400001)(6506007)(26005)(76116006)(5660300002)(66476007)(256004)(5640700003)(8936002)(186003)(14444005)(6436002)(81166006)(81156014)(1730700003)(476003)(446003)(478600001)(7416002)(6246003)(316002)(76176011)(2351001)(71190400001)(8676002)(2906002)(4326008)(305945005)(2501003)(7736002)(86362001)(6116002)(3846002)(25786009)(54906003)(99286004)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3949;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SxzsM+M8R1yIEl/Ab5L+XO4Aq+G5/iYNDAGMGD6wcmOHURsA3kfWVesn0246mAPJzNa931ypW9X10sOf9DnP4E8CbGT/096M/yW8KFiN6R4eb+13+/eAj9nJMugAz54GJlrsx6LT5MWSgr4DS3TH2+5z0/CZ3KapFUqeQi7xyy9xmZc5j7qUhG8foFaNWQp/dlupQAVMpwLg/osib/dOlVpPFA2gcXDfod6asifbX2MkM1oI4cR+J+/I0xgnMHtXfxo+uTvODQW5owDfahCDhN6YYouNW2kSw4jteCbTQKKOFXpoeJ2CLzjOTc5+YlcvecSjk0VYoS/m3bp0b+VOQUgl2QWj27YW7wyXK+VfKl3zESF7rZNvQODwEMWge9ePY1YDHcuqdGoGG7ohMQPTdrp7k0Lt61qPBIDXySTcpXg=
Content-ID: <4EF4FACBA402A34093C425C4AA031E37@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8beb0d3c-c2f7-41fc-8f01-08d7263649c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 12:51:30.2787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5maRVu7r6hHoqO8cZpMR+xNSnFpjCyA/UnYa1yjm8EJ47dFL475D8k5ZvKB3r8i7j5Vr8SAI2KoYEWCzT5mk5KtcVnw0/u8HdxW/TPU5KZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3949
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_055135_651474_4824D6B4 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.92 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.vokac@ysoft.com" <michal.vokac@ysoft.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-19 at 13:21 +0200, Shawn Guo wrote:
> On Mon, Aug 12, 2019 at 02:21:26PM +0000, Philippe Schenker wrote:
> > Add touch controller that is connected over an I2C bus.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> > Changes in v4:
> > - Add Marcel Ziswiler's Ack
> > 
> > Changes in v3:
> > - Fix commit message
> > 
> > Changes in v2:
> > - Deleted touchrevolution downstream stuff
> > - Use generic node name
> > - Better comment
> > 
> >  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 24
> > +++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> > b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> > index d4dbc4fc1adf..576dec9ff81c 100644
> > --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> > +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> > @@ -145,6 +145,21 @@
> >  &i2c4 {
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
> > +		interrupt-parent = <&gpio1>;
> > +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/*
> > SODIMM 28 */
> > +		reset-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;	/* SODIMM 30
> > */
> > +		status = "disabled";
> 
> Why disabled?
> 
> Shawn

Also here, this is meant as an example to get our touchscreen faster
running. But those pins are primarily used as PWM's and they should by
default muxed for PWM's.
If a customer want's to add that touchscreen he just have to switch the
status of this and PWM...

Philippe

> 
> > +	};
> > +
> >  	/* M41T0M6 real time clock on carrier board */
> >  	rtc: m41t0m6@68 {
> >  		compatible = "st,m41t0";
> > @@ -200,3 +215,12 @@
> >  	vmmc-supply = <&reg_3v3>;
> >  	status = "okay";
> >  };
> > +
> > +&iomuxc {
> > +	pinctrl_gpiotouch: touchgpios {
> > +		fsl,pins = <
> > +			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x74
> > +			MX7D_PAD_GPIO1_IO10__GPIO1_IO10		0x14
> > +		>;
> > +	};
> > +};
> > -- 
> > 2.22.0
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
