Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEDA18976D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 09:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYLuXb77GsunNjWqAAAT37KrpFEuWr2TkLEsCea3ppw=; b=OutKbJ+V/csYE1
	RtuSBDL0bU+rJdSUncM3u1YdeDhLfQXJSfPh01Cm6Ol2nR4ajftZvDisKBQac2GaHRpXsRwtS1uxW
	SKjh6nwFMnh8jPIsAuJ/gEu8r/WaToqYmtBZwgoxcL+wHLwK16Y5xeJac0YDYLoYCkYya32xrdT7L
	Qoml+MOLAgJyPVWK7jT6SosHDfljfvrNIk9wyzofLd/h+I2UfNII2jaqfVu8KkKmDWnvkTFAPW8iA
	nhknllbze6aOD8YsEiSAsE19zeoBAMzln0qqEH8WqVscWB/ncQGtEHeWxhEo7qfV88GlvxucOYUNp
	yidZj79vpljNdVcWVYVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEUSa-0000T6-Ca; Wed, 18 Mar 2020 08:53:56 +0000
Received: from esa17.fujitsucc.c3s2.iphmx.com ([216.71.158.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEUSR-0000SM-Gm
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 08:53:50 +0000
IronPort-SDR: 89HBl4AQSP6lLleL/IrPpkPZ7jU9ybHbjmEBEnr8dh+Eusy6OnfBadK9AEa9u4F8bEusv8LKAI
 adFjRQRwTPk/OWuELd0mwpEFnLJ2mW4lI0VsI9S2hPio9aiDCSgvJ3cjOK4FGlu6A8t4VrLteA
 uN6tckH4nVGZfyGX/C6iagCQFdFas/H4/KHcQ30Z83bnqM0AIFGa3tYYiJNvhsZ5Hp3rN5Ko8h
 H4V3uqypBM/A3G1k5NrDO94etjoY2LXkgERRFrzCa78nKTqEAanY1PGKTVSaZVsG+cM2D2gGQV
 +8A=
X-IronPort-AV: E=McAfee;i="6000,8403,9563"; a="11368326"
X-IronPort-AV: E=Sophos;i="5.70,566,1574089200"; d="scan'208";a="11368326"
Received: from mail-ty1jpn01lp2054.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.54])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 17:53:30 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V78wKaxjAfc/87Esw+dc6smtF0rrbz7wk6XAe09dsdy9mVwih3n/e5y5qg4prVy3YdXtq8SANvGqT8Cd/8yQ54+YiBs/6yrWvcLO+HqN2CEjU3S1WQwnF9GeKrSKvPTfWdFdDFHtw3ybDa69y6TJXK0wu+Dfp5rkoBhhK5l4m9joNlnpBPekDvXVyhM5+K9b2vrpfKEl4LXDAP6dj84tB8mQYVBcbjqCcwSPsLzWNTAM7PEdPMroC4Wbf6Z2dfh6wiwRkKBNqx3ElrH1QuZi5nlqJCJiSjuOIgtBImmRXv43gmoiohBzoRg9X/2mveAKH21O6vXljGX7QAhBUeiK6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEmmnfYR5LOEiUdokOidZUJ146EKxNRS5C4QfC/wiKY=;
 b=j6ugjpBZGP4jHOEKuBFznIU2kOgp4FH9zpi1w4xA+5u2qy9F+Acswm+VPdFVTq+i1wd8tiAhKhWUcbtKGqdaB3+0eOVk69Dur7qnIws2H7Twuwgtyfue6mOCMEb01CCG9uQ99dOwNyGuCPpRyXPQEAaMotpEQIgu6UAk8y2EZltlBiGVuElK3gtfsrH0M58ShzSOJv+hCzr2NavIttzcx9EFItcSi3IbMLSaZUiFXTgvIBhrsLvnE6whJ1JAQVRNuoQNTheDmPGKH0zo4ArVRAUDYC0vHeTYiCoOvAStcOhEqANhoRxBZeJu3xmaD5Ssh0UROMJHcQGiXPqaoPlD+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEmmnfYR5LOEiUdokOidZUJ146EKxNRS5C4QfC/wiKY=;
 b=WYaA50T1F+V9wrHDc38BWS6451Nuy5QTHwuLcr+nsiOKOBhVFaneqyoyGhDY/G5KPnFjGPM//yjTrqudVP5v2fyAgX1wV6oEK+kG5VeVGhB0/ytUIrXC4YuUtNyq4NjwPyufxEpMM0nczatD6yslnlIy1JVo/OdbcVnZpmnkSwc=
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com (20.178.97.18) by
 OSBPR01MB4790.jpnprd01.prod.outlook.com (20.179.182.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 18 Mar 2020 08:53:26 +0000
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::b4dc:ab63:1e6b:bdec]) by OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::b4dc:ab63:1e6b:bdec%7]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 08:53:26 +0000
From: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
To: 'Andrea Arcangeli' <aarcange@redhat.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Rafael Aquini <aquini@redhat.com>, 
 Mark Salter <msalter@redhat.com>
