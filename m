Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB318C255
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 22:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nwxB9ZLRwAR2C5fYYJHA3QmllbCDoNLpAe/ZQlKm3M=; b=no6xjetgcv0fxs
	HKfZzGeT8yf3bBc0O/a4a5VVUnSZME5alIEaeBd25F0IPS7P08uw5Rjl920dx7iO8ZHn2qBxM+SLi
	/X3HMaGN4OPdw6YxPtTr5LZmHe/4qINpcdfgj8sXK28Sf46Wwxl9pBjX4mneYgnJxgFzMmKf/YZEN
	eZOS1m+Rw7gDiTIwr9a3XCHESp3tf4JauzjCArCRrKaCUO+Mre/Zrd8LHvYd7OpX74MlWlS3lgADM
	ceG52ickdze5IDB1RkEshx6qQ8TVp5CSDR2tI5dZu5iZN2ew99ujNG0QF7IsiW04wIAQzeGXN9iB2
	s5pKIUUvj+w2XN4leRxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2lZ-0006w7-VW; Thu, 19 Mar 2020 21:31:49 +0000
Received: from mail-eopbgr690107.outbound.protection.outlook.com
 ([40.107.69.107] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2lS-0006vQ-Sv
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 21:31:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JaxBJczhGmIfJ+JGKTwNJkJIzKuEYCCD/wdVmFbtlae8Za6tW4+GNMX2DfN6MYmnQKRi3VC3rKWSzZMyQeahiyxuOBemzrlmldfjnogSlQNIROLow8KskWyIeePCfNUwRL+0fQ7Nuh1Z9tEs8nBK0mG7o5lItZ1Pcdkxba0D4zQM8iYPS10Z4yvMnQc3WDHY6M4GcsVDjTbUmbnbZvqOPtHOaE+T5M42Y0IEzAuT/vmNJsBFoW4gwWoc7qrY5r0wnkx2Zaa6kZPjnKxAZ0CL0YET0fu5N1nRGqMgrF1CX6nmw//aPMDJPUHpPuKcYdinwWFt4HI0WDLc6mczQb8osg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HU+BBf7ND2gEiOjiKd4zNiG5FH0mQK6nJmzt/W7YcQ=;
 b=TzbEFH4NJMPmqxZ7wq2o1BsppdvFoy7WcAZxs/qOCcOBxU+fMR7UlMNBSHz7GLLhvPyXolAE4PN5jD6tdlQ/1oGtiSd2wBn5ZhK1ozfIO3no98PMGdhTpX4B6FIlZ4/d+rVe22U/Z1Pz6G3AoEI7o+jEmlc1tMfCW4hTCosw4+C+ROYDNiwiyGwv4Rc8SEz+8x8nd22iXZcu+BBYJ9KzCysyxS+zSJYU5JWHExzUoXi5c/yauUymhwyJYgCXnLaoAl+ze3J2P571apeEdoi6FxEblj5I8vCrU497wexSE4fix8xRV9DT9sK/inN6/bztyaQ8orRhjQLlonYB3Tw/Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HU+BBf7ND2gEiOjiKd4zNiG5FH0mQK6nJmzt/W7YcQ=;
 b=UDEX1jlZNCAn+crOsW3FEKN02CKWJxvO65oKBQMDlv2H22S70ni5jiVPwFkQnIKKZIC2dHFoyd9rKgu5xKK8yC0Nrj6Lf9NAoCoLjt55veoy/rvNh1AMfjnME5JZMF0fI6881GalElTAoZiAwQoIBEaqReBZyg9LLR2qiPenHko=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1081.namprd21.prod.outlook.com (2603:10b6:302:a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.12; Thu, 19 Mar
 2020 21:31:39 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%10]) with mapi id 15.20.2856.003; Thu, 19 Mar 2020
 21:31:39 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
Thread-Topic: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
Thread-Index: AQHV+hZFy2PYk3vLgUeMDTQcrJxEgqhK6wGAgAJAuNCAAPrlAIACSZwQ
Date: Thu, 19 Mar 2020 21:31:39 +0000
Message-ID: <MW2PR2101MB1052686237C57955148F173ED7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
 <MW2PR2101MB10524879CD685710A51AB740D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a02EULGxyuKFq8YnbG8BQ_m-RKciaNEc9ZbdP2yz9dt+Q@mail.gmail.com>
