Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7B758327
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJ8BCLeijPvXGIQsxyHfQcxB70nNMQwP5YCD7WWtq1A=; b=I6L9SkMzN8F/Bz
	RfuorW+8Xj0AVsMwx5+O8QG1i09uLUmBDxUk0j9wRneUuiJSFJnV6gXQ/2dGJCbEBy2TTIjDyhEE6
	Zuo0GyEhcVLcSNvBo/ndmbU+ijsgo3CPJHApH2eQmbVt5X4Wx81bTl+n5Vu148C+kGESs/ImBmiFi
	YxXCymbfHP3Div1Q3f1GjeGfEdUhyFcHdmrjgFiYj0NAxORAkJ6BsjMz68QI76G1HZhkpIl6HM9l/
	LEdW+RKImg8lmEiiIWC0E2Kuern+Q+Aio2lY5acZSADtWRKViUqWXIrixq4TyBXw7V2owqrQWdNPN
	jipfimllty9zR8QEh3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUCF-0001sa-7G; Thu, 27 Jun 2019 13:12:15 +0000
Received: from mail-eopbgr30086.outbound.protection.outlook.com ([40.107.3.86]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUC2-0001rj-M4
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jr1+A4CoIJZO4uRPJaMb7FmfoDx1VJWnsTWi4Yrj4kg=;
 b=oCuNwp4rYVbYTSgUSZeOYQK5XtG8vS0FGJDY3d2CaDcqBeJc2oBPiSfLAkM8hDXDCoqezciLRE/o70Po9v/44URCLbIR5XR92EAnsueHve6sivbujI2PFRGKFCXRmoeYFZL/Qd1memt9QmALQrC15hE3lMIwzOnCU4Ybp0leYkQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3674.eurprd04.prod.outlook.com (52.134.66.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Thu, 27 Jun 2019 13:11:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 13:11:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Topic: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Index: AQHVKcBeREE6S4ew/U+TyYIcUsyobqavVD+AgAArhLA=
Date: Thu, 27 Jun 2019 13:11:55 +0000
Message-ID: <DB3PR0402MB3916D17328CF69C09C74A3D8F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <bb362db6-9c50-5d2c-349a-4097dea0449f@linaro.org>
In-Reply-To: <bb362db6-9c50-5d2c-349a-4097dea0449f@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.20.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00adc900-b886-4ace-98a6-08d6fb01073c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3674; 
x-ms-traffictypediagnostic: DB3PR0402MB3674:
x-microsoft-antispam-prvs: <DB3PR0402MB3674B95C1E1280AC49183091F5FD0@DB3PR0402MB3674.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(366004)(39860400002)(396003)(376002)(189003)(199004)(33656002)(8676002)(229853002)(7416002)(186003)(256004)(486006)(44832011)(11346002)(476003)(4326008)(68736007)(2501003)(5660300002)(7736002)(6506007)(305945005)(99286004)(52536014)(478600001)(8936002)(2906002)(81166006)(81156014)(53936002)(53546011)(76116006)(7696005)(76176011)(66476007)(66446008)(64756008)(66556008)(66946007)(6246003)(73956011)(6436002)(26005)(316002)(25786009)(74316002)(102836004)(9686003)(55016002)(3846002)(6116002)(446003)(86362001)(2201001)(110136005)(66066001)(71200400001)(71190400001)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3674;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7jJNvxsyCTQ135scMd33xc4hLbEzGMbjmz09n/fSehcR33gMzau9DICezjTdesKe8T1EAnRSH5cEZqNx4BHBmSXg0rLOe0MSMi6a968wTkG5hgEkvKeVRBgyt1+2bfvMpiRSP8sm8TioRbaM/a9xux8bJGsBTLq+9gqrp89Q5qkVMNaSsFvi3D6zbvVSipDJZMZe9p1GkbvlaTtXgy0fClZ95qCCH/7yPJSQgYu/Mp+gPdE8utbZRdkKWbM5alyYIA4uYqzMuY/P3AgXormRhcBGx5O7/pu3Ssc6mh2DTqe/Nf0rnx+wGAYbE+tcaB/loY+hFSTL0IxFXQVJfIEaXDvPRqnB5qfHLs3s5E7Mcgn4oR8ZaO9tDNd012ALPylQeLb36LH3+0V23AM13hrXIqMHXZeYOeFrRqBj4c6NjA4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00adc900-b886-4ace-98a6-08d6fb01073c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 13:11:55.3665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_061202_731388_7EB0A635 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On 23/06/2019 14:38, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Systems which use platform driver model for clock driver require the
> > clock frequency to be supplied via device tree when system counter
> > driver is enabled.
> >
> > This is necessary as in the platform driver model the of_clk
> > operations do not work correctly because system counter driver is
> > initialized in early phase of system boot up, and clock driver using
> > platform driver model is NOT ready at that time, it will cause system
> > counter driver initialization failed.
> >
> > Add the optinal clock-frequency to the device tree bindings of the NXP
> > system counter, so the frequency can be handed in and the of_clk
> > operations can be skipped.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- improve commit log, no content change.
> > ---
> >  Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt | 6
> > ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > index d576599..c9907a0 100644
> > --- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > +++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > @@ -14,6 +14,11 @@ Required properties:
> >  - clocks : 	    Specifies the counter clock.
> >  - clock-names: 	    Specifies the clock's name of this module
> >
> > +Optional properties:
> > +
> > +- clock-frequency : Specifies system counter clock frequency and indicates
> system
> > +		    counter driver to skip clock operations.
> > +
> 
> Shouldn't it be required and mutually exclusive with clocks/clock-names?
>
Yes, make sense, I ever thought about it when doing this patch, but eventually I picked
the optional...will fix it in next version.

Thanks,
Anson

> >  Example:
> >
> >  	system_counter: timer@306a0000 {
> > @@ -22,4 +27,5 @@ Example:
> >  		clocks = <&clk_8m>;
> >  		clock-names = "per";
> >  		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
> > +		clock-frequency = <8333333>;
> >  	};
> >
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
