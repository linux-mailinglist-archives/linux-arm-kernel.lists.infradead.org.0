Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54E25B76F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iM5VRKEpDmVNbvqYYLKSnDzbKEQBa1MKxXvvoVb8mo=; b=bTrHceNSBr4iU5
	WZ9HWnILP2CPZx00vgLtz588ikp268gOB7eSH9iTzUA9y6Npmw8BNkgrgH12y//BLKKNbLx4PiWyC
	mN14c4/OTDMgl2seIRpgWDpSKdD+fXT0FYTccC5wMXvsGaa1oejur81RAfue1SF8KMgKJ/lCdNZ7K
	K7KfLprl7KWS77IrSWrQ/PARSaNqQOrCkzUlwmTLlb7hf9UUyub/N7WLhN96unoDiWsn7yMK1mgwv
	V2NYxcN2VeDtil8mLRMF5uCq4XU5/symWORzL9/A4EJpNm+D9kD1UTJWDuIdFU4WTXlOAUnCGry7O
	goOrFBqFgoY3Drr4bspQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsEu-0007jr-0d; Mon, 01 Jul 2019 09:04:44 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsEZ-0007ig-BS
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/B9Nz9HnfTsn4Z3VA0S3HC5f/shWdUvQluN+kCLvw4=;
 b=IXwtjcXkGlkktyYYK17ZS0Y4pXAyLdeoLQ3NeyssX/pfbrDpDjxmWGqMpE9UbKeD3vtDXOA+GhOBgPFbRtEjx4A65zWBNbKRCCOJWxrkwcc+lwcHd2ZUUSkHLag3VGpZuNn+jGhIiXsaUC4kml2A3MUlwF5hKuUuagwGZDhLx5I=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3689.eurprd04.prod.outlook.com (52.134.69.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 09:04:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 09:04:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V3 1/5] clocksource: timer-of: Support getting clock
 frequency from DT
Thread-Topic: [PATCH V3 1/5] clocksource: timer-of: Support getting clock
 frequency from DT
Thread-Index: AQHVLWMnlUeFgfBl7ke07hMOkfGtpKa1e32AgAAAXbA=
Date: Mon, 1 Jul 2019 09:04:14 +0000
Message-ID: <DB3PR0402MB3916A54972EE7887FCB18A23F5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628033041.8513-1-Anson.Huang@nxp.com>
 <17a7bde4-e5e0-a746-52a5-1075ce263152@linaro.org>
In-Reply-To: <17a7bde4-e5e0-a746-52a5-1075ce263152@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c4f9899-f24f-4c02-6f73-08d6fe031767
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3689; 
x-ms-traffictypediagnostic: DB3PR0402MB3689:
x-microsoft-antispam-prvs: <DB3PR0402MB36891C8954AD0D3D3A979953F5F90@DB3PR0402MB3689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(199004)(189003)(7696005)(7736002)(6506007)(14454004)(229853002)(2501003)(8936002)(81156014)(81166006)(8676002)(76176011)(74316002)(186003)(305945005)(26005)(86362001)(102836004)(53546011)(7416002)(476003)(256004)(44832011)(486006)(446003)(11346002)(25786009)(2906002)(53936002)(33656002)(71200400001)(3846002)(6116002)(71190400001)(52536014)(4326008)(99286004)(316002)(9686003)(5660300002)(66066001)(68736007)(110136005)(6246003)(478600001)(2201001)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(6436002)(76116006)(55016002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3689;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R2Yv5x/9JAA7yGSQMi04Un/qvOv7K53FiNL9zWSop9uVx3yIdKFzIoI11xf5fYfDyt3eZklUJYGxiiTMBUCOwtS4lOiQitGtQ4PrIbPgrqACmX3o0nj0K/9urMLb+iIQo6ITvy8KioZCbsIhB3Nipdbo8b6SBV4XN9+tz9ZsTv5UTI9pdoj/i+xAVD/be08AY1xf2p1eicmRaLn5cGHJpPAKUBusg8QanUlh3BhXqIRaHUMpPStn4r9bVhtmEpjCUUt16S86+sI40OpV/MaSe60xOinZTh749AkgGwhn+trTaIiZQOS+ThvMrdm3n3x5zuQiR/bt9J5lX/zHtQjIxF/eKv0lkz59U0D4ZjJ81yktg7MLbxFi+2gud0nhIy+BONFAniskA3z0Zo4HMq53W2dx5VLTovTFRdP63nM0U2M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c4f9899-f24f-4c02-6f73-08d6fe031767
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 09:04:14.8986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_020423_656650_1AB98FE6 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH V3 1/5] clocksource: timer-of: Support getting clock
> frequency from DT
> 
> 
> Hi Anson,
> 
> thanks for taking care of adding the clock-frequency handling in the timer-of.

Sure.

