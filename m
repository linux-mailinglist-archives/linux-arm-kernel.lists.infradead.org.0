Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0E38CE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bP8fU5IS+R6Mv+5FeiCF1EMTxPwdGuZLiZFSaRP8+do=; b=WYNnGKKHwT4+Xl
	VDoZBk6UivW9Ce5pLJLJNFs8KNe5zTkU8eyKyQj/mCEA+wQYOLX6v0AC6LBI8uByYhuIk2hNw4K9R
	eaIFIJNxHXgARrCo4TJBEha1/C3N8jQtC3z8hYziEqCzXygjpgkenfFsFiPNzFX7Ym0LeURWa1K8S
	DW8LURdljQGwKR4eytJqi0vtyxrwM+jtRX0I7MkJ/1QmFrfzqnHZ+2m8d8vkLYAwhHm7QOplIPbyF
	NfhpYDljklivZYwPolQiGP0S7N7eldVQUyNWJXWOCu3midPglVsBt/rB8WS8gnHbjSl5bzOf15Dt8
	3tH8OsJdEDl2QTpMP0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFnv-0005nc-90; Fri, 07 Jun 2019 14:25:15 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFnd-0005mx-3N
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZjAgNMFVl6gQ6Xigkn+GWhkYzwlWp9pUxJEjBwIzd8o=;
 b=1a1tQhkmYxA0tgp4KKSd7Ftvjdnjkv31MuF97UEQmihYBuZsx51ostIReRJZu+gJuOuwL5Oi7/wDcNjszktLEXmug4jKefOebATOfCM3HHOI7gHTsWeZyY1zWE4hQ/Or//5eTU7nZiSly0Lhz6sWKqFLQQmIi7mkwVAgqQjznNA=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4987.eurprd08.prod.outlook.com (10.255.16.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 14:24:53 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 14:24:53 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
Thread-Topic: [PATCH v2 00/12] 52-bit kernel + user VAs
Thread-Index: AQHVFW/tpfJaPEW8u02wv+FGj/Fi96aQRgmAgAAIjYA=
Date: Fri, 7 Jun 2019 14:24:53 +0000
Message-ID: <20190607142434.GA1449@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <c0128487-a05b-6e23-6239-27905f6dd79c@arm.com>
In-Reply-To: <c0128487-a05b-6e23-6239-27905f6dd79c@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: DM5PR18CA0054.namprd18.prod.outlook.com
 (2603:10b6:3:22::16) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a91860c4-ea2a-4fc5-0025-08d6eb53e7c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB4987; 
