Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D9A1B8115
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VrSAESGNdd6+0N8AL7R9tKZCk5GBO9o95L/+DOpiOk=; b=l1jOVF72AhKpbC
	ihuyGoLXKp8tNiLDv0/5l54QHkXEB86F3hYrBxosxL6JqsPt/PcVxyuQR996ZeAj/4ch12Ees8y1u
	wGLtgeXkrsAPDoGhITMIoyMSK7vvcejhhTXO1kQlqpWA/ujlO2oOX5V3spDe+6YkEYmqSuNqmrA96
	LfxtDadcqr1F2nBsGyB086IafXdwtj7Fjg1sOG9wtnIuH4C/k4YluEgXXHf5976Qh02OP7ctfE/J6
	PG0kUM+471QOaW3JDt0z+LZIuR1MSVAbctIYCKqFtP/FjsYVb9jCbxSdJyyAJp7PrQ9GgdQSDiMcL
	LZhpK8yDXUeUDJDqaKIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5EP-0007fs-8R; Fri, 24 Apr 2020 20:47:29 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5ED-0007f0-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:47:18 +0000
Received: by mail-ua1-x942.google.com with SMTP id v24so10878980uak.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qeSr0lei+fRC9/QJxXSmPKueqlEcByGy/C+Sm2/krvg=;
 b=Gy4e1DrYdXOs9V95msoY1FVrKuSQ1ZhCKigCD3DdHYa4vQSZF0/wZGOzsXWdhDRQMJ
 ntjWHIAzoYQW/EbWleAXGSfEnaY3ZJ7a7cSARn7y8iNmYUhWJlNIe/hR5f+f+ETIthcj
 +7H9KyKHdOyYM6Yq87MOT6M0ttEfo85nWdehE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qeSr0lei+fRC9/QJxXSmPKueqlEcByGy/C+Sm2/krvg=;
 b=LBREj80w036zlYi4ACzA0E08ANnxozRUcFy5gCcCSJJOhta7qUYlDjtYkhp4940qKM
 glAu5C3Bl7OhU6ezH/DphjjDLWTwSapRg+ffYlRoFdWg50NbF0U46nJn17Kub0lT4ALj
 W5tkbaP3ywf9LgoTJ/+kbfFFElCaqHvxh6SLPd/7hyXKouP1Y2xU9z54PHVir2iP9x27
 fR5PX+V3quD90ehGtO/FAU6xEOsaVAeCZ6yHi8dA177fPMb7CwV9/mkzUqKXiVh7AXU9
 /FwNkBNiQtgkDLOWMAQt7rycNhSoKIqImwE845FWLBcz3p+5cG/XLZ9DvSF9wbIfUKZA
 QhGw==
X-Gm-Message-State: AGi0PuZHv3FN+StX5ecJPg3KKCb1BOgl2zxmPaCE/Jw3BCxGXaSWiwL7
 y0yLjAvo9QrsdPri7QVl/vN66Dy8oLg=
X-Google-Smtp-Source: APiQypLGG9d+DYvpOiswpLWSLZSAiaOJ4hhEn2UY5BgoFdrhon6w5h2d0SUYDCbiGq/WvlIcVoRAxQ==
X-Received: by 2002:a05:6102:5f4:: with SMTP id
 w20mr9800685vsf.61.1587761234732; 
 Fri, 24 Apr 2020 13:47:14 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id 62sm1881599vku.10.2020.04.24.13.47.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 13:47:13 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id i22so10877702uak.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:47:11 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr8989653uak.91.1587761231452;
 Fri, 24 Apr 2020 13:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-5-git-send-email-sumit.garg@linaro.org>
In-Reply-To: <1587726554-32018-5-git-send-email-sumit.garg@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 24 Apr 2020 13:46:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VSrVnx_R=Y38tQ=bw_o22zxWmm=+M+AaqmEMAtK66b-Q@mail.gmail.com>
Message-ID: <CAD=FV=VSrVnx_R=Y38tQ=bw_o22zxWmm=+M+AaqmEMAtK66b-Q@mail.gmail.com>
Subject: Re: [RFC Patch v1 4/4] arm64: kgdb: Round up cpus using
 IPI_CALL_NMI_FUNC
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_134717_428108_3C116331 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wessel <jason.wessel@windriver.com>, LKML <linux-kernel@vger.kernel.org>,
 julien.thierry.kdev@gmail.com, Marc Zyngier <maz@kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Apr 24, 2020 at 4:11 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> arm64 platforms with GICv3 or later supports pseudo NMIs which can be
