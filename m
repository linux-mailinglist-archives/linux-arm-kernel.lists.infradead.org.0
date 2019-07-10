Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E605463EA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 02:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VSDkzBbXuX+XATB12jeZ5+2wg4kg5dmeBIfe7iP6w8=; b=oHjxLwOzUsPA8p
	CiVZqOOdCKWIjZHJEzQQg+eNxpQXRzo6qCHpg+By3sUkyja6NkWuBRdam1crWv2zjSlbHqV/0ZeTj
	OZOO9JjChWm2u5GOAg+gxwb6JrWEOzXqDcl/wsdfuknQhqwET0Gjs65id8IAMhImcH4fy8aVtsZDc
	1F2rNFhAIhjO+i8FDVKbFd4W5iCmsFil2H7BouKIB6PU+UXwrQl2fXL7nJUVltoslUIYFf94cocML
	WKsjqMHsWo42QFRhf0h3cw3mgAkzzFNtToVV4oSNvOjkn08N6yo9K42g6/QBnJHl8AWU3S1LZ9aSR
	08n6e5uajyl1p6IZ3fiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl0ZB-0008MA-B6; Wed, 10 Jul 2019 00:34:37 +0000
Received: from mail-eopbgr820135.outbound.protection.outlook.com
 ([40.107.82.135] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl0Z0-0008Le-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 00:34:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DXeYGwDAu8XiBRuIFYeU35G8ERKcDs4TKxSlAcuhhQ=;
 b=XjQCg58DJh5OWvBF27jHXcjJdIs9et5RPAEB96GUpfBPzRiOvqRix5m2vwihDnxYPRuHYwHpSTSgym0Gi69ZOB1lZQf8TekQ7pemn07PYtvKlW87mISqtx/adYE+YrVW0oIo7oqtHdU2emat+85KTeXBzVtefhwY0aGA/TFXvfU=
Received: from SN6PR01MB4094.prod.exchangelabs.com (52.135.119.23) by
 SN6PR01MB3790.prod.exchangelabs.com (52.132.123.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Wed, 10 Jul 2019 00:34:19 +0000
Received: from SN6PR01MB4094.prod.exchangelabs.com
 ([fe80::b958:7797:c21b:5725]) by SN6PR01MB4094.prod.exchangelabs.com
 ([fe80::b958:7797:c21b:5725%5]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 00:34:19 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Topic: [PATCH 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Index: AQHVK6WX71HRsQts10W3HaW79T6UP6as+COAgBYe74A=
Date: Wed, 10 Jul 2019 00:34:19 +0000
Message-ID: <1c5bc3a8-0c6f-dce3-95a2-8aec765408a2@os.amperecomputing.com>
References: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
 <1561501810-25163-4-git-send-email-Hoan@os.amperecomputing.com>
 <alpine.DEB.2.21.1906260032250.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906260032250.32342@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR06CA0048.namprd06.prod.outlook.com
 (2603:10b6:903:77::34) To SN6PR01MB4094.prod.exchangelabs.com
 (2603:10b6:805:a4::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [27.68.67.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb0fe928-c6f4-4bc5-9d58-08d704ce5894
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR01MB3790; 
x-ms-traffictypediagnostic: SN6PR01MB3790:
x-microsoft-antispam-prvs: <SN6PR01MB37900B4D5DBABBA819D47E45F1F00@SN6PR01MB3790.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(39840400004)(136003)(396003)(189003)(199004)(54534003)(68736007)(66066001)(486006)(2616005)(186003)(6116002)(76176011)(54906003)(31696002)(11346002)(446003)(6246003)(3846002)(316002)(8676002)(107886003)(6916009)(25786009)(478600001)(14454004)(86362001)(6512007)(52116002)(476003)(81156014)(81166006)(66476007)(7736002)(64756008)(66946007)(66556008)(229853002)(256004)(6486002)(386003)(6506007)(26005)(7416002)(66446008)(5660300002)(305945005)(99286004)(53546011)(71200400001)(31686004)(4326008)(53936002)(71190400001)(102836004)(6436002)(2906002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR01MB3790;
 H:SN6PR01MB4094.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: S5KyvRHNyHX690M0L8U8FPmcFEGo8JmEPvSX3mb2MAyMU4SIUy55UM7YxwWRYqXNW9DlK1BZeqtX15DF7S83MUVw8KM7/Yh5EwxXNAMZIm2aMteWKVBaiAblNLmqY1P+Hkp1/VBaD1dpfJQBUSIKQ9tNVy++Z/b/Eti+XW4HJiYpXWeynUnxFYbihmOwnJB6jMc+yn2lU3Ym5/qoXasQl2FoQqO7bpv7Cu16BR4XTsBO+m7zpf2IPIQYqM8UpuX3YtsLENYIZzML7TZck88G/vihyLzH7dtDC23Gyinj0Rg0I3m+KhkcOI+/UxigbgpXaMK6QgWdr+d0npL58N7rbE975vRD4m8DUElXDHHO2QwdAxt4oceP9lvtViM78BBUKdTsy/SoeH283AO3R8CevORbimUO56jsuo+6fLlJY6k=
Content-ID: <856DBE6A98D2C64F9203DA2E92E3CCD6@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb0fe928-c6f4-4bc5-9d58-08d704ce5894
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 00:34:19.5061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB3790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_173426_566180_7C4A85D2 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

Thanks for you comments

On 6/25/19 3:45 PM, Thomas Gleixner wrote:
> Hoan,
> 
> On Tue, 25 Jun 2019, Hoan Tran OS wrote:
> 
> Please use 'x86/Kconfig: ' as prefix.
> 
>> This patch removes CONFIG_NODES_SPAN_OTHER_NODES as it's
>> enabled by default with NUMA.
> 
> Please do not use 'This patch' in changelogs. It's pointless because we
> already know that this is a patch.
> 
> See also Documentation/process/submitting-patches.rst and search for 'This
> patch'
> 
> Simply say:
> 
>    Remove CONFIG_NODES_SPAN_OTHER_NODES as it's enabled by default with
>    NUMA.
> 

Got it, will fix

> But .....
> 
>> @@ -1567,15 +1567,6 @@ config X86_64_ACPI_NUMA
>>   	---help---
>>   	  Enable ACPI SRAT based node topology detection.
>>   
>> -# Some NUMA nodes have memory ranges that span
>> -# other nodes.  Even though a pfn is valid and
>> -# between a node's start and end pfns, it may not
>> -# reside on that node.  See memmap_init_zone()
>> -# for details.
>> -config NODES_SPAN_OTHER_NODES
>> -	def_bool y
>> -	depends on X86_64_ACPI_NUMA
> 
> the changelog does not mention that this lifts the dependency on
> X86_64_ACPI_NUMA and therefore enables that functionality for anything
> which has NUMA enabled including 32bit.
> 

I think this config is used for a NUMA layout which NUMA nodes addresses 
are spanned to other nodes. I think 32bit NUMA also have the same issue 
with that layout. Please correct me if I'm wrong.

> The core mm change gives no helpful information either. You just copied the
> above comment text from some random Kconfig.

Yes, as it's a correct comment and is used at multiple places.

Thanks
Hoan

> 
> This needs a bit more data in the changelogs and the cover letter:
> 
>       - Why is it useful to enable it unconditionally
> 
>       - Why is it safe to do so, even if the architecture had constraints on
>         it
> 
>       - What's the potential impact
> 
> Thanks,
> 
> 	tglx
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
