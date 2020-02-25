Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494916C38D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8zQw/elXPJ2wsD/R34JgHMYV6sFfZ15svP0Fa2HvJI=; b=b30CWU9bMYkyz4
	R2hw3jB+7One85ut4L4xzfmVU030OOgkGL/lG6DmOwLott1wZunjBF/uUDi2iTZ/9LrJgGCJjm2xO
	adQqQVbCDywc76hySMLC5RSouzfkndtkgPPf63WF21uHY4HrKWQOgViT9p5e70pxlkHdHstlq+FBv
	Kdvx+dUmOLaW9eHkWmuOtOODtLj7IeqoQsqzG6KUGAAxsz4l0zHPqFw1Fptks4wTMHOpv7Sid7mjO
	iLtUaWGhkXBXCmkL/zQsXiS6RR3s9t5IETue42dJw0UVlc5rnF7uBNqwNTxQDEyLMMK+KV1+sxJ/v
	IxyonTNjSpv00bUFfq7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6axg-0003N8-8R; Tue, 25 Feb 2020 14:13:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6axV-0003MY-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:13:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20DE731B;
 Tue, 25 Feb 2020 06:13:13 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20D073F703;
 Tue, 25 Feb 2020 06:13:12 -0800 (PST)
Date: Tue, 25 Feb 2020 14:13:07 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v3 4/5] arm64: Remove CPU operations dereferencing array
Message-ID: <20200225141307.GA8970@e121166-lin.cambridge.arm.com>
References: <20200212004351.66576-1-gshan@redhat.com>
 <20200212004351.66576-5-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212004351.66576-5-gshan@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_061313_946667_D4F6EE91 
X-CRM114-Status: GOOD (  23.54  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 11:43:50AM +1100, Gavin Shan wrote:
> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
> much memory has been used for this. Also, all CPUs must use same CPU
> operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
> pointed out.

That's not appropriate for a commit log. If you want to refer
to a mailing list discussion add a Link: tag with a lore archive
pointer.

> This introduces variable (@cpu_ops_index) to store the unified CPU
> operations index. The CPU, which has different index, won't be brought
> up. With this, the CPU operations dereferencing array is removed and
> 2KB memory is saved.

I think it is enough fiddling with indexes, if you need to save
memory reduce the cpu_ops array to a pointer and be done with that.

> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/kernel/cpu_ops.c | 62 ++++++++++++++++++++-----------------
>  1 file changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index e133011f64b5..f59c087d6284 100644
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

+static const struct cpu_operations *cpu_ops __ro_after_init;

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
> +static int cpu_ops_index __ro_after_init = INT_MAX;
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
> @@ -93,26 +85,40 @@ static const char *__init cpu_read_enable_method(int cpu)
>  
>  	return enable_method;
>  }
> -/*
> - * Read a cpu's enable method and record it in cpu_ops.
> - */
> +
>  int __init init_cpu_ops(int cpu)
>  {
> -	const char *enable_method = cpu_read_enable_method(cpu);
> +	const char *enable_method = get_cpu_method(cpu);
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
> +	/* Update the index directly if it's invalid */
> +	if (cpu_ops_index == INT_MAX) {
> +		cpu_ops_index = index;
> +		return 0;
> +	}
> +
> +	if (index != cpu_ops_index) {
> +		pr_warn("Invalid CPU operations index %d (%d) on CPU %d\n",
> +			index, cpu_ops_index, cpu);
> +		return -EINVAL;
> +	}

There isn't really a need for this index song and dance, a pointer
will do to achieve what you are doing above.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
