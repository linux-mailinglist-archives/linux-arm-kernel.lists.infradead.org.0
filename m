Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7224CA3445
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mc6VOisKqPj79QiHpUcLOuRWdDft305nGVValjiqJoQ=; b=M7eMEsqBBEGEyX
	BdYwGegDitvqBo/apoL9BR70enCRHyKue/0SSuC+FumIOPklq3eAD+gX1CwjAgtsxy15zK5em9c48
	dbVwAm9jcJyUrGSrJvjZ8v+t0vp1iCuv5k53lVIp/pma28NlvbsRJHwF5TA3e2dajP7K7gtCObCnw
	dHF9TJ/Fm9aaazMxxgQWi56C4GQf5wBjYvqmpLGBImLGu0xv9TDpKGTj4Ch4HNchcJO8IXE5FuXa7
	0kYxZI6r2VQxppAHCDSJrJwqxoeiP60ZoAMxDj1MvU6RkpZbWtJ7CGzFHONyNU/6wIWwmS6C0y2QV
	7S+h/wGBNX4L5xWItF6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dQO-0004Bm-QO; Fri, 30 Aug 2019 09:42:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dPG-0003Dd-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:41:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 442E8344;
 Fri, 30 Aug 2019 02:41:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E52933F718;
 Fri, 30 Aug 2019 02:41:20 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:41:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 10/44] arm64: kasan: instrument user memory
 access API
Message-ID: <20190830094118.GJ46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <0e906aabc5057c5e23f1092747eaa842d20dd8b3.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e906aabc5057c5e23f1092747eaa842d20dd8b3.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024122_976421_62FDBCD2 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:55PM +0530, Viresh Kumar wrote:
> From: Yang Shi <yang.shi@linaro.org>
> 
> commit bffe1baff5d57521b0c41b6997c41ff1993e9818 upstream.
> 
> The upstream commit 1771c6e1a567ea0ba2cccc0a4ffe68a1419fd8ef
> ("x86/kasan: instrument user memory access API") added KASAN instrument to
> x86 user memory access API, so added such instrument to ARM64 too.
> 
> Define __copy_to/from_user in C in order to add kasan_check_read/write call,
> rename assembly implementation to __arch_copy_to/from_user.
> 
> Tested by test_kasan module.
> 
> Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Tested-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Yang Shi <yang.shi@linaro.org>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/uaccess.h | 25 +++++++++++++++++++++----
>  arch/arm64/kernel/arm64ksyms.c   |  4 ++--
>  arch/arm64/lib/copy_from_user.S  |  4 ++--
>  arch/arm64/lib/copy_to_user.S    |  4 ++--
>  4 files changed, 27 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index a34324436ce1..693a0d784534 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -22,6 +22,7 @@
>   * User space memory access functions
>   */
>  #include <linux/bitops.h>
> +#include <linux/kasan-checks.h>
>  #include <linux/string.h>
>  #include <linux/thread_info.h>
>  
> @@ -300,15 +301,29 @@ do {									\
>  
>  #define put_user	__put_user
>  
> -extern unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n);
> -extern unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n);
> +extern unsigned long __must_check __arch_copy_from_user(void *to, const void __user *from, unsigned long n);
> +extern unsigned long __must_check __arch_copy_to_user(void __user *to, const void *from, unsigned long n);
>  extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
>  extern unsigned long __must_check __clear_user(void __user *addr, unsigned long n);
>  
> +static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
> +{
> +	kasan_check_write(to, n);
> +	return  __arch_copy_from_user(to, from, n);
> +}
> +
> +static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
> +{
> +	kasan_check_read(from, n);
> +	return  __arch_copy_to_user(to, from, n);
> +}
> +
>  static inline unsigned long __must_check copy_from_user(void *to, const void __user *from, unsigned long n)
>  {
> +	kasan_check_write(to, n);
> +
>  	if (access_ok(VERIFY_READ, from, n))
> -		n = __copy_from_user(to, from, n);
> +		n = __arch_copy_from_user(to, from, n);
>  	else /* security hole - plug it */
>  		memset(to, 0, n);
>  	return n;
> @@ -316,8 +331,10 @@ static inline unsigned long __must_check copy_from_user(void *to, const void __u
>  
>  static inline unsigned long __must_check copy_to_user(void __user *to, const void *from, unsigned long n)
>  {
> +	kasan_check_read(from, n);
> +
>  	if (access_ok(VERIFY_WRITE, to, n))
> -		n = __copy_to_user(to, from, n);
> +		n = __arch_copy_to_user(to, from, n);
>  	return n;
>  }
>  
> diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
> index 3b6d8cc9dfe0..c654df05b7d7 100644
> --- a/arch/arm64/kernel/arm64ksyms.c
> +++ b/arch/arm64/kernel/arm64ksyms.c
> @@ -33,8 +33,8 @@ EXPORT_SYMBOL(copy_page);
>  EXPORT_SYMBOL(clear_page);
>  
>  	/* user mem (segment) */
> -EXPORT_SYMBOL(__copy_from_user);
> -EXPORT_SYMBOL(__copy_to_user);
> +EXPORT_SYMBOL(__arch_copy_from_user);
> +EXPORT_SYMBOL(__arch_copy_to_user);
>  EXPORT_SYMBOL(__clear_user);
>  EXPORT_SYMBOL(__copy_in_user);
>  
> diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
> index 4699cd74f87e..281e75db899a 100644
> --- a/arch/arm64/lib/copy_from_user.S
> +++ b/arch/arm64/lib/copy_from_user.S
> @@ -66,7 +66,7 @@
>  	.endm
>  
>  end	.req	x5
> -ENTRY(__copy_from_user)
> +ENTRY(__arch_copy_from_user)
>  ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	add	end, x0, x2
> @@ -75,7 +75,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	mov	x0, #0				// Nothing to copy
>  	ret
> -ENDPROC(__copy_from_user)
> +ENDPROC(__arch_copy_from_user)
>  
>  	.section .fixup,"ax"
>  	.align	2
> diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
> index 7512bbbc07ac..db4d187de61f 100644
> --- a/arch/arm64/lib/copy_to_user.S
> +++ b/arch/arm64/lib/copy_to_user.S
> @@ -65,7 +65,7 @@
>  	.endm
>  
>  end	.req	x5
> -ENTRY(__copy_to_user)
> +ENTRY(__arch_copy_to_user)
>  ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	add	end, x0, x2
> @@ -74,7 +74,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	mov	x0, #0
>  	ret
> -ENDPROC(__copy_to_user)
> +ENDPROC(__arch_copy_to_user)
>  
>  	.section .fixup,"ax"
>  	.align	2
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
