Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199D449883
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 06:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ls1XOKJd2k21mLtjPlCe3coBe/aDPK3AQZwae2fYSEo=; b=cilVNSMQoZZdkV
	eS4Kg7soD+Epw0ndkaFGwNfBIXR/vFOciJcJbsTrWzF12USgy/rtbbABgpUirYAe21ZWmfkHLyy5m
	Xx8A7YO4OHGLANO6vcf02EwKlaIYRy/QIGFwcqyk/pjb0yU69p9UJQCJPDZ4bM5FUxEvICRKEOkt/
	4ayYWbwP+91rN022/aqqcN7k4bVDWPvPSFv5Nraj1Mad7lZgG3eWUn4Yarxk5qC3PMfsfkFAWfQuq
	9AQipbfoRwnbaoOxwAvwQsLHKbh0Aopg6LuaSVLpLV1loJwg4jrtF4lEFBOW+xdW1j3cVjUnsEVJK
	qAX3SC8ef1nDwWVp24XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6DY-00041E-14; Tue, 18 Jun 2019 04:59:36 +0000
Received: from mail-eopbgr750074.outbound.protection.outlook.com
 ([40.107.75.74] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6DJ-00040e-OE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 04:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6YkMxd8j2d8QMpQ7UnpLoxtqgbUrfqoLnenExYUsNW8=;
 b=AqLbGOr0lXVVp00q/WibCwYdyGpayaeaTWozDV+NFowb6wWrFmWJiha8ZGwMNOQj3i0e0Lu15VKu5yXjqrFUeFMsZ422+DQssSh/6cvaFrWAlmraQnf3w9WU0fSnF7Tlp2hdMcLVyGQ/D/a56p6joB9PqxOxGnW25si/wYsI+Aw=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6365.namprd02.prod.outlook.com (52.132.175.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Tue, 18 Jun 2019 04:59:16 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b%4]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 04:59:16 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
Thread-Topic: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
 Platform Tap Delays Setup
Thread-Index: AQHVIDwWKZKZdF95gUaFGq/oqBvspKafu1mAgAADioCAAA8FAIAAIhYAgAAJ3oCAAOY6IA==
Date: Tue, 18 Jun 2019 04:59:16 +0000
Message-ID: <MN2PR02MB60296837F9D1B3088667BE59C1EA0@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
 <CAPDyKFp6O8rPZDZS4iKJam2+tXeen_ZMOXKw=WVzJNpBXcSc9g@mail.gmail.com>
In-Reply-To: <CAPDyKFp6O8rPZDZS4iKJam2+tXeen_ZMOXKw=WVzJNpBXcSc9g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1f67496-6674-4497-2c5e-08d6f3a9b702
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6365; 
x-ms-traffictypediagnostic: MN2PR02MB6365:
x-microsoft-antispam-prvs: <MN2PR02MB6365D39D090964EE67700A1AC1EA0@MN2PR02MB6365.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39850400004)(396003)(376002)(136003)(366004)(189003)(199004)(51914003)(13464003)(72206003)(76176011)(6436002)(14454004)(102836004)(53546011)(7696005)(99286004)(7736002)(66066001)(86362001)(3846002)(73956011)(2906002)(52536014)(6116002)(64756008)(229853002)(76116006)(66476007)(6636002)(5660300002)(316002)(305945005)(8936002)(6246003)(71190400001)(33656002)(25786009)(476003)(53936002)(4326008)(55016002)(446003)(11346002)(486006)(256004)(26005)(66446008)(478600001)(81166006)(81156014)(9686003)(8676002)(66556008)(71200400001)(74316002)(66946007)(68736007)(54906003)(6506007)(186003)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6365;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QcghaE8dkJ5+B7n7sZVwficMMEzeZiaBluozbADTyJQqwo+9H56I5gy/6TAwVc8kG8oFYYeLUOqblJEOWtrlgc/twC9saZiinqN1Q34E05yOZf3Y+xLRAe9vaPHLah731x3CO7bEcfpTljKq+cY6UFehUkboarhSElRXEg6in7jWtgFBrBj8uDZpIltbEKxH625Y8c6vQgzPGNf1GaNhgbpLQvMjzNqHrZ8W5cxZT/Bail82wlPBTvxj2BuZz6Z8E3862PvONif8+2/e5stjHDIVMfGQmiQPOMQweJPRQBL2vWMxTIFpjTXpITN0Y6JTGAlgW9wYN+jurtFM6ObA/fqaxgsAU1w05x6+MhNal0XyL23PUWYU1ZfaVg5Q5KMR3nH7hI6tVm0lGXUF5FbRoU6q7OYTPaAJmW5blpxWLPQ=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1f67496-6674-4497-2c5e-08d6f3a9b702
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 04:59:16.2860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_215921_797229_7DFD87DA 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,

Thanks for the review. Please find my comments below.

> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Monday, June 17, 2019 8:29 PM
> To: Michal Simek <michals@xilinx.com>
> Cc: Manish Narani <MNARANI@xilinx.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Adrian
> Hunter <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly
> Shah <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Olof
> Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>
> Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> Platform Tap Delays Setup
> 
> [...]
> 
> > >>
> > >>
> > >>> In regards to the mmc data part, I suggest to drop the
> > >>> ->set_tap_delay() callback, but rather use a boolean flag to indicate
> > >>> whether clock phases needs to be changed for the variant. Potentially
> > >>> that could even be skipped and instead call clk_set_phase()
> > >>> unconditionally, as the clock core deals fine with clock providers
> > >>> that doesn't support the ->set_phase() callback.

In the current implementation, I am taking care of both the input and
output clock delays with the single clock (which is output clock) registration
and differentiating these tap delays based on their values
(<256 then input delay and  >= 256 then output delay), because that is
zynqmp specific. If we want to make this generic, we may need to
register 'another' clock which will be there as an input (sampling) clock
and then we can make this 'clk_set_phase()' be called unconditionally
each for both the clocks and let the platforms handle their clock part.
What's your take on this?

Thanks,
Manish
> > >>
> > >> In connection to another version of this driver for latest Xilinx chip
> > >> it would be better to keep set_tap_delay callback in the driver. The
> > >> reason is that new chip/ip is capable to setup tap delays directly
> > >> without asking firmware to do it. That's why for versal IP there is a
> > >> need to call different setup_tap_delay function.
> > >
> > > The ->set_tap_delay() callback is for ZyncMp pointing to
> > > sdhci_arasan_zynqmp_set_tap_delay(). This function calls the
> > > clk_set_phase() API.
> > >
> > > What does ->set_tap_delay() do for the latest version?
> >
> > There is different set of default tap delays which should be programmed
> > and it is done just via writing to registers which are the part of
> > controller address space.
> 
> Okay, I see.
> 
> Not sure what makes most sense to do here, but it sounds to me like
> another ->set_phase() callback should be implemented for the clock
> provider. In other words, calling clk_set_phase() should continue to
> works just fine for this case as well. If it turns out to be
> inconvenient, we can always add the ->set_tap_delay() at a later point
> when it makes more sense.


> 
> [...]
> 
> Kind regards
> Uffe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
