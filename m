Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A541736B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKrghKDvIAszSlQhMqbPBVgCcyjewDLMTpjvgaSbXmM=; b=jZf9SvMYBWnHSG
	RlNhtI6n5MBXI7ypx++EQSU5ROViDd5jrKjQK3yqeJupr1Hu+nEyUvoO6ZCXLJoUgfoOcSsFXNN1B
	DaXDMxtg6jHP3HLQm5bbr8TR/3FCcO2cS5Rz06bfpyg9l1sSp/bBNylMasdQ1yeGdB9sM9n7nyt00
	eqFPm55igzHWSVVh5p4G0O3afxy9ZTD+Kf022LXad4R/DKZI2Ixa0BN4b3X3JxSNWeY1d2WJF8l8q
	ME1NS1rjFGBsJ8r7Zcr4EKhwa9Aqm8aOIgzgQxaPu2T26f8bwNT9FgU55ZSBUwci57YxrT/BHyO+R
	kbk1WZt/yeKIyg0ze/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eHA-0005Sr-HL; Fri, 28 Feb 2020 11:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eH1-0005SK-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:57:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDD9624695;
 Fri, 28 Feb 2020 11:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582891062;
 bh=YzkEqlbeQFRwlEQ1eCPSE8H54SFJtaRAvB7dZXur9B0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pc+bq8xRYws/XcozJc6J53KbPwPlw4PqaXOEb4+ij6Il+wRNkA7Ab8hIOK7+LC0Xk
 hDAtL6QmOImJ1RPstYX9BZ/78lC/afHkBPhutB1Pjy33WwOsAtxzJFtHbuxdctEriV
 yAQrn+S5+1u67MHw7L3zJzhJSlWvSzhJ8Koa+U+A=
Date: Fri, 28 Feb 2020 11:57:37 +0000
From: Will Deacon <will@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 1/2] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
Message-ID: <20200228115736.GA3275@willie-the-truck>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-2-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582117240-15330-2-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_035743_128078_8EBEDBE6 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 06:30:39PM +0530, Amit Daniel Kachhap wrote:
> This patch add changes for Pointer Authentication enhanced features
> mandatory for Armv8.6. These features are,
> 
> * Uses an enhanced PAC generation logic which hardens finding the
>   correct PAC value of the authenticated pointer. However, no code
>   change is required for this.
> 
> * Fault is generated now when the ptrauth authentication instruction
>   fails in authenticating the PAC present in the address. This is
>   different from earlier case when such failures just adds an error
>   code in the top byte and waits for subsequent load/store to abort.
>   The ptrauth instructions which may cause this fault are autiasp,
>   retaa etc.
> 
> The above features are now represented by additional configurations
> for the Address Authentication cpufeature. These different
> configurations are now updated to FTR_EXACT instead of FTR_LOWER_SAFE
> as they all have different behaviour.
> 
> The fault received in the kernel due to FPAC is treated as Illegal
> instruction and hence signal SIGILL is injected with ILL_ILLOPN as the
> signal code. Note that this is different from earlier ARMv8.3 ptrauth
> where signal SIGSEGV is issued due to Pointer authentication failures.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/include/asm/esr.h       |  4 +++-
>  arch/arm64/include/asm/exception.h |  1 +
>  arch/arm64/include/asm/sysreg.h    | 24 ++++++++++++++++--------
>  arch/arm64/kernel/cpufeature.c     |  4 ++--
>  arch/arm64/kernel/entry-common.c   | 25 +++++++++++++++++++++++++
>  arch/arm64/kernel/traps.c          | 18 ++++++++++++++++++
>  6 files changed, 65 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
> index cb29253..5a1406f 100644
> --- a/arch/arm64/include/asm/esr.h
> +++ b/arch/arm64/include/asm/esr.h
> @@ -35,7 +35,9 @@
>  #define ESR_ELx_EC_SYS64	(0x18)
>  #define ESR_ELx_EC_SVE		(0x19)
>  #define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
> -/* Unallocated EC: 0x1b - 0x1E */
> +/* Unallocated EC: 0x1B */
> +#define ESR_ELx_EC_FPAC		(0x1C)	/* EL1 and above */
> +/* Unallocated EC: 0x1D - 0x1E */
>  #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
>  #define ESR_ELx_EC_IABT_LOW	(0x20)
>  #define ESR_ELx_EC_IABT_CUR	(0x21)
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index 7a6e81ca..de76772 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -46,4 +46,5 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
>  void do_cp15instr(unsigned int esr, struct pt_regs *regs);
>  void do_el0_svc(struct pt_regs *regs);
>  void do_el0_svc_compat(struct pt_regs *regs);
> +void do_ptrauth_fault(struct pt_regs *regs, unsigned long esr);
>  #endif	/* __ASM_EXCEPTION_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index b91570f..77728f5 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -585,14 +585,22 @@
>  #define ID_AA64ISAR1_APA_SHIFT		4
>  #define ID_AA64ISAR1_DPB_SHIFT		0
>  
> -#define ID_AA64ISAR1_APA_NI		0x0
> -#define ID_AA64ISAR1_APA_ARCHITECTED	0x1
> -#define ID_AA64ISAR1_API_NI		0x0
> -#define ID_AA64ISAR1_API_IMP_DEF	0x1
> -#define ID_AA64ISAR1_GPA_NI		0x0
> -#define ID_AA64ISAR1_GPA_ARCHITECTED	0x1
> -#define ID_AA64ISAR1_GPI_NI		0x0
> -#define ID_AA64ISAR1_GPI_IMP_DEF	0x1
> +#define ID_AA64ISAR1_APA_NI			0x0
> +#define ID_AA64ISAR1_APA_ARCHITECTED		0x1
> +#define ID_AA64ISAR1_APA_ARCH_EPAC		0x2
> +#define ID_AA64ISAR1_APA_ARCH_EPAC2		0x3
> +#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC	0x4
> +#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC_CMB	0x5
> +#define ID_AA64ISAR1_API_NI			0x0
> +#define ID_AA64ISAR1_API_IMP_DEF		0x1
> +#define ID_AA64ISAR1_API_IMP_DEF_EPAC		0x2
> +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2		0x3
> +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC	0x4
> +#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC_CMB	0x5
> +#define ID_AA64ISAR1_GPA_NI			0x0
> +#define ID_AA64ISAR1_GPA_ARCHITECTED		0x1
> +#define ID_AA64ISAR1_GPI_NI			0x0
> +#define ID_AA64ISAR1_GPI_IMP_DEF		0x1
>  
>  /* id_aa64pfr0 */
>  #define ID_AA64PFR0_CSV3_SHIFT		60
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 8d1c979..a4f8adb 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
>  	ARM64_FTR_END,

Hmm. This is a user-visible change and should probably be in its own patch.
It also means we will no longer advertise PAC on systems where not all of
the cores have "Enhanced PAC"; is that really necessary?

Generally we rely on incremental updates to unsigned ID register fields
being a superset (i.e. compatible with) the old behaviour. If that's not
the case here, then older kernels are broken and we may need new HWCAPs.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
