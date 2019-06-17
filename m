Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC148861
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+5nuTu7X131vNRH1kqlMMwSG0MkevCmpqjY/0pOARk=; b=ai1OHVWfzHdtJ4
	vBHPDOGSXrJgstq+wCnfxmt+osM/K4ZSYOo2+kZ+V2hT0H1PScTDbABWGZcxSXOm1YrfMosnbu0oy
	FhCvvSoi3g2Ydc2PaFTVRN2EBU7sN+EciobOxhCoKQsnahMmr+X3pg5Ai0p8V//HVJpOYirdS5MU6
	qHLTmMbjPUDqvsJeiuPGJlSZbVHBwDm+qyXwJ21ZPbFE0uZUSiqnVukmrS3RBVQOHL7P/soTWHPz6
	MzBGCImATmK8o2udluRhFs9kfXl8tj1OoY8Ahy94F0NNOL4aZu5rxwdqjDt5bnJJ8vpbusQBCo4tR
	HOD5wj5ATkIiG0qomWWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuCG-0000AD-Ku; Mon, 17 Jun 2019 16:09:28 +0000
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuC2-00009H-1m
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3XdN7cP8+THsTZ8ooVAJgTQcLhdS22u2Iqw0doqwAbA=;
 b=LTCp32CUg36lrHPkEWhiogJ9OdU3DXugdna3SKQYz/K7TJTlTXhamz7ct/anMnKzuJb7U9LloAX3lbStSHEHeBID+BRTgFuRhNAtww8FOP2xy2P9kZtPCtFZljXl5G/5j+cgGwGWq1IS+GPddD9Jkr4eETL/h6a4NKesq0P1heE=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8SPR01MB0003.eurprd08.prod.outlook.com (20.179.8.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Mon, 17 Jun 2019 16:09:11 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 16:09:11 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
Thread-Topic: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
Thread-Index: AQHVIUQpTQunH2T6gUCbh2rhSQvp9aabE9uAgAT3kIA=
Date: Mon, 17 Jun 2019 16:09:11 +0000
Message-ID: <20190617160901.GB1976@capper-debian.cambridge.arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
 <20190612172658.28522-2-steve.capper@arm.com>
 <b8147191-7c02-66c0-12ff-96de972bf2ca@arm.com>
In-Reply-To: <b8147191-7c02-66c0-12ff-96de972bf2ca@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [82.20.117.196]
x-clientproxiedby: DM5PR18CA0066.namprd18.prod.outlook.com
 (2603:10b6:3:22::28) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd2463fe-0352-418f-e645-08d6f33e2253
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8SPR01MB0003; 
x-ms-traffictypediagnostic: DB8SPR01MB0003:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8SPR01MB000310C3853B3B56B4092E0981EB0@DB8SPR01MB0003.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(136003)(39860400002)(189003)(199004)(256004)(14444005)(52116002)(8676002)(6512007)(6486002)(102836004)(53546011)(14454004)(316002)(6436002)(229853002)(58126008)(6506007)(386003)(8936002)(76176011)(5660300002)(25786009)(81156014)(81166006)(73956011)(4326008)(6246003)(66946007)(54906003)(33656002)(305945005)(66476007)(66556008)(64756008)(66446008)(2906002)(99286004)(66066001)(6862004)(72206003)(1076003)(53936002)(6116002)(44832011)(71190400001)(71200400001)(486006)(446003)(11346002)(476003)(7736002)(68736007)(26005)(478600001)(3846002)(86362001)(6636002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8SPR01MB0003;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zMNmk3Be8+2t3FhgxEPV2Z5yAxKVTS/WCqA49wqqqI0ZGy9eG3JXdK+BOQdWPkkdLau1Rs26CVNkw/lSkwTFsquXXxLdzrl/z8Zw/FbOKXTFS/Z3X9BBhc14EJ8t/TlZUrMlLeXb3fWDZV1ZsGSjMM1Ib4j7IV2yaILOJQk3i878INlyDPn5OcxEjrOgM7E438h3oS2JSbTJn7n2Tvb3kL4PADncw4PV3e7PxjiNnbqoDepgy/zhuqhFfCwk/ohRNOuV4UecgjM1UjU4hio/b2Jiz67i+s6yuFGN/niosfmTuGG2xTBpXBkG5sxerOXi0IKl9pHRt9ljSESw4+5qlnRWUMZCWITo5zdVnuumCo+ocepraFQ8CkljpIuzY42y4KkRCs2fm9N8GOsbjtPe72/c+/USkmWDQv7wdRHuNyk=
Content-ID: <E2C71A8040760A41B759DFBD79C8F08D@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2463fe-0352-418f-e645-08d6f33e2253
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 16:09:11.3267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8SPR01MB0003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090914_091187_17052FD4 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.77 listed in list.dnswl.org]
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

Hi Anshuman,

Thanks for taking a look at this.

On Fri, Jun 14, 2019 at 05:47:55PM +0530, Anshuman Khandual wrote:
> Hello Steve,
> 
> On 06/12/2019 10:56 PM, Steve Capper wrote:
> > Put the direct linear map in the lower addresses of the kernel VA range
> > and everything else in the higher ranges.
> 
> The reason for this flip has to be more clear in the commit message.
> 

Agreed, that's what I failed to do below ;-).

> > 
> > This allows us to make room for an inline KASAN shadow that operates
> > under both 48 and 52 bit kernel VA sizes. For example with a 52-bit VA,
> > if KASAN_SHADOW_END < 0xFFF8000000000000 (it is in the lower addresses
> > of the kernel VA range), this will be below the start of the minimum
> > 48-bit kernel VA address of 0xFFFF000000000000.
> 
> Though this is true it does not convey to the effect of why the flip is
> required. As you had mentioned previously KASAN_SHADOW_END is fixed because
> it needs to support the highest possible VA (~0UL) in both 48 and 52 bits.
> 
> Hence KASAN_SHADOW_START will have to be variable in order to accommodate
> both 48 bits or 52 bits effective virtual address. Hence not sure what the
> above example based on KASAN_SHADOW_START is trying to convey.
> 
> KASAN_SHADOW_END cannot be in the (52 bit space - 48 bit space) exclusion VA
> range as it would not work for the 48 bits case. But KASAN_SHADOW_START can
> very well be in that space for 52 bits case.
> 
> The current definition
> 
> #define KASAN_SHADOW_START      (VA_START)
> #define KASAN_SHADOW_END        (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
> 
> This wont work in the new scheme because VA_START is different for 48 bits
> and 52 bits which will make KASAN_SHADOW_END variable as well. Hence we need
> to change this arrangement.

Yes in a future patch? VA_BITS is still constant here.
> 
> What the commit message here does not try to convince is that there are no
> other alternate arrangements where KASAN_SHADOW_END remains fixed (and also
> accessible in 48 bits scheme), KASAN_SHADOW_FIRST is variable accommodating
> both 48 bits and 52 bits case and flipping the kernel VA space is the only
> viable option.
> 
> Ahh I see this in the cover letter.
> 
> " In order to allow for a KASAN shadow that changes size at boot time, one
> must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> start address. Also, it is highly desirable to maintain the same
> function addresses in the kernel .text between VA sizes. Both of these
> requirements necessitate us to flip the kernel address space halves s.t.
> the direct linear map occupies the lower addresses."
> 
> Though this is better (please add it to commit message).
> 

Sure :-)

> There were no alternate arrangements to achieve the above two objectives
> without flipping the VA space ? The reasoning here in the commit message is
> not convincing enough even with the above cover letter extract.
> 
> > 
> > We need to adjust:
> >  *) KASAN shadow region placement logic,
> >  *) KASAN_SHADOW_OFFSET computation logic,
> >  *) virt_to_phys, phys_to_virt checks,
> >  *) page table dumper.
> > 
> > These are all small changes, that need to take place atomically, so they
> > are bundled into this commit.
> 
> It will be great to add a before patch and after patch view of the kernel
> virtual address space enlisting different sections to make things apparent
> about what and how the layout has changed.

Hmm, pondering this. I can introduce a documentation document in a new
first patch then modify it as the series changes?

Catalin, would that work for you?

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
