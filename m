Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CC2D42AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tWtiRP2CXtwTz0NaknC5OsYrq+rvwKYfgBkHPbJyZA=; b=tIh7sPPnxhr/Ve
	zsfgfDdPuabfXlZuiMQw568roTAs+bHYPIgfWMIhm9VTK5cAEOoPjPY/ucZBummyhqZV8bv1WKdtJ
	Ic2xvaV4urRPwaG7eUFtgUfoJ3MfaTZ40+nieR/z/dVTHqq2KAWClkEFBbPbNVmgpDB+p868yll4E
	/x/g5BahSmuTf8YSOGEtU5O+3OoglDbspHPPNd2HGFGIBF6GuB5jlR2giASk7ehBic1y/nfbUkBwX
	nj9/PIpdS7Fyo2zTsg0Au3dcfowFBC9rFOXAjEKhlw/cnAbxZPIeDk1SCaea+/AYaN5+1fhHGYwW+
	QdvaSddZ5eTFqdAcpjQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvo5-000546-Mi; Fri, 11 Oct 2019 14:22:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvnv-00053N-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:22:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3816F142F;
 Fri, 11 Oct 2019 07:22:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 51D463F68E;
 Fri, 11 Oct 2019 07:22:00 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:21:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 11/12] arm64: BTI: Reset BTYPE when skipping emulated
 instructions
Message-ID: <20191011142157.GC33537@lakrids.cambridge.arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-12-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570733080-21015-12-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072203_913650_0591E166 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 07:44:39PM +0100, Dave Martin wrote:
> Since normal execution of any non-branch instruction resets the
> PSTATE BTYPE field to 0, so do the same thing when emulating a
> trapped instruction.
> 
> Branches don't trap directly, so we should never need to assign a
> non-zero value to BTYPE here.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  arch/arm64/kernel/traps.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 3af2768..4d8ce50 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -331,6 +331,8 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
>  
>  	if (regs->pstate & PSR_MODE32_BIT)
>  		advance_itstate(regs);
> +	else
> +		regs->pstate &= ~(u64)PSR_BTYPE_MASK;

This looks good to me, with one nit below.

We don't (currently) need the u64 cast here, and it's inconsistent with
what we do elsewhere. If the upper 32-bit of pstate get allocated, we'll
need to fix up all the other masking we do:

[mark@lakrids:~/src/linux]% git grep 'pstate &= ~'
arch/arm64/kernel/armv8_deprecated.c:           regs->pstate &= ~PSR_AA32_E_BIT;
arch/arm64/kernel/cpufeature.c:         regs->pstate &= ~PSR_SSBS_BIT;
arch/arm64/kernel/debug-monitors.c:     regs->pstate &= ~DBG_SPSR_SS;
arch/arm64/kernel/insn.c:       pstate &= ~(pstate >> 1);       /* PSR_C_BIT &= ~PSR_Z_BIT */
arch/arm64/kernel/insn.c:       pstate &= ~(pstate >> 1);       /* PSR_C_BIT &= ~PSR_Z_BIT */
arch/arm64/kernel/probes/kprobes.c:     regs->pstate &= ~PSR_D_BIT;
arch/arm64/kernel/probes/kprobes.c:     regs->pstate &= ~DAIF_MASK;
arch/arm64/kernel/ptrace.c:     regs->pstate &= ~SPSR_EL1_AARCH32_RES0_BITS;
arch/arm64/kernel/ptrace.c:                     regs->pstate &= ~PSR_AA32_E_BIT;
arch/arm64/kernel/ptrace.c:     regs->pstate &= ~SPSR_EL1_AARCH64_RES0_BITS;
arch/arm64/kernel/ptrace.c:             regs->pstate &= ~DBG_SPSR_SS;
arch/arm64/kernel/ssbd.c:       task_pt_regs(task)->pstate &= ~val;
arch/arm64/kernel/traps.c:      regs->pstate &= ~PSR_AA32_IT_MASK;

... and at that point I'd suggest we should just ensure the bit
definitions are all defined as unsigned long in the first place since
adding casts to each use is error-prone.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
