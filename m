Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F40170A9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVP3SDEIyp81FqXYWSFcbX9uNQSNfErf9iE6lHb/80o=; b=qDEnD7pI7ucqqL
	sgpVwMWb2Lrrx+F4xBWzYCLZ+sAu4wcAoGseGuLXJzD3c4PSTtMJGW0sEo6kXGm3xvsyg0mXCXrrL
	oI1rIVw1l+2G87lcxdpzjgqa62UfIh3Hbdz2+LOTbblB6C18sKe6xwyUqFzBbVcsVmeDm7WXPgXti
	Pjt4cisBVZY0Qx/xf/k7djfqZ14hWJ7kIpKBiPYNaJCCVZ50yRgbzFt8cmWfSxUSVWqja2PMMfKFM
	jicyH1YfKJ9lAeL5zNsLXVQ3cX4lYghv9+sJ5pBwWzuXHDrpNv5Q+/EYwddiKKqFaoOzOB3IjBX40
	Y3vQtKDaotucEI/+DmRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74PW-0002HU-LY; Wed, 26 Feb 2020 21:40:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74PI-0002H6-2t
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:39:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id i19so451904pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SuRPBFQdcJTBQXLfW7zhTZM3AVXzTzaLq0hZO+OJ8t8=;
 b=McMrWJB/rzDG1kYNRHCmu6YGhWogESTULXa4e+VE70LyFgccjXgbd+15VJ3LqXUUU8
 jJaLOjX8fotobjx6twtTRj4EZmpxPNIw/R2SlyBMIKuyHb/AIRdVMvgSR5jzwqx1whrJ
 Fa20+GL6IL88TZFTbMeFNrQ8Xj9oz3fbcCWZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SuRPBFQdcJTBQXLfW7zhTZM3AVXzTzaLq0hZO+OJ8t8=;
 b=DcZ0UJsIZzoAjNOnQK5oIkn4+NqCoHrNdAcAKAZV/PduFp/f3zyR50Iauk7KMOiKDI
 GJNMkBaAzWiU6gsGvILLdPKsXc7kWtRepEi31apW5AjoPEJrSpqXQV8QWef7hoVYjmwN
 FgTu6tWkk0bhRN9x5uCU0RyB/ZbR2zAROeDY71CmSL5tY3XFcRALk6ynnWD3qp1ZHpAD
 WOG2SgkrOX3MX6bJH53ptRX5kBnmMAgsK6nevUqrVRf75amgyFABcQN4LWbbh5TgLYri
 590SxMGtzac9ExRG22BK7Rhj6Jkj7FcnNQ+yUUwCP6RSwJncMna2KxsjDpdRpHHlmr87
 6OYQ==
X-Gm-Message-State: APjAAAUDbE246pdzQx1hr6dZ1G6QyhripwP9mfFkqi+bDLoNgkESHLOj
 uzJjuPaQaW3vITB4c6ghAPi5gA==
X-Google-Smtp-Source: APXvYqywytR40Z7EOffZT448kxzYwWrN/27FUekevyfwSHqRVpegVaIO/Shffbk5jeh0USf/WAeU7Q==
X-Received: by 2002:a63:1a5b:: with SMTP id a27mr769948pgm.249.1582753191171; 
 Wed, 26 Feb 2020 13:39:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i2sm3730242pjs.21.2020.02.26.13.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:39:50 -0800 (PST)
Date: Wed, 26 Feb 2020 13:39:49 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 08/11] arm64: traps: Shuffle code to eliminate forward
 declarations
Message-ID: <202002261339.53539BA19@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
 <20200226155714.43937-9-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-9-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_133952_127063_6C8A688D 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:57:11PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Hoist the IT state handling code earlier in traps.c, to avoid
