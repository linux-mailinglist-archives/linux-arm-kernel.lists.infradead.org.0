Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08660EC0E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SINr/cbarOB8rjjX15H3ZiAFnfY3Slf/0wpvT+C+ur0=; b=szX0EWKVqOsKKg
	9qQGdd/SlCJKDUpkfyrPY9cnLKNnDb8GFvUUCSXwj+NyMS5Sven/7jrGNY23xPsgtbSdrdC19OzJm
	pgcY24ZILKmh60o19jkg/Mkhq7eEn1xtuyx/V0zzCVxFmyRHZltVr3/5ySSLaK+0fe33p5actr6hW
	3E55TvNPdHRG4nK0aCyx1uqm7f2CY3CUEdlWx5fGmMLC+JTMYwotVwzwQZsH7Et4Knbj4nHr+ubki
	gzXlrz12oBXwfO6xBiquGVYW4UOAQFgnIMV6BI6be729TpXy8P7f+u9ywv/i5PUaCOEySx5J0YGmi
	gNrAiMmVA1t5louwdFuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTfO-0006Jd-B5; Fri, 01 Nov 2019 09:56:26 +0000
Received: from esa2.fujitsucc.c3s2.iphmx.com ([68.232.152.246])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTfG-0006I0-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:56:20 +0000
IronPort-SDR: fpAfgNYmekzmA5Hs3sXzEoar/SivzpCyGjOJ2ZIpNySNoLOzxj+ZN6zi+YeZDC7aEbVlHczzZZ
 qCGGdga9utKYPFVGBdAb0TthyFS16hNPdoF3WnUgSaQ9MFdLUBqLMJz7XyInJTDP2bUgaZkcuK
 FCC8T6GIpi23fWHevaAmhP0wEOftyFA/0jq1sclCyTRasnRYc2rXSmPGVjqw0LSPugdtQGCh/7
 VqphpeyXSFF9Y016XnqSeyLYZ2P78Kf85/4A4NhiOmBMfh/pRC/w+gM1DMq6ucFUpnNGm0ggx5
 NUE=
X-IronPort-AV: E=McAfee;i="6000,8403,9427"; a="15546854"
X-IronPort-AV: E=Sophos;i="5.68,254,1569250800"; d="scan'208";a="15546854"
Received: from mail-ty1jpn01lp2052.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.52])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA384;
 01 Nov 2019 18:56:08 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmiCJ3kiSltUAJY1TXQ//MH1SWapHyS2tVxlGHeCRC9mF+fFZDM6cag0LOjGb2laGMMtXiRHvOBEto7HE9vXLiRppwPFLE6pjokEU7psBVBEOKBOFHe1GugN4junrmLyZE1bzMpj0eXYWPrmY1F6bVjhRAo/HfhrDzrYIGreYTL+OXwr6m01CoGAIF1bqVuusmvg3y3iK/R/fDtCV0vpdrdBemxGykuOLhmddPEkYlAHhkqfArpgkjRVCr/Uhx/YcLN8+cXeadhcO8opAQYLHj9W5cKMEpvC0x6cAQDvzk0opOTFbV6cphavLL/wTXuojeBDeXkd3ocZaBfcs3Tlfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FeRHjfNrL9B5OfN89QxebMEJWkuCAk2e2cr1fZNbkUY=;
 b=WD96+dTRD84CIIhfZ5vrrGdkK8ADhGPQxZfa9oDiccWJXYfNMJTJGAkW3wE60KYHgjDR7lYSEv94JGqs30rlWCmjjXTfNlj7MWfrIBSzUvnMncobd277GEWBWCUFuWylTLTNOi9u0OHyenaTKemGhTvfsWXkFJyGZ014bWmTyDdyVEMYvpeJ22L41h2M4li5VOeYlLkATHRaJk0IQz/CRItLt9SPvYip5wWNafQTkwfQRZXSNWJUGuWs7d5Z+863LfMjvIWvTrEW4Bh5C34jdlOq9Kor9/F2veLhDO6w8j0jZvqbdOKEbeUzvaXaaiwpDSo3cjRlbyxz9zOb4U1fzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FeRHjfNrL9B5OfN89QxebMEJWkuCAk2e2cr1fZNbkUY=;
 b=BH2vruoWod1vusfqFwu8DctajE/f6CNOZELTOMLVrIfPQ4z13I7D8N2p5H3tE1aj7ebCNZc3zT5QIE8muzw07o6IxHA+Dswq5O35hJfvKIlrQ/RMYzqmD5BARTQHCipG73tjyPoggRXhv1kEK6kmsGvBM8FmSQwsch8meHrRlPg=
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com (20.178.97.18) by
 OSBPR01MB5175.jpnprd01.prod.outlook.com (20.179.181.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Fri, 1 Nov 2019 09:56:05 +0000
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::d02e:9620:ee4:de50]) by OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::d02e:9620:ee4:de50%4]) with mapi id 15.20.2408.019; Fri, 1 Nov 2019
 09:56:05 +0000
