Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E965187E2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvT/qRImO4WWp2DMfZcIeyQIaYanCCUtPX1BtgtIUxY=; b=d3pwToUVHrZRTa
	9P9oirVUtfSTk22c2biDIrXQLAz6cfmhxD91btB95ONjPeCt0BjHSvRq4IXVfaUI7rCjfVImQVq/e
	0J/dBAURld0ea08fDASLAvt4TDWOSdjn7jwQLlAOIVA0gZvk4EL0sq50cMgJwI+aWgEnncf42unNu
	oA059WpiE9EMrqhLBkmapZowKotLxvknesysmCtG8CNk4g2uC4MqyGK+vTXevqT6ybL08rrp8k2eV
	1mVVkcPwKVbtdA3W3eJDpqLq/g47aHqaiEdmAEwtYrjMGRgxKepCYpsvSfHSYlLmPnmc/YDceWxdS
	1HMz2PTMmw25a2pSOerg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Lp-000682-L8; Tue, 17 Mar 2020 10:21:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Kb-00056X-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D3FF1FB;
 Tue, 17 Mar 2020 03:20:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0224F3F52E;
 Tue, 17 Mar 2020 03:20:15 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:20:13 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v4 2/5] arm64: Rename cpu_read_ops() to init_cpu_ops()
Message-ID: <20200317102013.GC8831@lakrids.cambridge.arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-3-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226002356.86986-3-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032017_936957_BD447E63 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:23:53AM +1100, Gavin Shan wrote:
> This renames cpu_read_ops() to init_cpu_ops() as the function it's only
> called in initialization phase. Also, we will introduce get_cpu_ops() in
> the subsequent patches, to retireve the CPU operation by the given CPU
> index. The usage of cpu_read_ops() and get_cpu_ops() are difficult to be
> distinguish from their names.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

That rationale makes sense to me, and the patch itself looks sound, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/cpu_ops.h | 6 +++---
>  arch/arm64/kernel/cpu_ops.c      | 2 +-
>  arch/arm64/kernel/setup.c        | 2 +-
>  arch/arm64/kernel/smp.c          | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
> index 86aabf1e0199..baa13b5db2ca 100644
> --- a/arch/arm64/include/asm/cpu_ops.h
> +++ b/arch/arm64/include/asm/cpu_ops.h
> @@ -56,11 +56,11 @@ struct cpu_operations {
>  };
>  
>  extern const struct cpu_operations *cpu_ops[NR_CPUS];
> -int __init cpu_read_ops(int cpu);
> +int __init init_cpu_ops(int cpu);
>  
> -static inline void __init cpu_read_bootcpu_ops(void)
> +static inline void __init init_bootcpu_ops(void)
>  {
> -	cpu_read_ops(0);
> +	init_cpu_ops(0);
>  }
>  
>  #endif /* ifndef __ASM_CPU_OPS_H */
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index 2082cfb1be86..a6c3c816b618 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -96,7 +96,7 @@ static const char *__init cpu_read_enable_method(int cpu)
>  /*
>   * Read a cpu's enable method and record it in cpu_ops.
>   */
> -int __init cpu_read_ops(int cpu)
> +int __init init_cpu_ops(int cpu)
>  {
>  	const char *enable_method = cpu_read_enable_method(cpu);
>  
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index a34890bf309f..f66bd260cce8 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -344,7 +344,7 @@ void __init setup_arch(char **cmdline_p)
>  	else
>  		psci_acpi_init();
>  
> -	cpu_read_bootcpu_ops();
> +	init_bootcpu_ops();
>  	smp_init_cpus();
>  	smp_build_mpidr_hash();
>  
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index d4ed9a19d8fe..6f8477d7f3be 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -488,7 +488,7 @@ static bool __init is_mpidr_duplicate(unsigned int cpu, u64 hwid)
>   */
>  static int __init smp_cpu_setup(int cpu)
>  {
> -	if (cpu_read_ops(cpu))
> +	if (init_cpu_ops(cpu))
>  		return -ENODEV;
>  
>  	if (cpu_ops[cpu]->cpu_init(cpu))
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
