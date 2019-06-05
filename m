Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F9D3614C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Snib70lejWUBunsVzD7vt/X98tgYnIHy5q/e6glnr08=; b=nfILlyOdjbcfjI
	vVHDLRjKMQRL2kxjc0910RZ165lm+xB+0vRVdFfVzKeRXzqz0xD12ajFGd5ATvYAx8ngNeRBdewyC
	XkXy4RljWS9YLFutlhIrPJHNn6j2/XkDSHOQa4uNx4Mp40/J9nsFHpRa1IiwqxoSWai9IosuAWtXL
	W/hX1C45YuYo46GP9d1XIEEnIzVFYt/nylKsD0qhQK4XrBd3GjQ7iT5VcoXCvI5MUmSRjlYzYQgwj
	Gql9L3zN263ju5D2PIOu/D+cZj1Q+nwPsx9TyH6qPtWhExSIKkeJYUoADjv1/WCd5tVQjg7JNXhNn
	bgK3dD4B+DpIvat/QyWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYnk-0002Fr-Sh; Wed, 05 Jun 2019 16:30:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYnY-00021N-0B; Wed, 05 Jun 2019 16:30:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90C74374;
 Wed,  5 Jun 2019 09:29:59 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A90FC3F5AF;
 Wed,  5 Jun 2019 09:29:56 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: kdump: support reserving crashkernel above 4G
To: Chen Zhou <chenzhou10@huawei.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-3-chenzhou10@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <df2b659d-7406-fbfd-597d-be3a3f69abcb@arm.com>
Date: Wed, 5 Jun 2019 17:29:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-3-chenzhou10@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093000_241230_E1F80EDF 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wangkefeng.wang@huawei.com, horms@verge.net.au, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, linux-mm@kvack.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 kexec@lists.infradead.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 07/05/2019 04:50, Chen Zhou wrote:
> When crashkernel is reserved above 4G in memory, kernel should
> reserve some amount of low memory for swiotlb and some DMA buffers.

> Meanwhile, support crashkernel=X,[high,low] in arm64. When use
> crashkernel=X parameter, try low memory first and fall back to high
> memory unless "crashkernel=X,high" is specified.

What is the 'unless crashkernel=...,high' for? I think it would be simpler to relax the
ARCH_LOW_ADDRESS_LIMIT if reserve_crashkernel_low() allocated something.

This way "crashkernel=1G" tries to allocate 1G below 4G, but fails if there isn't enough
memory. "crashkernel=1G crashkernel=16M,low" allocates 16M below 4G, which is more likely
to succeed, if it does it can then place the 1G block anywhere.


> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 413d566..82cd9a0 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -243,6 +243,9 @@ static void __init request_standard_resources(void)
>  			request_resource(res, &kernel_data);
>  #ifdef CONFIG_KEXEC_CORE
>  		/* Userspace will find "Crash kernel" region in /proc/iomem. */
> +		if (crashk_low_res.end && crashk_low_res.start >= res->start &&
> +		    crashk_low_res.end <= res->end)
> +			request_resource(res, &crashk_low_res);
>  		if (crashk_res.end && crashk_res.start >= res->start &&
>  		    crashk_res.end <= res->end)
>  			request_resource(res, &crashk_res);

With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
"Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
find "Crash kernel", you are always going to get the kernel placed in the lower portion.

I suspect this isn't what you want, can we rename crashk_low_res for arm64 so that
existing kexec-tools doesn't use it?


> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index d2adffb..3fcd739 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -74,20 +74,37 @@ phys_addr_t arm64_dma_phys_limit __ro_after_init;
>  static void __init reserve_crashkernel(void)
>  {
>  	unsigned long long crash_base, crash_size;
> +	bool high = false;
>  	int ret;
>  
>  	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>  				&crash_size, &crash_base);
>  	/* no crashkernel= or invalid value specified */
> -	if (ret || !crash_size)
> -		return;
> +	if (ret || !crash_size) {
> +		/* crashkernel=X,high */
> +		ret = parse_crashkernel_high(boot_command_line,
> +				memblock_phys_mem_size(),
> +				&crash_size, &crash_base);
> +		if (ret || !crash_size)
> +			return;
> +		high = true;
> +	}
>  
>  	crash_size = PAGE_ALIGN(crash_size);
>  
>  	if (crash_base == 0) {
> -		/* Current arm64 boot protocol requires 2MB alignment */
> -		crash_base = memblock_find_in_range(0, ARCH_LOW_ADDRESS_LIMIT,
> -				crash_size, SZ_2M);
> +		/*
> +		 * Try low memory first and fall back to high memory
> +		 * unless "crashkernel=size[KMG],high" is specified.
> +		 */
> +		if (!high)
> +			crash_base = memblock_find_in_range(0,
> +					ARCH_LOW_ADDRESS_LIMIT,
> +					crash_size, CRASH_ALIGN);
> +		if (!crash_base)
> +			crash_base = memblock_find_in_range(0,
> +					memblock_end_of_DRAM(),
> +					crash_size, CRASH_ALIGN);
>  		if (crash_base == 0) {
>  			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>  				crash_size);
> @@ -105,13 +122,18 @@ static void __init reserve_crashkernel(void)
>  			return;
>  		}
>  
> -		if (!IS_ALIGNED(crash_base, SZ_2M)) {
> +		if (!IS_ALIGNED(crash_base, CRASH_ALIGN)) {
>  			pr_warn("cannot reserve crashkernel: base address is not 2MB aligned\n");
>  			return;
>  		}
>  	}
>  	memblock_reserve(crash_base, crash_size);
>  
> +	if (crash_base >= SZ_4G && reserve_crashkernel_low()) {
> +		memblock_free(crash_base, crash_size);
> +		return;

This is going to be annoying on platforms that don't have, and don't need memory below 4G.
A "crashkernel=...,low" on these system will break crashdump. I don't think we should
expect users to know the memory layout. (I'm assuming distro's are going to add a low
reservation everywhere, just in case)

I think the 'low' region should be a small optional/best-effort extra, that kexec-tools
can't touch.


I'm afraid you've missed the ugly bit of the crashkernel reservation...

arch/arm64/mm/mmu.c::map_mem() marks the crashkernel as 'nomap' during the first pass of
page-table generation. This means it isn't mapped in the linear map. It then maps it with
page-size mappings, and removes the nomap flag.

This is done so that arch_kexec_protect_crashkres() and
arch_kexec_unprotect_crashkres() can remove the valid bits of the crashkernel mapping.
This way the old-kernel can't accidentally overwrite the crashkernel. It also saves us if
the old-kernel and the crashkernel use different memory attributes for the mapping.

As your low-memory reservation is intended to be used for devices, having it mapped by the
old-kernel as cacheable memory is going to cause problems if those CPUs aren't taken
offline and go corrupting this memory. (we did crash for a reason after all)


I think the simplest thing to do is mark the low region as 'nomap' in
reserve_crashkernel() and always leave it unmapped. We can then describe it via a
different string in /proc/iomem, something like "Crash kernel (low)". Older kexec-tools
shouldn't use it, (I assume its not using strncmp() in a way that would do this by
accident), and newer kexec-tools can know to describe it in the DT, but it can't write to it.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
