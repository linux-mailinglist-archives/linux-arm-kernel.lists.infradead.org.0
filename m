Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC1D72C80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKnashTfTVYHLqvfVgkJVnhOU+vTdXBCiwWuAU32VVE=; b=RQbM4Zo6ciVToT
	QZKq4Vxl4wxyPlu1TT8KWik0toAEY27UlcqqiqIXbMxyBEGifezCnvvDt6Mfy09mhRZn2D0Oyg5rx
	BaLVjN37NjEVil/tZAjIlPeBIuLygF1o0vZ2uNu48/MhcTF0xdaOdT7OTftZXL6TNcMrK++vTpAPg
	CgXE2O74KzYwn9YfRobCaTYWZXjSemM+puO9jFHIpJFRXa0kV6yx7LBMK2tTRgR59X3UsIsgvzzTb
	ENwoCdATRsmnXzZgx/DHHBj/FCtUfEDLw31ffOR9bX6r7ZyptknSPecIwhupbfr0fSBHw+HNcFzy1
	xrrVHYuOis9OkGRwDbYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEmE-0006fR-W9; Wed, 24 Jul 2019 10:45:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEm3-0006eN-W0
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:45:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63678337;
 Wed, 24 Jul 2019 03:45:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CCB8D3F71F;
 Wed, 24 Jul 2019 03:45:26 -0700 (PDT)
Date: Wed, 24 Jul 2019 11:45:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug
 exception
Message-ID: <20190724104518.GA2624@lakrids.cambridge.arm.com>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342863822.8565.7624877983728871995.stgit@devnote2>
 <20190718062215.GG14271@linux.ibm.com>
 <20190718092022.GA3625@blommer>
 <20190718233133.146065f668da6297e57e52ef@kernel.org>
 <20190719095958.GA19605@lakrids.cambridge.arm.com>
 <20190720165458.7333b65244312843c2ca6857@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720165458.7333b65244312843c2ca6857@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_034532_120988_3EDACE5E 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
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

On Sat, Jul 20, 2019 at 04:54:58PM +0900, Masami Hiramatsu wrote:
> Hi Mark,
> 
> On Fri, 19 Jul 2019 10:59:59 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > On Thu, Jul 18, 2019 at 11:31:33PM +0900, Masami Hiramatsu wrote:
> > > On Thu, 18 Jul 2019 10:20:23 +0100
> > > Mark Rutland <mark.rutland@arm.com> wrote:
> > > 
> > > > On Wed, Jul 17, 2019 at 11:22:15PM -0700, Paul E. McKenney wrote:
> > > > > On Thu, Jul 18, 2019 at 02:43:58PM +0900, Masami Hiramatsu wrote:
> > > > > > Remove rcu_read_lock()/rcu_read_unlock() from debug exception
> > > > > > handlers since the software breakpoint can be hit on idle task.
> > > > 
> > > > Why precisely do we need to elide these? Are we seeing warnings today?
> > > 
> > > Yes, unfortunately, or fortunately. Naresh reported that warns when
> > > ftracetest ran. I confirmed that happens if I probe on default_idle_call too.
> > > 
> > > /sys/kernel/debug/tracing # echo p default_idle_call >> kprobe_events 
> > > /sys/kernel/debug/tracing # echo 1 > events/kprobes/enable 
> > > /sys/kernel/debug/tracing # [  135.122237] 
> > > [  135.125035] =============================
> > > [  135.125310] WARNING: suspicious RCU usage
> > > [  135.125581] 5.2.0-08445-g9187c508bdc7 #20 Not tainted
> > > [  135.125904] -----------------------------
> > > [  135.126205] include/linux/rcupdate.h:594 rcu_read_lock() used illegally while idle!
> > > [  135.126839] 
> > > [  135.126839] other info that might help us debug this:
> > > [  135.126839] 
> > > [  135.127410] 
> > > [  135.127410] RCU used illegally from idle CPU!
> > > [  135.127410] rcu_scheduler_active = 2, debug_locks = 1
> > > [  135.128114] RCU used illegally from extended quiescent state!
> > > [  135.128555] 1 lock held by swapper/0/0:
> > > [  135.128944]  #0: (____ptrval____) (rcu_read_lock){....}, at: call_break_hook+0x0/0x178
> > > [  135.130499] 
> > > [  135.130499] stack backtrace:
> > > [  135.131192] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-08445-g9187c508bdc7 #20
> > > [  135.131841] Hardware name: linux,dummy-virt (DT)
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
> > > [  135.136597] 
> > > 
> > > > > The exception entry and exit use irq_enter() and irq_exit(), in this
> > > > > case, correct?  Otherwise RCU will be ignoring this CPU.
> > > > 
> > > > This is missing today, which sounds like the underlying bug.
> > > 
> > > Agreed. I'm not so familier with how debug exception is handled on arm64,
> > > would it be a kind of NMI or IRQ?
> > 
> > They're more like faults, in that they're synchronous exceptions.
> > 
> > Given that, I think using irq_enter() / irq_exit() would be surprising
> > here, but perhaps they're misnamed.
> > 
> > What do other architectures do here? Having a kprobe on the critical
> > path to idle doesn't sound specific to arm64, but perhaps it is (and we
> > should rule it out).
> 
> On x86, it uses rcu_nmi_enter/exit() for kernel mode. For user mode,
> we don't need to care since it must not be an idle task.

Ok. IIUC, doing the same for arm64 would make sense.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