Subject: RE: [PATCH 0/3] arm64: tlb: skip tlbi broadcast v2
Thread-Topic: [PATCH 0/3] arm64: tlb: skip tlbi broadcast v2
Thread-Index: AQHV6n8IBohYmQhdfUWq0asaxWkrQahOKu3Q
Date: Wed, 18 Mar 2020 08:53:26 +0000
Message-ID: <OSBPR01MB36531AEC5799477CBA3E7C89F7F70@OSBPR01MB3653.jpnprd01.prod.outlook.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
In-Reply-To: <20200223192520.20808-1-aarcange@redhat.com>
Accept-Language: en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qi.fuli@fujitsu.com; 
x-originating-ip: [210.170.118.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08bb8a7c-e69b-4afa-6576-08d7cb19d290
x-ms-traffictypediagnostic: OSBPR01MB4790:|OSBPR01MB4790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB47900BD02FF46F156FA08F93F7F70@OSBPR01MB4790.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(199004)(7696005)(6506007)(66946007)(76116006)(66446008)(66556008)(64756008)(66476007)(316002)(110136005)(54906003)(86362001)(8676002)(8936002)(81166006)(81156014)(7416002)(2906002)(478600001)(966005)(5660300002)(52536014)(55016002)(9686003)(4326008)(33656002)(107886003)(71200400001)(186003)(26005)(85182001)(777600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB4790;
 H:OSBPR01MB3653.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g2VjKbtR3ZAT7xnPz2tVBBWwJyqC48x4WETYwM4gxCTX723NKqriXcnRMpNA6JXtVhFQVgc3i9aqdT909d8zh2+VMh/h4VUU5tUziVNx6T/yoa9isCVidHHnxfjD321pivd0Y8zPIfaHQJNzytOh7sNSVscDcf7fAASZFmvAfZQBy49SwtnQDqslwUJkMB4JAoq9lCrZVL0tkQeVdHPiK8NgtAl19z2YUfWezzThPanAXwFaPvVBqAGjFLLQDDoA1iNmDlNwQooPTcTxjmghWn8Rlt5KQeThx5fkO8phPYEfoP7ybc5B9alaowKaZ36yr1skIjfFwL1B/AD2PT5FTXHcTr2znNLhkldwe43bhFrnLhd6r9MQ92svobk2HzvNwOuVl6n02ViCVTcSoNgIFyheVS6W4igsSc9CIcpJ/4O/Li527RjfOLAwg9bgfI4uQ/TJDbO4DzjJ+3yuNBmPTAdO6tDzMu1BEcwqhMl944mXOB2AaodadgNIZkEK311kmStIHtjVli1HI3d2bdXMyPeXNt7x1ix6nWy1wptX4RcghxAoxkaui1cUKkAhU4xQ
x-ms-exchange-antispam-messagedata: fWQXoX88GlV8fkOxCifCUfjLiK2alodTxEeyZgcAeFBcWx8mxSti3mExJIIvwfd7D2pWctLnS+IO7R/tt47tj0H0VweUdtYjWledFwq124s6aag9bNkSNnsX8OGog2ln0JG8sfBucyfoiYQkHb02FA==
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08bb8a7c-e69b-4afa-6576-08d7cb19d290
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 08:53:26.2864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MWjUZgm00bLH0CJkCLTjvrZAUB3MZX2w1zHRVb2Lld6H99RDKsJzmGbMyQ29Z1WnznDv+athjnYIVAFeQSFmeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_015348_052614_7BE422E0 
X-CRM114-Status: GOOD (  31.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.158.34 listed in list.dnswl.org]
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
Cc: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>,
 Jon Masters <jcm@jonmasters.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Hocko <mhocko@kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Hello,
> 
> This is introducing a nr_active_mm that allows to optimize away the tlbi broadcast
> also for multi threaded processes, it doesn't rely anymore on mm_users <= 1.
> 
> This also optimizes away all TLB flushes (including local ones) when the process is not
> running in any cpu (including during exit_mmap with lazy tlb state).
> 
> This optimization is generally only observable when there are parallel TLB flushes
> from different processes in multiple CPUs. One possible use case is an userland malloc
> libs freeing small objects with MADV_DONTNEED and causing a frequent tiny tlb
> flushes as demonstrated by the tcmalloc testsuite.
> 
> All memory intensive apps dealing a multitude of frequently freed small objects tend
> to opt-out of glibc and they opt-in jemalloc or tcmalloc, so this should facilitate the
> SMP/NUMA scalability of long lived apps with small objects running in different
> containers if they're issuing frequent MADV_DONTNEED tlb flushes while the other
> threads of the process are not running.
> 
> I was suggested to implement the mm_cpumask the standard way in order to
> optimize multithreaded apps too and to avoid restricting the optimization to
> mm_users <= 1. So initially I had two bitmasks allocated as shown at the bottom of
> this cover letter, by setting ARCH_NR_MM_CPUMASK to 2 with the below patch
> applied... however I figured a single atomic per-mm achieves the exact same runtime
> behavior of the extra bitmap, so I just dropped the extra bitmap and I replaced it with
> nr_active_mm as an optimization.
> 
> If the switch_mm atomic ops in the switch_mm fast path would be a concern (they're
> still faster than the cpumask_set_cpu/clear_cpu, with less than 256-512 CPUs), it's
> worth mentioning it'd be possible to remove all atomic ops from the switch_mm fast
> path by restricting this optimization to single threaded processes by checking
> mm_users <= 1 and < 1 instead of nr_active_mm <= 1 and < 1 similarly to what the
> earlier version of this patchset was doing.
> 
> Thanks,
> Andrea
> 
> Andrea Arcangeli (3):
>   mm: use_mm: fix for arches checking mm_users to optimize TLB flushes
>   arm64: select CPUMASK_OFFSTACK if NUMA
>   arm64: tlb: skip tlbi broadcast
> 
>  arch/arm64/Kconfig                   |  1 +
>  arch/arm64/include/asm/efi.h         |  2 +-
>  arch/arm64/include/asm/mmu.h         |  4 +-
>  arch/arm64/include/asm/mmu_context.h | 33 ++++++++--
>  arch/arm64/include/asm/tlbflush.h    | 95
> +++++++++++++++++++++++++++-
>  arch/arm64/mm/context.c              | 54 ++++++++++++++++
>  mm/mmu_context.c                     |  2 +
>  7 files changed, 180 insertions(+), 11 deletions(-)
> 
> Early attempt with the standard mm_cpumask follows:
> 
> From: Andrea Arcangeli <aarcange@redhat.com>
> Subject: mm: allow per-arch mm_cpumasks based on ARCH_NR_MM_CPUMASK
> 
> Allow archs to allocate multiple mm_cpumasks in the mm_struct per-arch by
> definining a ARCH_NR_MM_CPUMASK > 1 (to be included before
> "linux/mm_types.h").
> 
> Those extra per-mm cpumasks can be referenced with __mm_cpumask(N, mm),
> where N == 0 points to the mm_cpumask() known by the common code and N > 0
> points to the per-arch private ones.
> ---
>  drivers/firmware/efi/efi.c |  3 ++-
>  include/linux/mm_types.h   | 17 +++++++++++++++--
>  kernel/fork.c              |  3 ++-
>  mm/init-mm.c               |  2 +-
>  4 files changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c index
> 5da0232ae33f..608c9bf181e5 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -86,7 +86,8 @@ struct mm_struct efi_mm = {
>  	.mmap_sem		= __RWSEM_INITIALIZER(efi_mm.mmap_sem),
>  	.page_table_lock	= __SPIN_LOCK_UNLOCKED(efi_mm.page_table_lock),
>  	.mmlist			= LIST_HEAD_INIT(efi_mm.mmlist),
> -	.cpu_bitmap		= { [BITS_TO_LONGS(NR_CPUS)] = 0},
> +	.cpu_bitmap		= { [BITS_TO_LONGS(NR_CPUS) *
> +				     ARCH_NR_MM_CPUMASK] = 0},
>  };
> 
>  struct workqueue_struct *efi_rts_wq;
> diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h index
> f29bba20bba1..b53d5622b3b2 100644
> --- a/include/linux/mm_types.h
> +++ b/include/linux/mm_types.h
> @@ -531,6 +531,9 @@ struct mm_struct {
>  	RH_KABI_RESERVE(7)
>  	RH_KABI_RESERVE(8)
> 
> +#ifndef ARCH_NR_MM_CPUMASK
> +#define ARCH_NR_MM_CPUMASK 1
> +#endif
>  	/*
>  	 * The mm_cpumask needs to be at the end of mm_struct, because it
>  	 * is dynamically sized based on nr_cpu_ids.
> @@ -544,15 +547,25 @@ extern struct mm_struct init_mm;  static inline void
> mm_init_cpumask(struct mm_struct *mm)  {
>  	unsigned long cpu_bitmap = (unsigned long)mm;
> +	int i;
> 
>  	cpu_bitmap += offsetof(struct mm_struct, cpu_bitmap);
> -	cpumask_clear((struct cpumask *)cpu_bitmap);
> +	for (i = 0; i < ARCH_NR_MM_CPUMASK; i++) {
> +		cpumask_clear((struct cpumask *)cpu_bitmap);
> +		cpu_bitmap += cpumask_size();
> +	}
>  }
> 
>  /* Future-safe accessor for struct mm_struct's cpu_vm_mask. */
> +static inline cpumask_t *__mm_cpumask(int index, struct mm_struct *mm)
> +{
> +	return (struct cpumask *)((unsigned long)&mm->cpu_bitmap +
> +				  cpumask_size() * index);
> +}
> +
>  static inline cpumask_t *mm_cpumask(struct mm_struct *mm)  {
> -	return (struct cpumask *)&mm->cpu_bitmap;
> +	return __mm_cpumask(0, mm);
>  }
> 
>  struct mmu_gather;
> diff --git a/kernel/fork.c b/kernel/fork.c index 1dad2f91fac3..a6cbbc1b6008 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c
> @@ -2418,7 +2418,8 @@ void __init proc_caches_init(void)
>  	 * dynamically sized based on the maximum CPU number this system
>  	 * can have, taking hotplug into account (nr_cpu_ids).
>  	 */
> -	mm_size = sizeof(struct mm_struct) + cpumask_size();
> +	mm_size = sizeof(struct mm_struct) + cpumask_size() * \
> +		ARCH_NR_MM_CPUMASK;
> 
>  	mm_cachep = kmem_cache_create_usercopy("mm_struct",
>  			mm_size, ARCH_MIN_MMSTRUCT_ALIGN,
> diff --git a/mm/init-mm.c b/mm/init-mm.c index a787a319211e..d975f8ce270e
> 100644
> --- a/mm/init-mm.c
> +++ b/mm/init-mm.c
> @@ -35,6 +35,6 @@ struct mm_struct init_mm = {
>  	.arg_lock	=  __SPIN_LOCK_UNLOCKED(init_mm.arg_lock),
>  	.mmlist		= LIST_HEAD_INIT(init_mm.mmlist),
>  	.user_ns	= &init_user_ns,
> -	.cpu_bitmap	= { [BITS_TO_LONGS(NR_CPUS)] = 0},
> +	.cpu_bitmap	= { [BITS_TO_LONGS(NR_CPUS) *
> ARCH_NR_MM_CPUMASK] = 0},
>  	INIT_MM_CONTEXT(init_mm)
>  };
> 
> 
> [bitmap version depending on the above follows]
> 
> @@ -248,6 +260,42 @@ void check_and_switch_context(struct mm_struct *mm,
> unsigned int cpu)
>  		cpu_switch_mm(mm->pgd, mm);
>  }
> 
> +enum tlb_flush_types tlb_flush_check(struct mm_struct *mm, unsigned int
> +cpu) {
> +	if (cpumask_any_but(mm_cpumask(mm), cpu) >= nr_cpu_ids) {
> +		bool is_local = cpumask_test_cpu(cpu, mm_cpumask(mm));
> +		cpumask_t *stale_cpumask = __mm_cpumask(1, mm);
> +		int next_zero = cpumask_next_zero(-1, stale_cpumask);
> +		bool local_is_clear = false;
> +		if (next_zero < nr_cpu_ids &&
> +		    (is_local && next_zero == cpu)) {
> +			next_zero = cpumask_next_zero(next_zero,
> stale_cpumask);
> +			local_is_clear = true;
> +		}
> +		if (next_zero < nr_cpu_ids) {
> +			cpumask_setall(stale_cpumask);
> +			local_is_clear = false;
> +		}
> +
> +		/*
> +		 * Enforce CPU ordering between the
> +		 * cpumask_setall() and cpumask_any_but().
> +		 */
> +		smp_mb();
> +
> +		if (likely(cpumask_any_but(mm_cpumask(mm),
> +					   cpu) >= nr_cpu_ids)) {
> +			if (is_local) {
> +				if (!local_is_clear)
> +					cpumask_clear_cpu(cpu,
> stale_cpumask);
> +				return TLB_FLUSH_LOCAL;
> +			}
> +			return TLB_FLUSH_NO;
> +		}
> +	}
> +	return TLB_FLUSH_BROADCAST;
> +}
> +
>  /* Errata workaround post TTBRx_EL1 update. */  asmlinkage void
> post_ttbr_update_workaround(void)  {

Hi Andrea,

Thank you very much for your patch.
I also tested this v2 patch with Himeno benchmark[1] on ThunderX2 with v5.5.7 kernel.
In order to confirm the effect of the patch, I used mprotect-attacker-threaded.c[2] program
to issue the tlbi broadcast instruction or noises, and made it run on a single core or multiple
cores via taskset command. The following it the result. 
[w/o patch, w/o noise program]
MFLOPS :  1614.438709 +- 2.640061
[w/o patch, w/ noise program running on multiple cores]
MFLOPS :  1152.862612 +- 0.7933615
[w/o patch, w/ noise program running on a single core]
MFLOPS :  1152.996692 +- 1.6517165
[w/ patch, w/o noise program]
MFLOPS :  1613.904908 +- 0.606810
[w/ patch, w/ noise program running on multiple cores]
MFLOPS :  1614.586227 +- 0.3268545
[w/ patch, w/ noise program running on a single core]
MFLOPS :  1614.910829 +- 0.694644

[1] http://accc.riken.jp/en/supercom/documents/himenobmt/
[2]
$ cat mprotect-attacker-threaded.c
#include <stdio.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <string.h>

void sleeper()
{
        pause();
}

int main(int argc, char *argv[]){
        int i;
        char *buf;
        long size = 4 * 1024 * 1024;
        long loop = 10;

        pthread_t pthread;
        if (pthread_create(&pthread, NULL, sleeper, NULL))
                perror("pthread_create"), exit(1);

        if(argc == 2){
                loop = atoi(argv[1]);
        }

        buf = mmap(NULL, size, PROT_WRITE, MAP_PRIVATE|MAP_ANON, -1, 0);
        if(buf == MAP_FAILED){
                perror("mmap");
                exit(1);
        }
        memset(buf, 1, size);
        for(i = 0; i < loop; i++){
                mprotect(buf, size, PROT_READ);
                mprotect(buf, size, PROT_WRITE);
        }
        munmap(buf, size);

        return 0;
}

Sincerely,
QI Fuli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
