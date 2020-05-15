Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A191D440E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 05:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8xGQHhdpN1g82r9R5z5VizV9n45FRxfmwPVHpg1cSs=; b=MdRGgxJBqztFpa
	YbJ7zLkaf+QIu8vlCA7RYRFsTR4m/GC8Hd9E5/ieqfTpuFchF+8GdMaXI9xQOGEjkLWjItFprWjy7
	KWMmH10SUtC8y7Eh5TctNZ6Ltd0woS0q/77CQcj4z4GP5rLy7Ri/XCqGYF9Nk7rYB4elx2KkAq/LE
	LFB3XYwg6/tSzcT9s5XrMDAYO+TS3Vi9sWnCSRllin44eHibcXi9Yh91wFom7Xbn4sa+GupaGBOQH
	wpKWRTZYPr0mD8iwoOVz0lyLuTuNRW5y9VW227dKrOwFb5TPFV8ev8TEKzwqAqKOa3p8zpZh2DYtm
	G/7+loVNNP0ErOcVkREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZR1r-0001Jo-Oa; Fri, 15 May 2020 03:28:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZR1k-0001HD-I3
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 03:28:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 863611042;
 Thu, 14 May 2020 20:28:44 -0700 (PDT)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D7DF3F68F;
 Thu, 14 May 2020 20:28:41 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
To: Will Deacon <will@kernel.org>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
 <20200513150405.GS21779@arm.com>
 <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
 <20200514073613.GB4280@willie-the-truck>
Message-ID: <8ddd0ca5-07c9-3a99-2ec6-4a201725ebe8@arm.com>
Date: Fri, 15 May 2020 08:58:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200514073613.GB4280@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_202848_693491_C10D1122 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/14/2020 01:06 PM, Will Deacon wrote:
> On Thu, May 14, 2020 at 07:14:58AM +0530, Anshuman Khandual wrote:
>> On 05/13/2020 08:34 PM, Dave Martin wrote:
>>> On Thu, May 07, 2020 at 06:59:10PM +0530, Anshuman Khandual wrote:
>>>> diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
>>>> index 0f00265248b5..589ac02e1ddd 100644
>>>> --- a/arch/arm64/include/asm/hwcap.h
>>>> +++ b/arch/arm64/include/asm/hwcap.h
>>>> @@ -8,18 +8,27 @@
>>>>  #include <uapi/asm/hwcap.h>
>>>>  #include <asm/cpufeature.h>
>>>>  
>>>> +#define COMPAT_HWCAP_SWP	(1 << 0)
>>>>  #define COMPAT_HWCAP_HALF	(1 << 1)
>>>>  #define COMPAT_HWCAP_THUMB	(1 << 2)
>>>> +#define COMPAT_HWCAP_26BIT	(1 << 3)
>>>>  #define COMPAT_HWCAP_FAST_MULT	(1 << 4)
>>>> +#define COMPAT_HWCAP_FPA	(1 << 5)
>>>>  #define COMPAT_HWCAP_VFP	(1 << 6)
>>>>  #define COMPAT_HWCAP_EDSP	(1 << 7)
>>>> +#define COMPAT_HWCAP_JAVA	(1 << 8)
>>>> +#define COMPAT_HWCAP_IWMMXT	(1 << 9)
>>>> +#define COMPAT_HWCAP_CRUNCH	(1 << 10)
>>>> +#define COMPAT_HWCAP_THUMBEE	(1 << 11)
>>>>  #define COMPAT_HWCAP_NEON	(1 << 12)
>>>>  #define COMPAT_HWCAP_VFPv3	(1 << 13)
>>>> +#define COMPAT_HWCAP_VFPV3D16	(1 << 14)
>>>>  #define COMPAT_HWCAP_TLS	(1 << 15)
>>>>  #define COMPAT_HWCAP_VFPv4	(1 << 16)
>>>>  #define COMPAT_HWCAP_IDIVA	(1 << 17)
>>>>  #define COMPAT_HWCAP_IDIVT	(1 << 18)
>>>>  #define COMPAT_HWCAP_IDIV	(COMPAT_HWCAP_IDIVA|COMPAT_HWCAP_IDIVT)
>>>> +#define COMPAT_HWCAP_VFPD32	(1 << 19)
>>>>  #define COMPAT_HWCAP_LPAE	(1 << 20)
>>>>  #define COMPAT_HWCAP_EVTSTRM	(1 << 21)
>>>
>>> With the possible exception of SWP (does the swp emulation allow us to
>>> report this as supported?), I think all these weren't mentioned because
>>> they aren't included in ARMv8 and so can never be reported.
>>>
>>> If we find ourselves reporting them, there's a bug somewhere.
>>>
>>> So, can we just default all obsolete string entries to NULL?
>>>
>>> When generating the cpuinfo strings we could WARN and just emit an empty
>>> string for that hwcap.
>>
>> All these above will be a change in the existing user visible behavior on
>> the system and this patch never intended to create one.
> 
> Why is it a change? We've never reported e.g. "java" on an arm64 kernel, so

