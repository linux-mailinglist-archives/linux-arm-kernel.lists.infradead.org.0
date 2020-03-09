Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16BA17DE9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6B230bN5P8KSXvCPyBN7MgE/dcsF8BwOGsWdmWIP5AI=; b=u/2ygyRmvWM5ej
	Ne4bP7bLhk6aBaakElvyzxTzaJsU3Y+MY0sxw/E0HBR2QoOyl5esG6Z+EBPXrS6VCNunm/QevBdio
	KPadAKUpSwUoxS6SoX5sC8a/UJoN/TVWbzaCN3yqoH+surn2Oiy9ebchtW4h4KvejPgr43Y8eED26
	rTEOnALGhlivZKfWGQ0ZkuxlGeV505I4gXDZav+C1ViXTu7a0334kDit9riSv77GjDISHifLbCRwD
	kvKRk6lqod8fKTgIZuXmGD9v9nQCiyd12ZiL6G4CBjI2PdHc6OGy7S/+TJKf5bweZc5fiM6tyS6Dp
	/IyNtg4kFRXty9Sn7iwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGUu-0002St-Pj; Mon, 09 Mar 2020 11:23:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGUj-0002Rb-GU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:22:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 872241FB;
 Mon,  9 Mar 2020 04:22:46 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22F6C3F6CF;
 Mon,  9 Mar 2020 04:22:45 -0700 (PDT)
Date: Mon, 9 Mar 2020 11:22:42 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200309112242.GB2487@mbp>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192520.20808-4-aarcange@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_042249_635131_4708F6AA 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrea,

On Sun, Feb 23, 2020 at 02:25:20PM -0500, Andrea Arcangeli wrote:
>  switch_mm(struct mm_struct *prev, struct mm_struct *next,
>  	  struct task_struct *tsk)
>  {
> -	if (prev != next)
> -		__switch_mm(next);
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!per_cpu(cpu_not_lazy_tlb, cpu)) {
> +		per_cpu(cpu_not_lazy_tlb, cpu) = true;
> +		atomic_inc(&next->context.nr_active_mm);
> +		__switch_mm(next, cpu);
> +	} else if (prev != next) {
> +		atomic_inc(&next->context.nr_active_mm);
> +		__switch_mm(next, cpu);
> +		atomic_dec(&prev->context.nr_active_mm);
> +	}

IIUC, nr_active_mm keeps track of how many instances of the current pgd
(TTBR0_EL1) are active.

> +enum tlb_flush_types tlb_flush_check(struct mm_struct *mm, unsigned int cpu)
> +{
> +	if (atomic_read(&mm->context.nr_active_mm) <= 1) {
> +		bool is_local = current->active_mm == mm &&
> +			per_cpu(cpu_not_lazy_tlb, cpu);
> +		cpumask_t *stale_cpumask = mm_cpumask(mm);
> +		unsigned int next_zero = cpumask_next_zero(-1, stale_cpumask);
> +		bool local_is_clear = false;
> +		if (next_zero < nr_cpu_ids &&
> +		    (is_local && next_zero == cpu)) {
> +			next_zero = cpumask_next_zero(next_zero, stale_cpumask);
> +			local_is_clear = true;
> +		}
> +		if (next_zero < nr_cpu_ids) {
> +			cpumask_setall(stale_cpumask);
> +			local_is_clear = false;
> +		}
> +
> +		/*
> +		 * Enforce CPU ordering between the above
> +		 * cpumask_setall(mm_cpumask) and the below
> +		 * atomic_read(nr_active_mm).
> +		 */
> +		smp_mb();
> +
> +		if (likely(atomic_read(&mm->context.nr_active_mm)) <= 1) {
> +			if (is_local) {
> +				if (!local_is_clear)
> +					cpumask_clear_cpu(cpu, stale_cpumask);
> +				return TLB_FLUSH_LOCAL;
> +			}
> +			if (atomic_read(&mm->context.nr_active_mm) == 0)
> +				return TLB_FLUSH_NO;
> +		}
> +	}
> +	return TLB_FLUSH_BROADCAST;

And this code here can assume that if nr_active_mm <= 1, no broadcast is
necessary.

One concern I have is the ordering between TTBR0_EL1 update in
cpu_do_switch_mm() and the nr_active_mm, both on a different CPU. We
only have an ISB for context synchronisation on that CPU but I don't
think the architecture guarantees any relation between sysreg access and
the memory update. We have a DSB but that's further down in switch_to().

However, what worries me more is that you can now potentially do a TLB
shootdown without clearing the intermediate (e.g. VA to pte) walk caches
from the TLB. Even if the corresponding pgd and ASID are no longer
active on other CPUs, I'm not sure it's entirely safe to free (and
re-allocate) pages belonging to a pgtable without first flushing the
TLB. All the architecture spec states is that the software must first
clear the entry followed by TLBI (the break-before-make rules).

That said, the benchmark numbers are not very encouraging. Around 1%
improvement in a single run, it can as well be noise. Also something
like hackbench may also show a slight impact on the context switch path.
Maybe with a true NUMA machine with hundreds of CPUs we may see a
difference, but it depends on how well the TLBI is implemented.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
