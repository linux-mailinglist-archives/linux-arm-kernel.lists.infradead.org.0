Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4524D1C6FE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yC7/X1DhTxpERM6KONCsRaKyZSDzki4FDoW+7CqSZyA=; b=R4E/L4S3bR/LNEoSjX+4rWuXW
	IJnT2DtTLAAJrHc4uiKnkcdxvpKb6iVN+k+YPD2+h4I/qQGZ/CJJnlwH2SwMumjSyAQaJZ/elbrG5
	NL71K5gu4GKo64QW5gA/sNorRXOGIDkrC35+x4MkAhKrpP1RgYxFIQUG7knsFVoc2Zb+th+BsaXqw
	9So7MaB5bBqBE//Wbu7EaPrrFPflsnqpKVNYyvz5Hc743B8Yp8Qef32tsJ1z21oKoApT3amfmxl9m
	yU7Y6EjfkNdOR9ZaKIYQcoeDPK955XpvIxK4dYX6k+LVKjPmifxHBbpo/aXcKtiZcQG9EnLmLAoch
	Do1/oEhUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIm3-0004gL-NP; Wed, 06 May 2020 12:03:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIlt-0004eJ-4Z; Wed, 06 May 2020 12:03:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAC661FB;
 Wed,  6 May 2020 05:03:21 -0700 (PDT)
Received: from [10.57.31.214] (unknown [10.57.31.214])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 446353F71F;
 Wed,  6 May 2020 05:03:19 -0700 (PDT)
From: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 1/2] arm64/crash_core: Export KERNELPACMASK in
 vmcoreinfo
To: Will Deacon <will@kernel.org>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
 <20200504171741.GD1833@willie-the-truck>
Message-ID: <bc5e6fc5-15f4-40bb-4466-816de5912893@arm.com>
Date: Wed, 6 May 2020 17:32:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200504171741.GD1833@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_050329_262426_FA50027A 
X-CRM114-Status: GOOD (  21.32  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 5/4/20 10:47 PM, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 11:55:01AM +0530, Amit Daniel Kachhap wrote:
>> Recently arm64 linux kernel added support for Armv8.3-A Pointer
>> Authentication feature. If this feature is enabled in the kernel and the
>> hardware supports address authentication then the return addresses are
>> signed and stored in the stack to prevent ROP kind of attack. Kdump tool
>> will now dump the kernel with signed lr values in the stack.
>>
>> Any user analysis tool for this kernel dump may need the kernel pac mask
>> information in vmcoreinfo to generate the correct return address for
>> stacktrace purpose as well as to resolve the symbol name.
>>
>> This patch is similar to commit ec6e822d1a22d0eef ("arm64: expose user PAC
>> bit positions via ptrace") which exposes pac mask information via ptrace
>> interfaces.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Changes since v1:
>> * Rebased to kernel 5.7-rc3.
>> * commit log change.
>>
>> An implementation of this new KERNELPACMASK vmcoreinfo field used by crash
>> tool can be found here[1]. This change is accepted by crash utility
>> maintainer [2].
>>
>> [1]: https://www.redhat.com/archives/crash-utility/2020-April/msg00095.html
>> [2]: https://www.redhat.com/archives/crash-utility/2020-April/msg00099.html
>>
>>   arch/arm64/include/asm/compiler.h | 3 +++
>>   arch/arm64/kernel/crash_core.c    | 4 ++++
>>   2 files changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
>> index eece20d..32d5900 100644
>> --- a/arch/arm64/include/asm/compiler.h
>> +++ b/arch/arm64/include/asm/compiler.h
>> @@ -19,6 +19,9 @@
>>   #define __builtin_return_address(val)					\
>>   	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
>>   
>> +#else  /* !CONFIG_ARM64_PTR_AUTH */
>> +#define	ptrauth_user_pac_mask()		0ULL
>> +#define	ptrauth_kernel_pac_mask()	0ULL
> 
> This doesn't look quite right to me, since you still have to take into
> account the case where CONFIG_ARM64_PTR_AUTH=y but the feature is not
> available at runtime:

Yes agree with you here. However the config gaurd is saving some extra
computation for __builtin_return_address. There are some compiler
support being added in __builtin_extract_return_address to mask the PAC.
Hopefully that will improve this code. In the meantime let it be like this.

I can remove this else case and as other users of
ptrauth_{kernel,user}_pac_mask(ptrace.c) protect it with a config gaurd
there.

> 
>> @@ -16,4 +17,7 @@ void arch_crash_save_vmcoreinfo(void)
>>   	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
>>   						PHYS_OFFSET);
>>   	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
>> +	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
>> +						system_supports_address_auth() ?
>> +						ptrauth_kernel_pac_mask() : 0);
> 
> In which case, would it make more sense to define
> ptrauth_{kernel,user}_pac_mask() unconditionally? In fact, I'd probably
> just remove the guards completely from asm/compiler.h because I think
> they're misleading.

As answered above. Let me know your opinion. Although I don't have 
strong reservation in keeping the config gaurd.

Thanks,
Amit Daniel

> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> index eece20d2c55f..51a7ce87cdfe 100644
> --- a/arch/arm64/include/asm/compiler.h
> +++ b/arch/arm64/include/asm/compiler.h
> @@ -2,8 +2,6 @@
>   #ifndef __ASM_COMPILER_H
>   #define __ASM_COMPILER_H
>   
> -#if defined(CONFIG_ARM64_PTR_AUTH)
> -
>   /*
>    * The EL0/EL1 pointer bits used by a pointer authentication code.
>    * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
> @@ -19,6 +17,4 @@
>   #define __builtin_return_address(val)					\
>   	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
>   
> -#endif /* CONFIG_ARM64_PTR_AUTH */
> -
>   #endif /* __ASM_COMPILER_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
