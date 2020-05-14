Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CBE1D238D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4K0/SbW3fXT3CHRnTq36XKL5/QUkynciNoHIsGen66A=; b=TO4TIYPdtqDbDC
	ByFsKS1SSYcrVvb/2hApmDy+I/VbLSms/dvt8pxVtSipgqz5QZ+svCzBSvPBa6dlbmunFfYOmaLlG
	69rRJP3BLF1fhZWKYtwoLyV5Rk0sPxI+v3WZAtatdm3Qi1zVayYFkPB1rwC7xzKSShNPqeCOT7E4Q
	rIPIPJDMvShOzIWaJ2sxRGxbKWy/qoW3cv109s5wt8lj3zJW3q9PonjQ3yqjJpHdIsC8aS6NIaPbG
	tEzzTRfDcyEr7Ebge3/3vZL8NmoS4JJUozVxZh3C5siq1InhFTwbiIbbv2EicyJK3c+tAp+8uDmxt
	N5SVaCFtv4WVpQJxWyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1dU-0005fo-Fx; Thu, 14 May 2020 00:22:04 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1dJ-0005el-1Y
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:21:54 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 62so963331vsi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tpGKrAWxnYteSKZx7BseBLlhQnaeajEX7687cVAYxvo=;
 b=Na/d5QrkKWMd5tBXEQIOgp0ETgPkUHKtgmGm/sLF6yNvFjZqEKLtpDkpMNCJjQuGh4
 m+pWKEf2Dt08HwhWCRjZSTVVkTRDd1BnZ2KqkRFwiv3vY/wdr/WVJpe3WBgXKXtOozjM
 S124A/tHJN4q3DSHmZKFkknmBOJKhcz0ZjtA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tpGKrAWxnYteSKZx7BseBLlhQnaeajEX7687cVAYxvo=;
 b=lL79gC3qmwvh/vtqMV7GuAuuHoMrZVAlii8pob7gif3LWDjgTiFnrYrEwMJ+6CJeGK
 XjISQk2BlBXPxFoOvMLSLiwGiHNT2zdM0ufnebEvOKlfkI8zaEFWIITrEfDwKquC43r8
 hnIJRf10fhM5VSH77vSsUmL2IhmIv7WrLDf0WOTJprgkbYlTPg2WcMFd7nClETJqF0n/
 3NtNq1cnZSA4ZWvYcdhEFJyxv4kgE+AqrFDtrDdPGMqgWE7E5QhKa73aXhYoMkdCiIwr
 UpSG2MZ4O97GwWTtF0mpKNlQLaO1lJstygrS5iQSCXIvVvUCr9RruHBJSygEiuKX1GTE
 UGQg==
X-Gm-Message-State: AOAM5305tyIJMhMTf0wh73zVjx8RCael0NgsoB/89bybltgO9WlECu2G
 i4RRd/d5tK2dTJ4lGp3JZbT6gI2xj9c=
X-Google-Smtp-Source: ABdhPJz4AZslEl24npFcf1S9HjHgp0ihDYnUklGRLlIHpKWpdHA8qru20TZNddhMRLXcKT1HoYcntg==
X-Received: by 2002:a67:f557:: with SMTP id z23mr1527934vsn.32.1589415711069; 
 Wed, 13 May 2020 17:21:51 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id u13sm337782vsg.12.2020.05.13.17.21.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 17:21:50 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a11so488552uah.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:21:49 -0700 (PDT)
X-Received: by 2002:ab0:6147:: with SMTP id w7mr427477uan.8.1589415709444;
 Wed, 13 May 2020 17:21:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-3-liwei391@huawei.com>
