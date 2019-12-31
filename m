Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4978D12D568
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 02:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sQNoLKzJHmcVoGz7vMa9ZBL2fNxR/9WiI/7f1coNjE=; b=Qf4eJ/DbtCdHHx
	mm+KjV/FqRnHqnlRFI8zrYpYWS767ymAavPsTZ1pY8zQ97ySi1TYEqKwyJeTK4pekVdJhSnZvl3wi
	i/Jgj9BZTbYDpkde1nVb4b/lv5Xw9TTL8Dz3G9ZbShKeEn2nKFAUYPMC08TauntOI8VjLoTMCFb6U
	BKuUMf8zSGp5s8HO20uwWkcvcXeQ783/nYPCQWS8yQ8LbERJMIkG32k3BfPOQQ+MxO4ILnGfJ5p3r
	+AaudveYVbqpWz8FrU+goAeyVRJDWXgphSO1NTqZq7FExLt0THpMA7BWphTGP4NN/aZg7/ff1rEnL
	EI2opl7EBtt7vIrATwMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im5zq-0005PF-Pk; Tue, 31 Dec 2019 01:06:54 +0000
Received: from mail-eopbgr20076.outbound.protection.outlook.com ([40.107.2.76]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im5zk-0005Oe-C0
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 01:06:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDjoCLggcxZQ5Y15a7/o2ryRZWBd08mTtXOOp3etesdlhuxwJIfSuSLDj32m9skogtkTZq8xJEVnuijZI1ynLfuj0fUKK2ETNSHdgOxR39L3es98s8tZBBAHTBU9bVbi9ZH1S0i9Xw6PYD6T6XvcZdUSpH8w4yEAzDsD9HhG8bcoqcS2Xp2l6mMb7bw6SmKszZMZFKE+TL2LJT/dkbHpGWY+09ShY6NPCt6ZYU+u1DzZSeqMO9s6+xjMan/HiWy8vTbYoP8IFopQjQTri7OyQRiD2fNr/3pgLxVuu60DoTWDmBRykamwzCVqCPYIGENQPLNKPwh67hfK2wZzTmBgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35HZwLSgBuUWvigbJXDtekoGlEt9la9nW6dzm0vZd1w=;
 b=GORSLviDZ1pgo9BfsZojj994Ob6CYcOWXW1LbwZnZQjWHlYRaDP1ZpMjwhcYAip6syi/AP6KuNsuzrRqO6jgrJ93oCzsYE1DItikDGAL0H42Od51wiKC4nzlFJDYLswlqCPG5HBwMXBs8SgfTmy0j+wGDnHl9JPPcFLrA+9Wr02nPbozzK/kAGZO91IudALAV6iqaP9i6eqststz9VBJSuecx7ja1xLjEkPEJNdQEYNJHgWtGvx9c1Fgpyg8xGr+pQ41xpBcqg4ltvmBvw/GNsXnHuN1z+CNSQPPS2njG57WV1ZGCucWF/BdjSBtvKCZWYBryHsysP3OjvRazsluow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35HZwLSgBuUWvigbJXDtekoGlEt9la9nW6dzm0vZd1w=;
 b=qC4c6LYuFW7mx8SNObNUpPVwMcBcTfZaZH4KtITWGEGOYMiQ0IzXUh4hjPCxYPJDLDzSLhj4HCSJPcBQcZ9R1qbDjSgfy0ERLhOVCpRWo4SnOgpUeRV3cCFxESPBgtlFPK+pAsQ7RUiQ/pBeBM7yx6vuWtL/e5041sfGHIdjAUk=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.234.92) by
 DB7PR04MB5210.eurprd04.prod.outlook.com (20.176.234.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Tue, 31 Dec 2019 01:06:41 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::e49e:a6b:85ca:378c]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::e49e:a6b:85ca:378c%6]) with mapi id 15.20.2581.007; Tue, 31 Dec 2019
 01:06:41 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Adam Ford <aford173@gmail.com>
Subject: RE: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
Thread-Topic: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
Thread-Index: AQHVsc8x4RTvJU9lNECpxKqRtqzo7KfEvPUAgAEe+lCAAHD1gIANO1KA
Date: Tue, 31 Dec 2019 01:06:41 +0000
Message-ID: <DB7PR04MB51785654798E176507F9531487260@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20191213160542.15757-1-aford173@gmail.com>
 <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
 <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
 <CAHCN7xKa1+=_K_cYXvZW3vfT1gEoYDyK=_8ERBdxvOhB3gTvww@mail.gmail.com>
