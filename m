Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1796E1D2392
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ve6Bm2wjgBQ2mW4lqWgBi7oVXTBJx3nd44M2i79cFw=; b=hlK0x/inmKzvmG
	Q7vQQvsMmz3fsLU8fcfg2Ueyx8a4LF6w9a9nSMFayfSLnjGHIHJXVgtLbClb/DylMkPFHlwOv7WY3
	nzrwWQvHPSPpVXZuIg8hF+xXRe3nxaMkqaiD2soGxUhFFesdtbHyEkubW7xY6JcVaeU1MYEL/WlVS
	Rq2SPOnb6THRWSi2etvn6UZhSVI4Td1NO8nlJar62qMTBl7HGeWD24bCCIYhoWOIVaqvqgnkguyOF
	/gKenvGsfd7lBv9D6KvpWmLXV9t73kQJfPCebYZ/lGaSlBZun3vfhZGibSDoBS1Kxg+357P5u4GS2
	zLW0/JwWqpApp2UaKUFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1f6-0006Pq-JZ; Thu, 14 May 2020 00:23:44 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1ew-0006P0-FI
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:23:36 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g2so955697vsb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+DNHtoGN8AEBU2XRBN2d1pQMaWosnFgb+E454pWapuo=;
 b=hqEKtvQG5x4boOpMaDZ44lycvpN66hkdKuNeDQ0tCjH0g5wOLUw17Dtcq+EqvLhSVd
 2SOSmEn7GzfaIuaaWi1xblgxsLC0YsEBbsji3COXyd4KmUmEsQCx7nEtXWz1+SQMFtct
 zUz5+AuJ8JIgviULQP0sgLBVTlhkpMb8ehXPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+DNHtoGN8AEBU2XRBN2d1pQMaWosnFgb+E454pWapuo=;
 b=bUJWNPXhH7mAVCOH6yBbBZwzaIrFk91W/fSqIqCsVl8pLttoghgX9k1hbaCvMvBqLT
 tW0xdllE4LDmVRaOLA5TR+Du19UnZVgEaFATY1a3acjHDJIp2H65u1tNP0Uie2uzGdHN
 mgPMilDLRhn8BMO/z+vg/oKYRfdOzt9fYptYF/JYBxOs01wzZlzGDzu1bc5+VcVpAxK2
 7MbaOX6sgmCPaSg6IsJ65O6O9uVdz7qHTfuD3cVTH0zBRu5htx8ZJPSqIKLeNw2KP27A
 7F8PjQlqmIbf3fH7DFETVKUU2oCH0V/ggy4HCFDeMt1cXXo4cup5eq8yEm59YT0b6nlq
 mkAg==
X-Gm-Message-State: AOAM530f5J3MU4Tr/qZJnNq/zsZ8xyuXCQCftYPJz87Di2ciYUslrWQW
 gYryiWyXhC9LaBJfaML1aRxZMWZPIik=
X-Google-Smtp-Source: ABdhPJxdqrnioROFR19MQGQJ6DYELTAD03NPeNfueOrZrEEJjDcJk0DOrdTXJC1w+KP7+I710tBVlA==
X-Received: by 2002:a67:f60f:: with SMTP id k15mr1541723vso.92.1589415813026; 
 Wed, 13 May 2020 17:23:33 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com.
 [209.85.222.51])
 by smtp.gmail.com with ESMTPSA id v1sm329337uao.18.2020.05.13.17.23.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 17:23:31 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id k13so490623uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:23:31 -0700 (PDT)
X-Received: by 2002:ab0:69cc:: with SMTP id u12mr1898920uaq.22.1589415810804; 
 Wed, 13 May 2020 17:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-5-liwei391@huawei.com>
In-Reply-To: <20200509214159.19680-5-liwei391@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 17:23:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vb6=f=fr83-k0YH86k4v4G5LcfOGcks7RM9VxzxOnXsQ@mail.gmail.com>
Message-ID: <CAD=FV=Vb6=f=fr83-k0YH86k4v4G5LcfOGcks7RM9VxzxOnXsQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: kgdb: Set PSTATE.SS to 1 to reenable
 single-step
