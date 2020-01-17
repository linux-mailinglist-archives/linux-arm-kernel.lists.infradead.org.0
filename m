Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00490140941
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL9c9ARNOWOgmqWIEy9brJ/b9S1ss4JEUeQ0nfH+Igw=; b=BWGLjaYa9DdUmN
	VrwoJJyIj8O4SI3qPTO/16MBKLm8cW+3rj9KVoSyB11db9xOwT+aJy0aIGb+BYAroczYelwLIdvTB
	rs+744OHMOI4j7/k3zb2Z3wjRbQ1IjcbqI/YuRJLau9JQ35WjjL9eVMdw7dP7gDFrHwGkt2le8FGC
	Rr4s6E4VSkPMKeXXuebw1e3dxPQn//PLziE1l0/xeemjGfd2LIO71WsFmHsz4K9rUmNNidt3hBxUO
	Keovt4ns+6ofv9pc7l9gRY1qyeSQHMgDWaRf+DIa8rjLCav1RkOGwwEztFDoJ7gyhDHxINrMiNXTv
	uXZMhIsGlpnh5XDfAfJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQ8j-0008D0-WD; Fri, 17 Jan 2020 11:50:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQ8M-0008CQ-7Y
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:49:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7480C11D4;
 Fri, 17 Jan 2020 03:49:46 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AFE053F6C4; Fri, 17 Jan 2020 03:49:44 -0800 (PST)
Date: Fri, 17 Jan 2020 11:49:42 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 15/16] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20200117114942.GG26090@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-16-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-16-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_034950_359213_2AB5F20A 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:17PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 06b5025..f0798b7 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1466,6 +1466,7 @@ config ARM64_PTR_AUTH
>  	bool "Enable support for pointer authentication"
>  	default y
>  	depends on !KVM || ARM64_VHE
> +	depends on GCC_VERSION >= 70000 || CLANG_VERSION >= 80000

Please don't add checks on compiler versions. Use cc-option when you
need a certain option rather than guessing which compiler version
supports it. People may do backports of different features, so the
version is not relevant.

>  	help
>  	  Pointer authentication (part of the ARMv8.3 Extensions) provides
>  	  instructions for signing and authenticating pointers against secret
> @@ -1473,11 +1474,17 @@ config ARM64_PTR_AUTH
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
> +	  protection. In this case, and if the target hardware is known to
> +	  support pointer authentication, then CONFIG_STACKPROTECTOR can be
> +	  disabled with minimal loss of protection.
> +
>  	  The feature is detected at runtime. If the feature is not present in
>  	  hardware it will not be advertised to userspace/KVM guest nor will it
>  	  be enabled. However, KVM guest also require VHE mode and hence
> @@ -1488,6 +1495,18 @@ config ARM64_PTR_AUTH
>  	  have address auth and the late CPU has then system panic will occur.
>  	  On such a system, this option should not be selected.
>  
> +config CC_HAS_BRANCH_PROT_PAC_RET
> +	# GCC 9 or later, clang 8 or later
> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
> +
> +config CC_HAS_SIGN_RETURN_ADDRESS
> +	# GCC 7, 8
> +	def_bool $(cc-option,-msign-return-address=all)
> +
> +config AS_HAS_PAC
> +	def_bool $(as-option,-Wa,-march=armv8.3-a)
> +	depends on CC_IS_CLANG

First, as I commented on the previous patch, clang seems to ignore -Wa,
so you can write whatever you want after it and it seems to be always
true.

Second, if you need the assembler to support certain features, it needs
to be checked irrespective of whether the compiler is gcc or clang.
Binutils is a separate package.

> +
>  endmenu
>  
>  config ARM64_SVE
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 1fbe24d..6a1da59 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -72,6 +72,17 @@ stack_protector_prepare: prepare0
>  					include/generated/asm-offsets.h))
>  endif
>  
> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the compiler
> +# to generate them and consequently to break the single image contract we pass it
> +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
> +# this option is not used.
> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> +KBUILD_CFLAGS += $(branch-prot-flags-y)
> +endif

So, does this actually work with clang?

Please check the clang issue in case I'm mistaken. Otherwise, you could
use as-instr as in this patch:

https://lore.kernel.org/linux-arm-kernel/20200115113008.3334-3-catalin.marinas@arm.com/

Also Will had a preference for warning during build if the user
requested a feature in .config (i.e. PAC) but the compiler/assembler
does not support it (that was for the LSE patch above). You could
attempt something similar with this patch.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
