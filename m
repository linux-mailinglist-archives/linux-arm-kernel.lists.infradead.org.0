Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE31764109
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 08:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZolL78lEZ6Ekxgv1KEPUaSmfUBVxyVuPF205NNtg4nI=; b=Rd/gc5y7o4T+rO
	ohpTeqAUNhuUTBRURPDzXSFI9Veb0kA+7nEiZNAYrH1IeZGJs3HiK2Uv5nE58KHpqUKZAgMZ7ax+D
	P727qQ+tmv1Dh1+eTsJ0VCRyxGjJzaFRiQ/NGIb6dKE6mqxoh+Tu4DjQTvu2Ag3dIPlgiAh8LwDCu
	+598KaSp5mWf1IviP8m8grsu7Cqq5oZPTf9AGNlwvqhkcSI+N8qAhXfWqbg495LOVrGw1capCu09L
	QFGYhUOmxIPEyHHxBFPxe5KWyFWlRKomEFcx9yAVkOAXZwaC1W73MGwt+SkJxyO58dN9rKy0Tn8t/
	LKmcZUSQqQXASRLsw7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl5sI-00086A-3f; Wed, 10 Jul 2019 06:14:42 +0000
Received: from mail-eopbgr770124.outbound.protection.outlook.com
 ([40.107.77.124] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl5s4-0007uq-Lt
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 06:14:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CB59O9DSuXg8zohOMHP+9hfqBpWgnXWURBlZvVfxfSSENk6u5KFXMtJaOm7EKMDC6bY5ivoQ3LcJMUK1+lQ541pNns5oAdTp2ACweIPEUpVGVu52Q9CvGbPFCo822uU7VLJnYsRZ/T4rOFKomwAmbyJjnvOGuvff6MxmdSsaDQtsU0Be8jYkdqTK9uJe+VRjOYV3TRiA70Wgd0VWKYOnVtQHlTqVFLQkR5iVWnb4Nw9zpDy4OU+2NIjF37ZS13jP1aoRLhkJJA4lNoCWDHe7CXWgFEUqbGJWtHCdkb5AaDi0ZI6AmnjqIFQWtBB71zrqeXVuLDuGNDxOWOioehVy/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9g1lBb0bDtADPgbIBk0VMonLJceDG+gkmXYT0LxGevY=;
 b=gaQzI5CR1wJGPrvh3fWKtgNA1lUnD+gH4q3jUIGJcKVz/GDY5dlkAujstiAsdftGFhu6mQ+RDshZOTXSjXo4uTVXIoUtGWSsHPLfa/tLYDGVY/mzcBiQbsN+3SrA857DI/D2UPIjAj3mmiVMKHoPE0HsyEvtNvdGmdg1dLdfY92XZb5NgLxWWNSWlLifcmOhYmZzx6cedyRTV6bkZopahExrdOYHj9oRSIR8r2hMupnGigHBUZMbsRtXb7MVLNFCCtJcrgzAjDwhHr6LTvqF4+sXD4gsw5CZ4Jb8oqVqGjrScNP6WQ8YkaqeeBCMR26TvaE2HgCTjjmEU2oQjWujfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=os.amperecomputing.com;dmarc=pass action=none
 header.from=os.amperecomputing.com;dkim=pass
 header.d=os.amperecomputing.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9g1lBb0bDtADPgbIBk0VMonLJceDG+gkmXYT0LxGevY=;
 b=gZgPJvbEWGgJt54AhIa/SjeQf/Drki9xhBLAU+FZmFlxmqVmr1gFHEoySgFEyHS6kp+0POFrSwNhj0AuzyQKu/BmkeQ5I+vXrsOmjfz+2WNVVoPThu3E5zOU00hEcIgxIQeXryaVHGskcGl+9nPsLNoOOfkUC/Ay22jZHQaEeHw=
Received: from BYAPR01MB4085.prod.exchangelabs.com (52.135.237.22) by
 BYAPR01MB3927.prod.exchangelabs.com (52.135.195.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Wed, 10 Jul 2019 06:14:24 +0000
Received: from BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80]) by BYAPR01MB4085.prod.exchangelabs.com
 ([fe80::9dbb:1b4c:bace:ef80%7]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 06:14:23 +0000
From: Hoan Tran OS <hoan@os.amperecomputing.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Topic: [PATCH 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
Thread-Index: AQHVK6WX71HRsQts10W3HaW79T6UP6as+COAgBWploCAAM/wgIAABGyA
Date: Wed, 10 Jul 2019 06:14:23 +0000
Message-ID: <50032a84-9453-8ab3-8d42-5bd8c1504640@os.amperecomputing.com>
References: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
 <1561501810-25163-4-git-send-email-Hoan@os.amperecomputing.com>
 <alpine.DEB.2.21.1906260032250.32342@nanos.tec.linutronix.de>
 <1c5bc3a8-0c6f-dce3-95a2-8aec765408a2@os.amperecomputing.com>
 <alpine.DEB.2.21.1907100755010.1758@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907100755010.1758@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CY4PR06CA0028.namprd06.prod.outlook.com
 (2603:10b6:903:77::14) To BYAPR01MB4085.prod.exchangelabs.com
 (2603:10b6:a03:56::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [27.68.67.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d28e77e-328a-4b52-10e8-08d704fdda51
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR01MB3927; 
x-ms-traffictypediagnostic: BYAPR01MB3927:
x-microsoft-antispam-prvs: <BYAPR01MB39270A08E415E78ED4090157F1F00@BYAPR01MB3927.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(136003)(396003)(366004)(39840400004)(199004)(189003)(54534003)(305945005)(476003)(486006)(446003)(11346002)(2616005)(6512007)(6486002)(71200400001)(6246003)(107886003)(71190400001)(53936002)(6436002)(229853002)(31686004)(81166006)(25786009)(81156014)(8676002)(478600001)(8936002)(7736002)(256004)(6916009)(4326008)(68736007)(14454004)(3846002)(31696002)(99286004)(66476007)(76176011)(64756008)(66556008)(66946007)(52116002)(66446008)(26005)(186003)(316002)(102836004)(7416002)(53546011)(6116002)(386003)(6506007)(86362001)(54906003)(5660300002)(66066001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB3927;
 H:BYAPR01MB4085.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ukd5q2O0kG1P7Fa8HN5gD4Wne0noqQrCX22aDCdhndEtGDAnPvruESK/Fva9oBjMrk1XackbtuG0mTunHgv8CyIa/UZHkgTXqwSMmTFVnZdg2ZFr7cbFnCGD7W9fTnUdbyiVBehrWWaXBn2LEmO8GuSkOMSzB7yIlMEc3y80CYsStJoCs7f0b8tsB+sCC2ArGeDbYgcd8yGLNeDsWkkzY01U2mTfklP4v7i67kjMZKOWucYepAzDUGQJE9oRSS9y+wSyZB94qY+/1IBfLf4N2VzjdVdrX0Bb4cAVAqeqoEj+TPFYAH+te/ZUL2eBW5NBiH4lEzVquDIr1kWgdIpOYG8NQIrjGmfc7yqEMXiXFHQSkfx1cJWUFW/eOnfxnYvMMWnhJH7JfBw7JTTRsqvV+0kDGcAdPHSqmcd3lR4Hjk4=
Content-ID: <8083A5B2C8C78E4686C4EDE0FC38BDB0@prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d28e77e-328a-4b52-10e8-08d704fdda51
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 06:14:23.6394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hoan@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB3927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_231428_829262_53B2FD56 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.124 listed in list.dnswl.org]
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


On 7/10/19 12:58 PM, Thomas Gleixner wrote:
> Hoan,
> 
> On Wed, 10 Jul 2019, Hoan Tran OS wrote:
>> On 6/25/19 3:45 PM, Thomas Gleixner wrote:
>>> On Tue, 25 Jun 2019, Hoan Tran OS wrote:
>>>> @@ -1567,15 +1567,6 @@ config X86_64_ACPI_NUMA
>>>>    	---help---
>>>>    	  Enable ACPI SRAT based node topology detection.
>>>>    
>>>> -# Some NUMA nodes have memory ranges that span
>>>> -# other nodes.  Even though a pfn is valid and
>>>> -# between a node's start and end pfns, it may not
>>>> -# reside on that node.  See memmap_init_zone()
>>>> -# for details.
>>>> -config NODES_SPAN_OTHER_NODES
>>>> -	def_bool y
>>>> -	depends on X86_64_ACPI_NUMA
>>>
>>> the changelog does not mention that this lifts the dependency on
>>> X86_64_ACPI_NUMA and therefore enables that functionality for anything
>>> which has NUMA enabled including 32bit.
>>>
>>
>> I think this config is used for a NUMA layout which NUMA nodes addresses
>> are spanned to other nodes. I think 32bit NUMA also have the same issue
>> with that layout. Please correct me if I'm wrong.
> 
> I'm not saying you're wrong, but it's your duty to provide the analysis why
> this is correct for everything which has NUMA enabled.
> 
>>> The core mm change gives no helpful information either. You just copied the
>>> above comment text from some random Kconfig.
>>
>> Yes, as it's a correct comment and is used at multiple places.
> 
> Well it maybe correct in terms of explaining what this is about, it still
> does not explain why this is needed by default on everything which has NUMA
> enabled.

Let me send another patch with the detail explanation.

Thanks
Hoan

> 
> Thanks,
> 
> 	tglx
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
