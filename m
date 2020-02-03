Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45A0150E85
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 18:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZBWR7OwaiSCoIxwGL1IGsbXK37uoINQQmdwWJfF6Gqc=; b=uLjSwZdlFC6HTiXycaIcYcDtk
	9aXo2YJMtF+qh0XJdSfHhiqDM9zEO8FmX7w1hdEn30Kt+BiN2hOOydZjxxAenC1UuG6quSgUXeljz
	oUATsHCQiH8HsZjngVsw4rp1me8rfasrlUzV5Lh4QcT2HJ/wK3rYSLQolNUTPk4iC///oX45IZaay
	sfLeDy8SUeuBSmGOD75pgpbWR//9aj39zB9uG8KbE13B9RvPEN6GT8V+t8m9YRg7tdpSAUdDv/5h1
	uXRtzsxp8oJ1V/TtYyl30LN46U2glRj//QoZSjioGFrHE0+U6lwCcluMB2rmFnQkSuyMZE4DlO67A
	SRX0wmWWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyfMd-0002iE-Cs; Mon, 03 Feb 2020 17:18:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfMU-0002hK-1g
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 17:18:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E65051045;
 Mon,  3 Feb 2020 09:18:10 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6BE63F52E;
 Mon,  3 Feb 2020 09:18:09 -0800 (PST)
Subject: Re: [PATCH 4/4] arm64: Dereference CPU operations indirectly
To: Gavin Shan <gshan@redhat.com>, linux-arm-kernel@lists.infradead.org
References: <20200202232437.7626-5-gshan@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <097551e7-fbbd-98c1-bd32-83cf1cc0278b@arm.com>
Date: Mon, 3 Feb 2020 17:18:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200202232437.7626-5-gshan@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_091814_177962_6FAE44CB 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 will@kernel.org, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/02/2020 11:24 pm, Gavin Shan wrote:
> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
> much memory has been used for this.
> 
> This introduces another array (@cpu_ops_index[NR_CPUS]), of which the
> index to CPU operations array is stored. With this, we just one byte
> for each CPU, 256 bytes for 256 CPUs, to dereference the CPU operations
> indirectly.

By extension of the same argument, that's still four times as big as it 
*needs* to be ;)

How important is the memory saving vs. the runtime overhead of more 
indirection?

> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>   arch/arm64/kernel/cpu_ops.c | 44 +++++++++++++++++++++----------------
>   1 file changed, 25 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index e133011f64b5..2a58222a2f24 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -20,39 +20,33 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>   #endif
>   extern const struct cpu_operations cpu_psci_ops;
>   
> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> -
> -static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
> +static const struct cpu_operations *const cpu_ops[] = {
>   	&smp_spin_table_ops,
> -	&cpu_psci_ops,
> -	NULL,
> -};
> -
> -static const struct cpu_operations *const acpi_supported_cpu_ops[] __initconst = {
>   #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
>   	&acpi_parking_protocol_ops,
>   #endif
>   	&cpu_psci_ops,
>   	NULL,
>   };
> +static unsigned char cpu_ops_indexes[NR_CPUS] __ro_after_init;
>   
> -static const struct cpu_operations * __init cpu_get_ops(const char *name)
> +static unsigned char __init get_cpu_ops_index(const char *name)
>   {
> -	const struct cpu_operations *const *ops;
> -
> -	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
> +	const struct cpu_operations *const *ops = cpu_ops;
> +	unsigned char index = 0;
>   
>   	while (*ops) {

For a statically-initialised array which isn't exported to other 
compilation units you don't really need the null-terminator dance; a simple

	for (index = 0; index < ARRAY_SIZE(cpu_ops); index++)

should suffice.

>   		if (!strcmp(name, (*ops)->name))
> -			return *ops;
> +			return (index + 1);

Also this magic +1 is a bit horrible - I don't see any need for the 
interface to expose the underlying storage format, so it could just as 
easily return the actual index as an int with a negative error case.

Robin.

>   
>   		ops++;
> +		index++;
>   	}
>   
> -	return NULL;
> +	return 0;
>   }
>   
> -static const char *__init cpu_read_enable_method(int cpu)
> +static const char *__init get_cpu_method(int cpu)
>   {
>   	const char *enable_method;
>   
> @@ -98,21 +92,33 @@ static const char *__init cpu_read_enable_method(int cpu)
>    */
>   int __init init_cpu_ops(int cpu)
>   {
> -	const char *enable_method = cpu_read_enable_method(cpu);
> +	const char *enable_method = get_cpu_method(cpu);
> +	unsigned char index;
>   
>   	if (!enable_method)
>   		return -ENODEV;
>   
> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
> -	if (!cpu_ops[cpu]) {
> +	index = get_cpu_ops_index(enable_method);
> +	if (!index) {
>   		pr_warn("Unsupported enable-method: %s\n", enable_method);
>   		return -EOPNOTSUPP;
>   	}
>   
> +	cpu_ops_indexes[cpu] = index;
> +
>   	return 0;
>   }
>   
>   const struct cpu_operations *get_cpu_ops(int cpu)
>   {
> -	return cpu_ops[cpu];
> +	unsigned char index = cpu_ops_indexes[cpu];
> +
> +	/*
> +	 * The corresponding CPU operation isn't set when the
> +	 * index is equal to zero.
> +	 */
> +	if (!index)
> +		return NULL;
> +
> +	return cpu_ops[index - 1];
>   }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
