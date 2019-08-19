Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72D92015
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDuY5G2PnFA8zEqV8jXb0UKi7fzXUQGwz86/CuaBjoA=; b=APnxFfYP7CSDAH
	NJL13NmkYqaIjUFT/BWPB/09tyKxDme2lWfLR0fFaLO3cW3/LoI67h+i/7DGTGb9Cpi3XoMJbZOPE
	SNhgoyCngGoAhZAXCrijqzwaxnrb6uGfCj95KImn2NhyFk8o8Lt1OZMc49FpoZXVWYBUKgnkNCTcd
	jqX3bSyLFPr9qwmfH35ddFdaXZQBUYd8YySODDizKYX7dYLxVESQZNK2ntMHMo0ENLn0JFS13wG90
	Ua+5YUYjTbhomHU674lrz0NR7RUw/snPKRvyphIjUulbjE+0XLfqPSvgjZi8fikvGUGNGOLB1f4YR
	PTScc8859UoxV/VtH5eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzds2-0005QR-4C; Mon, 19 Aug 2019 09:22:34 +0000
Received: from mail-eopbgr750083.outbound.protection.outlook.com
 ([40.107.75.83] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdqm-0004T2-NT; Mon, 19 Aug 2019 09:21:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVZ0UdH4bNYgadc6hyAZCDnJZyJvxSqiciZXADyUrrs/nN/XtHyTLQ48uKuZakytyeuvEu/xQ89262oodvnhYKAu8wljVvqTIZlR+Rz/Kcn7FuHuKmI23GoKNINTypY9bD0kA7EQ5Lg73CjIP2PUhz/R6MrmUF/EDerqXhkq5dQbiiFuMGz6psYvhrCCOGlM2U1cdMa34WUkE3Z+TCvY5MUku1mNSfIWZ+7akdrlbt7eZO7Zkx9pOqd6CM8VCYtTP0i2+jDiGijooSiUwwmwCCzisG6XJ/rwDlnY0U0W7A9XokvwdwRCaSOICpYt8WHT2kmGc+82GLdlNgWCBBgA+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8UgBCauNgoyP9AgEAhPPV6B7Eku2U7GBDTtMeBKpcc=;
 b=QEtAwI3Rle2zas6Pqj1qujKrMb/EwiDwQ0NPjbDLsi6yo+/Ja03bvFsIq/P5BRX0+Ot4h6G1RxZ3Ew7WDANM9lJ2Z+CamXbDyx1HhoftqbNtYwUvbOn9cDMRkjeDsBZPK/hFCHC+3r/gbPBV7FLqQCmLsqFw1uaYqPDnbmkgGZ50XIIz2ah0aUB/rVPw/eUeoIu7aOgEmuq5qpqIqodQHshtmVv6vXVAtTKCNXh1l9tgSp4MUJPQjAr84w+mkOvPnLAjIsnUFTFoYcbSWO3f1SDsY2c+3OE6fkL8awNRCUT3S315nWOeJ4Q+OuCSeyFUD+SwXZDZnQq6jqlqLVcYBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8UgBCauNgoyP9AgEAhPPV6B7Eku2U7GBDTtMeBKpcc=;
 b=Fxh1F/9or7PuDt3MsWHELnJlcIa37VcFF4wJf9rKAhOm3BdtdTgYEodSijJBi+jFPAEN1/alhe5jmBsyMN7HRE1GyFnXmTEbc8iFRiEnzWjq0LaxTwfgRaUFv5ncrJWxVo+OnHNIckPtGlGoFxugO7F/5IAXOTH9cUvDia4lYyk=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB7005.namprd02.prod.outlook.com (20.180.26.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 09:21:13 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::6930:d45:6895:4255]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::6930:d45:6895:4255%4]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 09:21:12 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Thread-Topic: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Thread-Index: AQHVL84QKtDrcydqmkObCTy1mFTFVabXUFgAgAB7vdCAA6ZJgIAnAKOw
