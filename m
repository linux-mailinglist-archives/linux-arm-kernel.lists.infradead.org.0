Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE78E139E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 14:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8HSkOx0uZoVlQXLr8dRln1tdokIpVdLk0yWHJR2X3IE=; b=CWfuucr4K6iOODzTx0JmtHc94
	65Denk7+j2pRcffRc4iS+m1nIVyEK0DEVb5VCTq/9x+wCRfASemCkST2pv+09OnzNyYLpH7tTAqrP
	EfE/u1PNkA2STXM46tQa+j8ArRQRCIO6bprrZnrRz8oinCFgywSXEENB40BA77rIv83pZ+uQVZum7
	RjascWQDuF0aoX+n8QpskgvlIqReaoN67xo+4GxnZzKNMY3/g7gCSii8BX8vyzSVqdQ+YelVOuVmJ
	Ds0tHxZCH3mzuxF818QCK5XWKH1PbeMnPD6/N3+gMIgQl29I3LrnVJUdCkyU8hzFLyuqoP6R7zjG4
	4iujGceMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMuBA-0004aj-MC; Sat, 04 May 2019 12:54:12 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuB2-0004Zb-Kj
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 12:54:07 +0000
Received: by mail-pf1-f196.google.com with SMTP id v80so4311486pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 05:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CqD0yBLy8fiu8lDmkeW7ISRq/jukQ05kPPTcy7NIEDg=;
 b=bSDOOk9DRjLrRY61qPObIjIxVHQt5utG7vak3zicMdh4wxNkBmzlHqSA4zU7epHdMe
 lMRGvH9Kd8TD5gdreHjaB4NLZod4GJOwgpixPYkcKIvgoddceOhgoonbVE0Qxz59ddb0
 DNPzxW7FA1e4S61ATcwjyK+Ux7nvwwNZ1dNVl6T9njHsNAzq+VNGrmqDoGKJEqkYVkhT
 n2JjDmiTzGpUGAjFGe00fUOO2EDZtjR5al5IkhSneObNPXbnetFrGHpKNJDu0Qjfkb04
 iymWk11cweyCNuYa0GqCKAhStrKlMAPGrvCHpFDfSl7fDrJVgCJiIgmkJU7kM6C9p/01
 ANfg==
X-Gm-Message-State: APjAAAUbT1S0zei+5yPBXbk/JM4OJ2nd+qDeItm4lGJ8bEw+rC7d9Ro1
 RRdSuX9JJ9pegkY+y0LPjtpOKw==
X-Google-Smtp-Source: APXvYqzc3Fx6lfWjKGpMmVUlhGg4wxF/Ql7pB9YkwMEMHZudGElf/WeNEscSXnPVz1IYgcTfZ+AbbA==
X-Received: by 2002:a62:5144:: with SMTP id f65mr19008663pfb.13.1556974443200; 
 Sat, 04 May 2019 05:54:03 -0700 (PDT)
Received: from localhost.localdomain ([182.69.197.204])
 by smtp.gmail.com with ESMTPSA id p7sm5959264pgk.10.2019.05.04.05.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 05:54:01 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] arm64, vmcoreinfo : Append 'PTRS_PER_PGD' to
 vmcoreinfo
From: Bhupesh Sharma <bhsharma@redhat.com>
To: James Morse <james.morse@arm.com>
References: <1553058574-18606-1-git-send-email-bhsharma@redhat.com>
 <1553058574-18606-2-git-send-email-bhsharma@redhat.com>
 <2757805b-61cb-8f4a-1917-0c57012f09df@arm.com>
 <58c6cda9-9fd4-3b3e-740a-7b9b80b1f634@redhat.com>
 <a48bb02c-8f93-4e3b-085d-a6f0e5a1f3a0@arm.com>
 <66da4098-b221-408b-50ca-f3790b943965@redhat.com>
