Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D08158DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 12:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW30ikwVdKMvA8UH/6xVBMO9RAu/5R+cX1PjemnzG9A=; b=T/hwBl7tXLDroj
	o0+YB6DFo4nAbicx7DQYK75wrn7o3aARVjcnWpGim6h7KEOWjWtfNbHb+kSywx62ce7L6VwQTudfZ
	6ewT919MWJn4TB6/nAnEureHT/a+lMamGw+e5S9ojmiVyhcEaVMzWL7Aq3LGfIRWKwgeqqZ2wjGs0
	/l3Bb6mkjJiuk7Bpw5eOBcf4mT6mrGpHwkwn29mPhmuxf88JVLhtY/uAxpfQxhkkaX55C9XFsu1Q9
	PNd+Y3qWP0yYxX+EJRdZB500FlDkjWRlBKe9c0oeueLY79FibPQzc7Zu2QTpw5Mm/rYQJLlEwCjah
	7bHZl9pbpF/prUP3NLSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Tzh-0002aN-UY; Tue, 11 Feb 2020 11:46:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Tza-0002Zl-Eh
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 11:46:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86A6DFEC;
 Tue, 11 Feb 2020 03:46:11 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 861D03F6CF;
 Tue, 11 Feb 2020 03:46:10 -0800 (PST)
Date: Tue, 11 Feb 2020 11:46:01 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v2 4/4] arm64: Dereference CPU operations indirectly
Message-ID: <20200211114553.GA21093@e121166-lin.cambridge.arm.com>
References: <20200203235107.190609-5-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203235107.190609-5-gshan@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_034614_581999_A1AF2A83 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 10:51:07AM +1100, Gavin Shan wrote:
> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
> much memory has been used for this.
> 
> This introduces another array (@cpu_ops_index[NR_CPUS/4]), of which the
> index to CPU operations array is stored. With this, we just need one byte
> to be shared by 4 CPUs, 64 bytes for 256 CPUs, to dereference the CPU
> operations indirectly. Note this optimization has the assumption: these
> CPU operations aren't dereferenced in hot path.

Actually the enable method must be the same across cpus, which brings
your optimization down to 1 byte for whatever number of cpus (aka,
you need an index to the one and only CPU ops entry).

If a cpu has an enable method != from the first that has been detected
we should let the cpu ops read fail, that index must not/can not be
different on != cpus, really, if it is firmware is broken and it is
probably better to avoid booting a cpu rather than trying, I hardly
see how we can introduce a regression by adding this logic, TBC.

Please let me know if anyone spots something I have missed.

Thanks,
Lorenzo

> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/kernel/cpu_ops.c | 49 ++++++++++++++++++-------------------
>  1 file changed, 24 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index e133011f64b5..d9103d5c9c6f 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -4,7 +4,6 @@
>   *
>   * Copyright (C) 2013 ARM Ltd.
>   */
> -
>  #include <linux/acpi.h>
>  #include <linux/cache.h>
>  #include <linux/errno.h>
> @@ -20,39 +19,32 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>  #endif
>  extern const struct cpu_operations cpu_psci_ops;
>  
> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> -
> -static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
> +/*
> + * Each element of the index array is shared by 4 CPUs. It means each
> + * CPU index uses 2 bits.
> + */
> +static const struct cpu_operations *const cpu_ops[] = {
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
> +static unsigned char cpu_ops_indexes[DIV_ROUND_UP(NR_CPUS, 4)] __ro_after_init;
>  
> -static const struct cpu_operations * __init cpu_get_ops(const char *name)
> +static int __init get_cpu_ops_index(const char *name)
>  {
> -	const struct cpu_operations *const *ops;
> -
> -	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
> -
> -	while (*ops) {
> -		if (!strcmp(name, (*ops)->name))
> -			return *ops;
> +	int index;
>  
> -		ops++;
> +	for (index = 0; index < ARRAY_SIZE(cpu_ops); index++) {
> +		if (!strcmp(cpu_ops[index]->name, name))
> +			return index;
>  	}
>  
> -	return NULL;
> +	return -ERANGE;
>  }
>  
> -static const char *__init cpu_read_enable_method(int cpu)
> +static const char *__init get_cpu_method(int cpu)
>  {
>  	const char *enable_method;
>  
> @@ -98,21 +90,28 @@ static const char *__init cpu_read_enable_method(int cpu)
>   */
>  int __init init_cpu_ops(int cpu)
>  {
> -	const char *enable_method = cpu_read_enable_method(cpu);
> +	const char *enable_method = get_cpu_method(cpu);
> +	unsigned char *pindex = &cpu_ops_indexes[cpu / 4];
> +	int index;
>  
>  	if (!enable_method)
>  		return -ENODEV;
>  
> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
> -	if (!cpu_ops[cpu]) {
> +	index = get_cpu_ops_index(enable_method);
> +	if (index < 0) {
>  		pr_warn("Unsupported enable-method: %s\n", enable_method);
>  		return -EOPNOTSUPP;
>  	}
>  
> +	*pindex &= ~(0x3 << (2 * (cpu % 4)));
> +	*pindex |= ((index & 0x3) << (2 * (cpu % 4)));
> +
>  	return 0;
>  }
>  
>  const struct cpu_operations *get_cpu_ops(int cpu)
>  {
> -	return cpu_ops[cpu];
> +	int index = ((cpu_ops_indexes[cpu / 4] >> (2 * (cpu % 4))) & 0x3);
> +
> +	return cpu_ops[index];
>  }
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