Date: Mon, 19 Aug 2019 09:21:12 +0000
Message-ID: <MN2PR02MB60299EB8B83C4EA68A0F2B33C1A80@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
 <20190722215404.GA28292@bogus>
 <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFostBKYipTkCsDbggsrux7w8BPqARx7fwRsL1XqEEX2NQ@mail.gmail.com>
In-Reply-To: <CAPDyKFostBKYipTkCsDbggsrux7w8BPqARx7fwRsL1XqEEX2NQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0bda46b1-bb8a-40cc-a9ea-08d724869460
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB7005; 
x-ms-traffictypediagnostic: MN2PR02MB7005:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB7005D4E4074702451130B173C1A80@MN2PR02MB7005.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(13464003)(189003)(199004)(6116002)(478600001)(7696005)(3846002)(76176011)(4326008)(66446008)(33656002)(66946007)(256004)(186003)(14454004)(14444005)(76116006)(64756008)(66556008)(26005)(25786009)(53546011)(54906003)(6506007)(86362001)(446003)(11346002)(71200400001)(71190400001)(66476007)(316002)(476003)(99286004)(102836004)(486006)(52536014)(305945005)(74316002)(6916009)(15650500001)(7736002)(8936002)(8676002)(81166006)(81156014)(7416002)(229853002)(53936002)(6436002)(9686003)(66066001)(6306002)(6246003)(2906002)(5660300002)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB7005;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XNF/OHUuS6/Pnik883NIB9x3OfKeXDyL4OIMidZ/a7yRTX0s1GbdSulJ0XwECdKDAWgWLDotSVaEQlPmBtfh/5wkW24o41JnyIptie1u7HLUuGPBsaucxv7JVy8HKNpCAyQlSC6iaPQZ0vOrEQy9NMyjTL3oKtw+mAr7DbH0Re8cZFYENDV4qCaEtIGowrx8JNC164usR5uG2pwN3Y1fjWrBZ8REvtvk15ML6Ss6ZAEtu9zAAPn4lpHO+yc7jgjhB9qE/zcbat0SFL957l+YfYDIxhXwFwmbcthmhorstii/jwjdxNHO9JtKzBVevUw4HZRyUYTGonBxJaOVmjC9HBGcnzvN2u1TTBmP/1QiLf28+s9YY+j92ePzJQatHRK3QOWCGbWbR7/cw0pQy31k4FQyfwTvt/YpYTkm9YpTSic=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bda46b1-bb8a-40cc-a9ea-08d724869460
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 09:21:12.8885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0xLgSs68oTX45JdQEtG7Cb8W0V8J4uMMiOXocPTfvhlIwORiIZnEw6Ow8RmBrFtj3ToXz4EaXEtw5Tm0m7wFJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022117_009141_3042B362 
X-CRM114-Status: GOOD (  28.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "kernel@esmil.dk" <kernel@esmil.dk>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>,
 "tony.xie@rock-chips.com" <tony.xie@rock-chips.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "heiko@sntech.de" <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "ayaka@soulik.info" <ayaka@soulik.info>, "mdf@kernel.org" <mdf@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,


> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Thursday, July 25, 2019 6:31 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Rob Herring <robh@kernel.org>; mark.rutland@arm.com;
> heiko@sntech.de; Michal Simek <michals@xilinx.com>;
> adrian.hunter@intel.com; christoph.muellner@theobroma-systems.com;
> philipp.tomsich@theobroma-systems.com; viresh.kumar@linaro.org;
> scott.branden@broadcom.com; ayaka@soulik.info; kernel@esmil.dk;
> tony.xie@rock-chips.com; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> mdf@kernel.org; olof@lixom.net; linux-mmc@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-rockchip@lists.infradead.org
> Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update
> documentation for SD Card Clock
> 
> On Tue, 23 Jul 2019 at 10:23, Manish Narani <MNARANI@xilinx.com> wrote:
> >
> > Hi Rob,
> >
> > Thanks a lot for the review!
> >
> >
> > > -----Original Message-----
> > > From: Rob Herring <robh@kernel.org>
> > > Sent: Tuesday, July 23, 2019 3:24 AM
> > > To: Manish Narani <MNARANI@xilinx.com>
> > > Cc: ulf.hansson@linaro.org; mark.rutland@arm.com; heiko@sntech.de;
> Michal
> > > Simek <michals@xilinx.com>; adrian.hunter@intel.com;
> > > christoph.muellner@theobroma-systems.com; philipp.tomsich@theobroma-
> > > systems.com; viresh.kumar@linaro.org; scott.branden@broadcom.com;
> > > ayaka@soulik.info; kernel@esmil.dk; tony.xie@rock-chips.com; Rajan Vaja
> > > <RAJANV@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Nava kishore
> Manne
> > > <navam@xilinx.com>; mdf@kernel.org; olof@lixom.net; linux-
> > > mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > > rockchip@lists.infradead.org
> > > Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update
> > > documentation for SD Card Clock
> > >
> > > On Mon, Jul 01, 2019 at 10:59:41AM +0530, Manish Narani wrote:
> > > > The clock handling is to be updated in the Arasan SDHCI. As the
> > > > 'devm_clk_register' is deprecated in the clock framework, this needs to
> > > > specify one more clock named 'clk_sdcard' to get the clock in the driver
> > > > via 'devm_clk_get()'. This clock represents the clock from controller to
> > > > the card.
> > >
> > > Please explain why in terms of the binding, not some driver calls.
> > Okay.
> >
> > >
> > >
> > > > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15
> ++++++++++-
> > > ----
> > > >  1 file changed, 10 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > index 1edbb04..15c6397 100644
> > > > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > > > @@ -23,6 +23,10 @@ Required Properties:
> > > >    - reg: From mmc bindings: Register location and length.
> > > >    - clocks: From clock bindings: Handles to clock inputs.
> > > >    - clock-names: From clock bindings: Tuple including "clk_xin" and
> "clk_ahb"
> > > > +            Apart from these two there is one more optional clock which
> > > > +            is "clk_sdcard". This clock represents output clock from
> > > > +            controller and card. This must be specified when #clock-cells
> > > > +            is specified.
> > > >    - interrupts: Interrupt specifier
> > > >
> > > >  Required Properties for "arasan,sdhci-5.1":
> > > > @@ -36,9 +40,10 @@ Optional Properties:
> > > >    - clock-output-names: If specified, this will be the name of the card
> clock
> > > >      which will be exposed by this device.  Required if #clock-cells is
> > > >      specified.
> > > > -  - #clock-cells: If specified this should be the value <0>.  With this
> property
> > > > -    in place we will export a clock representing the Card Clock.  This clock
> > > > -    is expected to be consumed by our PHY.  You must also specify
> > > > +  - #clock-cells: If specified this should be the value <0>. With this
> > > > +    property in place we will export one clock representing the Card
> > > > +    Clock. This clock is expected to be consumed by our PHY. You must
> also
> > > > +    specify
> > >
> > > specify what?
> > I think this line was already there, I missed to correct it, Will update in v3.
> >
> > >
> > > The 3rd clock input I assume? This statement means any existing users
> > > with 2 clock inputs and #clock-cells are in error now. Is that correct?
> > Yes, this is correct. So far there was only one vendor using '#clock-cells'
> which is Rockchip. I have sent DT patch (02/11) for that also.
> > Here this is needed as earlier implementation isn't correct as suggested by
> Uffe. (https://lkml.org/lkml/2019/6/20/486) .
> 
> I am not sure how big of a problem the backwards compatible thingy
> with DT is, in general we must not break it. What do you say Manish?

Though I agree with Uffe on this, there is no other way from my understanding. Please suggest.

> 
> As a workaround, would it be possible to use
> of_clk_get_from_provider() somehow to address the compatibility issue?

For this to be used we have to parse 'clkspec' from the DT node and pass the same as an argument to this function. In this case also the DT node needs to be updated, which is same as we have done in this series.



Thanks,
Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
