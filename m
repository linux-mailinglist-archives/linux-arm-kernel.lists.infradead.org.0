Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E921D19D0F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mofVV1JZA2F+bJKDToisPHZEda8j7mJfDMq3vbLVLNY=; b=JH6DKSKv5+5kYP
	VlZVdaDQ04HQPxvJniKl71iJjCqSf/MNJ8WPONyIEtjHUZL5WQIMe1qQcafcSuUEGv7t7HGWGDjwn
	jqAUxLodUvejVm1G/qZBOhPzOSkykE5UsAx7XBkX4Xg5nj2RrsVFGcPQ40ugUxIlzrC+eaosDpANu
	Tzyr1s5s8vOMhbg8Y+yEMTAJEZpQBEoemJcv+/Iuo3pOBybhF8ph5Q1tE5TPVMOH37Oh2+vThSTmW
	rRz7NJeU0ycrIpEnuUiKQLqGa/AkYceBF4atNJJ4GHgAGuG6iKlZAZZaZPzGGLizNz+3GaumCcev7
	rEKJ4toWBCekN+U9FvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGX4-0004mf-79; Fri, 03 Apr 2020 07:14:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGWo-0004h9-MP; Fri, 03 Apr 2020 07:14:13 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7BF5FCFBE00A849D079A;
 Fri,  3 Apr 2020 15:13:41 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Fri, 3 Apr 2020
 15:13:34 +0800
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
To: Dave Young <dyoung@redhat.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <75429528-ba74-cfd3-b5bc-df5425ac0496@huawei.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <38281780-5f3d-63dd-77cb-599815173c3c@huawei.com>
Date: Fri, 3 Apr 2020 15:13:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <75429528-ba74-cfd3-b5bc-df5425ac0496@huawei.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_001411_470443_598A5ED3 
X-CRM114-Status: GOOD (  27.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: kbuild test robot <lkp@intel.com>, horms@verge.net.au,
 linux-doc@vger.kernel.org, catalin.marinas@arm.com, bhsharma@redhat.com,
 xiexiuqi@huawei.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, james.morse@arm.com, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 2019/12/31 9:39, Chen Zhou wrote:
> Hi Dave,
> 
> On 2019/12/28 17:32, Dave Young wrote:
>> On 12/27/19 at 07:04pm, Chen Zhou wrote:
>>> Hi Dave
>>>
>>> On 2019/12/27 13:54, Dave Young wrote:
>>>> Hi,
>>>> On 12/23/19 at 11:23pm, Chen Zhou wrote:
>>>>> In preparation for supporting reserve_crashkernel_low in arm64 as
>>>>> x86_64 does, move reserve_crashkernel_low() into kernel/crash_core.c.
>>>>>
>>>>> Note, in arm64, we reserve low memory if and only if crashkernel=X,low
>>>>> is specified. Different with x86_64, don't set low memory automatically.
>>>>
>>>> Do you have any reason for the difference?  I'd expect we have same
>>>> logic if possible and remove some of the ifdefs.
>>>
>>> In x86_64, if we reserve crashkernel above 4G, then we call reserve_crashkernel_low()
>>> to reserve low memory.
>>>
>>> In arm64, to simplify, we call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
>>> and then relax the arm64_dma32_phys_limit if reserve_crashkernel_low() allocated something.
>>> In this case, if reserve crashkernel below 4G there will be 256M low memory set automatically
>>> and this needs extra considerations.
>>
>> Sorry that I did not read the old thread details and thought that is
>> arch dependent.  But rethink about that, it would be better that we can
>> have same semantic about crashkernel parameters across arches.  If we
>> make them different then it causes confusion, especially for
>> distributions.
>>
>> OTOH, I thought if we reserve high memory then the low memory should be
>> needed.  There might be some exceptions, but I do not know the exact
>> one, can we make the behavior same, and special case those systems which
>> do not need low memory reservation.
>>
> I thought like this and did implement with crashkernel parameters arch independent.
> This is my v4: https://lkml.org/lkml/2019/5/6/1361, i implemented according to x86_64's
> behavior.
> 
>>>
>>> previous discusses:
>>> 	https://lkml.org/lkml/2019/6/5/670
>>> 	https://lkml.org/lkml/2019/6/13/229
>>
>> Another concern from James:
>> "
>> With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
>> "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
>> find "Crash kernel", you are always going to get the kernel placed in the lower portion.
>> "
>>
>> The kexec-tools code is iterating all "Crash kernel" ranges and add them
>> in an array.  In X86 code, it uses the higher range to locate memory.
> 
> We also discussed about this: https://lkml.org/lkml/2019/6/13/227.
> I guess James's opinion is that kexec-tools should take forward compatibility into account.
> "But we can't rely on people updating user-space when they update the kernel!" -- James
> 
>>
>>>
>>>>
>>>>>
>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>>>>> ---
>>>>>  arch/x86/kernel/setup.c    | 62 ++++-----------------------------
>>>>>  include/linux/crash_core.h |  3 ++
>>>>>  include/linux/kexec.h      |  2 --
>>>>>  kernel/crash_core.c        | 87 ++++++++++++++++++++++++++++++++++++++++++++++
>>>>>  kernel/kexec_core.c        | 17 ---------
>>>>>  5 files changed, 96 insertions(+), 75 deletions(-)
>>>>>
>>>>> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
>>>>> index cedfe20..5f38942 100644
>>>>> --- a/arch/x86/kernel/setup.c
>>>>> +++ b/arch/x86/kernel/setup.c
>>>>> @@ -486,59 +486,6 @@ static void __init memblock_x86_reserve_range_setup_data(void)
>>>>>  # define CRASH_ADDR_HIGH_MAX	SZ_64T
>>>>>  #endif
>>>>>  
>>>>> -static int __init reserve_crashkernel_low(void)
>>>>> -{
>>>>> -#ifdef CONFIG_X86_64
>>>>> -	unsigned long long base, low_base = 0, low_size = 0;
>>>>> -	unsigned long total_low_mem;
>>>>> -	int ret;
>>>>> -
>>>>> -	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
>>>>> -
>>>>> -	/* crashkernel=Y,low */
>>>>> -	ret = parse_crashkernel_low(boot_command_line, total_low_mem, &low_size, &base);
>>>>> -	if (ret) {
>>>>> -		/*
>>>>> -		 * two parts from kernel/dma/swiotlb.c:
>>>>> -		 * -swiotlb size: user-specified with swiotlb= or default.
>>>>> -		 *
>>>>> -		 * -swiotlb overflow buffer: now hardcoded to 32k. We round it
>>>>> -		 * to 8M for other buffers that may need to stay low too. Also
>>>>> -		 * make sure we allocate enough extra low memory so that we
>>>>> -		 * don't run out of DMA buffers for 32-bit devices.
>>>>> -		 */
>>>>> -		low_size = max(swiotlb_size_or_default() + (8UL << 20), 256UL << 20);
>>>>> -	} else {
>>>>> -		/* passed with crashkernel=0,low ? */
>>>>> -		if (!low_size)
>>>>> -			return 0;
>>>>> -	}
>>>>> -
>>>>> -	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
>>>>> -	if (!low_base) {
>>>>> -		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
>>>>> -		       (unsigned long)(low_size >> 20));
>>>>> -		return -ENOMEM;
>>>>> -	}
>>>>> -
>>>>> -	ret = memblock_reserve(low_base, low_size);
>>>>> -	if (ret) {
>>>>> -		pr_err("%s: Error reserving crashkernel low memblock.\n", __func__);
>>>>> -		return ret;
>>>>> -	}
>>>>> -
>>>>> -	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
>>>>> -		(unsigned long)(low_size >> 20),
>>>>> -		(unsigned long)(low_base >> 20),
>>>>> -		(unsigned long)(total_low_mem >> 20));
>>>>> -
>>>>> -	crashk_low_res.start = low_base;
>>>>> -	crashk_low_res.end   = low_base + low_size - 1;
>>>>> -	insert_resource(&iomem_resource, &crashk_low_res);
>>>>> -#endif
>>>>> -	return 0;
>>>>> -}
>>>>> -
>>>>>  static void __init reserve_crashkernel(void)
>>>>>  {
>>>>>  	unsigned long long crash_size, crash_base, total_mem;
>>>>> @@ -602,9 +549,12 @@ static void __init reserve_crashkernel(void)
>>>>>  		return;
>>>>>  	}
>>>>>  
>>>>> -	if (crash_base >= (1ULL << 32) && reserve_crashkernel_low()) {
>>>>> -		memblock_free(crash_base, crash_size);
>>>>> -		return;
>>>>> +	if (crash_base >= (1ULL << 32)) {
>>>>> +		if (reserve_crashkernel_low()) {
>>>>> +			memblock_free(crash_base, crash_size);
>>>>> +			return;
>>>>> +		}
>>>>> +		insert_resource(&iomem_resource, &crashk_low_res);
>>>>
>>>> Some specific reason to move insert_resouce out of the
>>>> reserve_crashkernel_low function?
>>>
>>> No specific reason.
>>> I just exposed arm64 "Crash kernel low" in request_standard_resources() as other resources,
>>> so did this change.
>>
>> Ok.
>>
>>>
>>>>
>>>>>  	}
>>>>>  
>>>>>  	pr_info("Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\n",
>>>>> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
>>>>> index 525510a..4df8c0b 100644
>>>>> --- a/include/linux/crash_core.h
>>>>> +++ b/include/linux/crash_core.h
>>>>> @@ -63,6 +63,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>>>>>  extern unsigned char *vmcoreinfo_data;
>>>>>  extern size_t vmcoreinfo_size;
>>>>>  extern u32 *vmcoreinfo_note;
>>>>> +extern struct resource crashk_res;
>>>>> +extern struct resource crashk_low_res;
>>>>>  
>>>>>  Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>>>>>  			  void *data, size_t data_len);
>>>>> @@ -74,5 +76,6 @@ int parse_crashkernel_high(char *cmdline, unsigned long long system_ram,
>>>>>  		unsigned long long *crash_size, unsigned long long *crash_base);
>>>>>  int parse_crashkernel_low(char *cmdline, unsigned long long system_ram,
>>>>>  		unsigned long long *crash_size, unsigned long long *crash_base);
>>>>> +int __init reserve_crashkernel_low(void);
>>>>>  
>>>>>  #endif /* LINUX_CRASH_CORE_H */
>>>>> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
>>>>> index 1776eb2..5d5d963 100644
>>>>> --- a/include/linux/kexec.h
>>>>> +++ b/include/linux/kexec.h
>>>>> @@ -330,8 +330,6 @@ extern int kexec_load_disabled;
>>>>>  
>>>>>  /* Location of a reserved region to hold the crash kernel.
>>>>>   */
>>>>> -extern struct resource crashk_res;
>>>>> -extern struct resource crashk_low_res;
>>>>>  extern note_buf_t __percpu *crash_notes;
>>>>>  
>>>>>  /* flag to track if kexec reboot is in progress */
>>>>> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
>>>>> index 9f1557b..eb72fd6 100644
>>>>> --- a/kernel/crash_core.c
>>>>> +++ b/kernel/crash_core.c
>>>>> @@ -7,6 +7,8 @@
>>>>>  #include <linux/crash_core.h>
>>>>>  #include <linux/utsname.h>
>>>>>  #include <linux/vmalloc.h>
>>>>> +#include <linux/memblock.h>
>>>>> +#include <linux/swiotlb.h>
>>>>>  
>>>>>  #include <asm/page.h>
>>>>>  #include <asm/sections.h>
>>>>> @@ -19,6 +21,22 @@ u32 *vmcoreinfo_note;
>>>>>  /* trusted vmcoreinfo, e.g. we can make a copy in the crash memory */
>>>>>  static unsigned char *vmcoreinfo_data_safecopy;
>>>>>  
>>>>> +/* Location of the reserved area for the crash kernel */
>>>>> +struct resource crashk_res = {
>>>>> +	.name  = "Crash kernel",
>>>>> +	.start = 0,
>>>>> +	.end   = 0,
>>>>> +	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
>>>>> +	.desc  = IORES_DESC_CRASH_KERNEL
>>>>> +};
>>>>> +struct resource crashk_low_res = {
>>>>> +	.name  = "Crash kernel",
>>>>> +	.start = 0,
>>>>> +	.end   = 0,
>>>>> +	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
>>>>> +	.desc  = IORES_DESC_CRASH_KERNEL
>>>>> +};
>>>>> +
>>>>>  /*
>>>>>   * parsing the "crashkernel" commandline
>>>>>   *
>>>>> @@ -292,6 +310,75 @@ int __init parse_crashkernel_low(char *cmdline,
>>>>>  				"crashkernel=", suffix_tbl[SUFFIX_LOW]);
>>>>>  }
>>>>>  
>>>>> +#if defined(CONFIG_X86_64)
>>>>> +#define CRASH_ALIGN		SZ_16M
>>>>> +#elif defined(CONFIG_ARM64)
>>>>> +#define CRASH_ALIGN		SZ_2M
>>>>> +#endif
>>>>
>>>> I think no need to have the #ifdef, although I can not think out of
>>>> reason we have 16M for X86, maybe move it to 2M as well if no other
>>>> objections.  Then it will be easier to reserve crashkernel successfully
>>>> considering nowadays we have KASLR and other stuff it becomes harder.
>>>
>>> I also don't figure out why it is 16M in x86.
>>
>> IMHO, if we do not know why and in theory it should work with 2M, can
>> you do some basic testing and move it to 2M?
>>
>> We can easily move back to 16M if someone really report something, but
>> if we do not change it will always stay there but we do not know why.
> 
> Ok. I will do some test later.

Recently, i tested with 2M alignment in x86 and the system works well.

Besides, i found memblock_find_in_range() in reserve_crashkernel()
restrict the lower bound of the range to "CRASH_ALIGN".
If we can make memblock_find_in_range() search from the start of memory?

The code is as follows:

static void __init reserve_crashkernel(void)
{
	...
	if (!high)
            crash_base = memblock_find_in_range(CRASH_ALIGN,
                        CRASH_ADDR_LOW_MAX,
                        crash_size, CRASH_ALIGN);
        if (!crash_base)
            crash_base = memblock_find_in_range(CRASH_ALIGN,
                        CRASH_ADDR_HIGH_MAX,
                        crash_size, CRASH_ALIGN);

Thanks,
Chen Zhou
> 
>>
>>>
>>>>
>>>>> +
>>>>> +int __init reserve_crashkernel_low(void)
>>>>> +{
>>>>> +#if defined(CONFIG_X86_64) || defined(CONFIG_ARM64)
>>>>> +	unsigned long long base, low_base = 0, low_size = 0;
>>>>> +	unsigned long total_low_mem;
>>>>> +	int ret;
>>>>> +
>>>>> +	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
>>>>> +
>>>>> +	/* crashkernel=Y,low */
>>>>> +	ret = parse_crashkernel_low(boot_command_line, total_low_mem, &low_size,
>>>>> +			&base);
>>>>> +	if (ret) {
>>>>> +#ifdef CONFIG_X86_64
>>>>> +		/*
>>>>> +		 * two parts from lib/swiotlb.c:
>>>>> +		 * -swiotlb size: user-specified with swiotlb= or default.
>>>>> +		 *
>>>>> +		 * -swiotlb overflow buffer: now hardcoded to 32k. We round it
>>>>> +		 * to 8M for other buffers that may need to stay low too. Also
>>>>> +		 * make sure we allocate enough extra low memory so that we
>>>>> +		 * don't run out of DMA buffers for 32-bit devices.
>>>>> +		 */
>>>>> +		low_size = max(swiotlb_size_or_default() + (8UL << 20),
>>>>> +				256UL << 20);
>>>>> +#else
>>>>> +		/*
>>>>> +		 * in arm64, reserve low memory if and only if crashkernel=X,low
>>>>> +		 * specified.
>>>>> +		 */
>>>>> +		return -EINVAL;
>>>>> +#endif
>>>>
>>>> As said before, can you explore about why it needs different logic, it
>>>> would be good to keep two arches same.
>>>>
>>>>> +	} else {
>>>>> +		/* passed with crashkernel=0,low ? */
>>>>> +		if (!low_size)
>>>>> +			return 0;
>>>>> +	}
>>>>> +
>>>>> +	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
>>>>> +	if (!low_base) {
>>>>> +		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
>>>>> +		       (unsigned long)(low_size >> 20));
>>>>> +		return -ENOMEM;
>>>>> +	}
>>>>> +
>>>>> +	ret = memblock_reserve(low_base, low_size);
>>>>> +	if (ret) {
>>>>> +		pr_err("%s: Error reserving crashkernel low memblock.\n",
>>>>> +				__func__);
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
>>>>> +		(unsigned long)(low_size >> 20),
>>>>> +		(unsigned long)(low_base >> 20),
>>>>> +		(unsigned long)(total_low_mem >> 20));
>>>>> +
>>>>> +	crashk_low_res.start = low_base;
>>>>> +	crashk_low_res.end   = low_base + low_size - 1;
>>>>> +#endif
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>>  Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>>>>>  			  void *data, size_t data_len)
>>>>>  {
>>>>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>>>>> index 15d70a9..458d093 100644
>>>>> --- a/kernel/kexec_core.c
>>>>> +++ b/kernel/kexec_core.c
>>>>> @@ -53,23 +53,6 @@ note_buf_t __percpu *crash_notes;
>>>>>  /* Flag to indicate we are going to kexec a new kernel */
>>>>>  bool kexec_in_progress = false;
>>>>>  
>>>>> -
>>>>> -/* Location of the reserved area for the crash kernel */
>>>>> -struct resource crashk_res = {
>>>>> -	.name  = "Crash kernel",
>>>>> -	.start = 0,
>>>>> -	.end   = 0,
>>>>> -	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
>>>>> -	.desc  = IORES_DESC_CRASH_KERNEL
>>>>> -};
>>>>> -struct resource crashk_low_res = {
>>>>> -	.name  = "Crash kernel",
>>>>> -	.start = 0,
>>>>> -	.end   = 0,
>>>>> -	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
>>>>> -	.desc  = IORES_DESC_CRASH_KERNEL
>>>>> -};
>>>>> -
>>>>>  int kexec_should_crash(struct task_struct *p)
>>>>>  {
>>>>>  	/*
>>>>> -- 
>>>>> 2.7.4
>>>>>
>>>>
>>>> Thanks
>>>> Dave
>>>>
>>>>
>>>> .
>>>>
>>> Thanks,
>>> Chen Zhou
>>>
>>
>> Thanks
>> Dave
>>
>>
> 
> Thanks,
> Chen Zhou
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
