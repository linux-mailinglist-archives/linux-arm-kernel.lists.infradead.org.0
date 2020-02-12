Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D0415AACC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvqjAP7SvvWEDW7SUJB09/QkCbIadWOsxTInR/Dj2M8=; b=bW6Xf4lnnDdgnm
	yZZTcgmKze3ZlXizNBw/nAk3BI7q6RJEzBwQ5TnnRxISvMbLVwZZeZUout2jn6QNpRYA6cO+yolZ0
	Aqa0xdXkABb3dla+PxTi/Z6jIZqXPizOTN9nPWtpOc+u8YZ+eR6wT0/p++kRBwcq3YG9XRl0+r+ND
	HmJXtGSsRA11A9mZ31lPE4GXgL/ekh8FOb77EMxFHqCG+NIFn6mImavYD+RGBZ7dKxbz8S6vzxObY
	8X0/cHWuxT069nvqG90qwTSF/QwXjO1phmX/j/bXea00asThip7Iyu9SQxC9XBuF4yAaBppbS/G0D
	8ACoV6Hm+qNcw8qgNK2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1smY-0002gm-Eq; Wed, 12 Feb 2020 14:14:26 +0000
Received: from esa9.fujitsucc.c3s2.iphmx.com ([68.232.159.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1smN-0002fc-0o
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:14:17 +0000
IronPort-SDR: Xm4IdH/1Kr4lz9dNIVgBUKEKNSScsrR6XfNi2CWMnd58TZmBRqZv2ceG6HCryn7vqWSoUIV8oa
 DQDE84BBTNW+zpZ6XxSRgcmlT1OP9tlZUdhfipF0aitzE73p0+91K4pAc5JtJzTrMTifM4OiG6
 8OB+kC0FwJVHsw/iSVEYYA1sXr+T9lBx8F8Mb3EhxQEtwTHGj+PvM98koiXBF88orwkjGfJKWG
 KhS8n07UHxmRqZYyx/seutHO7qddmXYqnOkx+sejpo/7ZApV/N1YtAPuOUadG7/kfWsac3QN2s
 gUs=
X-IronPort-AV: E=McAfee;i="6000,8403,9528"; a="10243746"
X-IronPort-AV: E=Sophos;i="5.70,433,1574089200"; d="scan'208";a="10243746"
Received: from mail-ty1jpn01lp2059.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.59])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 23:13:59 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KglEgab65tzVww5cEGu5ReaTnlterdQIV4d0bh0Pck6FJEQ3UNfUSbCtteRTWLj3yKSSQFvCZ7sIUdaHj5c6kiwOEQqQHbIn3LfHnhiMpnMeUVo8Qo/k/PnwuZVo8mpDynG2IhsySnOe1KEEPGnsyUJbmzgeu0/hz6ps7bB7WnSIzEUlPDtjOYII1FELiXx2mcWRRvW5kkwE/GgVr0R0VNc6gzQxJ+eOJK653uooG+IY+rVmqT3qgnmLOjk4mX493Kboyu4gnmXAlr5KO5C1eDkfI9KBi8Q7I4moOey3pv3q5k4Kcf1x9dW5dWRO71rZ2tK2kGkBYdd1/2jaRMkdXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v964w1jFFEYueniiym9khISLoJXvRGuxoouWnA4Ox6o=;
 b=kMzF7RyZeeoSLJPDL62hy/TIvDT+qWS7PV45RG+44XSle0ob8edZTHgGVdEujnRyxxz2KemWZjIrEpGSjzERjcVQFDV8nulyU6Ibgweg5FW30FPy6JJxwRJM6lbxdHIED/nRA/l9Pl2dCiM2joCRq1CnM7E91i/r1V5Awh/DnOE5qEfpbk3gMJQ/c2LuVP3m+4lq6GYKa84VSkzC8Sfo3wuZSxNVMhmdVjkCjwhOrtxJhaWNw20WXQiXMo7DGxmQd1BdXxPJJdU2iikR0xF2p0EsmLakqb4mI9FJ9tfLt6wTCIxOvVt+dTPiQwim9highf3LUXo46MJvYedKvIhUvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v964w1jFFEYueniiym9khISLoJXvRGuxoouWnA4Ox6o=;
 b=SaHnpREAjZ2GcxH5qEm6VVXO4IheGyzpEFQuvD4ogXMaLEsndmuVxrl41/EqcNqIKKc3MzVSjMZZirtVDcaE9bnx479c2WANrj5qenZr8bO6qkgIk70E3DvUEbxRn4MakVcrnZWKE3qxNOuQ0wWRKRwRFxz1PMug5kmcOQxDnQs=
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com (20.178.97.18) by
 OSBPR01MB3751.jpnprd01.prod.outlook.com (20.178.97.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Wed, 12 Feb 2020 14:13:56 +0000
Received: from OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::a063:b84c:9d97:44ad]) by OSBPR01MB3653.jpnprd01.prod.outlook.com
 ([fe80::a063:b84c:9d97:44ad%5]) with mapi id 15.20.2707.030; Wed, 12 Feb 2020
 14:13:56 +0000