x-ms-traffictypediagnostic: DB8PR08MB4987:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB498747DD4B1D0EC7C8BA89FB81100@DB8PR08MB4987.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(136003)(396003)(199004)(189003)(76176011)(6512007)(33656002)(25786009)(476003)(229853002)(305945005)(11346002)(73956011)(66556008)(52116002)(446003)(66476007)(66946007)(66446008)(64756008)(5660300002)(44832011)(486006)(54906003)(58126008)(6436002)(316002)(72206003)(256004)(14444005)(478600001)(386003)(7736002)(6506007)(6862004)(68736007)(26005)(86362001)(6636002)(99286004)(4326008)(2906002)(81166006)(8676002)(81156014)(55236004)(8936002)(66066001)(6116002)(102836004)(3846002)(6246003)(53546011)(14454004)(71190400001)(1076003)(186003)(53936002)(6486002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4987;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GOBs9WgFJf3rcL9ahN46P5bub0WfCRQqssIpQgKvj1JuOiOLAZ3Iz9wfPP0hadUzo6OP7XDbEoOe/PMslFvLXAR3sical0IVxZOl40+yxWtYEDiR99PtFs1H0VmewbOp3Q3joDeVtMRK5q1+kIXDsAHgnjVHFlCWnRFGtQLwLlpTzrG/Vod1bLnLkLQei2Oum/fcNsPrXLIZcm3hxprEmE5vFFvbaCM4KtGU2W11K5m/E99Lwk3NK7l7kASaV1hdTBBlow2S/98rABK4tqdH8nRagURKsTQIS6pezZ/sCt4NbWvSz2mEvBklQzpar1e71yej8HYjplnK4NUzuKQSJto+lbjEA0wtLMwJy+//ew7XzN9Et59YkoNcLTm/3Dv1/Ctiv37dA/WWJQx5fqGtkbN2c0iYWmJdZvsj+l4jPlE=
Content-ID: <5C85C8F2F7DAF245A0C1084F4DD1F274@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a91860c4-ea2a-4fc5-0025-08d6eb53e7c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 14:24:53.6317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4987
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_072457_144300_2DA35955 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 07:23:59PM +0530, Anshuman Khandual wrote:
> Hello Steve,

Hi Anshuman,

> 
> On 05/28/2019 09:40 PM, Steve Capper wrote:
> > This patch series adds support for 52-bit kernel VAs using some of the
> > machinery already introduced by the 52-bit userspace VA code in 5.0.
> > 
> > As 52-bit virtual address support is an optional hardware feature,
> > software support for 52-bit kernel VAs needs to be deduced at early boot
> > time. If HW support is not available, the kernel falls back to 48-bit.
> 
> Just to summarize.
> 
> If kernel is configured for 52 bits then it just setups up infrastructure
> for 52 bits kernel VA space.
> 
> When at the boot
> 
> a. Detects HW feature	   -> Use 52 bits VA on 52 bits infra
> b. Does not detect feature -> Use 48 bits VA on 52 bits infra (adjusted)
> 
> > A significant proportion of this series focuses on "de-constifying"
> > VA_BITS related constants.
> 
> I assume this is required for the situation (b) because of adjustments
> at boot time which will be required after detecting that 52 bit is not
> supported in the HW.
>   
> > 
> > In order to allow for a KASAN shadow that changes size at boot time, one
> 
> Ditto as above ?
> 
> > must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> > start address. Also, it is highly desirable to maintain the same
> 
> Is there any particular reason why KASAN_SHADOW_START cannot be fixed and
> KASAN_SHADOW_END "grow" instead ? Is it because we are trying to make start
> address (which will be closer to VA_START) for all required sections variable ?
> 

KASAN has a mode of operation whereby the shadow offset computation:
shadowPtr = (ptr >> KASAN_SHADOW_SCALE_SHIFT) + KASAN_SHADOW_OFFSET 

is inlined into the executable with a constant scale and offset. As we
are dealing with TTBR1 style addresses (i.e. prefixed by 0xfff...) this
effectively means that the KASAN shadow end address becomes fixed (the
highest ptr is always ~0UL which is invariant to VA space size
changes).

The only way that I am aware of fixing the start address is to somehow
patch the KASAN_SHADOW_OFFSET, or prohibit the KASAN inline mode (which
would then hurt performance).

> > function addresses in the kernel .text between VA sizes. Both of these
> 
> Kernel .text range should remain same as the kernel is already loaded in
> memory at boot and executing while also trying to fix the effective VA_BITS
> after detecting (or not) the 52 bits HW feature.
> 
> > requirements necessitate us to flip the kernel address space halves s.t.
> > the direct linear map occupies the lower addresses.
> 
> Still trying to understand all the reasons for this VA space flip here.
> 
> The current kernel 48 bit VA range is split into two halves
> 
> 1. Higher half	- [UL(~0) ...... PAGE_OFFSET] for linear mapping
> 2. Lower half	- [PAGE_OFFSET ... VA_START]  for everything else
> 
> The split in the middle is based on VA_BITS. When that becomes variable then
> boot time computed lower half sections like kernel text, fixed mapping etc
> become problematic as they are already running or being used and cannot be
> relocated. This is caused by the fact the 48 bits to 52 bits adjustment can
> only happen on the VA_START end as the other end UL(~0) is fixed. Hence move
> those non-relocatable/fixed sections to  higher half so they dont get impacted
> from the 48-52 bits adjustments. Linear mapping (so would PAGE_OFFSET) on the
> other hand will have to grow/shrink (or not) during 48-52 bits adjustment.
> Hence it can be aligned with the VA_START end instead. Is that correct or I
> am missing something.
> 

Agreed with the .text addresses. For PAGE_OFFSET we don't strictly need
it to point to the start of the linear map if we grow the vmemmap and
adjust the (already variable) vmemmap offset (along with physvirt_offset).

Also we need to flip the VA space to fit KASAN in as it will grow from
the start.

> > 
> > In V2 of this series (apologies for the long delay from V1), the major
> > change is that PAGE_OFFSET is retained as a constant. This allows for
> > much faster virt_to_page computations. This is achieved by expanding the
> 
> virt_to_page(), __va(), __pa() needs to be based on just linear offset
> calculations else there will be performance impact. 
> 

IIUC I've maintained equal perf for these, but if I've missed something
please shout :-).

> > size of the VMEMMAP region to accommodate a disjoint 52-bit/48-bit
> > direct linear map. This has been found to work well in my testing, but I
> 
> I assume it means that we create linear mapping for the entire 52 bit VA
> space but back it up with vmmmap struct page mapping only for the actual
> bits (48 or 52) in use.
>

That is my understanding too.

A big thank you for looking at this!

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
