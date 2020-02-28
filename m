Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B6A173F4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9lnpHg4OAQoNUi2/S2aggSFV3r8l+qcrC+PrMG4A6A=; b=itQgjQth+2Irda
	3sBadGP0UiBrXbBgngYdPKlmsjX18fVsEN5gfhWWFUPURsnWavJhQHt92EEELDxxRCRGdM11oyeNq
	tA7VqzuWoRYyvQr3QIfYSPOpk4GmPDk6KYB7XyaXcucwGyb2qA7nahxhAuqfqbnWVRrG2tngKSJMN
	hWoouHCsBgfQCxuofPzEc8BWF+i2r0WbajABn//dF/S8qQ+RVGz2GJ0PawdDYM63B8E0zKqPaAVeh
	+wN1l5M/jl16MEZuyQjrwZQb6sy9wKfuPWv5aaoXJH66spya2jdtNMFFpmwDvdBeArG+QHDUQmryN
	0cZh/zof2ITTjWjFv6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kE5-0001PU-Mm; Fri, 28 Feb 2020 18:19:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kDn-0001JY-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:18:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E561E31B;
 Fri, 28 Feb 2020 10:18:46 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 40FB93F7B4; Fri, 28 Feb 2020 10:18:45 -0800 (PST)
Date: Fri, 28 Feb 2020 18:18:43 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v5 14/17] arm64: suspend: restore the kernel ptrauth keys
Message-ID: <20200228181843.GJ4019108@arrakis.emea.arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-15-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581931668-11559-15-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_101847_685985_F4302242 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 02:57:45PM +0530, Amit Daniel Kachhap wrote:
> This patch restores the kernel keys from current task during
> cpu resume after the mmu is turned on and ptrauth is enabled.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/kernel/sleep.S | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> index 7b2f2e6..f9db925 100644
> --- a/arch/arm64/kernel/sleep.S
> +++ b/arch/arm64/kernel/sleep.S
> @@ -2,6 +2,7 @@
>  #include <linux/errno.h>
>  #include <linux/linkage.h>
>  #include <asm/asm-offsets.h>
> +#include <asm/asm_pointer_auth.h>
>  #include <asm/assembler.h>
>  #include <asm/smp.h>
>  
> @@ -134,6 +135,11 @@ ENTRY(_cpu_resume)
>  	 */
>  	bl	cpu_do_resume
>  
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +	get_current_task x1
> +	ptrauth_keys_install_kernel x1, x2, x3, x4
> +#endif

Could we move this to cpu_do_resume? Most of the sysreg initialisation
during resume is done there.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
