Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7168119ACE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4KFEEtQpBLYPJpiNLysQyxm8rzMZmWMF/6ybnlBQefM=; b=IoLjTMqCabofoqxnO/P6P6CCsC
	Wr5q2RkimZXlIJLCRrlfxh5EDBhzLVi0V8u5mPM6D7U5r8ckjrXHGb73BbToLnO4XQzhKOPJTDBWl
	U6c53g5oA7SsFwtpmLW9XEGRD2BvXNA/5feLPZuzT3TUOdrNxXpqQyC1/OMHou7xAlr3q75gsY7h7
	dZodmaTVQmr8r1dcxgTKSBYjUueVOPBKZrdnUgjzStB5eigl0tKLqG5UQeDz/D+/lQHfl6ebPdUAb
	wvJIw1Wlokdjq9YIzHqpGBOSnGEjLdVnpBt5WhaaqUKMandyrj4jEbSGfGbGXJOdFZj8duKC59owd
	TGZ2ILYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdQb-0004cV-SI; Wed, 01 Apr 2020 13:29:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdLO-0005ZM-Nq
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A67C430E;
 Wed,  1 Apr 2020 06:23:43 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D8643F71E;
 Wed,  1 Apr 2020 06:23:40 -0700 (PDT)
References: <855831b59e1b3774b11c3e33050eac4cc4639f06.1583332765.git.vpillai@digitalocean.com>
 <20200401114215.36640-1-cj.chengjian@huawei.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Cheng Jian <cj.chengjian@huawei.com>
Subject: Re: [PATCH] sched/arm64: store cpu topology before notify_cpu_starting
In-reply-to: <20200401114215.36640-1-cj.chengjian@huawei.com>
Date: Wed, 01 Apr 2020 14:23:33 +0100
Message-ID: <jhjwo6zjq5m.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062346_817590_F7DABC79 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: joelaf@google.com, peterz@infradead.org, fweisbec@gmail.com,
 huawei.libin@huawei.com, joel@joelfernandes.org, mingo@kernel.org,
 aubrey.li@linux.intel.com, naravamudan@digitalocean.com, aaron.lwe@gmail.com,
 jdesfossez@digitalocean.com, w.f@huawei.com, pawan.kumar.gupta@linux.intel.com,
 pjt@google.com, kerrnel@google.com, keescook@chromium.org, xiexiuqi@huawei.com,
 vpillai@digitalocean.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, pauld@redhat.com,
 mgorman@techsingularity.net, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, aubrey.intel@gmail.com,
 Sudeep Holla <sudeep.holla@arm.com>, pbonzini@redhat.com,
 tim.c.chen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


(+LAKML, +Sudeep)

On Wed, Apr 01 2020, Cheng Jian wrote:
> when SCHED_CORE enabled, sched_cpu_starting() uses thread_sibling as
> SMT_MASK to initialize rq->core, but only after store_cpu_topology(),
> the thread_sibling is ready for use.
>
>       notify_cpu_starting()
>           -> sched_cpu_starting()	# use thread_sibling
>
>       store_cpu_topology(cpu)
>           -> update_siblings_masks	# set thread_sibling
>
> Fix this by doing notify_cpu_starting later, just like x86 do.
>

I haven't been following the sched core stuff closely; can't this
rq->core assignment be done in sched_cpu_activate() instead? We already
look at the cpu_smt_mask() in there, and it is valid (we go through the
entirety of secondary_start_kernel() before getting anywhere near
CPUHP_AP_ACTIVE).

I don't think this breaks anything, but without this dependency in
sched_cpu_starting() then there isn't really a reason for this move.

> Signed-off-by: Cheng Jian <cj.chengjian@huawei.com>
> ---
>  arch/arm64/kernel/smp.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 5407bf5d98ac..a427c14e82af 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -236,13 +236,18 @@ asmlinkage notrace void secondary_start_kernel(void)
>       cpuinfo_store_cpu();
>
>       /*
> -	 * Enable GIC and timers.
> +	 * Store cpu topology before notify_cpu_starting,
> +	 * CPUHP_AP_SCHED_STARTING requires SMT topology
> +	 * been initialized for SCHED_CORE.
>        */
> -	notify_cpu_starting(cpu);
> -
>       store_cpu_topology(cpu);
>       numa_add_cpu(cpu);
>
> +	/*
> +	 * Enable GIC and timers.
> +	 */
> +	notify_cpu_starting(cpu);
> +
>       /*
>        * OK, now it's safe to let the boot CPU continue.  Wait for
>        * the CPU migration code to notice that the CPU is online

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
