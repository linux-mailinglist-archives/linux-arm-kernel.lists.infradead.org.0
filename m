Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06792EE3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJoRV2h+dUl9A38D+0omX+3Br3QqG16//TWcEAMo4Qc=; b=jnI5cfSGrazYo5
	zY/eCXhmP4jNTQ6sI+eaEBDRH0ufWy2sbg35cOtUpxAynEaKHbOacnVDIHestYWKsUDLCo/NPyCuu
	KNxKmnXGvLFGOSXJ7USqRiTLja/HT7Lz1/NVgSoT7Awkvwd9Bkfa+kQIwbK9VEqNzmG5hwnmYXleX
	tbG1hBGy+7t9LqJpNqUmAF8SRJsjIMA+lOOpO4ToysRrGauubCYU7jEKDckvk2ipPf2zUoFgEcahT
	y3Smw5u6P7hbWdB8AQ+RwR7KgsF67Fz8dvshgoCOOijgl1Dgb/1QdsqwcQjQUlOIuzsA46iRet2HV
	BXWt7OqOt813I3ryphYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWC0W-0007Wp-Mz; Thu, 30 May 2019 03:45:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWC0P-0007Vp-Fe
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:45:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so3026734pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ANGMPv0fMte+lIptCxwzjy7A8eyhF4GY98O4EHJExwI=;
 b=CAwJTuelY0V3e2+6KfTHye4vkjVk6Gcydst9VavikgE9vtWHu5tmPASVjd9UnqS6Ia
 FUZVqLfS22amOE9hxTdb8mLRGHq2MU+56vqRB9VwXgDLefKDwx5PGQ8jBLVP/sR8zAL2
 idLecvLayhjTn5J6eiG0BhB8GXTjW+YUrUNT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ANGMPv0fMte+lIptCxwzjy7A8eyhF4GY98O4EHJExwI=;
 b=YpaKAtlJvpQrZwxKEvnVeNEzI96m9pxwPir0mqe0LseMzN7fABcZqbQN69aiZ/bhoM
 3Z1vyClaTGCinq6xCv8jEqMX4JbGUDXptDI8QbLjpNP/dapIrL563BFCejWtKh5VYlA7
 dOrId2tgBOdeaYM1oM82e8IL1asHeWRcS4Y/WJKussh4IRi5Gjxh4BYP+A5iJsVU+Ixy
 2ukfm7LtSIbgoASndAe6/479bheVBufmw71LA/4ID0lbgSTZZtyM/qewXTpW+zmyuram
 VsVkhB9DQLikaOd6lHpX0gjtlrEssd5x/inNtuxSqFXxAA9b0SZsN9p9kaezioSGQtH8
 ZIbw==
X-Gm-Message-State: APjAAAUQKqgzkPzaQ1YA7wzKtRI14FnmRLIBlhNBFEXyQvcaBS/KhmIV
 lIAe+3dGKWaJH+3Wx4uWRxxuuw==
X-Google-Smtp-Source: APXvYqxtRapHT7gKGLWPgJWsV4HHfXa3vroV1igiakuGY6pkOEIQfzJ3OYiMXtPMe3TuI49eX7eWAQ==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr1764616pgp.372.1559187924357; 
 Wed, 29 May 2019 20:45:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k2sm951328pjl.23.2019.05.29.20.45.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 20:45:23 -0700 (PDT)
