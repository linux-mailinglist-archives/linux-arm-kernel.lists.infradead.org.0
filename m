Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423018C08B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXZ76vyHGX6s1UwS5JmxLhQX5vTjJJ64tFpsuEpkcLc=; b=imkbV9daDSJbRQ
	e95XnwXtNGjP+nY5cIdu/3kkOGra8Ghs/W+GbfA2OLIjnaR+bctjkqf37nsndmNKtOCw1h8HbneaR
	Lo6NOGRHoTQPzv4vbIYL34UFcM+Uu50YtddTlWt2I6KAD97l6BKARXOrOK0sd9AVIZPnpVgvnQO5R
	DkBcdOeuOccwuyMLU6qif/eXuqnRATRtkCUKIHZYa3DpjgZaEvtQsqfW/N1NSRPFOXlfuFls665+S
	U1rcOG7C85InvQMXpkHo3tJPQohyDPF1nR/EOa91juieq3lVG7nT2BOZbEvVdMSlMY1ZXxJg7zui7
	J5sIAUjepcOaQ+5Pbbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0ze-0004zQ-6f; Thu, 19 Mar 2020 19:38:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0zV-0004yu-Ry
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:38:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 172E91FB;
 Thu, 19 Mar 2020 12:38:05 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF7883F85E;
 Thu, 19 Mar 2020 12:38:03 -0700 (PDT)
Date: Thu, 19 Mar 2020 19:38:01 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v5 4/4] arm64: Remove CPU operations dereferencing array
Message-ID: <20200319193801.GE4876@lakrids.cambridge.arm.com>
References: <20200318230145.72097-1-gshan@redhat.com>
 <20200318230145.72097-5-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318230145.72097-5-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_123805_999176_88F5F4E2 
X-CRM114-Status: GOOD (  24.50  )
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 10:01:45AM +1100, Gavin Shan wrote:
> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
> much memory has been used for this. Also, all secondary CPUs must use
> same CPU operations and we shouldn't bring up the broken CPU as Lorenzo
> Pieralisi and Mark Rutland pointed out.
> 
> This introduces two variables (@{boot,secondary}_cpu_ops) to store the
> CPU operations for boot CPU and secondary CPUs separately, which are
> figured out from device tree or ACPI table. The secondary CPUs which
> have inconsistent operations won't be brought up. With this, the CPU
> operations dereferencing array is removed and 2KB memory is saved. Note
> the logic of cpu_get_ops() is merged to get_cpu_method() since the logic
> is simple enough and no need to have a separate function for it.

To be honest, I'm not too keen on this. We've generally tried to bucket
things as either global or per-cpu, and it's odd to go against that.

Is 2K a problem because it forms part of the static Image size? If so,
could we make this a percpu pointer instead, or is there a problem with
that?

Thanks,
Mark.

> 
> Link: https://lore.kernel.org/linux-arm-kernel/20200211114553.GA21093@e121166-lin.cambridge.arm.com
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/kernel/cpu_ops.c | 77 +++++++++++++++++++------------------
>  1 file changed, 39 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index e133011f64b5..a0f647d22e36 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -20,41 +20,20 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>  #endif
>  extern const struct cpu_operations cpu_psci_ops;
>  
> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> -
> -static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
> +static const struct cpu_operations *const available_cpu_ops[] __initconst = {
>  	&smp_spin_table_ops,
> -	&cpu_psci_ops,
> -	NULL,
> -};
> -
> -static const struct cpu_operations *const acpi_supported_cpu_ops[] __initconst = {
>  #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
>  	&acpi_parking_protocol_ops,
>  #endif
>  	&cpu_psci_ops,
> -	NULL,
>  };
> +static const struct cpu_operations *boot_cpu_ops __ro_after_init;
> +static const struct cpu_operations *secondary_cpu_ops __ro_after_init;
>  
> -static const struct cpu_operations * __init cpu_get_ops(const char *name)
> -{
> -	const struct cpu_operations *const *ops;
> -
> -	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
> -
> -	while (*ops) {
> -		if (!strcmp(name, (*ops)->name))
> -			return *ops;
> -
> -		ops++;
> -	}
> -
> -	return NULL;
> -}
> -
> -static const char *__init cpu_read_enable_method(int cpu)
> +static const struct cpu_operations * __init get_cpu_method(int cpu)
>  {
>  	const char *enable_method;
> +	int i;
>  
>  	if (acpi_disabled) {
>  		struct device_node *dn = of_get_cpu_node(cpu, NULL);
> @@ -91,22 +70,44 @@ static const char *__init cpu_read_enable_method(int cpu)
>  		}
>  	}
>  
> -	return enable_method;
> +	if (!enable_method) {
> +		pr_warn("No enable-method found on CPU %d\n", cpu);
> +		return NULL;
> +	}
> +
> +	/* Search in the array with method */
> +	for (i = 0; i < ARRAY_SIZE(available_cpu_ops); i++) {
> +		if (!strcmp(available_cpu_ops[i]->name, enable_method))
> +			return available_cpu_ops[i];
> +	}
> +
> +	return NULL;
>  }
> -/*
> - * Read a cpu's enable method and record it in cpu_ops.
> - */
> +
>  int __init init_cpu_ops(int cpu)
>  {
> -	const char *enable_method = cpu_read_enable_method(cpu);
> +	const struct cpu_operations *ops = get_cpu_method(cpu);
>  
> -	if (!enable_method)
> -		return -ENODEV;
> -
> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
> -	if (!cpu_ops[cpu]) {
> -		pr_warn("Unsupported enable-method: %s\n", enable_method);
> +	if (!ops)
>  		return -EOPNOTSUPP;
> +
> +	/* Update boot CPU operations */
> +	if (!cpu) {
> +		boot_cpu_ops = ops;
> +		return 0;
> +	}
> +
> +	/* Update secondary CPU operations if it's not initialized yet */
> +	if (!secondary_cpu_ops) {
> +		secondary_cpu_ops = ops;
> +		return 0;
> +	}
> +
> +	/* We should have unified secondary CPU operations */
> +	if (ops != secondary_cpu_ops) {
> +		pr_warn("Invalid CPU operations %s (%s) on secondary CPU %d\n",
> +			ops->name, secondary_cpu_ops->name, cpu);
> +		return -EINVAL;
>  	}
>  
>  	return 0;
> @@ -114,5 +115,5 @@ int __init init_cpu_ops(int cpu)
>  
>  const struct cpu_operations *get_cpu_ops(int cpu)
>  {
> -	return cpu_ops[cpu];
> +	return cpu ? secondary_cpu_ops : boot_cpu_ops;
>  }
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
