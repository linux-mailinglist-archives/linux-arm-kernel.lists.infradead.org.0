Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654A71D238F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6ZSepC/F+TvudZ2D6/aG4Ir3tT2uISktq/Em8Q2B5M=; b=O4JiTDjzfesXoz
	VViuPKQJXNYq2qAlizC6L42QkasXh7RA0ExzRc53Ut1Rc/6zftpr1L/uo+8nnQ/PyYeYtGmidqnIU
	3qEwV6PvXc49cP8p2Y5ejj2Tfcqw1rHlS63zCsLzOWU3k577ewRQLvOBeT02loPn/+GlZowwxL6Aw
	aXuuGC4cmCgF1wYYWhjfU0HxljliB1rpAi7+ftY1Eto14XbgrCBQlbeSFtrmCQlsmlJGyH0X2DztJ
	60tcSh6F+e8jPDlNEvGCsQoL+dRoxEuSaxRkO7+ksD/b3KopkzdcNHu/F1dCzpmmX0p2Y8zZVosYL
	4qs4V+qU/DmNw06lbtKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1ds-0005wn-F9; Thu, 14 May 2020 00:22:28 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1dc-0005v2-Rz
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:22:14 +0000
Received: by mail-ua1-x943.google.com with SMTP id 36so497471uaf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ar6IwW9xd9CUZqFR53TmmUgiYezSnsTH5c4aEJicFwY=;
 b=Ef/7kJ1OgQsBcYpqbjKZ80BhEPfGQ8T9NYpeCZF59s3/0hMpMXJml0o+s1v92bHvKY
 QDlxZ4CnYPvspa+kIKFiyrzrTdxHTL207udAMd/8wY3VIp6nrIh6R2lN3X1eDX2PeoVO
 qoJUGpC8qzQpxqEOhoWeJs6B7skgnSLpXzZKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ar6IwW9xd9CUZqFR53TmmUgiYezSnsTH5c4aEJicFwY=;
 b=ouijSxk+/jlc4HdIFsN1N8rihhc+T1vt7vmvF+6cWkO6CVBs6yhElYNt/CVhc2fSWp
 wF+zUVcMN7JPmBUdoUBpVk1xfCJytyt3gsFeLUAKg3UhbHVN9BQQ0spIMCEu8jRfz0EL
 VSSDtKIW/qbCFyMPBq0CCEVfFtowsy6lQt83N24EWqVZ7Z+EDdzsE5zUcW7vE6TycIJ0
 1HDXuf8773gcljuTkXr4ph72Mllv6rx0L9phjNg6lhFCcyMpN/hMHcfTicdcFODcPoNz
 u/xgUge1FEu5si1pEtwm0VO/s5TCnoqepi0WSc9/93o2TK9xIbaPE9NEHNGKeZE0M7HN
 w6tw==
X-Gm-Message-State: AOAM532C5x5ojS0WpIvRQqASmrUzqES+lE0XC1TedYglZCwrDmPtU+KP
 U0OuWKcMQuHp7Bw0t5Z8JhQq5Qf1tuo=
X-Google-Smtp-Source: ABdhPJwU0BGC+CSdj6aIvDQV/g068kryIrXhVbx7Z6wjn/LJSNNe0WLYvzA+ArUb1BW2OwIDkzGdpg==
X-Received: by 2002:ab0:40e5:: with SMTP id i92mr1870272uad.5.1589415731132;
 Wed, 13 May 2020 17:22:11 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id t141sm309514vke.26.2020.05.13.17.22.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 17:22:09 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id l25so942904vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:22:09 -0700 (PDT)
X-Received: by 2002:a67:f5d6:: with SMTP id t22mr1506572vso.73.1589415729146; 
 Wed, 13 May 2020 17:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-4-liwei391@huawei.com>
In-Reply-To: <20200509214159.19680-4-liwei391@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 17:21:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xkhs6eivpp7+r0qyfgbBgpSiHpwNY8o=JDBwYSBWadJA@mail.gmail.com>
Message-ID: <CAD=FV=Xkhs6eivpp7+r0qyfgbBgpSiHpwNY8o=JDBwYSBWadJA@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: kgdb: Fix single-stepping into the irq handler
 wrongly
