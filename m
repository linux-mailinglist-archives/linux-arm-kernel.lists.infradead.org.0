Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4367B3713F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHqPUmcVauKiMJH+l1TcOC/N5/KmJ7QQQ21EAazRnZg=; b=J3iwl7XKHBeWHJ
	C7gOAQ2c3ERFyj2vHB5CaTfILapeiaKHiz3ZJYgw6T9CFh9Z7sgysjEqtZDy9vHafTCGvl6wDE5j7
	V/7Dfu1G364XdxFO14RvwDJiz4C+DGuUf7wHl6AZ2JnDjbgazt9vGbxz6KWlOlEusy2UlANPGy7Ce
	RVV0/d67jlpJU2rsduU2X/1afUhVPvk/TRofVw6oPGTbNCNfPu4wjfba7CgHGIL2Qo9bDiXf+a0Yx
	Dp5Un/Kj36nqggYf8/W49F+Y7lpUJmpl0ruWhRC6rCr1QD01wD7lZ62VRax/huLFsoXQ1wHzAMeng
	H1kjMAuqMdYeimOWf+eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpH2-0008T1-84; Thu, 06 Jun 2019 10:05:32 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpGv-0008Sc-EV
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:05:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4982341;
 Thu,  6 Jun 2019 03:05:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D11E3F690;
 Thu,  6 Jun 2019 03:05:23 -0700 (PDT)
Date: Thu, 6 Jun 2019 11:05:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Race between MMIO writes and level IRQs
Message-ID: <20190606100520.GC37430@lakrids.cambridge.arm.com>
References: <459c9bd7-becd-e704-cc13-213770f17018@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <459c9bd7-becd-e704-cc13-213770f17018@free.fr>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_030525_500526_F98FD4E3 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 11:53:05AM +0200, Marc Gonzalez wrote:
> Hello everyone,
> 
> There's something about interrupts I have never quite understood,
> which I'd like to clear up once and for all. What I'm about to write
> will probably sound trivial to anyone's who's already figured it out,
> but I need to walk through it.
> 
> Consider a device, living on some peripheral bus, with an interrupt
> line flowing from the device into some kind of interrupt controller.
> 
> I.e. there are two "communication channels"
> 1) the peripheral bus, and 2) the "out-of-band" interrupt line.
> 
> At some point, the device requires the CPU to do $SOMETHING. It sends
> a signal over the interrupt line (either a pulse for edge interrupts,
> or keeping the line high for level interrupts). After some time, the
> CPU will "take the interrupt", mask all(?) interrupts, and jump to the
> proper interrupt service routine (ISR).
> 
> The CPU does whatever it's supposed to do, and then needs to inform
> the device that "yes, the work is done, stop pestering me". Typically,
> this is done by writing some value to one of the device's registers.
> 
> AFAICT, this is the part where things can go wrong:
> 
> The CPU issues the magic MMIO write, which will take some time to reach
> the device over the peripheral bus. Meanwhile, the device maintains the
> IRQ signal (assuming a level interrupt). Once the CPU leaves the ISR, the
> framework will unmask IRQs. If the write has not yet reached the device,
> the CPU will be needlessly interrupted again.

Even if the write *has* reached the device, there can be a delay before
the device de-sassert the interrupt line, and there can be a subsequent
delay for each irqchip between the device and the CPU re-sampling the
line and propagating this to its output.

Thus it's always possible to take a spurious IRQ after an IRQ handler
returns, even if the device de-asserted its interrupt line immediately.

Linux drivers are expected to be resilient to spurious IRQs.

> Basically, there's a race between the MMIO write and the IRQ unmasking.
> We'd like to be able to guarantee that the MMIO write is complete before
> unmasking interrupts, right?

This really depends on what you're doing. In many cases it's fine for
the write to complete later, given cases like the above.

> Some people use memory barriers, but my understanding is that this is
> not sufficient. The memory barrier may guarantee that the MMIO write
> has left the CPU "domain", but not that it has reached the device.

IIUC, memory barriers cannot necessarily ensure that a write has reached
a device.

> So it looks like the only surefire way to guarantee that the MMIO write
> has reached the device is to read the value back from the device?

A read ensures that the device has accepted the prior write, but does
not necessarily guarantee that it has changed internal state or
triggered any externally visible effects.

What exactly you need to do will depend on what you're trying to achieve
and the behaviour of the specific device.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