> 
> On 28/06/2019 05:30, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > More and more platforms use platform driver model for clock driver, so
> > the clock driver is NOT ready during timer initialization phase, it
> > will cause timer initialization failed.
> >
> > To support those platforms with upper scenario, introducing a new flag
> > TIMER_OF_CLOCK_FREQUENCY which is mutually exclusive with
> > TIMER_OF_CLOCK flag to support getting timer clock frequency from DT,
> > then of_clk operations can be skipped.
> >
> > User needs to select either TIMER_OF_CLOCK_FREQUENCY or
> TIMER_OF_CLOCK
> > flag if want to use timer-of driver to initialize the clock rate, and
> > the corresponding clock name or property name needs to be specified.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > New patch:
> > 	- Add new flag of TIMER_OF_CLOCK_FREQUENCY, mutually exclusive
> with TIMER_OF_CLOCK, to support
> > 	  getting clock frequency from DT directly;
> > 	- Add prop_name to of_timer_clk structure, if using
> TIMER_OF_CLOCK_FREQUENCY flag, user needs
> > 	  to pass the property name for timer-of driver to get clock frequency
> from DT, this is to avoid
> > 	  the couple of timer-of driver and DT, so timer-of driver does NOT
> use a fixed property name.
> > ---
> >  drivers/clocksource/timer-of.c | 23 +++++++++++++++++++++++
> > drivers/clocksource/timer-of.h |  8 +++++---
> >  2 files changed, 28 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/clocksource/timer-of.c
> > b/drivers/clocksource/timer-of.c index 8054228..c91a8b6 100644
> > --- a/drivers/clocksource/timer-of.c
> > +++ b/drivers/clocksource/timer-of.c
> > @@ -161,6 +161,21 @@ static __init int timer_of_base_init(struct
> device_node *np,
> >  	return 0;
> >  }
> >
> > +static __init int timer_of_clk_frequency_init(struct device_node *np,
> > +					      struct of_timer_clk *of_clk) {
> > +	int ret;
> > +	u32 rate;
> > +
> > +	ret = of_property_read_u32(np, of_clk->prop_name, &rate);
> > +	if (!ret) {
> > +		of_clk->rate = rate;
> > +		of_clk->period = DIV_ROUND_UP(rate, HZ);
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> >  int __init timer_of_init(struct device_node *np, struct timer_of *to)
> > {
> >  	int ret = -EINVAL;
> > @@ -178,6 +193,11 @@ int __init timer_of_init(struct device_node *np,
> struct timer_of *to)
> >  		if (ret)
> >  			goto out_fail;
> >  		flags |= TIMER_OF_CLOCK;
> > +	} else if (to->flags & TIMER_OF_CLOCK_FREQUENCY) {
> > +		ret = timer_of_clk_frequency_init(np, &to->of_clk);
> > +		if (ret)
> > +			goto out_fail;
> > +		flags |= TIMER_OF_CLOCK_FREQUENCY;
> >  	}
> 
> /* Pre-condition */
> 
> if (to->flags & (TIMER_OF_CLOCK | TIMER_OF_CLOCK_FREQUENCY))
> 	return -EINVAL;
> 
> [ ... ]
> 
> if (to->flags & TIMER_OF_CLOCK) {
> }
> 
> if (to->flags & TIMER_OF_CLOCK_FREQUENCY) { }
> 

Ah, make sense, they are exclusive, will add it in next version.

> >  	if (to->flags & TIMER_OF_IRQ) {
> > @@ -201,6 +221,9 @@ int __init timer_of_init(struct device_node *np,
> struct timer_of *to)
> >  	if (flags & TIMER_OF_CLOCK)
> >  		timer_of_clk_exit(&to->of_clk);
> >
> > +	if (flags & TIMER_OF_CLOCK_FREQUENCY)
> > +		to->of_clk.rate = 0;
> > +
> >  	if (flags & TIMER_OF_BASE)
> >  		timer_of_base_exit(&to->of_base);
> >  	return ret;
> > diff --git a/drivers/clocksource/timer-of.h
> > b/drivers/clocksource/timer-of.h index a5478f3..f1a083e 100644
> > --- a/drivers/clocksource/timer-of.h
> > +++ b/drivers/clocksource/timer-of.h
> > @@ -4,9 +4,10 @@
> >
> >  #include <linux/clockchips.h>
> >
> > -#define TIMER_OF_BASE	0x1
> > -#define TIMER_OF_CLOCK	0x2
> > -#define TIMER_OF_IRQ	0x4
> > +#define TIMER_OF_BASE			0x1
> > +#define TIMER_OF_CLOCK			0x2
> > +#define TIMER_OF_IRQ			0x4
> > +#define TIMER_OF_CLOCK_FREQUENCY	0x8
> >
> >  struct of_timer_irq {
> >  	int irq;
> > @@ -26,6 +27,7 @@ struct of_timer_base {  struct of_timer_clk {
> >  	struct clk *clk;
> >  	const char *name;
> > +	const char *prop_name;
> 
> For the moment, keep it hardcoded with "clock-frequency" directly in the
> function.

OK, then I will NOT add any dt-binding for this property. The reason to use prop_name
instead of hardcode is I don't want to create a binding doc just for this property.

Thanks,
Anson. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
