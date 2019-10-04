Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5522ECB715
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7/Ns1ZhSrfzkcu03R0Mbwyklq9fOV8oHshmbu+ulfw=; b=VDa21DyncDngPQ
	Xe/1K5Jfk1XvLWgJUjBYTVXCsBeuHlmzg2tatuq/scj5gaBMjejmgdhMsmx46hrMuj5+RRQ9gxHN4
	rOlPtTROG2BcAbSBKF+yuvnrUFr+ssUFiLCHJpcFaiHgLAHzWYpyFDzvLNSTeo5DKw97wa00Ta5rb
	Ra8a4hfvcNlMWZ1hm0cBCWmOpsRKF594XyM7FVOz9Gmss5owCah730GjwYvjR439pYBRNhRq9BVJp
	MtNy97lGPSrTht3dcldRs9+rEGvgfYUFS9U7B6sTV0RPKveuMnIVJuhYjuasvbYlJySIID8VzDb7b
	bt4oC6g0wIwTk6Ksq8GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJcw-0006nl-Gw; Fri, 04 Oct 2019 09:11:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJcp-0006n3-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:11:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9FDC6AEFB;
 Fri,  4 Oct 2019 09:11:43 +0000 (UTC)
Date: Fri, 4 Oct 2019 11:11:42 +0200
From: Petr Mladek <pmladek@suse.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003205633.w26geqhq67u4ysit@willie-the-truck>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_021147_357604_EF23EA5D 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Feng Tang <feng.tang@intel.com>, Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 Russell King <linux@armlinux.org.uk>, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 2019-10-03 21:56:34, Will Deacon wrote:
> Hi Kees,
> 
> On Wed, Oct 02, 2019 at 01:58:46PM -0700, Kees Cook wrote:
> > On Wed, Oct 02, 2019 at 01:35:38PM +0100, Will Deacon wrote:
> > > Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
> > > calling CPU in an infinite loop, but with interrupts and preemption
> > > enabled. From this state, userspace can continue to be scheduled,
> > > despite the system being "dead" as far as the kernel is concerned. This
> > > is easily reproducible on arm64 when booting with "nosmp" on the command
> > > line; a couple of shell scripts print out a periodic "Ping" message
> > > whilst another triggers a crash by writing to /proc/sysrq-trigger:
> > > 
> > >   | sysrq: Trigger a crash
> > >   | Kernel panic - not syncing: sysrq triggered crash
> > >   | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
> > >   | Hardware name: linux,dummy-virt (DT)
> > >   | Call trace:
> > >   |  dump_backtrace+0x0/0x148
> > >   |  show_stack+0x14/0x20
> > >   |  dump_stack+0xa0/0xc4
> > >   |  panic+0x140/0x32c
> > >   |  sysrq_handle_reboot+0x0/0x20
> > >   |  __handle_sysrq+0x124/0x190
> > >   |  write_sysrq_trigger+0x64/0x88
> > >   |  proc_reg_write+0x60/0xa8
> > >   |  __vfs_write+0x18/0x40
> > >   |  vfs_write+0xa4/0x1b8
> > >   |  ksys_write+0x64/0xf0
> > >   |  __arm64_sys_write+0x14/0x20
> > >   |  el0_svc_common.constprop.0+0xb0/0x168
> > >   |  el0_svc_handler+0x28/0x78
> > >   |  el0_svc+0x8/0xc
> > >   | Kernel Offset: disabled
> > >   | CPU features: 0x0002,24002004
> > >   | Memory Limit: none
> > >   | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
> > >   |  Ping 2!
> > >   |  Ping 1!
> > >   |  Ping 1!
> > >   |  Ping 2!
> > > 
> > > The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
> > > local interrupts are disabled in 'smp_send_stop()'.
> > > 
> > > Disable preemption in 'panic()' before re-enabling interrupts.
> > 
> > Is this perhaps the correct solution for what commit c39ea0b9dd24 ("panic:
> > avoid the extra noise dmesg") was trying to fix?
> 
> Hmm, maybe, although that looks like it's focussed more on irq handling
> than preemption.

Exactly, the backtrace mentioned in commit c39ea0b9dd24 ("panic: avoid
the extra noise dmesg") is printed by wake_up() called from
wake_up_klogd_work_func(). It is irq_work. Therefore disabling
preemption would not prevent this.


> I've deliberately left the irq part alone, since I think
> having magic sysrq work via the keyboard interrupt is desirable from the
> panic loop.

I agree that we should keep sysrq working.

One pity thing is that led_panic_blink() in
leds/drivers/trigger/ledtrig-panic.c uses workqueues:

  + led_panic_blink()
    + led_trigger_event()
      + led_set_brightness()
	+ schedule_work()

It means that it depends on the scheduler. I guess that it
does not work in many panic situations. But this patch
will always block it.

I agree that it is strange that userspace still works at
this stage. But does it cause any real problems?

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
