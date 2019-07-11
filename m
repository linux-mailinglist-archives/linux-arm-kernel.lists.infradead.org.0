Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E1E64FC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 03:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygCeVL5oTRz2+4NT5owxbOY1M2QLuO6GcS2FGoE94pQ=; b=NRXkp8AKEBhz7P
	/grtk5iMVWbbJaRH4WJABRYTI57oZ82aupTdie0Y0tZ77L7yrUavOJCpd3cSHRTvxq4xfeIWANoMd
	9WNWw86uE16MXhySn+55QlLPg51LgzK9OLrO/kXWIXZnbTxQXSzJEuBXvlwRRUDiBIY59jlD/KdPP
	WRb8S/Ij5zqgfqgMEWgVi66vUxDbiUcoVLdOQNntj1RCiLdxwBw3cSWxrQ6NtTwdB7aEPrOTBV3f2
	FWzCjanPdEBFOZ5+KwUSX0mimf2yKYr5vJlxovXOku+roxDSJrwt1uCmMo7mwU0WlE67XX30E+508
	JXBaVTAXldEPAOHBqWFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlNWV-0002lZ-3A; Thu, 11 Jul 2019 01:05:23 +0000
Received: from mail-eopbgr00047.outbound.protection.outlook.com ([40.107.0.47]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlNW5-0002kx-Ib
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 01:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFFXG3NNPjiSl14l1zlB561UPLmSIOY60R1QUKn3dGg=;
 b=ozto4Nprvvk893KuRSJoAGZdDBChX7cDeqiLJr3Elr20XK+2HxJKXl8K5n5vTwjASdIImkz/Pp1+890+vTNSp8SyZCzoBm0RQPdy2XTcIzvsx3DKs4Mu1f6gbbmIxQ5092bK3o6hgiJ2OIYMc6nXZpUQ1rh9knubNCQn01w0NvA=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3512.eurprd04.prod.outlook.com (52.133.19.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 11 Jul 2019 01:04:53 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a%5]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 01:04:53 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
Thread-Topic: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
Thread-Index: AQHVL/II1Ibi8cGYOUSIKmrgeiNcLabCyoSAgABPmdCAAMtKgIAAwymQ
Date: Thu, 11 Jul 2019 01:04:52 +0000
Message-ID: <AM6PR0402MB39117F91D660450647A692E8F5F30@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <20190701093826.5472-1-Anson.Huang@nxp.com>
 <20190701093826.5472-2-Anson.Huang@nxp.com>
 <CAL_JsqKeu-b8mbMJBtnNn1vL=RSvUXbo+g40haZnjXTW11CJ6w@mail.gmail.com>
 <DB3PR0402MB39167FC68991F071E9E58D81F5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAL_JsqJbHFZ2qcLvhZGk8Q-f80_QhdgQxcHe2TyCjc4GGRNJNQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJbHFZ2qcLvhZGk8Q-f80_QhdgQxcHe2TyCjc4GGRNJNQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc7dfedb-ad9d-4db2-c9ad-08d7059bc81b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3512; 
x-ms-traffictypediagnostic: AM6PR0402MB3512:
x-microsoft-antispam-prvs: <AM6PR0402MB35126F0D315C8D6E9231E525F5F30@AM6PR0402MB3512.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(199004)(189003)(74316002)(55016002)(52536014)(7736002)(305945005)(76116006)(8936002)(66446008)(64756008)(66556008)(66476007)(66946007)(476003)(486006)(44832011)(9686003)(14454004)(53936002)(7416002)(6246003)(256004)(86362001)(99286004)(4326008)(7696005)(76176011)(53546011)(186003)(6506007)(66066001)(229853002)(102836004)(33656002)(26005)(478600001)(316002)(54906003)(2906002)(5660300002)(81156014)(8676002)(81166006)(6116002)(3846002)(11346002)(446003)(71200400001)(71190400001)(6436002)(25786009)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3512;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jb8cDzeXDHo6muqvAPZpRzmY7xd94hAKaP7ZkysaefZbWsqVHBTe20xcYiAsVB8PE/Ym36QnsxgxK+I5iU3MemydEDqcXd0GR4X/rJ8uofpE1VsP7ajmv10AMoKr3wGnEfqdyL48JRc1kMuK5FYIoDh7GvFgC44qDxDHAIQc0I+JSMaVbGqsg5zEbrOE9iA3IZF8wZi9aUbRGebCDf0PBtsmCFEgQNh7JS0sEhaKE1LPC6kGELule0ZtVbUEUgDjV9h5CcxQDIOOTWDhXeWbIeU6kVTyOPzrtHcId62gaO9bXff+O4LGGMxVVB9yvTFLK/CKrkIWskh2CbAMzn3v2ggxHfEc34K38oQnEKXzsYGKFQul5uReMdGwAg4Fc0GfPuIblMWUNLeKEdF+ToFJlJRt860bhzvKyJpym0odM8Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7dfedb-ad9d-4db2-c9ad-08d7059bc81b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 01:04:52.7430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_180457_719566_B3365C42 
X-CRM114-Status: GOOD (  31.24  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Angus
 Ainslie \(Purism\)" <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 =?utf-8?B?R3VpZG8gR8O8bnRoZXI=?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> On Tue, Jul 9, 2019 at 7:30 PM Anson Huang <anson.huang@nxp.com> wrote:
> >
> > Hi, Rob
> >
> > > On Mon, Jul 1, 2019 at 3:47 AM <Anson.Huang@nxp.com> wrote:
> > > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > 'dt-bindings: timer: ...' for the subject.
> >
> > OK, I made a mistake.
> >
> > >
> > > >
> > > > Systems which use platform driver model for clock driver require
> > > > the clock frequency to be supplied via device tree when system
> > > > counter driver is enabled.
> > >
> > > This is a DT binding. What's a platform driver?
> >
> > It is just trying to explain why we need to introduce this "clock-frequency"
> > property, nothing about the binding and platform driver.
> >
> > >
> > > >
> > > > This is necessary as in the platform driver model the of_clk
> > > > operations do not work correctly because system counter driver is
> > > > initialized in early phase of system boot up, and clock driver
> > > > using platform driver model is NOT ready at that time, it will
> > > > cause system counter driver initialization failed.
> > > >
> > > > Add clock-frequency property to the device tree bindings of the
> > > > NXP system counter, so the driver can tell timer-of driver to get
> > > > clock frequency from DT directly instead of doing of_clk
> > > > operations via clk APIs.
> > >
> > > While you've now given a good explanation why you need this, it all
> > > sounds like linux specific issues and a DT change should not be necessary.
> > >
> > > Presumably, 'clocks' points to a fixed-clock node, right? Just parse the
> 'clocks'
> > > phandle and fetch the frequency from that node if you need to get
> > > the frequency 'early'.
> >
> > Sound like a better solution, I will try that, since the system
> > counter's clock is from osc_24m and divided by 3, since different
> > platforms may have different divider, so maybe I can create a
> > fixed-clock node in DT, then system counter driver can parse the clock and
> fetch the frequency from that node, will redo a V5 patch.
> 
> The divide by 3 can be implied by the compatible. If you need a different
> divider, add another compatible.

Yes, we can consider it later, till now, all the platforms used are with an internal
divider of 3 in system counter block, so I make it fixed divided by 3 in system counter
driver.

> 
> > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > No change.
> > > > ---
> > > >  .../devicetree/bindings/timer/nxp,sysctr-timer.txt        | 15 +++++++++--
> ----
> > > >  1 file changed, 9 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > > > b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > > > index d576599..7088a0e 100644
> > > > --- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > > > +++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
> > > > @@ -11,15 +11,18 @@ Required properties:
> > > >  - reg :             Specifies the base physical address and size of the
> comapre
> > > >                      frame and the counter control, read & compare.
> > > >  - interrupts :      should be the first compare frames' interrupt
> > > > -- clocks :         Specifies the counter clock.
> > > > -- clock-names:             Specifies the clock's name of this module
> > > > +- clocks :          Specifies the counter clock, mutually exclusive with
> clock-
> > > frequency.
> > > > +- clock-names :     Specifies the clock's name of this module, mutually
> > > exclusive with
> > > > +                   clock-frequency.
> > > > +- clock-frequency : Specifies system counter clock frequency,
> > > > +mutually
> > > exclusive with
> > > > +                   clocks/clock-names.
> > >
> > > It doesn't really work to say one or the other is needed unless you
> > > make the OS support both cases.
> >
> > The OS already support both cases now with this patch series.
> 
> What about FreeBSD or any other OS?

Now that in V5, I use the fixed clock of OSC as clock input of system counter,
no need to have all these changes now. And also no changes needed in DT
binding, thanks for your review.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
