Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987EB36147
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQbLGOBW0XXe5aXY9/upZN7a4bhRR4jOKaa5xyUeJaE=; b=AIP1QPzVcq5u7U
	JTY4xVYkzESoMjJLqOPz304PaRy2BQH/P98m+lBsmBHXOkNTOF/SpS+RGmfIsGq/fPCqAr6IovxnS
	XP1I2baj67YbSj97fxJNgihc1II5TdpFi3oHQVoHl+wZBDp1jOw5wLo6/JYts8807Ua5v7+oB595b
	Jpp+6Fck6elj7yd6OPGHH1CWxsx9qSsgY727PwI1wp71eSlZTkBq+oFUdWROk5oCwY7q6jkWR4jIJ
	LEGynP09VCunTs3l3NjV6jfdCUOHNRYn4oQMyycnb7OGLGV58RAAdlU0KSp9Hn36IeLJLckMY6KOa
	8cIdMm9pqjLtm/ZJBOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYnA-0001jW-D9; Wed, 05 Jun 2019 16:29:36 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYn2-0001iD-7Z; Wed, 05 Jun 2019 16:29:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DFE2374;
 Wed,  5 Jun 2019 09:29:26 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FBED3F5AF;
 Wed,  5 Jun 2019 09:29:22 -0700 (PDT)
Subject: Re: [PATCH 1/4] x86: kdump: move reserve_crashkernel_low() into
 kexec_core.c
To: Chen Zhou <chenzhou10@huawei.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-2-chenzhou10@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <6585f047-063c-6d6c-4967-1d8a472f30f4@arm.com>
Date: Wed, 5 Jun 2019 17:29:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-2-chenzhou10@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_092928_285855_BB5766DD 
X-CRM114-Status: GOOD (  19.09  )
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
> In preparation for supporting reserving crashkernel above 4G
> in arm64 as x86_64 does, move reserve_crashkernel_low() into
> kexec/kexec_core.c.


> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index 905dae8..9ee33b6 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -463,59 +460,6 @@ static void __init memblock_x86_reserve_range_setup_data(void)
>  # define CRASH_ADDR_HIGH_MAX	MAXMEM
>  #endif
>  
> -static int __init reserve_crashkernel_low(void)
> -{
> -#ifdef CONFIG_X86_64

The behaviour of this #ifdef has disappeared, won't 32bit x86 now try and reserve a chunk
of unnecessary 'low' memory?

[...]


> @@ -579,9 +523,13 @@ static void __init reserve_crashkernel(void)
>  		return;
>  	}
>  
> -	if (crash_base >= (1ULL << 32) && reserve_crashkernel_low()) {
> -		memblock_free(crash_base, crash_size);
> -		return;
> +	if (crash_base >= (1ULL << 32)) {
> +		if (reserve_crashkernel_low()) {
> +			memblock_free(crash_base, crash_size);
> +			return;
> +		}
> +
> +		insert_resource(&iomem_resource, &crashk_low_res);


Previously reserve_crashkernel_low() was #ifdefed to do nothing if !CONFIG_X86_64, I don't
see how 32bit is skipping this reservation...


>  	}
>  
>  	pr_info("Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\n",
> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> index b9b1bc5..096ad63 100644
> --- a/include/linux/kexec.h
> +++ b/include/linux/kexec.h
> @@ -63,6 +63,10 @@
>  
>  #define KEXEC_CORE_NOTE_NAME	CRASH_CORE_NOTE_NAME
>  
> +#ifndef CRASH_ALIGN
> +#define CRASH_ALIGN SZ_128M
> +#endif

Why 128M? Wouldn't we rather each architecture tells us its minimum alignment?


> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index d714044..3492abd 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -39,6 +39,8 @@
>  #include <linux/compiler.h>
>  #include <linux/hugetlb.h>
>  #include <linux/frame.h>
> +#include <linux/memblock.h>
> +#include <linux/swiotlb.h>
>  
>  #include <asm/page.h>
>  #include <asm/sections.h>
> @@ -96,6 +98,60 @@ int kexec_crash_loaded(void)
>  }
>  EXPORT_SYMBOL_GPL(kexec_crash_loaded);
>  
> +int __init reserve_crashkernel_low(void)
> +{
> +	unsigned long long base, low_base = 0, low_size = 0;
> +	unsigned long total_low_mem;
> +	int ret;
> +
> +	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
> +
> +	/* crashkernel=Y,low */
> +	ret = parse_crashkernel_low(boot_command_line, total_low_mem,
> +			&low_size, &base);
> +	if (ret) {
> +		/*
> +		 * two parts from lib/swiotlb.c:
> +		 * -swiotlb size: user-specified with swiotlb= or default.
> +		 *
> +		 * -swiotlb overflow buffer: now hardcoded to 32k. We round it
> +		 * to 8M for other buffers that may need to stay low too. Also
> +		 * make sure we allocate enough extra low memory so that we
> +		 * don't run out of DMA buffers for 32-bit devices.
> +		 */
> +		low_size = max(swiotlb_size_or_default() + (8UL << 20),

SZ_8M?

> +				256UL << 20);

SZ_256M?


> +	} else {
> +		/* passed with crashkernel=0,low ? */
> +		if (!low_size)
> +			return 0;
> +	}
> +
> +	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
> +	if (!low_base) {
> +		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
> +		       (unsigned long)(low_size >> 20));
> +		return -ENOMEM;
> +	}
> +
> +	ret = memblock_reserve(low_base, low_size);
> +	if (ret) {
> +		pr_err("%s: Error reserving crashkernel low memblock.\n",
> +				__func__);
> +		return ret;
> +	}
> +
> +	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
> +		(unsigned long)(low_size >> 20),
> +		(unsigned long)(low_base >> 20),
> +		(unsigned long)(total_low_mem >> 20));
> +
> +	crashk_low_res.start = low_base;
> +	crashk_low_res.end   = low_base + low_size - 1;
> +
> +	return 0;
> +}


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