> leveraged to round up CPUs which are stuck in hard lockup state with
> interrupts disabled that wouldn't be possible with a normal IPI.
>
> So instead switch to round up CPUs using IPI_CALL_NMI_FUNC. And in
> case a particular arm64 platform doesn't supports pseudo NMIs,
> IPI_CALL_NMI_FUNC will act as a normal IPI which maintains existing
> kgdb functionality.
>
> Also, one thing to note here is that with CPUs running in NMI context,
> kernel has special handling for printk() which involves CPU specific
> buffers and defering printk() until exit from NMI context. But with kgdb
> we don't want to defer printk() especially backtrace on corresponding
> CPUs. So switch to normal printk() context instead prior to entering
> kgdb context.
>
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---
>  arch/arm64/kernel/kgdb.c | 15 +++++++++++++++
>  arch/arm64/kernel/smp.c  | 17 ++++++++++++++---
>  2 files changed, 29 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> index 4311992..0851ead 100644
> --- a/arch/arm64/kernel/kgdb.c
> +++ b/arch/arm64/kernel/kgdb.c
> @@ -14,6 +14,7 @@
>  #include <linux/kgdb.h>
>  #include <linux/kprobes.h>
>  #include <linux/sched/task_stack.h>
> +#include <linux/smp.h>
>
>  #include <asm/debug-monitors.h>
>  #include <asm/insn.h>
> @@ -353,3 +354,17 @@ int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
>         return aarch64_insn_write((void *)bpt->bpt_addr,
>                         *(u32 *)bpt->saved_instr);
>  }
> +
> +#ifdef CONFIG_SMP
> +void kgdb_roundup_cpus(void)
> +{
> +       struct cpumask mask;
> +
> +       cpumask_copy(&mask, cpu_online_mask);
> +       cpumask_clear_cpu(raw_smp_processor_id(), &mask);
> +       if (cpumask_empty(&mask))
> +               return;
> +
> +       arch_send_call_nmi_func_ipi_mask(&mask);
> +}
> +#endif
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 27c8ee1..c7158f6e8 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -31,6 +31,7 @@
>  #include <linux/of.h>
>  #include <linux/irq_work.h>
>  #include <linux/kexec.h>
> +#include <linux/kgdb.h>
>  #include <linux/kvm_host.h>
>
>  #include <asm/alternative.h>
> @@ -976,9 +977,19 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
>                 /* Handle it as a normal interrupt if not in NMI context */
>                 if (!in_nmi())
>                         irq_enter();
> -
> -               /* nop, IPI handlers for special features can be added here. */
> -
> +#ifdef CONFIG_KGDB

My vote would be to keep "ifdef"s out of the middle of functions.  Can
you put your code in "arch/arm64/kernel/kgdb.c" and then have a dummpy
no-op function if "CONFIG_KGDB" isn't defined?


> +               if (atomic_read(&kgdb_active) != -1) {
> +                       /*
> +                        * For kgdb to work properly, we need printk to operate
> +                        * in normal context.
> +                        */
> +                       if (in_nmi())
> +                               printk_nmi_exit();

It feels like all the printk management belongs in kgdb_nmicallback().
...or is there some reason that this isn't a problem for other
platforms using NMI?  Maybe it's just that nobody has noticed it yet?


> +                       kgdb_nmicallback(raw_smp_processor_id(), regs);

Why do you need to call raw_smp_processor_id()?  Are you expecting a
different value than the local variable "cpu"?


> +                       if (in_nmi())
> +                               printk_nmi_enter();
> +               }
> +#endif
>                 if (!in_nmi())
>                         irq_exit();
>                 break;

Not that I really know what I'm talking about since I really don't
know arm64 at this level very well, but I'll ask anyway and probably
look like a fool...  I had a note that said:

* Will Deacon says:
*
* the whole roundup code is sketchy and it's the only place in the kernel
* which tries to perform I-cache maintenance with irqs disabled, leading
* to this nasty hack in the arch code:
*
* https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/include/asm/cacheflush.h#n74

I presume that, if nothing else, the comment needs to be updated.
...but is the situation any better (or worse?) with your new solution?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