From: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
To: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Itaru Kitayama
 <itaru.kitayama@gmail.com>, "peterz@infradead.org" <peterz@infradead.org>,
 Jon Masters <jcm@jonmasters.org>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Topic: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Thread-Index: AQHVJRmVihUXsBTsv0iIDHwIrvWdbKd26vQA
Date: Fri, 1 Nov 2019 09:56:05 +0000
Message-ID: <93009dbd-b31c-7364-86d2-21f0fac36676@jp.fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
In-Reply-To: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qi.fuli@fujitsu.com; 
x-originating-ip: [211.13.147.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff01006b-9784-41e9-5c79-08d75eb1b60d
x-ms-traffictypediagnostic: OSBPR01MB5175:|OSBPR01MB5175:
x-ms-exchange-transport-forked: True
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <OSBPR01MB5175F31E5990FBAD1304DAA8F7620@OSBPR01MB5175.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(51914003)(189003)(199004)(14454004)(54906003)(76116006)(91956017)(110136005)(66946007)(7736002)(81166006)(81156014)(305945005)(476003)(66556008)(64756008)(66476007)(66446008)(3846002)(6116002)(8676002)(11346002)(8936002)(186003)(26005)(76176011)(99286004)(86362001)(316002)(6506007)(446003)(31696002)(53546011)(102836004)(107886003)(85182001)(478600001)(31686004)(2906002)(6246003)(6436002)(66066001)(4326008)(486006)(25786009)(14444005)(2501003)(966005)(71190400001)(71200400001)(6306002)(5660300002)(256004)(229853002)(6486002)(6512007)(777600001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB5175;
 H:OSBPR01MB3653.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IQVWh14TOt1/MS85b+poalc03TPsnxq6qdLYnUfv622w21U0cqY6XWA86IDMtMH94lORxCyqaHQw2kmRN85/x2YHNVHWe69WEqGZeYymiYH4Z/9VxGcDP1qQE5TKFmVAg8euL9ANMLCRhahWDm3yJpfz/6s0nQohAHq3cw8I8512YFAdvKCK6tUtcAO0B2zTqW7dNBO6XonRkSQredKk4/UBoX6Z4tcWm1OhjMFuZYnEVv+t0bAPN/kk8rVQrSb//uiIZVuoCXIUnyLCqkVI0RKFyqpgXMVIk93mG4gjoQgEhbK7tUd9r3r0+tfmbxQwqQgNGALfeh5qUrYol5Al/H56w0eR6fWNh6XD56wNgCMd7jPJMU1QUIaxsVe7voxBor9xstDPyl7b6Bpfe1a+FKsMmlLDdngytmwGohy7QmRwINUujztc9YR0u790MQVI1IjBCPhcYS4byoRlVTT0RZgzpPHV6JqRST8pQrFWNJw=
Content-ID: <BD601C4E61A0204F9BCE39661D0CD546@jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff01006b-9784-41e9-5c79-08d75eb1b60d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 09:56:05.1196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hAHXgp2QZ4EN609PZ0vfzmVZ9TFOP0NlfUsKT5r7TblJDvziXC7zlYS/4KQvhhg64dt06ER8+Q+dzVae6ZH4EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB5175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_025618_732236_1D7A66E7 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.152.246 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "tokamoto@jp.fujitsu.com" <tokamoto@jp.fujitsu.com>,
 "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maeda.naoaki@fujitsu.com" <maeda.naoaki@fujitsu.com>,
 "misono.tomohiro@fujitsu.com" <misono.tomohiro@fujitsu.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

First of all thanks for the comments for the patch.

I'm still struggling with this problem to find out the solution.
As a result of an investigation on this problem, after all, I think it 
is necessary to improve TLB flush mechanism of the kernel to fix this 
problem completely.

So, I'd like to restart a discussion. At first, I summarize this problem 
to recall what was the problem and then I want to discuss how to fix it.

Summary of the problem:
A few months ago I proposed patches to solve a performance problem due 
to TLB flush.[1]

A problem is that TLB flush on a core affects all other cores even if 
all other cores do not need actual flush, and it causes performance 
degradation.

In this thread, I explained that:
* I found a performance problem which is caused by TLBI-is instruction.
* The problem occurs like this:
  1) On a core, OS tries to flush TLB using TLBI-is instruction
  2) TLBI-is instruction causes a broadcast to all other cores, and
  each core received hard-wired signal
  3) Each core check if there are TLB entries which have the specified 
