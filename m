Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8E1B1839
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fOIZ1cVGkIENqPNcV5g/UGASG2SDygEHnT/MIQAnSA=; b=jM7Fe9V9CWEpXZ
	P2MTSaFuoMnbRvsgAV4zxoih2fi2MU8VxLfTevQs3aHZSSevBaPkL7zgLTBCNIY+aRybMSa6037du
	8nhc9OJb6QnLqBgGL93631LUPtmnrQdmVwc35SDrp9pf0sX+qX0fdMF1SRa5Q7elYxeeKojtku/wZ
	r4uFobZ6z3uuqJtlorKRsNRlhHB3w5fgKDHdMYumwdrOwQ461/IJRxg2wngMw3+VvxMONYO+p8EZt
	C6yj5EPqnA9rzUE43tao056j18mYSddloSs+ls9Qy0N+tu67RvXkIdcH9/YVkCCPHyqXnkpg4kTBC
	fAtJuAGQLPbUrcVhNtLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdof-0007UV-G2; Mon, 20 Apr 2020 21:18:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdoU-0007RN-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:18:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id n16so5712064pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I17SvgP3468YaEZJ/m4ZeQYc9PSBmKeATPZO1LtBfTU=;
 b=XnbwyLaH7oxybL3ROw+62qMqb6U8ZOn3MLAaPYqeeh+VuVLkQNRb3nWFLiH9BwR2UR
 sbbVScuejmAiyvNPyxXICkWwFKWG0PpwnZEeN43Ngtm27+vb+YWt3zwPsRXvZuj689HF
 fYbSTVujfki3XSuRzMQMpiQebTqSfvME3FQtGM+9HbuL+7BEeSe0pUdrwZ07pFcg20Un
 2m7XBjrFngOcMpgWWHxGDck8annUfzdJhxNT8BIU8kpWqrEkuSxsbuRyHwJPs71/4XUy
 QNd3JhuxImU8I1Q3PBefsRGrK1shSg18iwPgvpF5PlqpDJ18U2gU1CEsFxIrNQixCFNj
 B7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I17SvgP3468YaEZJ/m4ZeQYc9PSBmKeATPZO1LtBfTU=;
 b=OuNSdBGQ+TTG5aa9puedwybU/Wv04NyaQr9dWnPPb1ng8oDTkV1UpAQZHxQPNC371x
 dNXzpTJe6OISQntrxFtwRT7YkguSMJYfuyxfk1RK8NuflD8BJJrOj7wm7+nFqKSDrNvT
 t39Wp8ESA6AbCnUYmFx2+J/rvIA0Z70uPgbgVqI+YVTpQCJeGkIhsatpbZ86nn/3U/Kp
 Vl37ApR8WM+wsZB9fx6K7UV3iKV/vsz3DfiSHYqI6b9LoPN8Br9QKKI9x/vq2nQl5rVp
 6lBHNL5a5h45N3IK9DtDGtzNwcre8r52ZwLQ6bBP+ZaXDaTZC0m/w+yCVFT9TyygEHmu
 urjQ==
X-Gm-Message-State: AGi0PuabtDbiZhBEIANeRz/VAEfoIqByq4ByvuIdLtJk98oibD26FkDD
 xIDmUbFKS3APmFq7pFUsH+t3DQ==
X-Google-Smtp-Source: APiQypLUjqh4gwB0agDoF7ZPn9MBLUchmrqjGKnG9TkryWTgi8fxU4nmUmPmgkJbrKA1PcXpLA4w9w==
X-Received: by 2002:a63:ef02:: with SMTP id u2mr18271584pgh.21.1587417517829; 
 Mon, 20 Apr 2020 14:18:37 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id s10sm407267pfd.124.2020.04.20.14.18.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:18:36 -0700 (PDT)