Date: Wed, 29 May 2019 20:45:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 7/7] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <201905292041.5297BF8C2F@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-8-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-8-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_204529_571078_D3DA50B8 
X-CRM114-Status: GOOD (  31.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:32PM +0100, Kristina Martsenko wrote:
> Compile all non-leaf functions with two ptrauth instructions: PACIASP in
> the prologue to sign the return address, and AUTIASP in the epilogue to
> authenticate the return address (from the stack). If authentication
> fails, the return will cause an instruction abort to be taken, followed
> by an oops and killing the task. This should help protect the kernel
> against attacks using return-oriented programming.
> 
> The new instructions are in the HINT encoding space, so on a system
> without ptrauth they execute as NOPs.
> 
> CONFIG_ARM64_PTR_AUTH now not only enables ptrauth for userspace and KVM
> guests, but also automatically builds the kernel with ptrauth
> instructions if the compiler supports it. If there is no compiler
> support, we do not warn that the kernel was built without ptrauth
> instructions.
> 
> GCC 7 and 8 support the -msign-return-address option, while GCC 9
> deprecates that option and replaces it with -mbranch-protection. Support
> both options.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

Minor nits below...

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
> 
> Changes since RFC v1:
>  - Fixed support for compilers without ptrauth
>  - Added support for the new -mbranch-protection option
>  - Switched from protecting all functions to only protecting non-leaf functions
>    (for no good reason, I have not done e.g. gadget analysis)
>  - Moved __no_ptrauth definition to this patch, depending on compiler support
>  - Updated the Kconfig symbol description
>  - Updated the commit message
> 
>  arch/arm64/Kconfig                    | 12 +++++++++++-
>  arch/arm64/Makefile                   |  6 ++++++
>  arch/arm64/include/asm/pointer_auth.h |  6 ++++++
>  3 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index f4c1e9b30129..3ce93d88fae1 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1295,11 +1295,15 @@ config ARM64_PTR_AUTH
>  	  and other attacks.
>  
>  	  This option enables these instructions at EL0 (i.e. for userspace).
> -
>  	  Choosing this option will cause the kernel to initialise secret keys
>  	  for each process at exec() time, with these keys being
>  	  context-switched along with the process.
>  
> +	  If the compiler supports the -mbranch-protection or
> +	  -msign-return-address flag (e.g. GCC 7 or later), then this option
> +	  will also cause the kernel itself to be compiled with return address
> +	  protection.
> +
>  	  The feature is detected at runtime. If the feature is not present in
>  	  hardware it will not be advertised to userspace nor will it be
>  	  enabled.
> @@ -1308,6 +1312,12 @@ config ARM64_PTR_AUTH
>  	  then the secondary CPU will be offlined. On such a system, this
>  	  option should not be selected.
>  
> +config CC_HAS_BRANCH_PROT_PAC_RET
> +	def_bool $(cc-option,-mbranch-protection=pac-ret)
> +
> +config CC_HAS_SIGN_RETURN_ADDRESS
> +	def_bool $(cc-option,-msign-return-address=non-leaf)
> +

I would add comments here for "GCC 9, Clang" and "GCC 7, 8"
respectively, just so it's quickly obvious what's to be expected when
reading this later. :)

>  endmenu
>  
>  config ARM64_SVE
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index b025304bde46..1dfbe755b531 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -66,6 +66,12 @@ stack_protector_prepare: prepare0
>  					include/generated/asm-offsets.h))
>  endif
>  
> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +pac-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=non-leaf
> +pac-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret
> +KBUILD_CFLAGS += $(pac-flags-y)
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS	+= -mbig-endian
>  CHECKFLAGS	+= -D__AARCH64EB__
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 5491c34b4dc3..3a83c40ffd8a 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -15,7 +15,13 @@
>   * allows pointer authentication to be enabled/disabled within the function
>   * (but leaves the function unprotected by pointer authentication).
>   */
> +#if defined(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET)
> +#define __no_ptrauth	__attribute__((target("branch-protection=none")))
> +#elif defined(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS)
> +#define __no_ptrauth	__attribute__((target("sign-return-address=none")))
> +#else
>  #define __no_ptrauth
> +#endif

Is arch/arm64/include/asm/pointer_auth.h going to be included always?
I suspect the correct place for this might end up being in
include/linux/compiler_types.h, but for now, only a few select places
need it, so this is probably fine as-is.

>  
>  /*
>   * Each key is a 128-bit quantity which is split across a pair of 64-bit
> -- 
> 2.11.0
> 

I'm excited to test this series! :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