In-Reply-To: <CAK8P3a02EULGxyuKFq8YnbG8BQ_m-RKciaNEc9ZbdP2yz9dt+Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-19T21:31:36.1962221Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=8be96c31-fc6d-4391-bd38-7597b1f41217;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2427187d-fc4a-41a5-daf7-08d7cc4ce90c
x-ms-traffictypediagnostic: MW2PR2101MB1081:|MW2PR2101MB1081:|MW2PR2101MB1081:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB108187AC99FA65C063D6D85AD7F40@MW2PR2101MB1081.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(2906002)(8676002)(81166006)(186003)(8936002)(76116006)(86362001)(66946007)(966005)(8990500004)(66556008)(66446008)(64756008)(66476007)(7696005)(71200400001)(6506007)(5660300002)(54906003)(7416002)(498600001)(53546011)(52536014)(26005)(10290500003)(6916009)(9686003)(55016002)(81156014)(33656002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1081;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o2E7VGo1bePfUcBs6evlFv9BTXKv4w+LxGeWU0Qbeq7EUdvVdMMaBtGBlw/ciunVoZ1dot5gwS5CWeAu+evM2nUAU0bexRM9KcwVWAGAWi1GbjqT5W9T9lZjRGwXRqnzqcyPXxrdreJ68v0nM8pm8NaSF7q7SW5+Ce8skLHS4x37dVZ2rD8L9ufsHbsL9Or5Qi8w/sKByTdaKdcF1gzqoqgEk+Pd+Zwz3wI9PHj1wC6g1eAdYn3FpjYqGVgOI1dTRhiYgdyFBHN9d0FJdSWz9roDqCCv5hf9AtjXWjGIsBHGzt8rK0kzjdqunblRxTheVO7sOT/VE9t2J12bNyJv5v1fC+CyU+z9AgGmjcy0erSc9btj0F7I9YdpCJ6cY1dxCfsXGIAZm9EtGAddkOOKlDbBvh4991kcrZsm7P8By6E2WDpC6g0sXOoGv7UeDrjXxHrtJrbqFdFANMuKF0JbMG1mxqg7gCOEmCP51f8Kd1fND9qsSTdzAcZua0mYAlfDXk/u+HjbNwtE2eh5e4oYIA==
x-ms-exchange-antispam-messagedata: XfOlnvaafEGDXHzIDwPgfdsivvwOzBzULVRPQ4Pnza4dtxVyyida1/7yj8QQxrVdK4w/Z3hUIWsOh/Zma3Tnvai/d3LD3Z60L365/TGnAQ9uk/hZwJ1ZZM558oKf1UJXiHNWoib45getludwCh8ezA==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2427187d-fc4a-41a5-daf7-08d7cc4ce90c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 21:31:39.4309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N2dMQu5fJ6e96Tgx1VNOT5fWBQx0I9mUi02jnHcqnJ9oqvJzuOmcpqFgrlBC/lybAIK3o5Emai03fWd/aopSJcJqujoVZsthHGgZXbEayp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_143142_959394_52A30AB5 
X-CRM114-Status: GOOD (  38.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 3:10 AM
> 
> On Wed, Mar 18, 2020 at 1:12 AM Michael Kelley <mikelley@microsoft.com> wrote:
> > From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:48 AM
> > > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> > >
> > > > +
> > > > +/* Define input and output layout for Get VP Register hypercall */
> > > > +struct hv_get_vp_register_input {
> > > > +       u64 partitionid;
> > > > +       u32 vpindex;
> > > > +       u8  inputvtl;
> > > > +       u8  padding[3];
> > > > +       u32 name0;
> > > > +       u32 name1;
> > > > +} __packed;
> > >
> > > Are you sure these need to be made byte-aligned according to the
> > > specification? If the structure itself is aligned to 64 bit, better mark only
> > > the individual fields that are misaligned as __packed.
> > >
> > > If the structure is aligned to only 32-bit addresses instead of
> > > 64-bit, mark it as "__packed __aligned(4)" to let the compiler
> > > generate better code for accessing it.
> >
> > None of the fields are misaligned and it will always be aligned to 64-bit
> > addresses, so there should be no padding needed or added.  There was
> > a discussion of __packed and the Hyper-V data structures in general on
> > LKML here:  https://lkml.org/lkml/2018/11/30/848  Adding __packed was
> > done as a preventative measure, not because anything was actually
> > broken.  Marking as __aligned(8) here would indicate the correct intent,
> > though the use of the structure always ensures 64-bit alignment.
> 
> Just drop the __packed annotations then, they just confuse the compiler
> in this case. In particular, when the compiler thinks that a structure is
> misaligned, it tries to avoid using load/store instructions on it that are
> inefficient or trap with misaligned code, so having default alignment
> produces better object code.

So I'm confused a bit.  Were the original concerns in the above LKML
discussion bogus?  Is it legal for the compiler to reorder fields or add
padding, even if the layout of fields in the structure doesn't require it?
If the compiler *could* do such, then it seems like keeping the __packed
would be appropriate per the LKML discussion.

> 
> > > Also, in order to write portable code, it would be helpful to mark
> > > all the fields as explicitly little-endian, and use __le32_to_cpu()
> > > etc for accessing them.
> >
> > There's an opening comment in this file stating that all data
> > structures shared between Hyper-V and a guest VM are little
> > endian.  Is there some other marking to consider using?
> 
> Yes, device drivers should generally define data structures using
> the __le32, __le64 etc types, and use the conversion functions
> to access them. Building with 'make C=1' usually tells you when
> you have mismatched annotations.
> 
> > We have definitely not allowed for the case of Hyper-V running on
> > a big endian architecture.  There are a *lot* of messages and data
> > structures passed between the guest and Hyper-V, and coding
> > to handle either endianness is a big project.  I'm doubtful
> > of the value until and unless we actually have a need for it.
> 
> In general, the use of big-endian software on Linux is declining, however
> 
> - arm64 as an architecture is meant to support both endian types,
>   and we still try to ensure it works either way as long as there are
>   users that depend on it.
> 
> - The remaining users of big-endian software are probably
>   more likely to run on virtual machines than on real hardware
> 
> - Any device driver should generally be written against portable
>   interfaces, even if you think you know how it will be used. As
>   driver writers tend to look at existing code for new drivers, it's
>   better to have them all be portable. (This is a similar argument
>   to the irqchip interface).
> 
> Even if you don't convert any of the existing architecture independent
> code to run both ways, I see no reason to not do it for new drivers.

OK, let me look into this.  Given how the major Linux distros on
ARM64 have all gone little-endian, I'm a bit skeptical of the value
for the big server environments in which Hyper-V would be used.

> 
> > > > +/* Define synthetic interrupt controller message flags. */
> > > > +union hv_message_flags {
> > > > +       __u8 asu8;
> > > > +       struct {
> > > > +               __u8 msg_pending:1;
> > > > +               __u8 reserved:7;
> > > > +       } __packed;
> > > > +};
> > >
> > > For similar reasons, please avoid bit fields and just use a
> > > bit mask on the first member of the union.
> >
> > Unfortunately, changing to a bit mask ripples into
> > architecture independent code and into the x86
> > implementation.  I'd prefer not to drag that complexity
> > into this patch set.
> 
> How so? If this file is arm64 specific, there should be no need to make
> x86 do the same change.

This file, hyperv-tlfs.h, is duplicating some definitions on the x86 and
ARM64 sides that are used by arch independent code, and this is one
of those definitions.  I had held off on breaking the file into arch
independent and arch specific portions because the Hyper-V team has
left some gray areas for functionality that isn't yet used on the ARM64
side.  So in some cases, it's hard to know what functionality to put
into the arch independent portion.

But I think I'll go ahead and make the separation with reasonably good
accuracy, and update the x86 side accordingly.  That will reduce the size
of this patch set to contain only the things that we know are ARM64
specific and which are actually used by the ARM64 code.  Things like the
hv_message_flags will go into the arch independent portion so that
they can be used by the arch independent code without cluttering up
the arch specific code.  Making the change will help reduce any
confusion about what is ARM64-specific. The other core #include file,
mshyperv.h, has already been done this way.

Michael

> 
> > > > + * Use the Hyper-V provided stimer0 as the timer that is made
> > > > + * available to the architecture independent Hyper-V drivers.
> > > > + */
> > > > +#define hv_init_timer(timer, tick) \
> > > > +               hv_set_vpreg(HV_REGISTER_STIMER0_COUNT + (2*timer), tick)
> > > > +#define hv_init_timer_config(timer, val) \
> > > > +               hv_set_vpreg(HV_REGISTER_STIMER0_CONFIG + (2*timer), val)
> > > > +#define hv_get_current_tick(tick) \
> > > > +               (tick = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))
> > >
> > > In general, we prefer inline functions over macros in header files.
> >
> > I can change the "set" calls to inline functions.  As you can see, the "get"
> > functions are coded and used in architecture independent code and on
> > the x86 side in a way that won't convert to inline functions.
> 
> Ok.
> 
>         Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
