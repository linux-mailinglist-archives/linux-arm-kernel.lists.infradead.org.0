Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40629A3448
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHRMYQ5laopZ82NHoZBzE5f6y0Sy278SL4A50cQSXoE=; b=WHut24I8h7m/kM
	2Z5i0OMlh5vr5ZL5k8uSEtXTL3jjSlSXLy3b7rHwGjoyVK4Ujpo6Vop8mjmbFFBJwMxVXRm3OdYtJ
	WIFuaznyLHUpVUuSSLvfTLz9p0wAx0UML6R8fdQ2Bt9XkgscxRgbjB6mKMT3gxpY53JL9sydHNnmY
	rbuiThaehX2lqvUZvHDcPPdP0fSQ9VWUEPMEGlBSNkBGMG2EspVXLjfMrj7Pf4T0bhHHYgMkMX3o4
	3XNsMMwwuYoUnYOrrBg+udIJLwgjMbtmEX4CJWjPJ5WC5o0SoQF+A2RGEt4W4cvUzYHyiGdk4uIcV
	oOUtfgrtpwYpFmSEMRBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dQc-0004Sa-Ju; Fri, 30 Aug 2019 09:42:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dPO-0003Mg-Pq
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:41:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E672344;
 Fri, 30 Aug 2019 02:41:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF1503F718;
 Fri, 30 Aug 2019 02:41:28 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:41:26 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 11/44] arm64: uaccess: Mask __user pointers
 for __arch_{clear, copy_*}_user
Message-ID: <20190830094126.GK46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <821430ff13f625eca9e0a9700ddc161cbc7965ff.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <821430ff13f625eca9e0a9700ddc161cbc7965ff.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024131_054300_1F205298 
X-CRM114-Status: GOOD (  16.10  )
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

On Thu, Aug 29, 2019 at 05:03:56PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit f71c2ffcb20dd8626880747557014bb9a61eb90e upstream.
> 
> Like we've done for get_user and put_user, ensure that user pointers
> are masked before invoking the underlying __arch_{clear,copy_*}_user
> operations.
> 
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ v4.4: fixup for v4.4 style uaccess primitives ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/uaccess.h | 18 ++++++++++--------
>  arch/arm64/kernel/arm64ksyms.c   |  4 ++--
>  arch/arm64/lib/clear_user.S      |  6 +++---
>  arch/arm64/lib/copy_in_user.S    |  4 ++--
>  4 files changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 693a0d784534..f2f5a152f372 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -303,19 +303,18 @@ do {									\
>  
>  extern unsigned long __must_check __arch_copy_from_user(void *to, const void __user *from, unsigned long n);
>  extern unsigned long __must_check __arch_copy_to_user(void __user *to, const void *from, unsigned long n);
> -extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
> -extern unsigned long __must_check __clear_user(void __user *addr, unsigned long n);
> +extern unsigned long __must_check __arch_copy_in_user(void __user *to, const void __user *from, unsigned long n);
>  
>  static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
>  {
>  	kasan_check_write(to, n);
> -	return  __arch_copy_from_user(to, from, n);
> +	return __arch_copy_from_user(to, __uaccess_mask_ptr(from), n);
>  }
>  
>  static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
>  {
>  	kasan_check_read(from, n);
> -	return  __arch_copy_to_user(to, from, n);
> +	return __arch_copy_to_user(__uaccess_mask_ptr(to), from, n);
>  }
>  
>  static inline unsigned long __must_check copy_from_user(void *to, const void __user *from, unsigned long n)
> @@ -338,22 +337,25 @@ static inline unsigned long __must_check copy_to_user(void __user *to, const voi
>  	return n;
>  }
>  
> -static inline unsigned long __must_check copy_in_user(void __user *to, const void __user *from, unsigned long n)
> +static inline unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n)
>  {
>  	if (access_ok(VERIFY_READ, from, n) && access_ok(VERIFY_WRITE, to, n))
> -		n = __copy_in_user(to, from, n);
> +		n = __arch_copy_in_user(__uaccess_mask_ptr(to), __uaccess_mask_ptr(from), n);
>  	return n;
>  }
> +#define copy_in_user __copy_in_user
>  
>  #define __copy_to_user_inatomic __copy_to_user
>  #define __copy_from_user_inatomic __copy_from_user
>  
> -static inline unsigned long __must_check clear_user(void __user *to, unsigned long n)
> +extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
> +static inline unsigned long __must_check __clear_user(void __user *to, unsigned long n)
>  {
>  	if (access_ok(VERIFY_WRITE, to, n))
> -		n = __clear_user(__uaccess_mask_ptr(to), n);
> +		n = __arch_clear_user(__uaccess_mask_ptr(to), n);
>  	return n;
>  }
> +#define clear_user	__clear_user
>  
>  extern long strncpy_from_user(char *dest, const char __user *src, long count);
>  
> diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
> index c654df05b7d7..abe4e0984dbb 100644
> --- a/arch/arm64/kernel/arm64ksyms.c
> +++ b/arch/arm64/kernel/arm64ksyms.c
> @@ -35,8 +35,8 @@ EXPORT_SYMBOL(clear_page);
>  	/* user mem (segment) */
>  EXPORT_SYMBOL(__arch_copy_from_user);
>  EXPORT_SYMBOL(__arch_copy_to_user);
> -EXPORT_SYMBOL(__clear_user);
> -EXPORT_SYMBOL(__copy_in_user);
> +EXPORT_SYMBOL(__arch_clear_user);
> +EXPORT_SYMBOL(__arch_copy_in_user);
>  
>  	/* physical memory */
>  EXPORT_SYMBOL(memstart_addr);
> diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
> index a9723c71c52b..fc6bb0f83511 100644
> --- a/arch/arm64/lib/clear_user.S
> +++ b/arch/arm64/lib/clear_user.S
> @@ -24,7 +24,7 @@
>  
>  	.text
>  
> -/* Prototype: int __clear_user(void *addr, size_t sz)
> +/* Prototype: int __arch_clear_user(void *addr, size_t sz)
>   * Purpose  : clear some user memory
>   * Params   : addr - user memory address to clear
>   *          : sz   - number of bytes to clear
> @@ -32,7 +32,7 @@
>   *
>   * Alignment fixed up by hardware.
>   */
> -ENTRY(__clear_user)
> +ENTRY(__arch_clear_user)
>  ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	mov	x2, x1			// save the size for fixup return
> @@ -57,7 +57,7 @@ USER(9f, strb	wzr, [x0]	)
>  ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	ret
> -ENDPROC(__clear_user)
> +ENDPROC(__arch_clear_user)
>  
>  	.section .fixup,"ax"
>  	.align	2
> diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
> index 81c8fc93c100..0219aa85b3cc 100644
> --- a/arch/arm64/lib/copy_in_user.S
> +++ b/arch/arm64/lib/copy_in_user.S
> @@ -67,7 +67,7 @@
>  	.endm
>  
>  end	.req	x5
> -ENTRY(__copy_in_user)
> +ENTRY(__arch_copy_in_user)
>  ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(0)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	add	end, x0, x2
> @@ -76,7 +76,7 @@ ALTERNATIVE("nop", __stringify(SET_PSTATE_PAN(1)), ARM64_HAS_PAN, \
>  	    CONFIG_ARM64_PAN)
>  	mov	x0, #0
>  	ret
> -ENDPROC(__copy_in_user)
> +ENDPROC(__arch_copy_in_user)
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