To: Wei Li <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172212_906122_6A3B22F8 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
> After the single-step exception handling oops is fixed, when we execute
> single-step in kdb/kgdb, we may see it jumps to the irq_handler (where
> PSTATE.D is cleared) instead of the next instruction.
>
> Add the prepare and cleanup work for single-step when enabling and
> disabling to maintain the PSTATE.I and PSTATE.D carefully.
>
> Before this patch:
> * kdb:
> Entering kdb (current=0xffff8000119e2dc0, pid 0) on processor 0 due to Keyboard Entry
> [0]kdb> bp printk
> Instruction(i) BP #0 at 0xffff8000101486cc (printk)
>     is enabled   addr at ffff8000101486cc, hardtype=0 installed=0
>
> [0]kdb> g
>
> / # echo h > /proc/sysrq-trigger
>
> Entering kdb (current=0xffff0000fada65c0, pid 267) on processor 0 due to Breakpoint @ 0xffff8000101486cc
> [0]kdb> ss
>
> Entering kdb (current=0xffff0000fada65c0, pid 267) on processor 0 due to SS trap @ 0xffff800010082ab8
> [0]kdb> 0xffff800010082ab8
> 0xffff800010082ab8 = 0xffff800010082ab8 (el1_irq+0x78)
> [0]kdb>
>
>    0xffff800010082ab0 <+112>:   nop
>    0xffff800010082ab4 <+116>:   msr     daifclr, #0xd
>    0xffff800010082ab8 <+120>:   adrp    x1, 0xffff8000113a7000 <cpu_ops+1288>
>    0xffff800010082abc <+124>:   ldr     x1, [x1, #1408]
>
> * kgdb:
> (gdb) target remote 127.1:23002
> Remote debugging using 127.1:23002
> arch_kgdb_breakpoint () at /home/liwei/main_code/linux/arch/arm64/include/asm/kgdb.h:21
> 21              asm ("brk %0" : : "I" (KGDB_COMPILED_DBG_BRK_IMM));
> (gdb) b printk
> Breakpoint 1 at 0xffff8000101486cc: file /home/liwei/main_code/linux/kernel/printk/printk.c, line 2076.
> (gdb) c
> Continuing.
> [New Thread 287]
> [Switching to Thread 283]
>
> Thread 177 hit Breakpoint 1, printk (fmt=0xffff80001130c9d8 "\001\066sysrq: HELP : ")
>     at /home/liwei/main_code/linux/kernel/printk/printk.c:2076
> 2076    {
> (gdb) stepi
> el1_irq () at /home/liwei/main_code/linux/arch/arm64/kernel/entry.S:608
> 608             irq_handler
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
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 0 due to Breakpoint @ 0xffff80001014874c
> [0]kdb> ss
>
> Entering kdb (current=0xffff0000fa6948c0, pid 265) on processor 0 due to SS trap @ 0xffff800010148750
> [0]kdb>
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
> (gdb)
>
> Fixes: 44679a4f142b ("arm64: KGDB: Add step debugging support")
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  arch/arm64/kernel/kgdb.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> index 1a157ca33262..3910ac06c261 100644
> --- a/arch/arm64/kernel/kgdb.c
> +++ b/arch/arm64/kernel/kgdb.c
> @@ -100,6 +100,8 @@ struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
>         { "fpcr", 4, -1 },
>  };
>
> +static DEFINE_PER_CPU(unsigned long, kgdb_ss_flags);
> +
>  char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
>  {
>         if (regno >= DBG_MAX_REG_NUM || regno < 0)
> @@ -200,8 +202,11 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
>                 /*
>                  * Received continue command, disable single step
>                  */
> -               if (kernel_active_single_step())
> +               if (kernel_active_single_step()) {
> +                       kernel_cleanup_single_step(per_cpu(kgdb_ss_flags,
> +                                       raw_smp_processor_id()), linux_regs);

I don't think you need the raw_ version of smp_processor_id(), do you?


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