In-Reply-To: <20200509214159.19680-3-liwei391@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 17:21:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
Message-ID: <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
To: Wei Li <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172153_083678_47BE82CE 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, May 9, 2020 at 6:49 AM Wei Li <liwei391@huawei.com> wrote:
>
> PSTATE.I and PSTATE.D are very important for single-step working.
>
> Without disabling interrupt on local CPU, there is a chance of
> interrupt occurrence in the period of exception return and start of
> out-of-line single-step, that result in wrongly single stepping
> into the interrupt handler. And if D bit is set then, it results into
> undefined exception and when it's handler enables dbg then single-step
> exception is generated, not as expected.
>
> As they are maintained well in kprobes_save_local_irqflag() and
> kprobes_restore_local_irqflag() for kprobe module, extract them as
> kernel_prepare_single_step() and kernel_cleanup_single_step() for
> general use.
>
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  arch/arm64/include/asm/debug-monitors.h |  4 ++++
>  arch/arm64/kernel/debug-monitors.c      | 26 +++++++++++++++++++++++
>  arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
>  3 files changed, 32 insertions(+), 26 deletions(-)
>
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index 7619f473155f..b62469f3475b 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -113,6 +113,10 @@ void user_fastforward_single_step(struct task_struct *task);
>  void kernel_enable_single_step(struct pt_regs *regs);
>  void kernel_disable_single_step(void);
>  int kernel_active_single_step(void);
> +void kernel_prepare_single_step(unsigned long *flags,
> +                                               struct pt_regs *regs);
> +void kernel_cleanup_single_step(unsigned long flags,
> +                                               struct pt_regs *regs);
>
>  #ifdef CONFIG_HAVE_HW_BREAKPOINT
>  int reinstall_suspended_bps(struct pt_regs *regs);
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..25ce6b5a52d2 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -429,6 +429,32 @@ int kernel_active_single_step(void)
>  }
>  NOKPROBE_SYMBOL(kernel_active_single_step);
>
> +/*
> + * Interrupts need to be disabled before single-step mode is set, and not
> + * reenabled until after single-step mode ends.
> + * Without disabling interrupt on local CPU, there is a chance of
> + * interrupt occurrence in the period of exception return and  start of
> + * out-of-line single-step, that result in wrongly single stepping
> + * into the interrupt handler.
> + */
> +void kernel_prepare_single_step(unsigned long *flags,
> +                                               struct pt_regs *regs)
> +{
> +       *flags = regs->pstate & DAIF_MASK;
> +       regs->pstate |= PSR_I_BIT;
> +       /* Unmask PSTATE.D for enabling software step exceptions. */
> +       regs->pstate &= ~PSR_D_BIT;
> +}
> +NOKPROBE_SYMBOL(kernel_prepare_single_step);

nit: why not just return unsigned long rather than passing by reference?


> +
> +void kernel_cleanup_single_step(unsigned long flags,
> +                                               struct pt_regs *regs)
> +{
> +       regs->pstate &= ~DAIF_MASK;
> +       regs->pstate |= flags;
> +}
> +NOKPROBE_SYMBOL(kernel_cleanup_single_step);
> +
>  /* ptrace API */
>  void user_enable_single_step(struct task_struct *task)
>  {
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index d1c95dcf1d78..c655b6b543e3 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -168,30 +168,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
>         __this_cpu_write(current_kprobe, p);
>  }
>
> -/*
> - * Interrupts need to be disabled before single-step mode is set, and not
> - * reenabled until after single-step mode ends.
> - * Without disabling interrupt on local CPU, there is a chance of
> - * interrupt occurrence in the period of exception return and  start of
> - * out-of-line single-step, that result in wrongly single stepping
> - * into the interrupt handler.
> - */
> -static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
> -                                               struct pt_regs *regs)
> -{
> -       kcb->saved_irqflag = regs->pstate & DAIF_MASK;
> -       regs->pstate |= PSR_I_BIT;
> -       /* Unmask PSTATE.D for enabling software step exceptions. */
> -       regs->pstate &= ~PSR_D_BIT;
> -}
> -
> -static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
> -                                               struct pt_regs *regs)
> -{
> -       regs->pstate &= ~DAIF_MASK;
> -       regs->pstate |= kcb->saved_irqflag;
> -}
> -
>  static void __kprobes
>  set_ss_context(struct kprobe_ctlblk *kcb, unsigned long addr)
>  {
> @@ -227,7 +203,7 @@ static void __kprobes setup_singlestep(struct kprobe *p,
>                 set_ss_context(kcb, slot);      /* mark pending ss */
>
>                 /* IRQs and single stepping do not mix well. */
> -               kprobes_save_local_irqflag(kcb, regs);
> +               kernel_prepare_single_step(&kcb->saved_irqflag, regs);

Is there some reason to have two functions?  It seems like every time
you call kernel_enable_single_step() you'd want to call
kernel_prepare_single_step().  ...and every time you call
kernel_disable_single_step() you'd want to call
kernel_cleanup_single_step().

Maybe you can just add the flags parameter to
kernel_enable_single_step() / kernel_disable_single_step() and put the
code in there?


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
