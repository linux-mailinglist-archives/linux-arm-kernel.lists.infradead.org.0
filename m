Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FCACB8A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X03kMgDDxKSLXekmj8ogFTp73NVelVpNnV1xCQZ7rAc=; b=tQS8uDvt5fUywn
	N1GWTFm6hHnAjuBr+Y3S62EZyTEqywXFiCwbqsN7CZpVe/iFU3svBAKavdCgFqHInTd2cxe7Nb5kg
	AIlfKOgMEw6hCmCjfpgagXGlv/v+ZnFF2JtvPzWDYHCb2RaYkekdnRimfahnMQRno3KlNd0/hRPYP
	t8xZ4iypaP4jo0KBeh9frKLRa0UPGDSh0j1y0k1ZzTWqiB9RdF+asgxFk9IXtyy+6iIEX4WefNXpV
	gYfbKZQaFjh6Q3askzIOoF0oNlB6LSZSqGGNwzvhJ57rU7N339fFnSrUxQr8rZ0lMzRFr0O+62BOm
	rxYpwKN3T/C7uZ5Ki3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGLA5-0005TS-JP; Fri, 04 Oct 2019 10:50:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGL9l-0005Sv-R8
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:49:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 400C32133F;
 Fri,  4 Oct 2019 10:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570186193;
 bh=xrkcnenMAd2SVSf4T8S4GK2Q1eCTRcWLOsgnec3I/Wc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bwXio5FNvRtjyQbr6QsEPS/7Zevucaa0XLXZgDPzBj1LBpOQ5canyxrae64OIAOb+
 7X1SMeVBocFDDBLHN1yQyzfWEEl6hnnh+paV5Hszomp9e9VcZ9F5sunFCUQ7PvJy5s
 hzZKIRZqJaI25vdusBp5zvXwcpqHE2j4DLX6iato=
Date: Fri, 4 Oct 2019 11:49:48 +0100
From: Will Deacon <will@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] panic: Ensure preemption is disabled during panic()
Message-ID: <20191004104947.vbxe5kv3nbjxqs55@willie-the-truck>
References: <20191002123538.22609-1-will@kernel.org>
 <201910021355.E578D2FFAF@keescook>
 <20191003205633.w26geqhq67u4ysit@willie-the-truck>
 <20191004091142.57iylai22aqpu6lu@pathway.suse.cz>
 <20191004092917.GY25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004092917.GY25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_034953_901800_9397A8BB 
X-CRM114-Status: GOOD (  16.89  )
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
 Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, stable@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 10:29:17AM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Oct 04, 2019 at 11:11:42AM +0200, Petr Mladek wrote:
> > On Thu 2019-10-03 21:56:34, Will Deacon wrote:
> > > I've deliberately left the irq part alone, since I think
> > > having magic sysrq work via the keyboard interrupt is desirable from the
> > > panic loop.
> > 
> > I agree that we should keep sysrq working.
> > 
> > One pity thing is that led_panic_blink() in
> > leds/drivers/trigger/ledtrig-panic.c uses workqueues:
> > 
> >   + led_panic_blink()
> >     + led_trigger_event()
> >       + led_set_brightness()
> > 	+ schedule_work()
> > 
> > It means that it depends on the scheduler. I guess that it
> > does not work in many panic situations. But this patch
> > will always block it.
> > 
> > I agree that it is strange that userspace still works at
> > this stage. But does it cause any real problems?
> 
> Yes, there are watchdog drivers that continue to pat their watchdog
> after the kernel has panic'd.  It makes watchdogs useless (which is
> exactly how this problem was discovered.)

Indeed, and I think the LED blinking is already unreliable if the
brightness operation needs to sleep. For example, if the kernel isn't
preemptible or the work gets queued up on a different CPU which is
sitting in panic_smp_self_stop().

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