To: Wei Li <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172334_509575_AD63DE36 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
> After fixing wrongly single-stepping into the irq handler, when we execute
> single-step in kdb/kgdb, we can see only the first step can work.
>
> Refer to the ARM Architecture Reference Manual (ARM DDI 0487E.a) D2.12,
> i think PSTATE.SS=1 should be set each step for transferring the PE to the
> 'Active-not-pending' state. The problem here is PSTATE.SS=1 is not set
> since the second single-step.
>
> After the first single-step, the PE transferes to the 'Inactive' state,
> with PSTATE.SS=0 and MDSCR.SS=1, thus PSTATE.SS won't be set to 1 due to
> kernel_active_single_step()=true. Then the PE transferes to the
> 'Active-pending' state when ERET and returns to the debugger by step
> exception.
>
> Before this patch:
> * kdb:
> Entering kdb (current=0xffff8000119d2dc0, pid 0) on processor 0 due to Keyboard Entry
> [0]kdb> bp printk
> Instruction(i) BP #0 at 0xffff80001014874c (printk)
>     is enabled   addr at ffff80001014874c, hardtype=0 installed=0
>
> [0]kdb> g
>
> / # echo h > /proc/sysrq-trigger
>
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 3 due to Breakpoint @ 0xffff80001014874c
> [3]kdb> ss
>
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 3 due to SS trap @ 0xffff800010148750
> [3]kdb> ss
>
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 3 due to SS trap @ 0xffff800010148750
> [3]kdb> ss
>
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 3 due to SS trap @ 0xffff800010148750
> [3]kdb>
>
> * kgdb:
> (gdb) target remote 127.1:23002
> Remote debugging using 127.1:23002
> arch_kgdb_breakpoint () at /home/liwei/main_code/linux/arch/arm64/include/asm/kgdb.h:21
> 21              asm ("brk %0" : : "I" (KGDB_COMPILED_DBG_BRK_IMM));
> (gdb) b printk
> Breakpoint 1 at 0xffff80001014874c: file /home/liwei/main_code/linux/kernel/printk/printk.c, line 2076.
> (gdb) c
> Continuing.
> [New Thread 277]
> [Switching to Thread 276]
>
> Thread 171 hit Breakpoint 1, printk (fmt=0xffff8000112fc130 "\001\066sysrq: HELP : ")
>     at /home/liwei/main_code/linux/kernel/printk/printk.c:2076
> 2076    {
> (gdb) stepi
> 0xffff800010148750      2076    {
> (gdb) stepi
> 0xffff800010148750      2076    {
> (gdb) stepi
> 0xffff800010148750      2076    {
> (gdb)
>
> After this patch:
> * kdb:
> Entering kdb (current=0xffff8000119d2dc0, pid 0) on processor 0 due to Keyboard Entry
> [0]kdb> bp printk
> Instruction(i) BP #0 at 0xffff80001014874c (printk)
>     is enabled   addr at ffff80001014874c, hardtype=0 installed=0
>
> [0]kdb> g
>
> / # echo h > /proc/sysrq-trigger
>
> Entering kdb (current=0xffff0000fa800040, pid 264) on processor 2 due to Breakpoint @ 0xffff80001014874c
> [2]kdb> ss
>
> Entering kdb (current=0xffff0000fa800040, pid 264) on processor 2 due to SS trap @ 0xffff800010148750
> [2]kdb> ss
>
> Entering kdb (current=0xffff0000fa800040, pid 264) on processor 2 due to SS trap @ 0xffff800010148754
> [2]kdb> ss
>
> Entering kdb (current=0xffff0000fa800040, pid 264) on processor 2 due to SS trap @ 0xffff800010148758
> [2]kdb>
>
> * kgdb:
> (gdb) target remote 127.1:23002
> Remote debugging using 127.1:23002
> arch_kgdb_breakpoint () at /home/liwei/main_code/linux/arch/arm64/include/asm/kgdb.h:21
> 21              asm ("brk %0" : : "I" (KGDB_COMPILED_DBG_BRK_IMM));
> (gdb) b printk
> Breakpoint 1 at 0xffff80001014874c: file /home/liwei/main_code/linux/kernel/printk/printk.c, line 2076.
> (gdb) c
> Continuing.
> [New Thread 281]
> [New Thread 280]
> [Switching to Thread 281]
>
> Thread 174 hit Breakpoint 1, printk (fmt=0xffff8000112fc138 "\001\066sysrq: HELP : ")
>     at /home/liwei/main_code/linux/kernel/printk/printk.c:2076
> 2076    {
> (gdb) stepi
> 0xffff800010148750      2076    {
> (gdb) stepi
> 2080            va_start(args, fmt);
> (gdb) stepi
> 0xffff800010148758      2080            va_start(args, fmt);
> (gdb)
>
> Fixes: 44679a4f142b ("arm64: KGDB: Add step debugging support")
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  arch/arm64/include/asm/debug-monitors.h | 2 ++
>  arch/arm64/kernel/debug-monitors.c      | 2 +-
>  arch/arm64/kernel/kgdb.c                | 3 ++-
>  3 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index b62469f3475b..a48b507c89ee 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -78,6 +78,8 @@ struct step_hook {
>         int (*fn)(struct pt_regs *regs, unsigned int esr);
>  };
>
> +void set_regs_spsr_ss(struct pt_regs *regs);
> +
>  void register_user_step_hook(struct step_hook *hook);
>  void unregister_user_step_hook(struct step_hook *hook);
>
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 25ce6b5a52d2..7a58233677de 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -141,7 +141,7 @@ postcore_initcall(debug_monitors_init);
>  /*
>   * Single step API and exception handling.
>   */
> -static void set_regs_spsr_ss(struct pt_regs *regs)
> +void set_regs_spsr_ss(struct pt_regs *regs)
>  {
>         regs->pstate |= DBG_SPSR_SS;
>  }
> diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> index 3910ac06c261..093ad9d2e5e6 100644
> --- a/arch/arm64/kernel/kgdb.c
> +++ b/arch/arm64/kernel/kgdb.c
> @@ -230,7 +230,8 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
>                         kernel_prepare_single_step(&per_cpu(kgdb_ss_flags,
>                                         raw_smp_processor_id()), linux_regs);
>                         kernel_enable_single_step(linux_regs);
> -               }
> +               } else
> +                       set_regs_spsr_ss(linux_regs);

One slight nit is that my personal preference is that if one half of
an "if/else" needs braces then both halves should have braces.  I
don't know what Catalin and Will's policies are, though.

Other than that, this seems right to me.  I will leave it to the
Catalin and Will folks to say if they'd rather have this call made
from a different place or if they're happy with where you've put it.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
