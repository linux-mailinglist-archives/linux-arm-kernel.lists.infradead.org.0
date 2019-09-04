Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F44A78AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 04:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvmoWwDEle0yVrF4ohMVkg4UP5Vdpa46AyCAfxVogNc=; b=Ll0zzcVutL6v2V
	f2m56R6QXhDQxplfL8Pf9tTE0XzoioSSp7De+4+j9H02VwbPNDqzl3cjUtDk015PYbz4Ned3Zpr6l
	lnJXIou7W+t6UI+XD5kZ/mIkKhjdD0Z1k2ozZOSJvvRPwnw8tvrpg+XXrcJ47VqHiiRCVcH/bKcUx
	xV6rvjI9x4J3pky6uXjbsgvqAU4ftbtIlJJbdtZgrJbONlUs3b3Ld5tFGYXYNF3GxkbBw5eM0Dllc
	43oGQTqCjcH7v9u1ZeGiXNY4ZftNvkhfhR0RJJIt+LJqb05O8a8CvLJ4rsHMBWlEwGhh1TqwNMrNf
	qQ2Gd3bYBBBgC/STTdhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Kse-0008HU-BU; Wed, 04 Sep 2019 02:18:44 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5KsQ-0008GS-WF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 02:18:33 +0000
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id BC21340E4231C3AB44ED;
 Wed,  4 Sep 2019 10:18:19 +0800 (CST)
Received: from dggeme764-chm.china.huawei.com (10.3.19.110) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 10:18:11 +0800
Received: from [127.0.0.1] (10.184.39.28) by dggeme764-chm.china.huawei.com
 (10.3.19.110) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Wed, 4
 Sep 2019 10:18:11 +0800
Subject: Re: [PATCH] arm: fix page faults in do_alignment
To: "Eric W. Biederman" <ebiederm@xmission.com>, "Russell King - ARM Linux
 admin" <linux@armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <87d0gmwi73.fsf@x220.int.ebiederm.org>
 <20190830203052.GG13294@shell.armlinux.org.uk>
 <87y2zav01z.fsf@x220.int.ebiederm.org>
 <20190830222906.GH13294@shell.armlinux.org.uk>
 <87mufmioqv.fsf@x220.int.ebiederm.org>
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
Message-ID: <5D6F1EC9.5070909@huawei.com>
Date: Wed, 4 Sep 2019 10:17:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <87mufmioqv.fsf@x220.int.ebiederm.org>
X-Originating-IP: [10.184.39.28]
X-ClientProxiedBy: dggeme718-chm.china.huawei.com (10.1.199.114) To
 dggeme764-chm.china.huawei.com (10.3.19.110)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_191831_214330_C535717C 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 sakari.ailus@linux.intel.com, bhelgaas@google.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/3 1:36, Eric W. Biederman wrote:
> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> 
>> On Fri, Aug 30, 2019 at 04:02:48PM -0500, Eric W. Biederman wrote:
>>> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
>>>
>>>> On Fri, Aug 30, 2019 at 02:45:36PM -0500, Eric W. Biederman wrote:
>>>>> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
>>>>>
>>>>>> On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
>>>>>>> The function do_alignment can handle misaligned address for user and
>>>>>>> kernel space. If it is a userspace access, do_alignment may fail on
>>>>>>> a low-memory situation, because page faults are disabled in
>>>>>>> probe_kernel_address.
>>>>>>>
>>>>>>> Fix this by using __copy_from_user stead of probe_kernel_address.
>>>>>>>
>>>>>>> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
>>>>>>> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
>>>>>>
>>>>>> NAK.
>>>>>>
>>>>>> The "scheduling while atomic warning in alignment handling code" is
>>>>>> caused by fixing up the page fault while trying to handle the
>>>>>> mis-alignment fault generated from an instruction in atomic context.
>>>>>>
>>>>>> Your patch re-introduces that bug.
>>>>>
>>>>> And the patch that fixed scheduling while atomic apparently introduced a
>>>>> regression.  Admittedly a regression that took 6 years to track down but
>>>>> still.
>>>>
>>>> Right, and given the number of years, we are trading one regression for
>>>> a different regression.  If we revert to the original code where we
>>>> fix up, we will end up with people complaining about a "new" regression
>>>> caused by reverting the previous fix.  Follow this policy and we just
>>>> end up constantly reverting the previous revert.
>>>>
>>>> The window is very small - the page in question will have had to have
>>>> instructions read from it immediately prior to the handler being entered,
>>>> and would have had to be made "old" before subsequently being unmapped.
>>>
>>>> Rather than excessively complicating the code and making it even more
>>>> inefficient (as in your patch), we could instead retry executing the
>>>> instruction when we discover that the page is unavailable, which should
>>>> cause the page to be paged back in.
>>>
>>> My patch does not introduce any inefficiencies.  It onlys moves the
>>> check for user_mode up a bit.  My patch did duplicate the code.
>>>
>>>> If the page really is unavailable, the prefetch abort should cause a
>>>> SEGV to be raised, otherwise the re-execution should replace the page.
>>>>
>>>> The danger to that approach is we page it back in, and it gets paged
>>>> back out before we're able to read the instruction indefinitely.
>>>
>>> I would think either a little code duplication or a function that looks
>>> at user_mode(regs) and picks the appropriate kind of copy to do would be
>>> the best way to go.  Because what needs to happen in the two cases for
>>> reading the instruction are almost completely different.
>>
>> That is what I mean.  I'd prefer to avoid that with the large chunk of
>> code.  How about instead adding a local replacement for
>> probe_kernel_address() that just sorts out the reading, rather than
>> duplicating all the code to deal with thumb fixup.
> 
> So something like this should be fine?
> 
> Jing Xiangfeng can you test this please?  I think this fixes your issue
> but I don't currently have an arm development box where I could test this.
> 
Yes, I have tested and it can fix my issue in kernel 4.19.

> diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
> index 04b36436cbc0..b07d17ca0ae5 100644
> --- a/arch/arm/mm/alignment.c
> +++ b/arch/arm/mm/alignment.c
> @@ -767,6 +767,23 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
>  	return NULL;
>  }
>  
> +static inline unsigned long
> +copy_instr(bool umode, void *dst, unsigned long instrptr, size_t size)
> +{
> +	unsigned long result;
> +	if (umode) {
> +		void __user *src = (void *)instrptr;
> +		result = copy_from_user(dst, src, size);
> +	} else {
> +		void *src = (void *)instrptr;
> +		result = probe_kernel_read(dst, src, size);
> +	}
> +	/* Convert short reads into -EFAULT */
> +	if ((result >= 0) && (result < size))
> +		result = -EFAULT;
> +	return result;
> +}
> +
>  static int
>  do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
>  {
> @@ -778,22 +795,24 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
>  	u16 tinstr = 0;
>  	int isize = 4;
>  	int thumb2_32b = 0;
> +	bool umode;
>  
>  	if (interrupts_enabled(regs))
>  		local_irq_enable();
>  
>  	instrptr = instruction_pointer(regs);
> +	umode = user_mode(regs);
>  
>  	if (thumb_mode(regs)) {
> -		u16 *ptr = (u16 *)(instrptr & ~1);
> -		fault = probe_kernel_address(ptr, tinstr);
> +		unsigned long tinstrptr = instrptr & ~1;
> +		fault = copy_instr(umode, &tinstr, tinstrptr, 2);
>  		tinstr = __mem_to_opcode_thumb16(tinstr);
>  		if (!fault) {
>  			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
>  			    IS_T32(tinstr)) {
>  				/* Thumb-2 32-bit */
>  				u16 tinst2 = 0;
> -				fault = probe_kernel_address(ptr + 1, tinst2);
> +				fault = copy_instr(umode, &tinst2, tinstrptr + 2, 2);
>  				tinst2 = __mem_to_opcode_thumb16(tinst2);
>  				instr = __opcode_thumb32_compose(tinstr, tinst2);
>  				thumb2_32b = 1;
> @@ -803,7 +822,7 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
>  			}
>  		}
>  	} else {
> -		fault = probe_kernel_address((void *)instrptr, instr);
> +		fault = copy_instr(umode, &instr, instrptr, 4);
>  		instr = __mem_to_opcode_arm(instr);
>  	}
>  
> @@ -812,7 +831,7 @@ do_alignment(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
>  		goto bad_or_fault;
>  	}
>  
> -	if (user_mode(regs))
> +	if (umode)
>  		goto user;
>  
>  	ai_sys += 1;
> 
> .
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
