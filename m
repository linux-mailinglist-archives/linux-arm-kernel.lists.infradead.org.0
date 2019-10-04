Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C5CB758
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdYfgY6JMa6aOkKDjdlARTGbMDc98wwEcQUMlOGrbnY=; b=WiJ/1fjhesAQoH
	ea15InCFKakO0W5YIprqkpz5LerhrwlAJCRcVOPLYXzQpiQmaL0J2CeQ3xIUcKgD+vj5YOvbVEG6O
	nxUXL2HUPQ7AA3011Jfv6bx6XkKshMf5jiH+92K7GV/2iZRcdnyMsq5tn/7wYYjnQK4a/xH5OI0G4
	WIk1TVjg3ricT61iHfly3ZuhmBMJ4P3LS1Gnq8p1L9pCh5BuwxEr0h/ZsFkUgFOnD/LMzfWTIk5S2
	6XQ5ro6jeKk0O+8AZx7nPhKa7PQF8cHz9oLoRkNTZvdPZGSoL/BbqGZD4msHs7Wk888CmjAtUKNSG
	dofJaDSyemrQ46eblgtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJuQ-0005Di-Co; Fri, 04 Oct 2019 09:29:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJuH-0005DF-RW
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZEdwlRRe1fVpI8NPcZkdPrA+bC9um4BHLFic4u3Xoik=; b=UR+sv2ezd8u/E+Tvqz/RcNpFw
 dYh3NcUoGQTp76X2H4k3D36vQh5Jwx/caflzs54YpfrhSL4HWE0fMBDNUMtp1mCXlGxJpE41Fnv52
 2KRXKS3DTvkd7sjhd3RzOao+ykKuKjIHJ6G7MRay4ZtYi5fDlvK7e638qKVRPdC+gu2Xf/5i3EYor
 2g3yTWCttiVCSMMOWAiEX+vpuXjUL2BWQascUpnCwky9s5q86RrlCrZrhG49s6gbylf2NnrnJogPS
 b6FiFZ+0HObf3ldbOTSWqLn/3BwZWQASaQVqQm8OM93MLQlv509VN1r3zUf2oyevI0KTU24ZJc2yI
 J2MDSoodg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:47430)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iGJtp-0003La-TX; Fri, 04 Oct 2019 10:29:22 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iGJtl-0002ez-RQ; Fri, 04 Oct 2019 10:29:17 +0100
Date: Fri, 4 Oct 2019 10:29:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191004092917.GY25745@shell.armlinux.org.uk>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
 <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_022949_892498_CFF8B25B 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 11:11:42AM +0200, Petr Mladek wrote:
> On Thu 2019-10-03 21:56:34, Will Deacon wrote:
> > Hi Kees,
> > 
> > On Wed, Oct 02, 2019 at 01:58:46PM -0700, Kees Cook wrote:
> > > On Wed, Oct 02, 2019 at 01:35:38PM +0100, Will Deacon wrote:
> > > > Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
> > > > calling CPU in an infinite loop, but with interrupts and preemption
> > > > enabled. From this state, userspace can continue to be scheduled,
> > > > despite the system being "dead" as far as the kernel is concerned. This
> > > > is easily reproducible on arm64 when booting with "nosmp" on the command
> > > > line; a couple of shell scripts print out a periodic "Ping" message
> > > > whilst another triggers a crash by writing to /proc/sysrq-trigger:
> > > > 
> > > >   | sysrq: Trigger a crash
> > > >   | Kernel panic - not syncing: sysrq triggered crash
> > > >   | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
> > > >   | Hardware name: linux,dummy-virt (DT)
> > > >   | Call trace:
> > > >   |  dump_backtrace+0x0/0x148
> > > >   |  show_stack+0x14/0x20
> > > >   |  dump_stack+0xa0/0xc4
> > > >   |  panic+0x140/0x32c
> > > >   |  sysrq_handle_reboot+0x0/0x20
> > > >   |  __handle_sysrq+0x124/0x190
> > > >   |  write_sysrq_trigger+0x64/0x88
> > > >   |  proc_reg_write+0x60/0xa8
> > > >   |  __vfs_write+0x18/0x40
> > > >   |  vfs_write+0xa4/0x1b8
> > > >   |  ksys_write+0x64/0xf0
> > > >   |  __arm64_sys_write+0x14/0x20
> > > >   |  el0_svc_common.constprop.0+0xb0/0x168
> > > >   |  el0_svc_handler+0x28/0x78
> > > >   |  el0_svc+0x8/0xc
> > > >   | Kernel Offset: disabled
> > > >   | CPU features: 0x0002,24002004
> > > >   | Memory Limit: none
> > > >   | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
> > > >   |  Ping 2!
> > > >   |  Ping 1!
> > > >   |  Ping 1!
> > > >   |  Ping 2!
> > > > 
> > > > The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
> > > > local interrupts are disabled in 'smp_send_stop()'.
> > > > 
> > > > Disable preemption in 'panic()' before re-enabling interrupts.
> > > 
> > > Is this perhaps the correct solution for what commit c39ea0b9dd24 ("panic:
> > > avoid the extra noise dmesg") was trying to fix?
> > 
> > Hmm, maybe, although that looks like it's focussed more on irq handling
> > than preemption.
> 
> Exactly, the backtrace mentioned in commit c39ea0b9dd24 ("panic: avoid
> the extra noise dmesg") is printed by wake_up() called from
> wake_up_klogd_work_func(). It is irq_work. Therefore disabling
> preemption would not prevent this.
> 
> 
> > I've deliberately left the irq part alone, since I think
> > having magic sysrq work via the keyboard interrupt is desirable from the
> > panic loop.
> 
> I agree that we should keep sysrq working.
> 
> One pity thing is that led_panic_blink() in
> leds/drivers/trigger/ledtrig-panic.c uses workqueues:
> 
>   + led_panic_blink()
>     + led_trigger_event()
>       + led_set_brightness()
> 	+ schedule_work()
> 
> It means that it depends on the scheduler. I guess that it
> does not work in many panic situations. But this patch
> will always block it.
> 
> I agree that it is strange that userspace still works at
> this stage. But does it cause any real problems?

Yes, there are watchdog drivers that continue to pat their watchdog
after the kernel has panic'd.  It makes watchdogs useless (which is
exactly how this problem was discovered.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
