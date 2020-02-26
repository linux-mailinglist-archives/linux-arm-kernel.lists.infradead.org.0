Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F74170AAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYK9eNFr8PTEOppAs+GGGPzG9Sh0/ymEiGQ3uZQ9D+U=; b=RoMw475d6EkNXL
	GmlHHyxWaja8KqxRupPOuefem+nLJCui0w54mA0s2/i1d1OCwUMkefO3rnMDGvqUSTVszQPdtzKK7
	5kOabTN3/zVoTaKipufR2ANqJYsnbdZwP9g9MG9AOyGU0lmVeUCnbOhmw5ltO/dZ5lGSJfooUChdC
	S2fPKJrwD9azlYbkb++55RgniLDrwhswLudZgoL2rPTq93GlL/gu6Io8n9QJRj3SFY72sSXa5xqgW
	svnLlJGIgqTTq3VYn96a3wp/ixkGVjrWimPYIRY8ipYLwd1qxXppMHwB0YQLJeu8FTbQuJ5gbmdAG
	NFm3enbUO4kA2YgycSrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Qu-0003ql-DG; Wed, 26 Feb 2020 21:41:32 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74Qi-0003qI-Jm
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:41:22 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j17so211205pjz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wf+hQg66hhCzpMAXWHM+HuBnD6U1j60tq45EYdsucCI=;
 b=mKb208fdH4VjrwAPiQEKqixvPOAB9C95cgTfKiEVpaRU9pMoAh2U424X2d1KOS351h
 v3QCIIUBYYnbICJoZx66ooI34HW+uVxKVR5ZWT6qVHHx9+aGuRZ8VDIMeA/2CqbHpdlI
 OGf1aiGEA7cFYbwiUUymDfbs0m5xFpVfrYVAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wf+hQg66hhCzpMAXWHM+HuBnD6U1j60tq45EYdsucCI=;
 b=aOYRoKJ2sLg1Af9qJCvchgc8uP5Quok0nR/Bt5eapdlJadVgHkhN1fEzNAQashlsOt
 S2WYVX5/a+qH1XlA6D3dlsa061luVgFlwOlaES8RaR6ftN18Qh4RgyEaI9VJQCLeSNlC
 vdDHsBW76W6t4Uo38E9y0gfD68Tyvjq714MLkCTqEYG4sRx5UFrGQf09Q6GHaRhv8VjJ
 e+rHNE5LrmnbmuU+EN+7gULRlyPnhrCT/sx7thSkfBJWOGkxprif1K5Rb0vWle/vK0/y
 Dyen71nD97TXAAn8Kmr62uLWlm7hUkrZllHoc04U9pj4Jhdin/fKh1KOfOlRrsKQoRcl
 4STA==
X-Gm-Message-State: APjAAAU9+csdukTinnWiLiYVoEhwV0B6mdLfcoJoNCOC+KC9Lk0zojCw
 e4tQesOn0WifiGZgJXwcj9nFDw==
X-Google-Smtp-Source: APXvYqxpYrxZJdpgyDEYgt85Ahen+tbff9vS44VZV/k6JWS5lmBiIhwZErrVfzYTUAItJHsrFUDOuA==
X-Received: by 2002:a17:90a:fa8d:: with SMTP id
 cu13mr1177001pjb.68.1582753280049; 
 Wed, 26 Feb 2020 13:41:20 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g7sm4283587pfq.33.2020.02.26.13.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:41:19 -0800 (PST)
Date: Wed, 26 Feb 2020 13:41:18 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 07/11] arm64: unify native/compat instruction skipping
Message-ID: <202002261341.17C9BC2222@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
 <20200226155714.43937-8-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-8-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134120_647742_00D48261 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Paul Elliott <paul.elliott@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
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

On Wed, Feb 26, 2020 at 03:57:10PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Skipping of an instruction on AArch32 works a bit differently from
> AArch64, mainly due to the different CPSR/PSTATE semantics.
> 
> Currently arm64_skip_faulting_instruction() is only suitable for
> AArch64, and arm64_compat_skip_faulting_instruction() handles the IT
> state machine but is local to traps.c.
> 
> Since manual instruction skipping implies a trap, it's a relatively
> slow path.
> 
> So, make arm64_skip_faulting_instruction() handle both compat and
> native, and get rid of the arm64_compat_skip_faulting_instruction()
> special case.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/traps.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index b8c714dda851..bc9f4292bfc3 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -272,6 +272,8 @@ void arm64_notify_die(const char *str, struct pt_regs *regs,
>  	}
>  }
>  
> +static void advance_itstate(struct pt_regs *regs);
> +
>  void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
>  {
>  	regs->pc += size;
> @@ -282,6 +284,9 @@ void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
>  	 */
>  	if (user_mode(regs))
>  		user_fastforward_single_step(current);
> +
> +	if (regs->pstate & PSR_MODE32_BIT)
> +		advance_itstate(regs);
>  }
>  
>  static LIST_HEAD(undef_hook);
> @@ -644,19 +649,12 @@ static void advance_itstate(struct pt_regs *regs)
>  	compat_set_it_state(regs, it);
>  }
>  
> -static void arm64_compat_skip_faulting_instruction(struct pt_regs *regs,
> -						   unsigned int sz)
> -{
> -	advance_itstate(regs);
> -	arm64_skip_faulting_instruction(regs, sz);
> -}
> -
>  static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
>  {
>  	int reg = (esr & ESR_ELx_CP15_32_ISS_RT_MASK) >> ESR_ELx_CP15_32_ISS_RT_SHIFT;
>  
>  	pt_regs_write_reg(regs, reg, arch_timer_get_rate());
> -	arm64_compat_skip_faulting_instruction(regs, 4);
> +	arm64_skip_faulting_instruction(regs, 4);
>  }
>  
>  static const struct sys64_hook cp15_32_hooks[] = {
> @@ -676,7 +674,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
>  
>  	pt_regs_write_reg(regs, rt, lower_32_bits(val));
>  	pt_regs_write_reg(regs, rt2, upper_32_bits(val));
> -	arm64_compat_skip_faulting_instruction(regs, 4);
> +	arm64_skip_faulting_instruction(regs, 4);
>  }
>  
>  static const struct sys64_hook cp15_64_hooks[] = {
> @@ -697,7 +695,7 @@ void do_cp15instr(unsigned int esr, struct pt_regs *regs)
>  		 * There is no T16 variant of a CP access, so we
>  		 * always advance PC by 4 bytes.
>  		 */
> -		arm64_compat_skip_faulting_instruction(regs, 4);
> +		arm64_skip_faulting_instruction(regs, 4);
>  		return;
>  	}
>  
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
