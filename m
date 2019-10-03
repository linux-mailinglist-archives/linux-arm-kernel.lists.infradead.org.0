Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B2FCB092
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoGo0m18nd0p0m5VfdY3cAX8ZljSIhIsaEOW3pXiY20=; b=VGENSSUU7974a/
	2wi6LZq9zlqv5kRjKmCi51J1cVE9sfQdNTL2x/hnR1MjcWJa3TUqqAQXBxUBh+0Xf2vMwISEUc1Lb
	fcKnD8uBUu2SK/n0KAPO9wOrAxE7XaqC/WjsjpGjtloyXzaO5Yk+rXCcXtWAXxW2AQSoA2snSfARU
	urhdVpR3hUF9ptG3v+I0e+NOSgdzsS/Eg8kyamrxqTbKaF2tKAUOZuSqagANUj9amUsm/GMf/NC3w
	Z3pj0gkZIKwG7kSeCHqjnM/PfWLChe349C1EU6boZDgjA5my3Fm1pZGIk3gtwbWHd1VHaHovKwhKA
	9qWUECMNlar2taOmc51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG89X-0000kk-Hq; Thu, 03 Oct 2019 20:56:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG89P-0000k6-Ny
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:56:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 326B52086A;
 Thu,  3 Oct 2019 20:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570136199;
 bh=/p2jgYyOKcT9NYTQ/y2vi1K03zHRZaCjHgBMcuIA54o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uh2i/RKe7vbkxGt9MPDSea8a7B4iyrsw++G1FHTY47Wn3h2UBcIoLtTZ3bQJOJ59W
 LzQ4oBh/bNsfGim3b16sm5uDUTwtHowBnabsmhvqqwKi4xZzKgCwJbFWQvpE3prVIs
 JodR3BxpISXiGhTxbVuKjqR7WN9m4S0Nx2poVtAQ=
Date: Thu, 3 Oct 2019 21:56:34 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191003205633.w26geqhq67u4ysit@willie-the-truck>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910021355.E578D2FFAF@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135639_801677_48DB2C46 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kees,

On Wed, Oct 02, 2019 at 01:58:46PM -0700, Kees Cook wrote:
> On Wed, Oct 02, 2019 at 01:35:38PM +0100, Will Deacon wrote:
> > Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
> > calling CPU in an infinite loop, but with interrupts and preemption
> > enabled. From this state, userspace can continue to be scheduled,
> > despite the system being "dead" as far as the kernel is concerned. This
> > is easily reproducible on arm64 when booting with "nosmp" on the command
> > line; a couple of shell scripts print out a periodic "Ping" message
> > whilst another triggers a crash by writing to /proc/sysrq-trigger:
> > 
> >   | sysrq: Trigger a crash
> >   | Kernel panic - not syncing: sysrq triggered crash
> >   | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
> >   | Hardware name: linux,dummy-virt (DT)
> >   | Call trace:
> >   |  dump_backtrace+0x0/0x148
> >   |  show_stack+0x14/0x20
> >   |  dump_stack+0xa0/0xc4
> >   |  panic+0x140/0x32c
> >   |  sysrq_handle_reboot+0x0/0x20
> >   |  __handle_sysrq+0x124/0x190
> >   |  write_sysrq_trigger+0x64/0x88
> >   |  proc_reg_write+0x60/0xa8
> >   |  __vfs_write+0x18/0x40
> >   |  vfs_write+0xa4/0x1b8
> >   |  ksys_write+0x64/0xf0
> >   |  __arm64_sys_write+0x14/0x20
> >   |  el0_svc_common.constprop.0+0xb0/0x168
> >   |  el0_svc_handler+0x28/0x78
> >   |  el0_svc+0x8/0xc
> >   | Kernel Offset: disabled
> >   | CPU features: 0x0002,24002004
> >   | Memory Limit: none
> >   | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
> >   |  Ping 2!
> >   |  Ping 1!
> >   |  Ping 1!
> >   |  Ping 2!
> > 
> > The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
> > local interrupts are disabled in 'smp_send_stop()'.
> > 
> > Disable preemption in 'panic()' before re-enabling interrupts.
> 
> Is this perhaps the correct solution for what commit c39ea0b9dd24 ("panic:
> avoid the extra noise dmesg") was trying to fix?

Hmm, maybe, although that looks like it's focussed more on irq handling
than preemption. I've deliberately left the irq part alone, since I think
having magic sysrq work via the keyboard interrupt is desirable from the
panic loop.

> Reviewed-by: Kees Cook <keescook@chromium.org>

Thanks!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
