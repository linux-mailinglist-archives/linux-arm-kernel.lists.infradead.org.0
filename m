Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8FBCBC36
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M39Od3w5MvZL6UjNCiAjy9VTgZQoXleInFbqaBmbbWw=; b=vBudg1fN/5NOiz
	5y9yrmaLsicTNV4zdtah7HOO8spGsoLmaAUXeslgPawWSBKUj2BgeuTYB6ATWrlN8BSdKz78tZ5NE
	OdhrTrn27qF5+cVNto2YnZmOF2DiEHe0st8R2AZDOIGuKZTHiL5YghS3NIzEcKHmCPl5YM9AxZmu8
	eSBmUhl7eT6g8OrJvkjSrv5UNpUApTO1c1blkm/QOC7zxuWo2vfPZhaJxw3okgSnjVhU4ms7Ux9fs
	LmRpjID12P9pCEAeUwkta9qXYTHOqgiPIEbEcOej5dnFpt0D8LqDdBBqRf9SfgUebvCMt1VVmJ26n
	lb7XuqG9EC5gA7PHMfYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNxe-0004Hl-DJ; Fri, 04 Oct 2019 13:49:34 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNxW-0004H2-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:49:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 06:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="198860595"
Received: from feng-iot.sh.intel.com (HELO localhost) ([10.239.13.115])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2019 06:49:19 -0700
Date: Fri, 4 Oct 2019 21:51:48 +0800
From: Feng Tang <feng.tang@intel.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191004135148.GB25371@feng-iot>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
 <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
 <20191004092917.GY25745@shell.armlinux.org.uk>
 <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
 <20191004111521.y6iera4eico6ezfq@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004111521.y6iera4eico6ezfq@pathway.suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_064926_839983_8A39D61C 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 01:15:21PM +0200, Petr Mladek wrote:
> On Fri 2019-10-04 11:49:48, Will Deacon wrote:
> > On Fri, Oct 04, 2019 at 10:29:17AM +0100, Russell King - ARM Linux admin wrote:
> > > On Fri, Oct 04, 2019 at 11:11:42AM +0200, Petr Mladek wrote:
> > > > On Thu 2019-10-03 21:56:34, Will Deacon wrote:
> > > > > I've deliberately left the irq part alone, since I think
> > > > > having magic sysrq work via the keyboard interrupt is desirable from the
> > > > > panic loop.
> > > > 
> > > > I agree that we should keep sysrq working.
> > > > 
> > > > One pity thing is that led_panic_blink() in
> > > > leds/drivers/trigger/ledtrig-panic.c uses workqueues:
> > > > 
> > > >   + led_panic_blink()
> > > >     + led_trigger_event()
> > > >       + led_set_brightness()
> > > > 	+ schedule_work()
> > > > 
> > > > It means that it depends on the scheduler. I guess that it
> > > > does not work in many panic situations. But this patch
> > > > will always block it.
> > > > 
> > > > I agree that it is strange that userspace still works at
> > > > this stage. But does it cause any real problems?
> > > 
> > > Yes, there are watchdog drivers that continue to pat their watchdog
> > > after the kernel has panic'd.  It makes watchdogs useless (which is
> > > exactly how this problem was discovered.)
> > 
> > Indeed, and I think the LED blinking is already unreliable if the
> > brightness operation needs to sleep. For example, if the kernel isn't
> > preemptible or the work gets queued up on a different CPU which is
> > sitting in panic_smp_self_stop().
> 
> To make it clear. I do not want to block this patch. I just wanted
> to point out the problem. I am not sure how the blinking is important
> these days. Well, I could imagine that it might be useful on some
> embedded devices.

When reviewing the c39ea0b9dd24 ("panic: avoid the extra noise dmesg"),
there was similar discussion about what's the expectation for kernel
when panic happens, as the earlier version patch is simply keeping the
the local irq disabled, which may break the sysrq and the panic blink
code, so we turned to handling it together with printk.

> 
> Another question is how many people want to end up with dead system
> these days. The watchdogs are likely used in data centers. I guess
> that automatic reboot in panic() is a better choice there.
> 
> Anyway, it might make sense to remove the panic blinking code when
> it will not have a chance to work.

I was also wondering if the panic blinking code still really works
on any platforms.

Thanks,
Feng

> 
> Best Regards,
> Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
