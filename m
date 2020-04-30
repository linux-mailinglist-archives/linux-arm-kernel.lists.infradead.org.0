Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2ED31BF70C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v4tr9mBfZCodZrXQSWcV30zqN97LiHlznW4aWxXCrlc=; b=KvWRjm63GzLYFhu+CtKoKdHFJ
	Yo9n84BYQUAVfc1xdRLF3JUbKHQ8E0+rfGDuyYjtSfR4pz7MuY45wU7Ph9FGUyPit7Ru4iWYRi1aE
	vbewJJ39a0LjIbg0rwQBxBeXESLir3r+qB8haO6YzdvkE/Dl+7gtF6LfLj+CDEhHCdNse3PWaalbd
	Awpx7z9suiysMeW4RDU8n5iKMNg+Vqvq6njliVJsrhe6FBQDz6vHMCOB+ubheT86L5cgCDl+qUHFb
	sBEbY5cxjczuFw0PoCqkMzWvsC3+Hsvx+CYevPqE8SDv0dashY6WW/pZiB2ixSWJQqacd/gOeXUSp
	Gf5VGHyww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7d6-0005YK-PU; Thu, 30 Apr 2020 11:45:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7cp-0004U3-JM; Thu, 30 Apr 2020 11:45:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A194931B;
 Thu, 30 Apr 2020 04:45:06 -0700 (PDT)
Received: from [10.57.27.210] (unknown [10.57.27.210])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 851183F305;
 Thu, 30 Apr 2020 04:44:59 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] arm64/crash_core: Export KERNELPACMASK in
 vmcoreinfo
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <f7dad36c-6944-f5c9-b835-0992ff0391e5@arm.com>
Date: Thu, 30 Apr 2020 17:14:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1587968702-19996-1-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_044507_756110_97FB48C8 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Catalin,

Sorry: Resending with correct To list.

On 4/27/20 11:55 AM, Amit Daniel Kachhap wrote:
> Recently arm64 linux kernel added support for Armv8.3-A Pointer
> Authentication feature. If this feature is enabled in the kernel and the
> hardware supports address authentication then the return addresses are
> signed and stored in the stack to prevent ROP kind of attack. Kdump tool
> will now dump the kernel with signed lr values in the stack.
> 
> Any user analysis tool for this kernel dump may need the kernel pac mask
> information in vmcoreinfo to generate the correct return address for
> stacktrace purpose as well as to resolve the symbol name.
> 
> This patch is similar to commit ec6e822d1a22d0eef ("arm64: expose user PAC
> bit positions via ptrace") which exposes pac mask information via ptrace
> interfaces.

This patch user side changes are accepted by crash-utility maintainer [1]
so I think this is in a good shape to go in.

Thanks,
Amit Daniel

[1]: https://www.redhat.com/archives/crash-utility/2020-April/msg00095.html

> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since v1:
> * Rebased to kernel 5.7-rc3.
> * commit log change.
> 
> An implementation of this new KERNELPACMASK vmcoreinfo field used by crash
> tool can be found here[1]. This change is accepted by crash utility
> maintainer [2].
> 
> [1]: https://www.redhat.com/archives/crash-utility/2020-April/msg00095.html
> [2]: https://www.redhat.com/archives/crash-utility/2020-April/msg00099.html
> 
>   arch/arm64/include/asm/compiler.h | 3 +++
>   arch/arm64/kernel/crash_core.c    | 4 ++++
>   2 files changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> index eece20d..32d5900 100644
> --- a/arch/arm64/include/asm/compiler.h
> +++ b/arch/arm64/include/asm/compiler.h
> @@ -19,6 +19,9 @@
>   #define __builtin_return_address(val)					\
>   	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
>   
> +#else  /* !CONFIG_ARM64_PTR_AUTH */
> +#define	ptrauth_user_pac_mask()		0ULL
> +#define	ptrauth_kernel_pac_mask()	0ULL
>   #endif /* CONFIG_ARM64_PTR_AUTH */
>   
>   #endif /* __ASM_COMPILER_H */
> diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
> index ca4c3e1..25cf2ce 100644
> --- a/arch/arm64/kernel/crash_core.c
> +++ b/arch/arm64/kernel/crash_core.c
> @@ -6,6 +6,7 @@
>   
>   #include <linux/crash_core.h>
>   #include <asm/memory.h>
> +#include <asm/pointer_auth.h>
>   
>   void arch_crash_save_vmcoreinfo(void)
>   {
> @@ -16,4 +17,7 @@ void arch_crash_save_vmcoreinfo(void)
>   	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
>   						PHYS_OFFSET);
>   	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
> +	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
> +						system_supports_address_auth() ?
> +						ptrauth_kernel_pac_mask() : 0);
>   }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