Message-ID: <380b137b-a611-5c8d-3890-8021084f87fe@redhat.com>
Date: Sat, 4 May 2019 18:23:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <66da4098-b221-408b-50ca-f3790b943965@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_055404_685228_7895F015 
X-CRM114-Status: GOOD (  44.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Steve Capper <Steve.Capper@arm.com>, kexec@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/03/2019 11:24 PM, Bhupesh Sharma wrote:
> Hi James,
> 
> On 04/02/2019 10:56 PM, James Morse wrote:
>> Hi Bhupesh,
>>
>> On 28/03/2019 11:42, Bhupesh Sharma wrote:
>>> On 03/26/2019 10:06 PM, James Morse wrote:
>>>> On 20/03/2019 05:09, Bhupesh Sharma wrote:
>>>>> With ARMv8.2-LVA architecture extension availability, arm64 hardware
>>>>> which supports this extension can support a virtual address-space upto
>>>>> 52-bits.
>>>>>
>>>>> Since at the moment we enable the support of this extension in kernel
>>>>> via CONFIG flags, e.g.
>>>>>    - User-space 52-bit LVA via CONFIG_ARM64_USER_VA_BITS_52
>>>>>
>>>>> so, there is no clear mechanism in the user-space right now to
>>>>> determine these CONFIG flag values and hence determine the maximum
>>>>> virtual address space supported by the underlying kernel.
>>>>>
>>>>> User-space tools like 'makedumpfile' therefore are broken currently
>>>>> as they have no proper method to calculate the 'PTRS_PER_PGD' value
>>>>> which is required to perform a page table walk to determine the
>>>>> physical address of a corresponding virtual address found in
>>>>> kcore/vmcoreinfo.
>>>>>
>>>>> If one appends 'PTRS_PER_PGD' number to vmcoreinfo for arm64,
>>>>> it can be used in user-space to determine the maximum virtual address
>>>>> supported by underlying kernel.
>>>>
>>>> I don't think this really solves the problem, it feels fragile.
>>>>
>>>> I can see how vmcoreinfo tells you VA_BITS==48, PAGE_SIZE==64K and 
>>>> PTRS_PER_PGD=1024.
>>>> You can use this to work out that the top level page table size 
>>>> isn't consistent with a
>>>> 48bit VA, so 52bit VA must be in use...
>>>>
>>>> But wasn't your problem walking the kernel page tables? In 
>>>> particular the offset that we
>>>> apply because the tables were based on a 48bit VA shifted up in 
>>>> swapper_pg_dir.
>>>>
>>>> Where does the TTBR1_EL1 offset come from with this property? I 
>>>> assume makedumpfile
>>>> hard-codes it when it sees 52bit is in use ... somewhere.
>>>> We haven't solved the problem!
>>
>>> But isn't the TTBR1_EL1 offset already appended by the kernel via 
>>> e842dfb5a2d3 ("arm64:
>>> mm: Offset TTBR1 to allow 52-bit PTRS_PER_PGD")
>>> in case of kernel configuration where 52-bit userspace VAs are possible.
>>
>>> Accordingly we have the following assembler helper in 
>>> 'arch/arm64/include/asm/assembler.h':
>>>
>>>         .macro  offset_ttbr1, ttbr
>>> #ifdef CONFIG_ARM64_52BIT_VA
>>>         orr     \ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
>>> #endif
>>>         .endm
>>>
>>> where:
>>> #ifdef CONFIG_ARM64_52BIT_VA
>>> /* Must be at least 64-byte aligned to prevent corruption of the TTBR */
>>> #define TTBR1_BADDR_4852_OFFSET        (((UL(1) << (52 - 
>>> PGDIR_SHIFT)) - \
>>>                                  (UL(1) << (48 - PGDIR_SHIFT))) * 8)
>>> #endif
>>
>> Sure, and all this would work today, because there is only one weird 
>> combination. But once
>> we support another combination of 52bit-va, you'd either need another 
>> value, or to start
>> using PTRS_PER_PGD as a flag for v5.1_FUNNY_BEHAVIOUR_ONE.
> 
> I completed my user-space experimentation with 52-bit kernel VA changes 
> from Steve today and have shared a detailed review on his patchset (See 
> <http://lists.infradead.org/pipermail/kexec/2019-April/022750.html>).
> 
> But first let me share some opinion on how we are adding the 52-bit 
> address space changes for arm64 in the kernel.
> 
> I think we have ended up adding just a bit _too many_ CONFIG and MACRO 
> values for the increased address space changes. For e.g. after the 
> 52-bit kernel VA changes we have at-least 4 macros which explain the VA 
> address range with CONFIG_ARM64_USER_KERNEL_VA_BITS_52=y:
> 
> VA_BITS = 52,
> VA_BITS_ACTUAL = vabits_actual = 48,
> VA_BITS_MIN = min (48, VA_BITS) = 48.
> PTRS_PER_PGD = 64 (48-bit) or 1024 (52-bit)
> 
> Of these, VA_BITS, VA_BITS_ACTUAL and PTRS_PER_PGD are definitely of 
> interest in the userspace as they define:
> 
> 1.
>   /*
>      * VMEMMAP_SIZE - allows the whole linear region to be covered by
>      *                a struct page array
>      */
>     #define VMEMMAP_SIZE (UL(1) << (VA_BITS - PAGE_SHIFT - 1 + 
> STRUCT_PAGE_MAX_SHIFT))
> 
> 2. #define __is_lm_address(addr)    (!((addr) & BIT(VA_BITS_ACTUAL - 1)))
> 
> We have discussed the usage of PTRS_PER_PGD in userspace already at 
> quite some length, so I will focus on the other two below (VA_BITS and 
> VA_BITS_ACUAL).
> 
> Both are critical for determining VMEMMAP_SIZE and whether a virtual 
> address lies in the linear map range respectively.
> 
> I don't see any standard mechanism other than the following to achieve a 
> working user-space with these changes:
> - a sysfs node (may be a 
> '/sys/devices/system/cpu/addressing-capabilities' node?) or HWCAP 
> capability export for user-space utilities which perform a live analysis 
> and use the above variables.
> - exporting these variables in vmcoreinfo (for analysis of crash dump).
> 
> VA_BITS is already exported in vmcoreinfo, whereas I have proposed 
> exporting PTRS_PER_PGD to vmcoreinfo via this patch.
> 
> For 52-bit kernel VA changes, VA_BITS_ACTUAL will also be needed in 
> vmcoreinfo (See 
> <http://lists.infradead.org/pipermail/kexec/2019-April/022750.html> for 
> details).
> 
>>> Note that the above computation holds true both for PTRS_PER_PGD = 64 
>>> (48-bit kernel with
>>> 48-bit User VA) and 1024 (48-bit with 52-bit User VA) cases. And 
>>> these are the
>>> configurations for which we are trying to fix the user-space 
>>> regressions reported (on
>>> arm64) recently.
>>
>> ... and revisit it when there is another combination?
> 
> See above.
> 
>>>> Today __cpu_setup() sets T0SZ and T1SZ differently for 52bit VA, but 
>>>> in the future it
>>>> could set them the same, or different the other-way-round.
>>>>
>>>> Will makedumpfile using this value keep working once T1SZ is 52bit 
>>>> VA too? In this case
>>>> there would be no ttbr offset.
>>>>
>>>> If you need another vmcoreinfo flag once that happens, we've done 
>>>> something wrong here.
>>>
>>> I am currently experimenting with Steve's patches for 52-bit kernel VA
>>> (<https://lwn.net/Articles/780093/>) and will comment more on the 
>>> same when I am able to
>>> get the user-space utilities like makedumpfile and kexec-tools to 
>>> work with the same on
>>> both ARMv8 Fast Simulator model and older CPUs which don't support 
>>> ARMv8.2 extensions.
>>
>>> However, I think we should not hold up fixes for regressions already 
>>> reported, because the
>>> 52-bit kernel VA changes probably still need some more rework.
>>
>> Chucking things into vmcoreinfo isn't free: we need to keep them there 
>> forever, otherwise
>> yesterdays version of the tools breaks. Can we take the time to get 
>> this right for the
>> cases we know about?
> 
> Sure, but exporting variable(s) in vmcoreinfo in directly related to the 
> information variable(s) we add in the kernel side without which the 
> user-space would break.
> 
> I have added the requirements for 52-bit kernel VA above (i.e we need an 
> additional VA_BITS_ACTUAL variable export'ed rather than any tinkering 
> with already proposed PTRS_PER_PGD).
> 
> May be this is a good time to also talk about minimizing the kernel 
> interfaces we are proposing to hold and indicate normal (48-bit) and 
> extended (52-bit) address spaces on arm64.
> 
> Ideally, we would want to simplify it further to be on similar lines as 
> x86:
> CONFIG_X86_5LEVEL=y
> vmcoreinfo_append_str("NUMBER(pgtable_l5_enabled)=%d\n",
>              pgtable_l5_enabled());
> 
> which seems much cleaner..
> 
> I am open to any suggestions on the same.
> 
>> Yes the kernel code is going to move around, this is why the 
>> information we expose via
>> vmcoreinfo needs to be thought through: something we would always 
>> need, regardless of how
>> the kernel implements it.
>>
>>
>>>> (Not to mention what happens if the TTBR1_EL1 uses 52bit va, but 
>>>> TTBR0_EL1 doesn't)
>>>
>>> I am wondering if there are any real users of the above combination.
>>
>> Heh! Is there any hardware that supports this?
>>
>> Pointer-auth changes all this again, as we may prefer to use the bits 
>> for pointer-auth in
>> one TTB or the other. PTRS_PER_PGD may show the 52bit value in this 
>> case, but neither TTBR
>> is mapping 52bits of VA.
>>
>>
>>> So far, I have generally come across discussions where the following 
>>> variations of the
>>> address spaces have been proposed/requested:
>>> - 48bit kernel VA + 48-bit User VA,
>>> - 48-bit kernel VA + 52-bit User VA,
>>
>> + 52bit kernel, because there is excessive quantities of memory, and 
>> the kernel maps it
>> all, but 48-bit user, because it never maps all the memory, and we 
>> prefer the bits for
>> pointer-auth.
>>
>>> - 52-bit kernel VA + 52-bit User VA.
>>
>> And...  all four may happen with the same built image. I don't see how 
>> you can tell these
>> cases apart with the one (build-time-constant!) PTRS_PER_PGD value.
>>
>> I'm sure some of these cases are hypothetical, but by considering it 
>> all now, we can avoid
>> three more kernel:vmcoreinfo updates, and three more 
>> fix-user-space-to-use-the-new-value.
> 
> Agree.
> 
>> I think you probably do need PTRS_PER_PGD, as this is the one value 
>> the mm is using to
>> generate page tables. I'm pretty sure you also need T0SZ and T1SZ to 
>> know if that's
>> actually in use, or the kernel is bodging round it with an offset.
> 
> Sure, I am open to suggestions (as I realize that we need an additional 
> VA_BITS_ACTUAL variable export'ed for 52-bit kernel VA changes).
> 
> Also how do we standardize reading T0SZ and T1SZ in user-space. Do you 
> propose I make an enhancement in the cpu-feature-registers interface 
> (see [1]) or the HWCAPS interface (see [2]) for the same?
> 
> [1]. 
> https://www.kernel.org/doc/Documentation/arm64/cpu-feature-registers.txt
> [2]. https://www.kernel.org/doc/Documentation/arm64/elf_hwcaps.txt
> 
> Thanks,
> Bhupesh

Ping.

Hi James, Steve,

Any comments on the above points? At the moment we have to carry these 
fixes in the distribution kernels and I would like to have these fixed 
in upstream kernel itself.

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
