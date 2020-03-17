Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52E9187EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhB7aOtUD9NexuArREEkHGQYYZrwTHCr8gFbv8D0mFE=; b=agRJJss5SuUntK
	ZRuoZ1RXO+xxQEz2oB4o6XpfZvgRqTpf6m9ZXZ8L6G6pB7yEXleooHkBTQh+M6SNww0lS4BBKnEbe
	RQG0/wl8t+j6vzW3VjURjpu5ewUoVPTDUbZFMgNFFN9oa/rstmOEyxuZrrRO+jLMI3RBFK1BUc3RG
	zTMhHJVlnjfXqypIXfDtSfaT154I4n/+KJttmLH8UH5lmefeVoJlCAhvJM4ixC3Ogi1LMFK7K+gPH
	bHf/YUJ8nakWbCCI+W47lazJLwrFvBVLTnsr8Hvs/3KdKJxUR1zjtB0KXxrcYdKh9Nn56+Y26I9KK
	8Rc2yY7okLaeYkJCHUAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9mC-0000Fs-7X; Tue, 17 Mar 2020 10:48:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9m1-0000FN-TP
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:48:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2217B1FB;
 Tue, 17 Mar 2020 03:48:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 075813F534;
 Tue, 17 Mar 2020 03:48:35 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:48:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v4 3/5] arm64: Introduce get_cpu_ops() helper function
Message-ID: <20200317104833.GE8831@lakrids.cambridge.arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-4-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226002356.86986-4-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_034837_996731_149F4AC5 
X-CRM114-Status: GOOD (  13.59  )
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

On Wed, Feb 26, 2020 at 11:23:54AM +1100, Gavin Shan wrote:
> This introduces get_cpu_ops() to return the CPU operations according to
> the given CPU index. For now, it simply returns the @cpu_ops[cpu] as
> before. So it shouldn't introduce any functional changes.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

Generally this looks good to me; I like that it simplifies the cases
where we get the ops repeatedly today.

I have one comment below.

> @@ -383,6 +392,7 @@ void cpu_die(void)
>  void cpu_die_early(void)
>  {
>  	int cpu = smp_processor_id();
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
>  
>  	pr_crit("CPU%d: will not boot\n", cpu);
>  
> @@ -392,8 +402,8 @@ void cpu_die_early(void)
>  #ifdef CONFIG_HOTPLUG_CPU
>  	update_cpu_boot_status(CPU_KILL_ME);
>  	/* Check if we can park ourselves */
> -	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
> -		cpu_ops[cpu]->cpu_die(cpu);
> +	if (ops && ops->cpu_die)
> +		ops->cpu_die(cpu);
>  #endif

Can we factor this out the die logic into a helper:

| static void __cpu_try_die(int cpu)
| {
| #ifdef CONFIG_HOTPLUG_CPU
| 	const struct cpu_operations *ops = get_cpu_ops(cpu);
| 	if (ops && ops->cpu_die)
| 		ops->cpu_die(cpu);
| #endif
| }

... with cpu_die_early() having:

| if (IS_ENABLED(CONFIG_HOTPLUG_CPU)) {
| 	update_cpu_boot_status(CPU_KILL_ME);
|	__cpu_try_die(cpu);
| }

... and likewise in ipi_cpu_crash_stop(), without the
update_cpu_boot_status() ...

> @@ -855,6 +870,10 @@ static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
>  
>  static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
>  {
> +#ifdef CONFIG_HOTPLUG_CPU
> +	const struct cpu_operations *ops;
> +#endif

... where this can go ...

> +
>  #ifdef CONFIG_KEXEC_CORE
>  	crash_save_cpu(regs, cpu);
>  
> @@ -864,8 +883,9 @@ static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
>  	sdei_mask_local_cpu();
>  
>  #ifdef CONFIG_HOTPLUG_CPU
> -	if (cpu_ops[cpu]->cpu_die)
> -		cpu_ops[cpu]->cpu_die(cpu);
> +	ops = get_cpu_ops(cpu);
> +	if (ops->cpu_die)
> +		ops->cpu_die(cpu);
>  #endif

... and this can be:

| if (IS_ENABLED(CONFIG_HOTPLUG_CPU))
| 	__cpu_try_die(cpu);

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