From: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
To: Andrea Arcangeli <aarcange@redhat.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jon Masters <jcm@jonmasters.org>,
 Rafael Aquini <aquini@redhat.com>, Mark Salter <msalter@redhat.com>
Subject: Re: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Thread-Topic: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Thread-Index: AQHV4a6k+fHKP75ahkW2NKYrRmqb1A==
Date: Wed, 12 Feb 2020 14:13:56 +0000
Message-ID: <6e59905d-3e5b-bbd5-d192-9f18a0a152f5@jp.fujitsu.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-3-aarcange@redhat.com>
In-Reply-To: <20200203201745.29986-3-aarcange@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qi.fuli@fujitsu.com; 
x-originating-ip: [180.43.167.186]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4321b3b-2e0f-49d9-cf5f-08d7afc5cc61
x-ms-traffictypediagnostic: OSBPR01MB3751:
x-microsoft-antispam-prvs: <OSBPR01MB3751F2EC56D1BAC2D7690435F71B0@OSBPR01MB3751.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(396003)(346002)(366004)(189003)(199004)(85182001)(86362001)(64756008)(31686004)(6512007)(5660300002)(316002)(4326008)(31696002)(53546011)(110136005)(66446008)(2906002)(66476007)(66556008)(54906003)(6486002)(81156014)(8936002)(81166006)(8676002)(71200400001)(66946007)(966005)(6506007)(186003)(91956017)(76116006)(478600001)(26005)(777600001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB3751;
 H:OSBPR01MB3653.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nU42ehxRogtJx8e60NW1P5m4axJM0IufZ5nKVFeMdGTvRmqgSb/hGSMixf9I3FIj2CILTXPoa8cFs8nFSS6GOGwX0nVkKERSZw5MKGRyC9qRYuRtgMe7TyeOqGfCVRvWnBxmUBTyiFXzn4wPJPbistFDRHaqqSCo8Rk8ZSwQUcHG4476mpMz7T0xzvrWumB3uvZpIAuOwbQyLkMevqr4eQo627z18XP8uAikqPrtAPowVKBMonxkMyPYHYMqzgGK+FDxdt0qtGgKg2+iDDrqGxKFKEAcGAsf7aXaAX6/ldPyk32K1fTfisr9aN8OTHC/jr6R25LzC6x8HcEanEaElkF9w50LsP5Td1FQi0ivML7UweRty9ycT56HA14DWq6EARWJlEkfmAw2m1bd1t0RlYqfZbST4YSffHdivGl0bD61UWzEiMhwGpcJYd7ev8XYWnhiO7kJuQhdWS/OitNGGu1vKEG1s9bwEt6fv+SGPKMoLyyzJglQRNY72njCIMea/H3rOfsUD+pNg6OLjt3wpmvryZtyxr3ue63v02jPi5xH77A+hnX5qurTtjrf9asDJInruDh+WCapu6BQhcqz3FM+Slg/ho23Y1gnVkXwTeI=
x-ms-exchange-antispam-messagedata: 0S9Kz6+so0jt6ngQSnelppqh0C0xI1as8xhfl83MDB1bFmumUe/VPi6cWv6wOskfvNR5A2nlikKjE0dS/8TlSqJ2XpvCPVo5skE+9+XOtHI8ru8QpLBqCmruey9/SkpEHbblORjM/+/YXAa4f5BAmw==
x-ms-exchange-transport-forked: True
Content-ID: <7BADA5212C66FB48BF44390887171326@jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4321b3b-2e0f-49d9-cf5f-08d7afc5cc61
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 14:13:56.7405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7mzeR789taIt5wgZr4jEZX0Ff6bvOWPVy6qCqwApAPqZUJF9DgvZ3s8nqmIX3E1i2UBTlRbc2Imoe/iFMD7vUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_061415_478434_AAD5EBE0 
X-CRM114-Status: GOOD (  29.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.159.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/4/20 5:17 AM, Andrea Arcangeli wrote:
> With multiple NUMA nodes and multiple sockets, the tlbi broadcast
> shall be delivered through the interconnects in turn increasing the
> interconnect traffic and the latency of the tlbi broadcast instruction.
> 
> Even within a single NUMA node the latency of the tlbi broadcast
> instruction increases almost linearly with the number of CPUs trying to
> send tlbi broadcasts at the same time.
> 
> When the process is single threaded however we can achieve full SMP
> scalability by skipping the tlbi broadcasting. Other arches already
> deploy this optimization.
> 
> After the local TLB flush this however means the ASID context goes out
> of sync in all CPUs except the local one. This can be tracked in the
> mm_cpumask(mm): if the bit is set it means the asid context is stale
> for that CPU. This results in an extra local ASID TLB flush only if a
> single threaded process is migrated to a different CPU and only after a
> TLB flush. No extra local TLB flush is needed for the common case of
> single threaded processes context scheduling within the same CPU and for
> multithreaded processes.
> 
> Skipping the tlbi instruction broadcasting is already implemented in
> local_flush_tlb_all(), this patch only extends it to flush_tlb_mm(),
> flush_tlb_range() and flush_tlb_page() too.
> 
> Here's the result of 32 CPUs (ARMv8 Ampere) running mprotect at the same
> time from 32 single threaded processes before the patch:
> 
>   Performance counter stats for './loop' (3 runs):
> 
>                   0      dummy
> 
>            2.121353 +- 0.000387 seconds time elapsed  ( +-  0.02% )
> 
> and with the patch applied:
> 
>   Performance counter stats for './loop' (3 runs):
> 
>                   0      dummy
> 
>           0.1197750 +- 0.0000827 seconds time elapsed  ( +-  0.07% )

Hi,

I have tested this patch on thunderX2 with Himeno benchmark[1] with 
LARGE calculation size. Here are the results.

   w/o patch:   MFLOPS : 1149.480174
   w/  patch:   MFLOPS : 1110.653003

In order to validate the effectivness of the patch, I ran a 
single-threded program, which calls mprotect() in a loop to issue the 
tlbi broadcast instruction on a CPU core. At the same time, I ran Himeno 
benchmark on another CPU core. The results are:

   w/o patch:   MFLOPS :  860.238792
   w/  patch:   MFLOPS : 1110.449666

Though Himeno benchmark is a microbenchmark, I hope it helps.

[1] http://accc.riken.jp/en/supercom/documents/himenobmt/

Thanks,
QI Fuli

> 
> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> ---
>   arch/arm64/include/asm/efi.h         |  2 +-
>   arch/arm64/include/asm/mmu.h         |  3 +-
>   arch/arm64/include/asm/mmu_context.h | 10 +--
>   arch/arm64/include/asm/tlbflush.h    | 91 +++++++++++++++++++++++++++-
>   arch/arm64/mm/context.c              | 13 +++-
>   5 files changed, 109 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
> index 44531a69d32b..5d9a1433d918 100644
> --- a/arch/arm64/include/asm/efi.h
> +++ b/arch/arm64/include/asm/efi.h
> @@ -131,7 +131,7 @@ static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
>   
>   static inline void efi_set_pgd(struct mm_struct *mm)
>   {
> -	__switch_mm(mm);
> +	__switch_mm(mm, smp_processor_id());
>   
>   	if (system_uses_ttbr0_pan()) {
>   		if (mm != current->active_mm) {
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index e4d862420bb4..1f84289d3e44 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -27,7 +27,8 @@ typedef struct {
>    * ASID change and therefore doesn't need to reload the counter using
>    * atomic64_read.
>    */
> -#define ASID(mm)	((mm)->context.id.counter & 0xffff)
> +#define __ASID(asid)	((asid) & 0xffff)
> +#define ASID(mm)	__ASID((mm)->context.id.counter)
>   
>   extern bool arm64_use_ng_mappings;
>   
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index 3827ff4040a3..5ec264297968 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -210,10 +210,8 @@ enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
>   	update_saved_ttbr0(tsk, &init_mm);
>   }
>   
> -static inline void __switch_mm(struct mm_struct *next)
> +static inline void __switch_mm(struct mm_struct *next, unsigned int cpu)
>   {
> -	unsigned int cpu = smp_processor_id();
> -
>   	/*
>   	 * init_mm.pgd does not contain any user mappings and it is always
>   	 * active for kernel addresses in TTBR1. Just set the reserved TTBR0.
> @@ -230,8 +228,12 @@ static inline void
>   switch_mm(struct mm_struct *prev, struct mm_struct *next,
>   	  struct task_struct *tsk)
>   {
> +	unsigned int cpu = smp_processor_id();
> +
>   	if (prev != next)
> -		__switch_mm(next);
> +		__switch_mm(next, cpu);
> +	else if (cpumask_test_and_clear_cpu(cpu, mm_cpumask(next)))
> +		local_flush_tlb_asid(atomic64_read(&next->context.id));
>   
>   	/*
>   	 * Update the saved TTBR0_EL1 of the scheduled-in task as the previous
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index bc3949064725..283f97af3fc5 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -136,6 +136,15 @@ static inline void local_flush_tlb_all(void)
>   	isb();
>   }
>   
> +static inline void local_flush_tlb_asid(unsigned long asid)
> +{
> +	asid = __TLBI_VADDR(0, __ASID(asid));
> +	dsb(nshst);
> +	__tlbi(aside1, asid);
> +	__tlbi_user(aside1, asid);
> +	dsb(nsh);
> +}
> +
>   static inline void flush_tlb_all(void)
>   {
>   	dsb(ishst);
> @@ -148,6 +157,27 @@ static inline void flush_tlb_mm(struct mm_struct *mm)
>   {
>   	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
>   
> +	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
> +	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
> +		int cpu = get_cpu();
> +
> +		cpumask_setall(mm_cpumask(mm));
> +		cpumask_clear_cpu(cpu, mm_cpumask(mm));
> +
> +		smp_mb();
> +
> +		if (atomic_read(&mm->mm_users) <= 1) {
> +			dsb(nshst);
> +			__tlbi(aside1, asid);
> +			__tlbi_user(aside1, asid);
> +			dsb(nsh);
> +
> +			put_cpu();
> +			return;
> +		}
> +		put_cpu();
> +	}
> +
>   	dsb(ishst);
>   	__tlbi(aside1is, asid);
>   	__tlbi_user(aside1is, asid);
> @@ -167,7 +197,33 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
>   static inline void flush_tlb_page(struct vm_area_struct *vma,
>   				  unsigned long uaddr)
>   {
> -	flush_tlb_page_nosync(vma, uaddr);
> +	struct mm_struct *mm = vma->vm_mm;
> +	unsigned long addr = __TLBI_VADDR(uaddr, ASID(mm));
> +
> +	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
> +	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
> +		int cpu = get_cpu();
> +
> +		cpumask_setall(mm_cpumask(mm));
> +		cpumask_clear_cpu(cpu, mm_cpumask(mm));
> +
> +		smp_mb();
> +
> +		if (atomic_read(&mm->mm_users) <= 1) {
> +			dsb(nshst);
> +			__tlbi(vale1, addr);
> +			__tlbi_user(vale1, addr);
> +			dsb(nsh);
> +
> +			put_cpu();
> +			return;
> +		}
> +		put_cpu();
> +	}
> +
> +	dsb(ishst);
> +	__tlbi(vale1is, addr);
> +	__tlbi_user(vale1is, addr);
>   	dsb(ish);
>   }
>   
> @@ -181,14 +237,15 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>   				     unsigned long start, unsigned long end,
>   				     unsigned long stride, bool last_level)
>   {
> -	unsigned long asid = ASID(vma->vm_mm);
> +	struct mm_struct *mm = vma->vm_mm;
> +	unsigned long asid = ASID(mm);
>   	unsigned long addr;
>   
>   	start = round_down(start, stride);
>   	end = round_up(end, stride);
>   
>   	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
> -		flush_tlb_mm(vma->vm_mm);
> +		flush_tlb_mm(mm);
>   		return;
>   	}
>   
> @@ -198,6 +255,34 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>   	start = __TLBI_VADDR(start, asid);
>   	end = __TLBI_VADDR(end, asid);
>   
> +	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
> +	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
> +		int cpu = get_cpu();
> +
> +		cpumask_setall(mm_cpumask(mm));
> +		cpumask_clear_cpu(cpu, mm_cpumask(mm));
> +
> +		smp_mb();
> +
> +		if (atomic_read(&mm->mm_users) <= 1) {
> +			dsb(nshst);
> +			for (addr = start; addr < end; addr += stride) {
> +				if (last_level) {
> +					__tlbi(vale1, addr);
> +					__tlbi_user(vale1, addr);
> +				} else {
> +					__tlbi(vae1, addr);
> +					__tlbi_user(vae1, addr);
> +				}
> +			}
> +			dsb(nsh);
> +
> +			put_cpu();
> +			return;
> +		}
> +		put_cpu();
> +	}
> +
>   	dsb(ishst);
>   	for (addr = start; addr < end; addr += stride) {
>   		if (last_level) {
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..b44459d64dff 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -198,6 +198,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>   {
>   	unsigned long flags;
>   	u64 asid, old_active_asid;
> +	int need_flush = 0;
>   
>   	if (system_supports_cnp())
>   		cpu_set_reserved_ttbr0();
> @@ -233,7 +234,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>   		atomic64_set(&mm->context.id, asid);
>   	}
>   
> -	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending))
> +	need_flush = cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending);
> +	if (need_flush)
>   		local_flush_tlb_all();
>   
>   	atomic64_set(&per_cpu(active_asids, cpu), asid);
> @@ -241,6 +243,15 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>   
>   switch_mm_fastpath:
>   
> +	/*
> +	 * Enforce CPU ordering between the mmget() in use_mm() and
> +	 * the below cpumask_test_and_clear_cpu().
> +	 */
> +	smp_mb();
> +	if (cpumask_test_and_clear_cpu(cpu, mm_cpumask(mm)) &&
> +	    likely(!need_flush))
> +		local_flush_tlb_asid(asid);
> +
>   	arm64_apply_bp_hardening();
>   
>   	/*
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