We already have "java" defined in existing compat_hwcap_str[] array even
though it might never get set in compat_elf_hwcap. AFAICS, compat_elf_hwcap
will have the following capabilities set (at the most).

Via COMPAT_ELF_HWCAP_DEFAULT

01.  COMPAT_HWCAP_HALF
02.  COMPAT_HWCAP_THUMB
03.  COMPAT_HWCAP_FAST_MULT
04.  COMPAT_HWCAP_EDSP
05.  COMPAT_HWCAP_TLS
06.  COMPAT_HWCAP_IDIV
07.  COMPAT_HWCAP_LPAE

Via setup_elf_hwcaps(compat_elf_hwcaps) <-- setup_cpu_features()

8.  COMPAT_HWCAP_NEON
9.  COMPAT_HWCAP_VFPv4
10. COMPAT_HWCAP_VFP
11. COMPAT_HWCAP_VFPv3

Via arch_timer_set_evtstrm_feature()

12. COMPAT_HWCAP_EVTSTRM

The code exists for "java" string to be displayed with /proc/cpuinfo but it
may never get triggered as compat_elf_hwcap will never have JAVA capability
unless there is a bug as you had rightly mentioned.

The current patch preserves status quo without fixing the underlying problem
("java" should have been dropped from possible /proc/cpuinfo display strings
as it can never happen). It tries to formalize what is already being done.

arch/arm64/kernel/cpuinfo.c

static int c_show(struct seq_file *m, void *v)
{
	....
#ifdef CONFIG_COMPAT
	for (j = 0; compat_hwcap_str[j]; j++)
		if (compat_elf_hwcap & (1 << j))
		seq_printf(m, " %s", compat_hwcap_str[j]);
	....
#endif
	....
}

When compat_hwcap_str[j] == "java" just define COMPAT_HWCAP_JAVA as (1 << j).

> I agree with Dave that we shouldn't be adding this string. If it /ever/ ends
> up in userspace it's because something has gone horribly wrong. NULL would
> be much better. Couldn't you achieve that by simply omitting these entries?
> e.g. deleting things like:
> 
> 	[COMPAT_KERNEL_HWCAP(JAVA)]     = "java",
> 
> completely (including the COMPAT_HWCAP_JAVA definition)?

Right, dropping these above will fix the existing underlying problem. But the
only point here is should that be done in this patch (which keeps everything
as is) or with a separate patch fixing an already existing problem.

> 
>> Hence, I will just defer this to maintainers on whether we should change
>> existing /proc/cpuinfo output (including non-practically-possible ones on
>> ARMv8) or even treat swap emulation as SWP.
> 
> SWP is fine because we emulate it and so userspace can use it. Removing that
> *would* be a change in behaviour. I don't think the compat ABI is broken
> here, so please don't change it without good reason.

Understood, this patch was not trying to change the compat ABI. SWP just gets
carried over as is like before.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
