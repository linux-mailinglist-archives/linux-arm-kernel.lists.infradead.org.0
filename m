Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D78BB4C81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 13:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSvfslrIF9zytnWXKLmdxa8Fpa21KEpGIsh4CPa0R8Q=; b=fvotctXBjdl3B+
	2PJWNvGkkdceFIZiJKBJj5Kc9EeO/m4wVPWcv1AeU5fYsh97S5Gd9NfFn/o9aFwCwIOQQwXgo/8el
	rQJ6R+h2nf4oLt7RD43Pj5R6dupfv4A3wz2g55hyoNDyKIi9E+Xzl5/lsJHpSuiVizgBHbyS90kHm
	wySjoY7+ROMcHXmBgCbYgzHu5MJFkWuzXJkDKoSknXCsn7sLaZPYRQFZ/p3ZjsiYwZCjF1Wbi0io0
	B5WW6olIoKNrhuH/0aRRDbmp1rL0V64TcxK46D5cTtX0j2CjgbNXCCDYMny2DXaIOQKIx8nA5jSMy
	ynwUEubCTDmYFvxxLrUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iABIQ-00084q-3d; Tue, 17 Sep 2019 11:05:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iABIB-0007u5-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 11:05:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57BEE21670;
 Tue, 17 Sep 2019 11:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568718307;
 bh=YBiYlpMCxYMuHq/R/A6MyZ56tJz7oTvUkA/g5FHifvk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h/t6x4MZVclF1qc13dvlETRk8rWsKca3PT9MWMby9Jn7u+15NTu1q9q7f/MwSIit7
 ouZnRgiVBK+hHYBBGj9VjQdec897yJQrj9naMmV4nVgelj2WzlrCjTTxfCk4n0uPiM
 iiMU9DqD4YBW0YoBU/9liW7c59tGV8wluGfPwnDo=
Date: Tue, 17 Sep 2019 12:05:02 +0100
From: Will Deacon <will@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-ID: <20190917110501.jquezxppeg35i7ce@willie-the-truck>
References: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
 <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
 <20190917105136.GK25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917105136.GK25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_040507_516915_9A56C288 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 11:51:36AM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 11:45:19AM +0100, Will Deacon wrote:
> > [Expanding CC list; original message is here:
> >  https://lore.kernel.org/linux-arm-kernel/BX1W47JXPMR8.58IYW53H6M5N@dragonstone/]
> > 
> > On Mon, Sep 16, 2019 at 09:35:36PM -0400, Xogium wrote:
> > > On arm64 in some situations userspace will continue running even after a
> > > panic. This means any userspace watchdog daemon will continue pinging,
> > > that service managers will keep running and displaying messages in certain
> > > cases, and that it is possible to enter via ssh in the now unstable system
> > > and to do almost anything except reboot/power off and etc. If
> > > CONFIG_PREEMPT=n is set in the kernel's configuration, the issue is fixed.
> > > I have reproduced the very same behavior with linux 4.19, 5.2 and 5.3. On
> > > x86/x86_64 the issue does not seem to be present at all.
> > 
> > I've managed to reproduce this under both 32-bit and 64-bit ARM kernels.
> > The issue is that the infinite loop at the end of panic() can run with
> > preemption enabled (particularly when invoking by echoing 'c' to
> > /proc/sysrq-trigger), so we end up rescheduling user tasks. On x86, this
> > doesn't happen because smp_send_stop() disables the local APIC in
> > native_stop_other_cpus() and so interrupts are effectively masked while
> > spinning.
> > 
> > A straightforward fix is to disable preemption explicitly on the panic()
> > path (diff below), but I've expanded the cc list to see both what others
> > think,
> 
> Yep, and it looks like this bug goes back into the dim and distant past.
> At least to the start of modern git history, 2.6.12-rc2.
> 
> > but also in case smp_send_stop() is supposed to have the side-effect
> > of disabling interrupt delivery for the local CPU.
> 
> That can't fix it.  Consider a preemptive non-SMP kernel.
> smp_send_stop() becomes a no-op there.
> 
> I'd suggest that a preemptive UP kernel on x86 hardware will suffer
> this same issue - it will be able to preempt out of this loop and
> continue running userspace.

You're right; I managed to reproduce this locally on my xeon box.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
