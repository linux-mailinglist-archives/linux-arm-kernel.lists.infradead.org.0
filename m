Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27E74357E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcNSa42scdB9aocDbVojqrdv1Ep9f2MtwgBmmBC5gT8=; b=MQpQcjNWx6Mt08
	/KKNj7kMf3o52J/GVKtzxFqss5on/V2mmNx9/+DHpvXPia8Rre5PJhDWcyamDmUFeDAB+U7k12H0y
	cx8ACnJx/BoS+T0hOJhGlCv51/nb/98FEMGA5/LnfK6MetSCMEHp9bJHl+4feG2vxey9V+I8+p+J9
	HKL2ebMaFddkfovAqfwyxrYloKj7P4Df0qHnD1KFr2E9QGHTRxFV7KmasC+l8GIiLj4xF+eTLQGPn
	/BBVkLB5+ZRBAjJEn99GMxego1rwb9jGgIHFTa155JELSttSYBjg5XGcfAKH6ST80qOKiDxw6m551
	EUncBsygV9ADo/AsqrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNty-0000dJ-HH; Thu, 13 Jun 2019 11:28:18 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNt4-0000bO-77; Thu, 13 Jun 2019 11:27:23 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3EE9C84A0E22CFC1DCFB;
 Thu, 13 Jun 2019 19:27:10 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 19:26:59 +0800
Subject: Re: [PATCH 1/4] x86: kdump: move reserve_crashkernel_low() into
 kexec_core.c
To: James Morse <james.morse@arm.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-2-chenzhou10@huawei.com>
 <6585f047-063c-6d6c-4967-1d8a472f30f4@arm.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <4716a864-9560-f198-5899-9a5dee1fac20@huawei.com>
Date: Thu, 13 Jun 2019 19:26:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <6585f047-063c-6d6c-4967-1d8a472f30f4@arm.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042722_498118_2F5A37E3 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi James,

Thanks for your review.

On 2019/6/6 0:29, James Morse wrote:
> Hello,
> 
> On 07/05/2019 04:50, Chen Zhou wrote:
>> In preparation for supporting reserving crashkernel above 4G
>> in arm64 as x86_64 does, move reserve_crashkernel_low() into
>> kexec/kexec_core.c.
> 
> 
>> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
>> index 905dae8..9ee33b6 100644
>> --- a/arch/x86/kernel/setup.c
>> +++ b/arch/x86/kernel/setup.c
>> @@ -463,59 +460,6 @@ static void __init memblock_x86_reserve_range_setup_data(void)
>>  # define CRASH_ADDR_HIGH_MAX	MAXMEM
>>  #endif
>>  
>> -static int __init reserve_crashkernel_low(void)
>> -{
>> -#ifdef CONFIG_X86_64
> 
> The behaviour of this #ifdef has disappeared, won't 32bit x86 now try and reserve a chunk
> of unnecessary 'low' memory?
> 
> [...]

At present, reserve_crashkernel_low() is called only when reserving crashkernel above 4G, so i deleted
this #ifdef.
If we called reserve_crashkernel_low() at the beginning of reserve_crashkernel(), i need to add it back.

> 
> 
>> @@ -579,9 +523,13 @@ static void __init reserve_crashkernel(void)
>>  		return;
>>  	}
>>  
>> -	if (crash_base >= (1ULL << 32) && reserve_crashkernel_low()) {
>> -		memblock_free(crash_base, crash_size);
>> -		return;
>> +	if (crash_base >= (1ULL << 32)) {
>> +		if (reserve_crashkernel_low()) {
>> +			memblock_free(crash_base, crash_size);
>> +			return;
>> +		}
>> +
>> +		insert_resource(&iomem_resource, &crashk_low_res);
> 
> 
> Previously reserve_crashkernel_low() was #ifdefed to do nothing if !CONFIG_X86_64, I don't
> see how 32bit is skipping this reservation...
> 
> 
>>  	}
>>  
>>  	pr_info("Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\n",
>> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
>> index b9b1bc5..096ad63 100644
>> --- a/include/linux/kexec.h
>> +++ b/include/linux/kexec.h
>> @@ -63,6 +63,10 @@
>>  
>>  #define KEXEC_CORE_NOTE_NAME	CRASH_CORE_NOTE_NAME
>>  
>> +#ifndef CRASH_ALIGN
>> +#define CRASH_ALIGN SZ_128M
>> +#endif
> 
> Why 128M? Wouldn't we rather each architecture tells us its minimum alignment?

Yeah, each architecture should tells us its minimum alignment. I added this default size to
fix compiling error on some architecture which didn't define it. I will add x86_64 and arm64
restriction on reserve_crashkernel_low() and delete this define.

> 
> 
>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>> index d714044..3492abd 100644
>> --- a/kernel/kexec_core.c
>> +++ b/kernel/kexec_core.c
>> @@ -39,6 +39,8 @@
>>  #include <linux/compiler.h>
>>  #include <linux/hugetlb.h>
>>  #include <linux/frame.h>
>> +#include <linux/memblock.h>
>> +#include <linux/swiotlb.h>
>>  
>>  #include <asm/page.h>
>>  #include <asm/sections.h>
>> @@ -96,6 +98,60 @@ int kexec_crash_loaded(void)
>>  }
>>  EXPORT_SYMBOL_GPL(kexec_crash_loaded);
>>  
>> +int __init reserve_crashkernel_low(void)
>> +{
>> +	unsigned long long base, low_base = 0, low_size = 0;
>> +	unsigned long total_low_mem;
>> +	int ret;
>> +
>> +	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
>> +
>> +	/* crashkernel=Y,low */
>> +	ret = parse_crashkernel_low(boot_command_line, total_low_mem,
>> +			&low_size, &base);
>> +	if (ret) {
>> +		/*
>> +		 * two parts from lib/swiotlb.c:
>> +		 * -swiotlb size: user-specified with swiotlb= or default.
>> +		 *
>> +		 * -swiotlb overflow buffer: now hardcoded to 32k. We round it
>> +		 * to 8M for other buffers that may need to stay low too. Also
>> +		 * make sure we allocate enough extra low memory so that we
>> +		 * don't run out of DMA buffers for 32-bit devices.
>> +		 */
>> +		low_size = max(swiotlb_size_or_default() + (8UL << 20),
> 
> SZ_8M?
> 
>> +				256UL << 20);
> 
> SZ_256M?
> 

There is compiling warning "warning: comparison of distinct pointer types lacks a cast" if just use
SZ_8M or SZ_256M. We need cast swiotlb_size_or_default() to type int,so i kept the old as in x86_64.

> 
>> +	} else {
>> +		/* passed with crashkernel=0,low ? */
>> +		if (!low_size)
>> +			return 0;
>> +	}
>> +
>> +	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
>> +	if (!low_base) {
>> +		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
>> +		       (unsigned long)(low_size >> 20));
>> +		return -ENOMEM;
>> +	}
>> +
>> +	ret = memblock_reserve(low_base, low_size);
>> +	if (ret) {
>> +		pr_err("%s: Error reserving crashkernel low memblock.\n",
>> +				__func__);
>> +		return ret;
>> +	}
>> +
>> +	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
>> +		(unsigned long)(low_size >> 20),
>> +		(unsigned long)(low_base >> 20),
>> +		(unsigned long)(total_low_mem >> 20));
>> +
>> +	crashk_low_res.start = low_base;
>> +	crashk_low_res.end   = low_base + low_size - 1;
>> +
>> +	return 0;
>> +}
> 
> 
> Thanks,
> 
> James
> 
> .
> 

Thanks,
Chen Zhou


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
