Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2051BD95D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kjozc1+lXa+7CR8u/RE+7Cj+pOFPS5fXwLsZ776TLIc=; b=fUYOYa71dP6NI7
	INLBhu77ZbFtKv7YKAprb/IHzqPFtr88xKVgD/J2I5VhTn46Yl4Jxy6Zbnr6xl7tmOzptAB/jEEYU
	zTvbRpoy3d+nwkPmqLwztCVSKqjJFwSVRUpw8M3j0ztm3MFA9Z6PsXlvzmBz1wOHkC6FBxB8PQ4dS
	owZsp2wHiLBRzQwXzPhCbBhYjBH1kcl6OrWrA4C/dK0PE1vERC6Zo53DOIigpqGy0M+ai+jvTpdF5
	qDd15ecgpvIDKF+6MuiFRnVJzcfW5rzIB7qce+jmWRk/6411LY0+08Ev6MQXbK6y1WoLjnvDvlZ3N
	u0qIwC8AawInZNUJVEjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjnv-0004nR-3o; Wed, 29 Apr 2020 10:18:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjni-0004lB-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:18:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D03D8C14;
 Wed, 29 Apr 2020 03:18:43 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.5.153])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 182073F73D;
 Wed, 29 Apr 2020 03:18:41 -0700 (PDT)
Date: Wed, 29 Apr 2020 11:18:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200429101839.GB28631@C02TD0UTHF1T.local>
References: <1588149371-20310-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588149371-20310-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_031846_678895_58001F58 
X-CRM114-Status: GOOD (  23.21  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On Wed, Apr 29, 2020 at 02:06:10PM +0530, Amit Daniel Kachhap wrote:
> Compilers are optimized to not create the frame record for the leaf
> function and hence lr is not signed and stored in the stack. Thus the leaf
> functions cannot be used for ROP gadget attack.

IIUC Will's point on the last posting was that leaf functions can be
used as a restricted ROP gadget, where the LR isn't controlled via the
stack.

e.g. you might have a gadget that does something like:

<gadget>:
	LDP	x0, x1, [SP], #16
	STR	x0, [x1]
	RET				// LR == <gadget>

... and if the LR had previously been set up to point to gadget, it
would return recursively, performing a sequence of arbitrary stores.
With an AUT, it would fail after the first store.

That does rely on already subverting control flow (probably via a
forward-edge BR where we don't have BTI), and so maybe we've already
lost in practical terms, but there is at least some possibility of a
gadget that AUT would catch here. There's some nuance to capture in the
commit message for that.

> This patch selects pointer authentication only for non-leaf function
> and the compiler option is modified to -mbranch-protection=pac-ret and
> -msign-return-address=non-leaf.
> 
> As there are no PAC instructions(PACIASP and AUTIASP) inserted in the leaf
> functions so the kernel code size reduces by ~0.01%.

Do we expect this to matter? The size difference isn't that large, so is
there a performance issue?

Are there any leaf functions which we consider critical to performance?

I know that one concern is that PACIASP acts as an implicit landing pad,
and so its use everywhere potentially weakens BTI. Do we have any data
to indicate that would be a concern here? e.g. with and without this,
how many instances of  PACIASP and BTI *C exist?

Thanks,
Mark.

> Note, As PACIASP instruction is also used for Armv8.5 BTI branching so the
> compiler may insert BTI instructions in case of leaf functions which are
> candidate of JOP gadget for the upcoming BTI in-kernel support.
> 
> Reported-by: Daniel Kiss <daniel.kiss@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since v1:
> * Updated the commit logs as per the comments from Will and Mark[1].
> 
> [1]: https://www.spinics.net/lists/arm-kernel/msg798518.html
> 
> 
>  arch/arm64/Kconfig  | 4 ++--
>  arch/arm64/Makefile | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 40fb05d..29cfe05 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1541,11 +1541,11 @@ config ARM64_PTR_AUTH
>  
>  config CC_HAS_BRANCH_PROT_PAC_RET
>  	# GCC 9 or later, clang 8 or later
> -	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
> +	def_bool $(cc-option,-mbranch-protection=pac-ret)
>  
>  config CC_HAS_SIGN_RETURN_ADDRESS
>  	# GCC 7, 8
> -	def_bool $(cc-option,-msign-return-address=all)
> +	def_bool $(cc-option,-msign-return-address=non-leaf)
>  
>  config AS_HAS_PAC
>  	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 85e4149..895f506 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -70,8 +70,8 @@ endif
>  branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
>  
>  ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> -branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> -branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=non-leaf
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret
>  # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
>  # compiler to generate them and consequently to break the single image contract
>  # we pass it only to the assembler. This option is utilized only in case of non
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