In-Reply-To: <CAHCN7xKa1+=_K_cYXvZW3vfT1gEoYDyK=_8ERBdxvOhB3gTvww@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 36fc46d0-26c9-41f0-a1f9-08d78d8db1fd
x-ms-traffictypediagnostic: DB7PR04MB5210:|DB7PR04MB5210:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB52104C40CCDD9171A5E233F587260@DB7PR04MB5210.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0268246AE7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(13464003)(199004)(189003)(55016002)(186003)(7696005)(8676002)(6506007)(33656002)(2906002)(71200400001)(26005)(4326008)(7416002)(6916009)(53546011)(81156014)(8936002)(478600001)(81166006)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(86362001)(316002)(5660300002)(52536014)(54906003)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5210;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jv2rrewI4lVubzAE6IYdaEfpmi++46+48rvl208mAhZOnYGSiGTiy7D5xtH3DkfrXxwLArWjG/L//9GMVgIbktbEmR43jzIixWvjgaJszqEGE+FRgk2YgTT2Q/fcl/0YnPFJR+h7Dxs85B84H6UrQ4mBb/Ps8JKrq6KdY8sjgNnO0gQw/qxawBHAa/702UpRTN5Jbn8DuakbInFmPH0RGjps4o2JYbuFTM0TpErR4no7XjM0YthGcHszNC3dquvH50HKQsY1Uo9ni4riI63YYCRDG+DsQ8hwMjdRQ7dQu44y5QGsSuUNFpupviTAiFMnXy3VkQ+GQWb5VgC5oDP+ByhkB0PUJfF1y38gVsLlEqpUst6jf3wMJZdosYSgflxljy9t0mS/dvsLHpJo45eNPuFYnJtkafA8HykYh1wavEFDhSt3XFIzZz8ssE+wdrvnKVwDsNYsSNV+qTuFqKiq8tO00jH9ZGzcONw+uaJMsEjfw9lJZdph8sR7o3ZuogxH
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36fc46d0-26c9-41f0-a1f9-08d78d8db1fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2019 01:06:41.0440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2HNa9CRHkLnQD9BFGIlYywWUW5Lq4LK0iSGVCEj/0J01uW87qre6hLMD7+ZzUB1LaOuBB0VZ31sTeFs4erEJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_170648_651266_5DAF5011 
X-CRM114-Status: GOOD (  44.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Adam Ford <aford173@gmail.com>
> Sent: Sunday, December 22, 2019 10:58 PM
> To: Jacky Bai <ping.bai@nxp.com>
> Cc: arm-soc <linux-arm-kernel@lists.infradead.org>; Peng Fan
> <peng.fan@nxp.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> dl-linux-imx <linux-imx@nxp.com>; devicetree <devicetree@vger.kernel.org>;
> Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Leonard Crestez
> <leonard.crestez@nxp.com>
> Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
> i.MX8M Mini
> 
> On Sun, Dec 22, 2019 at 2:33 AM Jacky Bai <ping.bai@nxp.com> wrote:
> >
> > > -----Original Message-----
> > > From: Adam Ford <aford173@gmail.com>
> > > Sent: Saturday, December 21, 2019 11:07 PM
> > > To: arm-soc <linux-arm-kernel@lists.infradead.org>
> > > Cc: Peng Fan <peng.fan@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Rob
> > > Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> > > Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> > > dl-linux-imx <linux-imx@nxp.com>; devicetree
> > > <devicetree@vger.kernel.org>; Linux Kernel Mailing List
> > > <linux-kernel@vger.kernel.org>; Leonard Crestez
> > > <leonard.crestez@nxp.com>
> > > Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional
> > > functionality of i.MX8M Mini
> > >
> > > On Fri, Dec 13, 2019 at 10:05 AM Adam Ford <aford173@gmail.com>
> wrote:
> > > >
> > > > The GPCv2 controller on the i.MX8M Mini is compatible with the
> > > > driver used for the i.MX8MQ except for the register locations and
> names.
> > > > The GPCv2 controller is used to enable additional periperals
> > > > currently unavailable on the i.MX8M Mini.  In order to make them
> > > > function, the
> > > > GPCv2 needs to be adapted so the drivers can associate their power
> > > > domain to the GPCv2 to enable them.
> > > >
> > > > This series makes one include file slightly more generic, adds the
> > > > iMX8M Mini entries, updates the bindings, adds them to the device
> > > > tree, then associates the new power domain to both the OTG and
> > > > PCIe controllers.
> > > >
> > > > Some peripherals may need additional power domain drivers in the
> > > > future due to limitations of the GPC driver, but the drivers for
> > > > VPU and others are not available yet.
> > >
> > > Before I do a V3 to address Rob's comments, I am thinking I'll drop
> > > the items on the GPC that Jacky suggested would not work, and we
> > > don't have drivers for those other peripherals (GPU, VPU, etc.)
> > > anyway.  My main goal here was to try and get the USB OTG ports
> > > working, so I'd like to enabled enough of the items on the GPC that
> > > are similar to the i.MX8MQ and leave the more challenging items
> > > until we have either a better driver available and/or actual
> > > peripheral support coming.  I haven't seen LCDIF or DSI drivers pushed
> upstream yet, so I doubt we'll see GPU or VPU yet until those are done.
> > >
> > > Does anyone from the NXP team have any other comments/concerns?
> > >
> >
> > If you look into NXP's release code, you will find that it is not easy
> > to handle the power domain more generically in GPCv2 driver for
> > imx8mm. That's the reason why we use SIP service to handle all the
> > power domain in TF-A. we tried to upstream the SIP version power
> > domain that can be reused for all i.MX8M, but rejected by ARM guys.
> > they think we need to use SCMI to implement it. as there is no SCMI over
> SMC available, upstream is on the way, so the power domain for
> i.MX8MM/MN is pending.
> >
> 
> Thank you for the background. I appreciate it.
> 
> > Actually, I am confused why we can't use SIP service, even if the SCMI
> > over SMC is ready in the future, It seems the SMCC function ID still need to
> choose from SIP service function id bank.
> >
> > Another concern for adding power domain support in GPCv2 is that, each
> > time a new SOC is added, we need to add hundred lines of code in GPCv2
> > driver. it is not a best way to keep driver reuse. The GPCv2 driver is
> > originally used for i.MX7D, then reused by i.MX8MQ, as i.MX8MQ has
> > very simple power domain design as i.MX7D. But for i.MX8MM, it is not the
> case.
> 
> There are some entries on the 8MM which can be used the same way as the
> 8MM.  I have been able to get USB OTG working using the 8MQ's GPC table.
> 
> Until sometime better is available, would you entertain a limited use of the
> 8MQ's GPC where the device tree nodes only contain a limited number of
> entries (like USB OTG) where we can re-use the similar functions 8MQ
> without expanding the driver functions?  I know its not ideal, but it would be
> a temporary solution unless you think the upstream power domain support is
> coming quickly.  I looked through the mailing list history and it looked like
> there were some attempts about
> 6 months ago, then it appeared to stop.
> 
> Once the newer driver is available upstream, we could then remove GPC
> references from the 8MM device tree and point it to the new driver.
> 
> It would increase some limited functionality for the short term.  I know
> Leonard has been working on the DDRC modifications and power reduction.
> I have been trying to use them, but unsuccessful so far.
> >
> > There is another concern, we don't want to export GPC module to rich OS
> side, it is not a must.
> 
> What about doing it in the U-Boot stage if Linux isn't an option and ATF isn't
> accepting them?


I have enabled the USB/PCIE power domain by default early before, if using the community ATF,
I think USB can work well.

BR
Jacky Bai

> 
> adam
> >
> > BR
> > Jacky Bai
> >
> > > adam
> > > >
> >
> > > > Adam Ford (7):
> > > >   soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
> > > >   soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
> > > >   soc: imx: gpcv2: add support for i.MX8M Mini SoC
> > > >   dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
> > > >   arm64: dts: imx8mm: add GPC power domains
> > > >   ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
> > > >   arm64: dts: imx8mm: Add PCIe support
> > > >
> > > >  .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
> > > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
> > > >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
> > > >  drivers/soc/imx/gpcv2.c                       | 246
> > > +++++++++++++++++-
> > > >  .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
> > > >  5 files changed, 387 insertions(+), 8 deletions(-)  rename
> > > > include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)
> > > >
> > > > --
> > > > 2.20.1
> > > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
