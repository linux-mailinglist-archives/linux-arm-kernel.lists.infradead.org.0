Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A4E9379
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFp+q21jGD796O8xpDMzRYdzPINv1jllPQjZo+JA9u4=; b=tzSkurgAx0SGmi
	g+JlxGNnJFx7vNdvJD0g74Vb7K7DVZ/9sEyWZVnv+4uXkphpIys8UC69qQmHvdfvL1t6rdiSzop+w
	4m2hVYGOabg1pwd8086DhBWN548Pb5oq62bMN6KT7gRuaBL63blWxKdq0twYRa+g6GFhHpEwSUSNx
	b9KtOB84Z1bwBOEIFXwlJC9UCAODHh7zCpMtKp6GV4bq2eCfV5PrM0YXOAuEwXZ8+En3U5cV5FMj1
	MoxBjBt4xAciWlFYODu3lrEzWkSayQTAi22DFXo2lSgk9Fo+r3EGEERBmTru+j+bPQb+MIEbX179z
	PNyCr6vvkaPKM/09O5Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPamp-0000LZ-MH; Tue, 29 Oct 2019 23:20:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPamH-0007F0-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:19:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id q21so39630plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 16:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YaJtgLYKb0l4FyZ4jUBHCczpuWveP563IeeZfWc0m7k=;
 b=ljpbXbSCQr3faVn4lcJ2hNpbtNEtMXu99g0vus9AnDxFazy8h/FibLkL2N5dPTndSO
 Svau97KKRz8S4/mdymps+zi6jIgxLv+30soShO3eyIJszJ2mOkKx2q0gPesRu3Gadt6M
 J4Ghoo5SGJFENRAHtiAV7eKJVlA3ieoqc3EUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YaJtgLYKb0l4FyZ4jUBHCczpuWveP563IeeZfWc0m7k=;
 b=gQ0uWwaYHgFP/hlqPE1y9pTnP44xA3WgGch73dOjX3JwBwa1oK68yYTHW6TVhkZx9F
 8Id7e2xzkkPBj5lySBzlufGlLB0RetwG8eEPUs3EgwNMAtYIDg4PuX4Ig9viUDcouRI5
 5WEaNxrtnuH/lLFFpgwIEi4ECRBpdSiE0frC3CzcvyLrJnPM5T+8XKqHeSEPL45rHeJH
 Xve7cjMsLLWHIEs2AodJ2nR95Vh74eAIeynzYByMVBgcpgPEPkFcvaniZ/2wTNl5UULf
 RSutrsdgnCrsh4J+opqbZHELe4Wl4bekCXNXx0xUIRRkAYFCvdWqF6pM38NZlXBB7T9+
 Y0tw==
X-Gm-Message-State: APjAAAXUURrLQFdjK1AVOaubba4JPAYpsT3OsqlQyAVDX9aHjbB6xJmo
 w0ykvTBoDuGTt/6ho/29+45sZQ==
X-Google-Smtp-Source: APXvYqzWIvlFIF+G6hAYMTtuyrvwFzMMaImF7+nXc9spFzUJ/+qexBUliEgWpaVwDQLWqyzr2bSMqA==
X-Received: by 2002:a17:902:b7c2:: with SMTP id
 v2mr1270214plz.202.1572391192503; 
 Tue, 29 Oct 2019 16:19:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f185sm177613pfb.183.2019.10.29.16.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:19:51 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:19:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 06/12] elf: Allow arch to tweak initial mmap prot flags
Message-ID: <201910291618.C28E737@keescook>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
 <1571419545-20401-7-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571419545-20401-7-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_161954_108330_9163C809 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 06:25:39PM +0100, Dave Martin wrote:
> An arch may want to tweak the mmap prot flags for an
> ELFexecutable's initial mappings.  For example, arm64 is going to
> need to add PROT_BTI for executable pages in an ELF process whose
> executable is marked as using Branch Target Identification (an
> ARMv8.5-A control flow integrity feature).
> 
> So that this can be done in a generic way, add a hook
> arch_elf_adjust_prot() to modify the prot flags as desired: arches
> can select CONFIG_HAVE_ELF_PROT and implement their own backend
> where necessary.
> 
> By default, leave the prot flags unchanged.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  fs/Kconfig.binfmt   |  3 +++
>  fs/binfmt_elf.c     | 18 ++++++++++++------
>  include/linux/elf.h | 12 ++++++++++++
>  3 files changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
> index d2cfe07..2358368 100644
> --- a/fs/Kconfig.binfmt
> +++ b/fs/Kconfig.binfmt
> @@ -36,6 +36,9 @@ config COMPAT_BINFMT_ELF
>  config ARCH_BINFMT_ELF_STATE
>  	bool
>  
> +config ARCH_HAVE_ELF_PROT
> +	bool
> +
>  config ARCH_USE_GNU_PROPERTY
>  	bool
>  
> diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
> index ae345f6..dbfab2e 100644
> --- a/fs/binfmt_elf.c
> +++ b/fs/binfmt_elf.c
> @@ -531,7 +531,8 @@ static inline int arch_check_elf(struct elfhdr *ehdr, bool has_interp,
>  
>  #endif /* !CONFIG_ARCH_BINFMT_ELF_STATE */
>  
> -static inline int make_prot(u32 p_flags)
> +static inline int make_prot(u32 p_flags, struct arch_elf_state *arch_state,
> +			    bool has_interp, bool is_interp)
>  {
>  	int prot = 0;
>  
> @@ -541,7 +542,8 @@ static inline int make_prot(u32 p_flags)
>  		prot |= PROT_WRITE;
>  	if (p_flags & PF_X)
>  		prot |= PROT_EXEC;
> -	return prot;
> +
> +	return arch_elf_adjust_prot(prot, arch_state, has_interp, is_interp);
>  }

Random thought: there is already an 'exec-state' structure: bprm. I
wonder if arch_state should be attached there instead of passed around
here? It'd require almost the same amount of changes, though, so my idea
might not gain much in the diffstat, but maybe it's better
organizationally? I'm not sure.

Otherwise, this all looks fine to me.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

>  
>  /* This is much more generalized than the library routine read function,
> @@ -551,7 +553,8 @@ static inline int make_prot(u32 p_flags)
>  
>  static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
>  		struct file *interpreter, unsigned long *interp_map_addr,
> -		unsigned long no_base, struct elf_phdr *interp_elf_phdata)
> +		unsigned long no_base, struct elf_phdr *interp_elf_phdata,
> +		struct arch_elf_state *arch_state)
>  {
>  	struct elf_phdr *eppnt;
>  	unsigned long load_addr = 0;
> @@ -583,7 +586,8 @@ static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
>  	for (i = 0; i < interp_elf_ex->e_phnum; i++, eppnt++) {
>  		if (eppnt->p_type == PT_LOAD) {
>  			int elf_type = MAP_PRIVATE | MAP_DENYWRITE;
> -			int elf_prot = make_prot(eppnt->p_flags);
> +			int elf_prot = make_prot(eppnt->p_flags, arch_state,
> +						 true, true);
>  			unsigned long vaddr = 0;
>  			unsigned long k, map_addr;
>  
> @@ -1040,7 +1044,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  			}
>  		}
>  
> -		elf_prot = make_prot(elf_ppnt->p_flags);
> +		elf_prot = make_prot(elf_ppnt->p_flags, &arch_state,
> +				     !!interpreter, false);
>  
>  		elf_flags = MAP_PRIVATE | MAP_DENYWRITE | MAP_EXECUTABLE;
>  
> @@ -1186,7 +1191,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
>  		elf_entry = load_elf_interp(&loc->interp_elf_ex,
>  					    interpreter,
>  					    &interp_map_addr,
> -					    load_bias, interp_elf_phdata);
> +					    load_bias, interp_elf_phdata,
> +					    &arch_state);
>  		if (!IS_ERR((void *)elf_entry)) {
>  			/*
>  			 * load_elf_interp() returns relocation
> diff --git a/include/linux/elf.h b/include/linux/elf.h
> index 7bdc6da..1b6e895 100644
> --- a/include/linux/elf.h
> +++ b/include/linux/elf.h
> @@ -83,4 +83,16 @@ extern int arch_parse_elf_property(u32 type, const void *data, size_t datasz,
>  				   bool compat, struct arch_elf_state *arch);
>  #endif
>  
> +#ifdef CONFIG_ARCH_HAVE_ELF_PROT
> +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> +			 bool has_interp, bool is_interp);
> +#else
> +static inline int arch_elf_adjust_prot(int prot,
> +				       const struct arch_elf_state *state,
> +				       bool has_interp, bool is_interp)
> +{
> +	return prot;
> +}
> +#endif
> +
>  #endif /* _LINUX_ELF_H */
> -- 
> 2.1.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