> accumulating forward declarations.
> 
> No functional change.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/traps.c | 103 ++++++++++++++++++--------------------
>  1 file changed, 50 insertions(+), 53 deletions(-)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index bc9f4292bfc3..3c07a7074145 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -272,7 +272,55 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
>  	}
>  }
>  
> -static void advance_itstate(struct pt_regs *regs);
> +#ifdef CONFIG_COMPAT
> +#define PSTATE_IT_1_0_SHIFT	25
> +#define PSTATE_IT_1_0_MASK	(0x3 << PSTATE_IT_1_0_SHIFT)
> +#define PSTATE_IT_7_2_SHIFT	10
> +#define PSTATE_IT_7_2_MASK	(0x3f << PSTATE_IT_7_2_SHIFT)
> +
> +static u32 compat_get_it_state(struct pt_regs *regs)
> +{
> +	u32 it, pstate = regs->pstate;
> +
> +	it  = (pstate & PSTATE_IT_1_0_MASK) >> PSTATE_IT_1_0_SHIFT;
> +	it |= ((pstate & PSTATE_IT_7_2_MASK) >> PSTATE_IT_7_2_SHIFT) << 2;
> +
> +	return it;
> +}
> +
> +static void compat_set_it_state(struct pt_regs *regs, u32 it)
> +{
> +	u32 pstate_it;
> +
> +	pstate_it  = (it << PSTATE_IT_1_0_SHIFT) & PSTATE_IT_1_0_MASK;
> +	pstate_it |= ((it >> 2) << PSTATE_IT_7_2_SHIFT) & PSTATE_IT_7_2_MASK;
> +
> +	regs->pstate &= ~PSR_AA32_IT_MASK;
> +	regs->pstate |= pstate_it;
> +}
> +
> +static void advance_itstate(struct pt_regs *regs)
> +{
> +	u32 it;
> +
> +	/* ARM mode */
> +	if (!(regs->pstate & PSR_AA32_T_BIT) ||
> +	    !(regs->pstate & PSR_AA32_IT_MASK))
> +		return;
> +
> +	it  = compat_get_it_state(regs);
> +
> +	/*
> +	 * If this is the last instruction of the block, wipe the IT
> +	 * state. Otherwise advance it.
> +	 */
> +	if (!(it & 7))
> +		it = 0;
> +	else
> +		it = (it & 0xe0) | ((it << 1) & 0x1f);
> +
> +	compat_set_it_state(regs, it);
> +}
>  
>  void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
>  {
> @@ -285,7 +333,7 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
>  	if (user_mode(regs))
>  		user_fastforward_single_step(current);
>  
> -	if (regs->pstate & PSR_MODE32_BIT)
> +	if (compat_user_mode(regs))
>  		advance_itstate(regs);
>  }
>  
> @@ -578,34 +626,6 @@ static const struct sys64_hook sys64_hooks[] = {
>  	{},
>  };
>  
> -
> -#ifdef CONFIG_COMPAT
> -#define PSTATE_IT_1_0_SHIFT	25
> -#define PSTATE_IT_1_0_MASK	(0x3 << PSTATE_IT_1_0_SHIFT)
> -#define PSTATE_IT_7_2_SHIFT	10
> -#define PSTATE_IT_7_2_MASK	(0x3f << PSTATE_IT_7_2_SHIFT)
> -
> -static u32 compat_get_it_state(struct pt_regs *regs)
> -{
> -	u32 it, pstate = regs->pstate;
> -
> -	it  = (pstate & PSTATE_IT_1_0_MASK) >> PSTATE_IT_1_0_SHIFT;
> -	it |= ((pstate & PSTATE_IT_7_2_MASK) >> PSTATE_IT_7_2_SHIFT) << 2;
> -
> -	return it;
> -}
> -
> -static void compat_set_it_state(struct pt_regs *regs, u32 it)
> -{
> -	u32 pstate_it;
> -
> -	pstate_it  = (it << PSTATE_IT_1_0_SHIFT) & PSTATE_IT_1_0_MASK;
> -	pstate_it |= ((it >> 2) << PSTATE_IT_7_2_SHIFT) & PSTATE_IT_7_2_MASK;
> -
> -	regs->pstate &= ~PSR_AA32_IT_MASK;
> -	regs->pstate |= pstate_it;
> -}
> -
>  static bool cp15_cond_valid(unsigned int esr, struct pt_regs *regs)
>  {
>  	int cond;
> @@ -626,29 +646,6 @@ static bool cp15_cond_valid(unsigned int esr, struct pt_regs *regs)
>  	return aarch32_opcode_cond_checks[cond](regs->pstate);
>  }
>  
> -static void advance_itstate(struct pt_regs *regs)
> -{
> -	u32 it;
> -
> -	/* ARM mode */
> -	if (!(regs->pstate & PSR_AA32_T_BIT) ||
> -	    !(regs->pstate & PSR_AA32_IT_MASK))
> -		return;
> -
> -	it  = compat_get_it_state(regs);
> -
> -	/*
> -	 * If this is the last instruction of the block, wipe the IT
> -	 * state. Otherwise advance it.
> -	 */
> -	if (!(it & 7))
> -		it = 0;
> -	else
> -		it = (it & 0xe0) | ((it << 1) & 0x1f);
> -
> -	compat_set_it_state(regs, it);
> -}
> -
>  static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
>  {
>  	int reg = (esr & ESR_ELx_CP15_32_ISS_RT_MASK) >> ESR_ELx_CP15_32_ISS_RT_SHIFT;
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
