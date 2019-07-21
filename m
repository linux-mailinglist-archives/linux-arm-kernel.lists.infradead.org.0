Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739356F132
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 03:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Wp8A/qZEjpdgZ1gCBY95Nnh9zKSPlzLThEFwvAbwfc=; b=mtL/gVg5y9U0Nm
	UXvtA6ZGhPSgegZxEcMLPDRosLTO8hPgagLmwNEzjiT6kTjXfjZbMmkQ5d96TMcCTn5lGJtC5ecLH
	O9zvanD53r/p09JU8/7TRJUdZQ2Xgst7IWEmi+kjWaZU6Lpafjl+byk2HVKXvfU20yK7qKpcmklD0
	i4CqMGHDfdpqnsVKZtE0YPXf5x8unGrdEZl33c4e4VfpS1crliV4S02KFNGxwzGD0dblpgHborHx6
	wPsTAbm0Q18gSWHL8iAFRa+nAeRWGBjvniQbcpN8nggKkOjpvueIXQVUgPClZHbHjbEierSUVMYrJ
	PnXankykxbTHT6UpzsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp0zk-0005MG-IC; Sun, 21 Jul 2019 01:50:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp0zQ-0005Lo-2y
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 01:50:18 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05CEC2080D;
 Sun, 21 Jul 2019 01:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563673814;
 bh=k5gs7LwUaMTBq6Ocu3OG6SSkCiwakvC5iU3GTLJPZhM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hcznOUEzR6zbjzfEL1pSpTtB/jiDum5HzoOMKUH0xkn/c9L3RZom4FK4mMOMBQARi
 iRWZfOANVoUAGKYuzCjrVONX2i2VfAPmpviG188Kpe/PgT9zR07hCamIGymD23pkpU
 FUG4XomOMLmaWe1KKcRuaJ+jgK8bKr0pei1kkQMM=
Date: Sun, 21 Jul 2019 10:50:07 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug
 exception
Message-Id: <20190721105007.0e9ce1ed6ec63ff5d861227f@kernel.org>
In-Reply-To: <20190720163232.49f80bc0e53afb893e7a82e6@kernel.org>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342863822.8565.7624877983728871995.stgit@devnote2>
 <20190718062215.GG14271@linux.ibm.com>
 <20190718092022.GA3625@blommer>
 <20190718233133.146065f668da6297e57e52ef@kernel.org>
 <536ba068-50de-963e-c3a7-0440da56943a@arm.com>
 <20190720163232.49f80bc0e53afb893e7a82e6@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_185016_336631_A2B56D90 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dan Rue <dan.rue@linaro.org>,
 Daniel Diaz <daniel.diaz@linaro.org>, Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Matt Hart <matthew.hart@linaro.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 20 Jul 2019 16:32:32 +0900
Masami Hiramatsu <mhiramat@kernel.org> wrote:

> Hi James,
> 
> On Fri, 19 Jul 2019 09:42:05 +0100
> James Morse <james.morse@arm.com> wrote:
> 
> > Hi,
> > 
> > On 7/18/19 3:31 PM, Masami Hiramatsu wrote:
> > > On Thu, 18 Jul 2019 10:20:23 +0100
> > > Mark Rutland <mark.rutland@arm.com> wrote:
> > > 
> > >> On Wed, Jul 17, 2019 at 11:22:15PM -0700, Paul E. McKenney wrote:
> > >>> On Thu, Jul 18, 2019 at 02:43:58PM +0900, Masami Hiramatsu wrote:
> > >>>> Remove rcu_read_lock()/rcu_read_unlock() from debug exception
> > >>>> handlers since the software breakpoint can be hit on idle task.
> > >>
> > >> Why precisely do we need to elide these? Are we seeing warnings today?
> > > 
> > > Yes, unfortunately, or fortunately. Naresh reported that warns when
> > > ftracetest ran. I confirmed that happens if I probe on default_idle_call too.
> > > 
> > > /sys/kernel/debug/tracing # echo p default_idle_call >> kprobe_events
> > > /sys/kernel/debug/tracing # echo 1 > events/kprobes/enable
> > > /sys/kernel/debug/tracing # [  135.122237]
> > > [  135.125035] =============================
> > > [  135.125310] WARNING: suspicious RCU usage
> > 
> > > [  135.132224] Call trace:
> > > [  135.132491]  dump_backtrace+0x0/0x140
> > > [  135.132806]  show_stack+0x24/0x30
> > > [  135.133133]  dump_stack+0xc4/0x10c
> > > [  135.133726]  lockdep_rcu_suspicious+0xf8/0x108
> > > [  135.134171]  call_break_hook+0x170/0x178
> > > [  135.134486]  brk_handler+0x28/0x68
> > > [  135.134792]  do_debug_exception+0x90/0x150
> > > [  135.135051]  el1_dbg+0x18/0x8c
> > > [  135.135260]  default_idle_call+0x0/0x44
> > > [  135.135516]  cpu_startup_entry+0x2c/0x30
> > > [  135.135815]  rest_init+0x1b0/0x280
> > > [  135.136044]  arch_call_rest_init+0x14/0x1c
> > > [  135.136305]  start_kernel+0x4d4/0x500
> > 
> > >>> The exception entry and exit use irq_enter() and irq_exit(), in this
> > >>> case, correct?  Otherwise RCU will be ignoring this CPU.
> > >>
> > >> This is missing today, which sounds like the underlying bug.
> > > 
> > > Agreed. I'm not so familier with how debug exception is handled on arm64,
> > > would it be a kind of NMI or IRQ?
> > 
> > Debug exceptions can interrupt both SError (think: machine check) and 
> > pseudo-NMI, which both in turn interrupt interrupt-masked code. So they 
> > are a kind of NMI. But, be careful not to call 'nmi_enter()' twice, see 
> > do_serror() for how we work around this...
> 
> OK. I think we can use rcu_nmi_enter/exit() as same as x86.

Adding this solves rcu_read_lock() warning issues too.
So I will just replace [PATCH 3/3] with that.

> > > Anyway, it seems that normal irqs are also not calling irq_enter/exit
> > > except for arch/arm64/kernel/smp.c
> > drivers/irqchip/irq-gic.c:gic_handle_irq() either calls 
> > handle_domain_irq() or handle_IPI(). The enter/exit calls live in those 
> > functions.
> 
> Ah, I see.
> Would you think we need to put rcu_nmi_enter/exit() as similar to x86
> on do_mem_abort() and do_sp_pc_abort() too?

Hmm, it seems that adding rcu_nmi_enter/exit to both function causes
a failure of init process. At this moment I don't do that.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
