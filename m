Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2283747
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhjNC80ySQi2kPynlLoJyb9Li5aJqs4ZjlewKd0+Gaw=; b=k1ONYIBFpHmT2O
	XVi0g/oi2j1gaJ6smJHdZjO5FPlvkobypbX7nbhdkyw/sX8r89HPLopbbEBglzdg41ZgkhuthJCcj
	DDducVbY0hRhnaDXCSal0iXu67IBqVsLish7vi0Fr1sKc6KclxP9hODVI8eIrM3vzoKwLcKXIIzHk
	0igv7HATipuJ+Kr7iPVqEbZDZYsnqgsnZZ03uU7Amv/8LLpzJWH4YedWgfV8Cx6eY++LDEfqU1wJs
	ufE4/MaK/5YXV0p8IMm1JiJRzoCsnAZE5+zmPxAVBjenn0SzMvv0SUm9pJDRRtEYNwqUDh2XOfxjm
	SvSYb1wYLBmVFIJD/f1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2cU-0002pf-G9; Tue, 06 Aug 2019 16:47:30 +0000
Received: from mail-eopbgr730139.outbound.protection.outlook.com
 ([40.107.73.139] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2cM-0002p8-2F
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:47:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAAQZ5U9VK0nfqnww9K6q3aXKU5H2jEtvHmZBhATJUQo7r1cwj2XZiQ6wpMCsRtWbbklKHomDc3b7+piseMzuoHl1qaVLX7lbG8/dNg1Nhf/bGeZ7z2UXGvZ4kACizEMsvgROQ1zjwxBChtE9awrQLQkaXKhRLHwuHSw20jj1pfUQJdaIROZMa/VlRAY71dHI/jlZQqg2kzcsEPvnEK00YYkrobq+HsexkcDhI5q1ce+5SQ6ZEWc2Rjrj8xQKeKf2f8flcc6GuIWVh27Afs04XuthPhYDvWHOxvED3WcC+bQFjG4Wgot4AIu9BwV9InpnnsljTF/T/j1iw96X0/Qow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1q4pi+o5btussKVzkefj+dnCarsO1mLnz4hoIdPDodU=;
 b=IxSukqaw9/jYzlehclZ3kPJlr49jQXuqDhSv2MIh0+Sy6uEDWEIia/igYSIFIo+ImI2S3afB/pwYG36GO/AANadKN2+G234qmPydOFXZ71SK4IU2hxYIrMeMtaLHvnCohrnKaPUtejLCREFpJwmE2ryN9NrZ2/rAcRHWFGZ3+f/gPgSa4Sq+iN3S+ddwvOLn6GmxsXPdLar2lkhTq/2KNPTPNXE5hXP0Uy4DeZKgQ90ZIXtRZ8xyHwI8EH4tJOJXGCBNnqXAtDlz/WSxeboqBW0d7fZ8nhgv47MsxEZfMNBqrmCA09KrcC9sGRCxuY3Rcz2tHPymzKzQwIJNz3mB3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1q4pi+o5btussKVzkefj+dnCarsO1mLnz4hoIdPDodU=;
 b=TC7OSRkoTwLBAfNE+1PMd8V1wo35CPIfx6smg0BqvOCvElobRUYcbkMZU6cN9vZUYo+unKDBr6G+2BW+InX3roFjvN2mJcSC+Adn9kI1A5HU0tbrNCyfb1LufSTvr4WC2ugW+1mv1OJOkkcgYHUek0mZV2AxmerRs6ZyiyvM/1s=
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.105.203) by
 DM6PR01MB5433.prod.exchangelabs.com (20.179.55.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 6 Aug 2019 16:47:12 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::612a:862d:745e:ba9a]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::612a:862d:745e:ba9a%3]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 16:47:12 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Thomas Gleixner <tglx@linutronix.de>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v2 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Topic: [PATCH v2 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Index: AQHVOD/6mMbG4b3xtkKwY5B+a64PmqbMCfcAgCJyqYA=
Date: Tue, 6 Aug 2019 16:47:12 +0000
Message-ID: <910accd6-c491-acfd-237a-97edec7c0b42@os.amperecomputing.com>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
 <1562887528-5896-4-git-send-email-Hoan@os.amperecomputing.com>
 <alpine.DEB.2.21.1907152042110.1767@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907152042110.1767@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR1101CA0013.namprd11.prod.outlook.com
 (2603:10b6:910:15::23) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:27::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [4.28.12.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c93d5fa5-ac1f-49fd-a8ac-08d71a8dbab7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR01MB5433; 
x-ms-traffictypediagnostic: DM6PR01MB5433:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR01MB5433497C54778940D6030A34F1D50@DM6PR01MB5433.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(136003)(39840400004)(366004)(189003)(199004)(6486002)(476003)(2616005)(305945005)(25786009)(31696002)(102836004)(7736002)(229853002)(86362001)(446003)(8936002)(6246003)(4326008)(107886003)(81156014)(14454004)(81166006)(2906002)(256004)(6512007)(186003)(68736007)(53936002)(8676002)(11346002)(26005)(478600001)(31686004)(52116002)(99286004)(110136005)(54906003)(6116002)(76176011)(3846002)(5660300002)(6436002)(66066001)(316002)(66446008)(7416002)(386003)(6506007)(71190400001)(71200400001)(53546011)(486006)(64756008)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB5433;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3TNs1b7ZsCFx1KxEXxgLO/GCjIDmgIU/jlKbs0U+kgzd9i6WRN6dNfv4Gf3J3G0MZSYUE7dA+M3jjAWnvRUJ0RZQQWkN886BBHkiSeOAzCI4jjOvaxwfp5w/v/NkdgdbLHnSFHCW6WUBS1tFEZfkLwOrtdnQvfDfHYmO04FVUGfTzFQCiA27szJBnvOxCq1/poAnprv++8NnMrI06RFlRJh0mf9opefB1QedOZqqroxlAjaX33JXsxqTzX9ClLWqCo/FCTx9hDgCMXxHV28K6SVbDltdJj+xxjpqg3Jmc4+b6S9g6Nwx9SDFTgCtgYL9mmg5dtj+aY3L76q32j+gCi/AwETvA4FarogJcurviSS56JG8TS8Oy5NhzNcK9B28yk1IkcXJVFlPpVnZMjBZr9Lpwz+STX1tQbG68YienVM=
Content-ID: <56E2A1BBE7566D44917A8A23D9C7B097@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c93d5fa5-ac1f-49fd-a8ac-08d71a8dbab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 16:47:12.6231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_094722_173649_D85F64AA 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
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
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
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


On 7/15/19 11:43 AM, Thomas Gleixner wrote:
> On Thu, 11 Jul 2019, Hoan Tran OS wrote:
> 
>> Remove CONFIG_NODES_SPAN_OTHER_NODES as it's enabled
>> by default with NUMA.
> 
> As I told you before this does not mention that the option is now enabled
> even for x86(32bit) configurations which did not enable it before and does
> not longer depend on X86_64_ACPI_NUMA.

Agreed, let me add it into this patch description.

> 
> And there is still no rationale why this makes sense.
> 

As we know about the memmap_init_zone() function, it is used to 
initialize all pages. During initializing, early_pfn_in_nid() function 
makes sure the page is in the same node id. Otherwise, 
memmap_init_zone() only checks the page validity. It won't work with 
node memory spans across the others.

The option CONFIG_NODES_SPAN_OTHER_NODES is only used to enable 
early_pfn_in_nid() function.

It occurs during boot-time and won't affect the run-time performance.
And I saw the majority NUMA architectures enable this option by default 
with NUMA.

Thanks and Regards
Hoan


> Thanks,
> 
> 	tglx
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