ASID/VA
  4) This check causes performance degradation
* We ran FWQ[2] and detected OS jitter due to this problem, this noise
  is serious for HPC usage.

The noise means here a difference between maximum time and minimum time 
which the same work takes.

How to fix:
I think the cause is TLB flush by TLBI-is because the instruction 
affects cores that are not related to its flush.

So the previous patch I posted is
* Use mm_cpumask in mm_struct to find appropriate CPUs for TLB flush
* Exec TLBI instead of TLBI-is only to CPUs specified by mm_cpumask
  (This is the same behavior as arm32 and x86)

And after the discussion about this patch, I got the following comments.
1) This patch switches the behavior (original flush by TLBI-is and new 
flush by TLBI) by boot parameter, this implementation is not acceptable 
due to bad maintainability.
2) Even if this patch fixes this problem, it may cause another 
performance problem.

I'd like to start over the implementation by considering these points.
For the second comment above, I will run a benchmark test to analyze the 
impact on performance.
Please let me know if there are other points I should take into 
consideration.

[1] https://lkml.org/lkml/2019/6/17/703
[2] https://asc.llnl.gov/sequoia/benchmarks/FTQ_summary_v1.1.pdf

Thanks,
QI Fuli


On 6/17/19 11:32 PM, Takao Indoh wrote:
> From: Takao Indoh <indou.takao@fujitsu.com>
> 
> I found a performance issue related on the implementation of Linux's TLB
> flush for arm64.
> 
> When I run a single-threaded test program on moderate environment, it
> usually takes 39ms to finish its work. However, when I put a small
> apprication, which just calls mprotest() continuously, on one of sibling
> cores and run it simultaneously, the test program slows down significantly.
> It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
> ThunderX1 and Fujitsu A64FX.
> 
> I suppose the root cause of this issue is the implementation of Linux's TLB
> flush for arm64, especially use of TLBI-is instruction which is a broadcast
> to all processor core on the system. In case of the above situation,
> TLBI-is is called by mprotect().
> 
> This is not a problem for small environment, but this causes a significant
> performance noise for large-scale HPC environment, which has more than
> thousand nodes with low latency interconnect.
> 
> To fix this problem, this patch adds new boot parameter
> 'disable_tlbflush_is'.  In the case of flush_tlb_mm() *without* this
> parameter, TLB entry is invalidated by __tlbi(aside1is, asid). By this
> instruction, all CPUs within the same inner shareable domain check if there
> are TLB entries which have this ASID, this causes performance noise. OTOH,
> when this new parameter is specified, TLB entry is invalidated by
> __tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
> Therefore TLB flush is done on minimal CPUs and performance problem does
> not occur. Actually I confirm the performance problem is fixed by this
> patch.
> 
> Takao Indoh (2):
>    arm64: mm: Restore mm_cpumask (revert commit 38d96287504a ("arm64: mm:
>      kill mm_cpumask usage"))
>    arm64: tlb: Add boot parameter to disable TLB flush within the same
>      inner shareable domain
> 
>   .../admin-guide/kernel-parameters.txt         |   4 +
>   arch/arm64/include/asm/mmu_context.h          |   7 +-
>   arch/arm64/include/asm/tlbflush.h             |  61 ++-----
>   arch/arm64/kernel/Makefile                    |   2 +-
>   arch/arm64/kernel/smp.c                       |   6 +
>   arch/arm64/kernel/tlbflush.c                  | 155 ++++++++++++++++++
>   arch/arm64/mm/context.c                       |   2 +
>   7 files changed, 186 insertions(+), 51 deletions(-)
>   create mode 100644 arch/arm64/kernel/tlbflush.c
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
