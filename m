Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED51375FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ns7D+TZ9znWEO8wnssduXH/a3imtpY0IsZdKtxbKgPM=; b=Fwz5UxjCkYPbSd
	fhcK5IJwifFOY5c0AtM8D69WxXYOw/sxc4C4h07L0FiUVjkC95uqHYHj397z/DamwIC1+0jP/EjF0
	HW5tbexPiFIjoavkpTcDVlp7aJBH1H8w5lU1LgTI4+Ow/mWW9kznb2olJQZDY5tKH2nmyyzsJof9U
	6mJbQwm6vdna2cQ2rc2uyvJHuvS7lhrN/Ah8S5z5nOuN30us66yoa3NO0U8eA+Saqn5Y3/+fRiF7f
	5wGHFUUSZbZvugQB1L3xbyb6m6HONJiugIKfZ8/FTePNtJKJ2UILCFjtNVPOOUSrbIR8j3EOXhNzj
	313gQOkJY/q3Py0Y1fdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipz13-0008NZ-30; Fri, 10 Jan 2020 18:28:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipz0x-0008Mq-8r
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:28:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7653730E;
 Fri, 10 Jan 2020 10:28:05 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 996263F6C4; Fri, 10 Jan 2020 10:28:02 -0800 (PST)
Date: Fri, 10 Jan 2020 18:28:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 04/12] arm64: Basic Branch Target Identification support
Message-ID: <20200110182800.GI8786@arrakis.emea.arm.com>
References: <20191211154206.46260-1-broonie@kernel.org>
 <20191211154206.46260-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211154206.46260-5-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_102807_355310_1C5A96A1 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:41:58PM +0000, Mark Brown wrote:
> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> index fbebb411ae20..212bba1f8d84 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -35,8 +35,16 @@
>  #define GIC_PRIO_PSR_I_SET		(1 << 4)
>  
>  /* Additional SPSR bits not exposed in the UABI */
> +#define PSR_BTYPE_SHIFT		10
> +
>  #define PSR_IL_BIT		(1 << 20)
>  
> +/* Convenience names for the values of PSTATE.BTYPE */
> +#define PSR_BTYPE_NONE		(0b00 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_JC		(0b01 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_C		(0b10 << PSR_BTYPE_SHIFT)
> +#define PSR_BTYPE_J		(0b11 << PSR_BTYPE_SHIFT)

Would these be better placed in the uapi/ptrace.h?

> diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> index 9a9d98a443fc..ef80ecbd6eaf 100644
> --- a/arch/arm64/kernel/syscall.c
> +++ b/arch/arm64/kernel/syscall.c
> @@ -98,6 +98,24 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
>  	regs->orig_x0 = regs->regs[0];
>  	regs->syscallno = scno;
>  
> +	/*
> +	 * BTI note:
> +	 * The architecture does not guarantee that SPSR.BTYPE is zero
> +	 * on taking an SVC, so we could return to userspace with a
> +	 * non-zero BTYPE after the syscall.

On page 2580 of the ARM ARM there is a statement that "any instruction
other than BR, ..." sets BTYPE to 0. Wouldn't SVC fall into the same
category?

> +	 *
> +	 * This shouldn't matter except when userspace is explicitly
> +	 * doing something stupid, such as setting PROT_BTI on a page
> +	 * that lacks conforming BTI/PACIxSP instructions, falling
> +	 * through from one executable page to another with differing
> +	 * PROT_BTI, or messing with BYTPE via ptrace: in such cases,

s/BYTPE/BTYPE/

Apart from the nitpicks above, the patch looks good to me:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