Date: Mon, 20 Apr 2020 14:18:30 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200420211830.GA5081@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420171727.GB24386@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_141846_991131_32587E82 
X-CRM114-Status: GOOD (  31.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> > +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> > +export CC_FLAGS_SCS
> > +endif
> 
> CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
> way.

Right, I followed ftrace's example here.

> > +config SHADOW_CALL_STACK
> > +	bool "Clang Shadow Call Stack"
> > +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +	help
> > +	  This option enables Clang's Shadow Call Stack, which uses a
> > +	  shadow stack to protect function return addresses from being
> > +	  overwritten by an attacker. More information can be found in
> > +	  Clang's documentation:
> > +
> > +	    https://clang.llvm.org/docs/ShadowCallStack.html
> > +
> > +	  Note that security guarantees in the kernel differ from the ones
> > +	  documented for user space. The kernel must store addresses of shadow
> > +	  stacks used by other tasks and interrupt handlers in memory, which
> > +	  means an attacker capable of reading and writing arbitrary memory
> > +	  may be able to locate them and hijack control flow by modifying
> > +	  shadow stacks that are not currently in use.
> 
> Shouldn't some of this depend on CC_IS_CLANG?

Sure, I'll add CC_IS_CLANG here in the next version. Note that we do
check for compiler support before selecting ARCH_SUPPORTS_SHADOW_CALL_STACK.
The flags are architecture-specific, so the check is done in the arch Kconfig.

> > +config SHADOW_CALL_STACK_VMAP
> > +	bool "Use virtually mapped shadow call stacks"
> > +	depends on SHADOW_CALL_STACK
> > +	help
> > +	  Use virtually mapped shadow call stacks. Selecting this option
> > +	  provides better stack exhaustion protection, but increases per-thread
> > +	  memory consumption as a full page is allocated for each shadow stack.
> 
> Given that this feature applies only to arm64 kernels built with clang, it
> feels weird to further segment that userbase with another config option.
> Does Android enable SHADOW_CALL_STACK_VMAP? If not, maybe we should ditch
> it for now and add it when we have a user.

Android doesn't enable the VMAP option right now due to increased memory
overhead. I'll drop it from v12.

> > +/*
> > + * A random number outside the kernel's virtual address space to mark the
> > + * end of the shadow stack.
> > + */
> > +#define SCS_END_MAGIC	0xaf0194819b1635f6UL
> 
> This seems like it might be arm64-specific. Why not choose something based
> off CONFIG_ILLEGAL_POINTER_VALUE (see linux/poison.h)?

Sure, I'll use POISON_POINTER_DELTA here.

> > +static inline void *__scs_base(struct task_struct *tsk)
> 
> Please avoid using 'inline' in C files unless there's a good reason not
> to let the compiler figure it out.

Ack.

> > +{
> > +	/*
> > +	 * To minimize risk the of exposure, architectures may clear a
> 
> Should be "the risk of exposure".

Thanks.

> > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > +	 * upwards, so we can mask out the low bits to extract the base
> > +	 * when the task is not running.
> > +	 */
> > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> 
> Could we avoid forcing this alignment it we stored the SCS pointer as a
> (base,offset) pair instead? That might be friendlier on the allocations
> later on.

The idea is to avoid storing the current task's shadow stack address in
memory, which is why I would rather not store the base address either.

> > +static inline void scs_set_magic(void *s)
> > +{
> > +	*scs_magic(s) = SCS_END_MAGIC;
> 
> You added task_set_scs() for this sort of thing, so I'm not convinced you
> need this extra helper.

Agreed, I'll drop this.

> > +	if (s)
> > +		scs_set_magic(s);
> > +	/* TODO: poison for KASAN, unpoison in scs_free */
> 
> We don't usually commit these. What's missing?

At the time, KASAN didn't support poisoning vmalloc'ed memory, but looks
like that was fixed a while back.

> > +static int scs_cleanup(unsigned int cpu)
> > +{
> > +	int i;
> > +	void **cache = per_cpu_ptr(scs_cache, cpu);
> > +
> > +	for (i = 0; i < NR_CACHED_SCS; i++) {
> > +		vfree(cache[i]);
> > +		cache[i] = NULL;
> > +	}
> 
> Hmm, can this run concurrently with another CPU doing a stack allocation
> with this_cpu_cmpxchg()? It probably works out on arm64 thanks to the use
> of atomics, but we shouldn't be relying on that in core code.

This is essentially identical to the code in kernel/fork.c. Anyway, all
of this code goes away with the VMAP option.

> > +void __init scs_init(void)
> > +{
> > +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> > +				0, NULL);
> > +	WARN_ON(!scs_cache);
> 
> Memory allocation failure should be noisy enough without this.

Sure, I'll remove the warning.

> > +void scs_task_reset(struct task_struct *tsk)
> > +{
> > +	/*
> > +	 * Reset the shadow stack to the base address in case the task
> > +	 * is reused.
> > +	 */
> > +	task_set_scs(tsk, __scs_base(tsk));
> > +}
> 
> Why isn't this in the header?

> > +bool scs_corrupted(struct task_struct *tsk)
> > +{
> > +	unsigned long *magic = scs_magic(__scs_base(tsk));
> > +
> > +	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
> > +}
> 
> Same here.

I'll move both to the header file.

> > +void scs_release(struct task_struct *tsk)
> > +{
> > +	void *s;
> > +
> > +	s = __scs_base(tsk);
> > +	if (!s)
> > +		return;
> > +
> > +	WARN_ON(scs_corrupted(tsk));
> > +
> > +	task_set_scs(tsk, NULL);
> 
> Aren't we about to free the task here? What does clearing the scs pointer
> achieve?

True, it doesn't achieve much, only leaves one fewer shadow stack pointer
in memory. I'll drop this from the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
