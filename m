Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEE3189286
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6JVPffYl7Yne2Sk5+ANLFzjl0jpEIrbAt76YejHAW4=; b=OXraYKQXkGTRFM
	ydGizilYNPkVe1vo0XvErRFq/8zanYHWJB0UGN6odj9Wbiq/TeVsPqEP3LHNkWlXU0K3pRPhYUKT3
	fK2++L06snNX4XC9/4rD0POhCdy4snLcLxwtRV56lHo8XE5S0+WZ1HMDZNs5jcRXPv+99pgJ4vYgo
	nZd2RLNE6E7vbewapG7DFoUOcds43sDnzLJFqxJPNGpC7wn3HO/LYGvpPuxaX3wGrgLtxOw79fLYQ
	4VVfz24MfV4JaD3IJ0XGjrDz1MbXaYsHsLhnC4Yno7Gv2eKCltd6RBnkLSIMKjOH4uZbPaXxsHtLL
	TYsRvRcA/FMG+C4b38KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMK5-0001NH-Lc; Wed, 18 Mar 2020 00:12:37 +0000
Received: from mail-eopbgr770133.outbound.protection.outlook.com
 ([40.107.77.133] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMJt-0001Ml-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:12:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQWj3pXqlyuaDJqyH/Ux5DFcIqjLqK5+8Y2G6iqANrNiO5TGqLX7mjr6D0VzT0w3jcy2IuuOroRicZlE0/mAwFuWWisP174Y7o8I5lABt7oMMnHiGQKykrnp+GHrUQaeqtGQYXPbNSuevQzPYTk6iA7t4o9NbWtmURTGQ5QsKzhwKYKtREDdWAEMs06h8B6EPrGWdC5oUleP5sChyAunRlbG4jull1omawT5m+VmKb6nQz53M7gDf53mb7CqGXEzNn1GGCt5SSzZ2BWzL10x6inVQadVSAhti69xiBitS338gQtkb5M9igSK2FTK9bC0xBTAaybCxPfkqZJ598kbuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4apO04KVy7HQEfL+4q5FJZrzwLcAbNqyUuDyF3zEpkI=;
 b=EzeLKJKNaFIU+BtKMLMW5vEgUZK+pzhgTfNZPnuHUXY6/XiVLZtb4IAkC0iOcse+tGSw99FmZ5KCl/bp5/RnR9UOPZ+pE0zkOBERKV5QqjJJu/hZhYg/G4lS3aJ3ZeGcotgFQlWBtpA/djszvd4n62LZSggQE06zaSGLVJEcyolhPjhsC5mzlzdEeHK5f4mwxCocAj22nrXxsrQg7h+lL60GffmBuv2giHGZ52f1F25SJ6j7k8oRlPPC+8ue7wSWxTSh1TJfyRJT0lpOehP8Fn9FJ03OmDn0b/w7fDnSFun2R75d6/Gvl080lI+NoCI/0gZimQvWs+QitKCXcE//CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4apO04KVy7HQEfL+4q5FJZrzwLcAbNqyUuDyF3zEpkI=;
 b=jOsyeVmKDP6g28C3kMpKOIt3wtL+JKiuZfC6q1n+GfTQbn9nFKI6ukpn298xqROBYzjPYDJAKyomj651v+JQYu1aT7pOKVDtW18RAFipoZlvLPfboFkid/IP7jmhuUDAtdJkdIZb7ZUyAX4yYvWCjrX6duS25GVbVFCVbGK9718=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1082.namprd21.prod.outlook.com (2603:10b6:302:a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.7; Wed, 18 Mar
 2020 00:12:19 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2835.003; Wed, 18 Mar 2020
 00:12:19 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
Thread-Topic: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
Thread-Index: AQHV+hZFy2PYk3vLgUeMDTQcrJxEgqhK6wGAgAJAuNA=
Date: Wed, 18 Mar 2020 00:12:18 +0000
Message-ID: <MW2PR2101MB10524879CD685710A51AB740D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
In-Reply-To: <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-18T00:12:16.8474672Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=6c90051e-250f-4594-b94a-1ef53dfada48;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7884e1b1-8379-46b2-664d-08d7cad105d1
x-ms-traffictypediagnostic: MW2PR2101MB1082:|MW2PR2101MB1082:|MW2PR2101MB1082:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB1082520AC43CAEFF509C74D7D7F70@MW2PR2101MB1082.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(10290500003)(55016002)(478600001)(7696005)(5660300002)(9686003)(54906003)(2906002)(7416002)(966005)(8990500004)(53546011)(33656002)(52536014)(6506007)(6916009)(76116006)(71200400001)(186003)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(8676002)(316002)(86362001)(81156014)(8936002)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1082;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0AwXp6/HcMxLHZYsF4GKJWYBGKeXkvw/vfmqW7vNEQKJebAe+LLTsdUUbX1oAgGEvyi9gOyFjEuakdE04uuvINDIcxmsJ1STDSlcymW0eHdLSsEG8On5EHbUTk5WjMHo9+8HVQMurFV7vK6CNrHMs3QJQX7wZsP4DhpypbJZrYp8g4s1dX6PeBO11vIDt0vD64zjh77uNa2/h7FcT1Q3l3Q0VnlviudWPDZ4fpSKGClHrJuHbnbFO2jAaHZwgHALMQbE/WLc4PeXCZPPern5iDcw156uJYcPtvu6B9BSCuM087B1qQ567V+jLuIcD39sBePyJZ+nq3GEUybb8zgj4N0/l0zF2ONhmW3PTueE91Zh43CockX209eXzzfSDsd2dZSjIKbSzn2sMBY4vCqglwhttlY/HzPhaKRdGs+Hetdf0NEd3z7nR512tNe2UUnJuTIDoof19EnlYVsHSAIVLeC4R9m2GOPF5ErYGPvhchJE7Me/OOUhM3QK/q3czstrrXhl6xXjYI8sWac5yA5jXg==
x-ms-exchange-antispam-messagedata: 3Zu9UFj3Apk8s8ELr7c5sqAez17jymLeCUX0cfwPRbzFuac1lY5ye+nCPtMzJH1GhHSUTG9E0K2qMf55DKaMBQDguo2yM1BdqAC9KSYmYcIqcjhMM2dcvBXz/6p7UzeVlrDv6iHEW9JoHjzMq4zhkg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7884e1b1-8379-46b2-664d-08d7cad105d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:12:18.8700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MJlt63tvAm1/6bq2OG4G1UOsm09vZ0OMZRZHCV3BzDNVuiAU51JUq3MWdiyw6CWhxdqx37HFU19M4FMB1o02WAvYuTBlu83t7hdHM6Hn+Bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_171225_529275_F3A55886 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:48 AM
> 
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> 
> > +
> > +/* Define input and output layout for Get VP Register hypercall */
> > +struct hv_get_vp_register_input {
> > +       u64 partitionid;
> > +       u32 vpindex;
> > +       u8  inputvtl;
> > +       u8  padding[3];
> > +       u32 name0;
> > +       u32 name1;
> > +} __packed;
> 
> Are you sure these need to be made byte-aligned according to the
> specification? If the structure itself is aligned to 64 bit, better mark only
> the individual fields that are misaligned as __packed.
> 
> If the structure is aligned to only 32-bit addresses instead of
> 64-bit, mark it as "__packed __aligned(4)" to let the compiler
> generate better code for accessing it.

None of the fields are misaligned and it will always be aligned to 64-bit
addresses, so there should be no padding needed or added.  There was
a discussion of __packed and the Hyper-V data structures in general on
LKML here:  https://lkml.org/lkml/2018/11/30/848.  Adding __packed was
done as a preventative measure, not because anything was actually
broken.  Marking as __aligned(8) here would indicate the correct intent,
though the use of the structure always ensures 64-bit alignment.

> 
> Also, in order to write portable code, it would be helpful to mark
> all the fields as explicitly little-endian, and use __le32_to_cpu()
> etc for accessing them.

There's an opening comment in this file stating that all data
structures shared between Hyper-V and a guest VM are little
endian.  Is there some other marking to consider using?

We have definitely not allowed for the case of Hyper-V running on
a big endian architecture.  There are a *lot* of messages and data
structures passed between the guest and Hyper-V, and coding
to handle either endianness is a big project.  I'm doubtful
of the value until and unless we actually have a need for it.

> 
> > +/* Define synthetic interrupt controller message flags. */
> > +union hv_message_flags {
> > +       __u8 asu8;
> > +       struct {
> > +               __u8 msg_pending:1;
> > +               __u8 reserved:7;
> > +       } __packed;
> > +};
> 
> For similar reasons, please avoid bit fields and just use a
> bit mask on the first member of the union.

Unfortunately, changing to a bit mask ripples into
architecture independent code and into the x86
implementation.  I'd prefer not to drag that complexity
into this patch set.

> 
> The __packed annotation here is not meaningful,
> as the total size is already only a single byte.

Agreed.

> 
> > +/* Define port identifier type. */
> > +union hv_port_id {
> > +       __u32 asu32;
> > +       struct {
> > +               __u32 id:24;
> > +               __u32 reserved:8;
> > +       }  __packed u;
> > +};
> 
> Here, the __packed annotation is inconsistent with the use
> in the rest of the file: marking only one member of the union
> as __packed means that the union itself is still expected to
> be 4 byte aligned. I would expect that either all of these
> structures have a sensible alignment, or they are all
> completely unaligned.

Agreed.  Looks like it is wrong on the x86 side too.  

> 
> > + * Use the Hyper-V provided stimer0 as the timer that is made
> > + * available to the architecture independent Hyper-V drivers.
> > + */
> > +#define hv_init_timer(timer, tick) \
> > +               hv_set_vpreg(HV_REGISTER_STIMER0_COUNT + (2*timer), tick)
> > +#define hv_init_timer_config(timer, val) \
> > +               hv_set_vpreg(HV_REGISTER_STIMER0_CONFIG + (2*timer), val)
> > +#define hv_get_current_tick(tick) \
> > +               (tick = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))
> 
> In general, we prefer inline functions over macros in header files.

I can change the "set" calls to inline functions.  As you can see, the "get"
functions are coded and used in architecture independent code and on
the x86 side in a way that won't convert to inline functions.

> 
> > +#if IS_ENABLED(CONFIG_HYPERV)
> > +#define hv_enable_stimer0_percpu_irq(irq)      enable_percpu_irq(irq, 0)
> > +#define hv_disable_stimer0_percpu_irq(irq)     disable_percpu_irq(irq)
> > +#endif
> 
> Should there be an #else definition here? It helps readability
> to have the two versions (with and without hyperv support) close
> together rather than in different files. If there is no other
> definition, just drop the #if.

Agreed.  I'll figure out a way to handle this better.

> 
>      Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
