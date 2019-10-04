Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6A7CB8F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 13:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdka0FYykM0+9PTzpBBnKldDroHodiO9N6V6Yogyq0U=; b=HOy+6BVV3v9bTB
	GRMKlCWuPFKP2jiSPa+HvDRuJwdNkdmX6oai77zfF3VW8bMn74hjoZRSLk3oPhJXSkLiH1sg9yD68
	TNRZ4jRRcPIH5f+NNjeslZEjnBRgoRuAHT61S5GgbbGzQcuKqxi38dIeWeZjiFWv9K/+YyCf/O+Nd
	BEEAEoO+DRHeclFe0o9nCst8BROKvcMLKRe8ekq4U56wc1DZcZXG3nBhNCDvmz9f6Jgy4PXMur4cj
	2yXd7Yto854VX82AACvqgpyqIuADgtkrG2dldWU4WFoe5DjkavPcCgwIJlBmgGmGbz3T99CUcI+Fd
	GEqqqpdQXPOU0sD7Z5wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGLYd-0006f7-0w; Fri, 04 Oct 2019 11:15:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGLYW-0006em-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 11:15:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AF9F0ACEC;
 Fri,  4 Oct 2019 11:15:24 +0000 (UTC)
Date: Fri, 4 Oct 2019 13:15:21 +0200
From: Petr Mladek <pmladek@suse.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191004111521.y6iera4eico6ezfq@pathway.suse.cz>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
 <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
 <20191004092917.GY25745@shell.armlinux.org.uk>
 <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_041529_013675_BF1D6AC5 
X-CRM114-Status: GOOD (  21.81  )
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 2019-10-04 11:49:48, Will Deacon wrote:
> On Fri, Oct 04, 2019 at 10:29:17AM +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Oct 04, 2019 at 11:11:42AM +0200, Petr Mladek wrote:
> > > On Thu 2019-10-03 21:56:34, Will Deacon wrote:
> > > > I've deliberately left the irq part alone, since I think
> > > > having magic sysrq work via the keyboard interrupt is desirable from the
> > > > panic loop.
> > > 
> > > I agree that we should keep sysrq working.
> > > 
> > > One pity thing is that led_panic_blink() in
> > > leds/drivers/trigger/ledtrig-panic.c uses workqueues:
> > > 
> > >   + led_panic_blink()
> > >     + led_trigger_event()
> > >       + led_set_brightness()
> > > 	+ schedule_work()
> > > 
> > > It means that it depends on the scheduler. I guess that it
> > > does not work in many panic situations. But this patch
> > > will always block it.
> > > 
> > > I agree that it is strange that userspace still works at
> > > this stage. But does it cause any real problems?
> > 
> > Yes, there are watchdog drivers that continue to pat their watchdog
> > after the kernel has panic'd.  It makes watchdogs useless (which is
> > exactly how this problem was discovered.)
> 
> Indeed, and I think the LED blinking is already unreliable if the
> brightness operation needs to sleep. For example, if the kernel isn't
> preemptible or the work gets queued up on a different CPU which is
> sitting in panic_smp_self_stop().

To make it clear. I do not want to block this patch. I just wanted
to point out the problem. I am not sure how the blinking is important
these days. Well, I could imagine that it might be useful on some
embedded devices.

Another question is how many people want to end up with dead system
these days. The watchdogs are likely used in data centers. I guess
that automatic reboot in panic() is a better choice there.

Anyway, it might make sense to remove the panic blinking code when
it will not have a chance to work.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
