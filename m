Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202A7371AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAkify0FHLfV49npcTWKc+wFgYjkq9hnf1kxInGOnTg=; b=eZiGHnki3+PjFZ
	NSys5G+sYOU5dIs+gMsy6fa09QT+pZabB6s1fsL7Z5rXTff00bMj5EppwS5miaolai2KZAAds/LtV
	L7e01UYCsErxr4WG1sHo+mvcK/iy5CemX/xO8edmeP9FucCNuK8NKCT3VD3/62k0JjddtBotXvfFH
	AMm5T0WBqh9yoxV2hfFOr8n8Ca/lojWqp+Tu+3jcS5f0y0yXn1YbNq2sL9DRHv8Qs9tNDeWiObyiU
	ijOTF5zQWoptaXLJdHEuswAI1dJYZIfAHgGYqZ+iLy4qXeYmoNCU3pJ+BzkA1jmN2k9PT23Vf78ZK
	RKgNtQPRwq8TgSg4rzvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpc2-0007nB-Or; Thu, 06 Jun 2019 10:27:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpbu-0006SC-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jtwS5y67sxjJ7FswCN5DS518lv6BqNXiW7fvOm1+w9w=; b=So2uET4v7eo+5mtA2Qq7E0jML
 Vu8/X9inBbty+STCaE0RfGNoAVKwrwOvV6lpoqP5B57iOL3M8s/Omf+jDwfS/r5rmHuHlegAyJRco
 wPC0fEhAVEDlpRcqZ+m3fcBPN8RBmKLVjJBnRCggQv5W0sJyM7WalovMHpE8wQT8koG8ieV7E+kTW
 erbNiSxElc5quAkL2BSYxmvbeG9m7Nf5xfoJJCnpguz5haofyDOBgAIb3VqwiQc9CPvSLqysQQlbV
 /QCAUz1iwH0xTCPEnE5rTp0WB/K2uAhkl9pIY5t/dlTENkU+cusuzRv93OiFSuf3PeSqxJRcNoa+A
 BnzosOU1w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52880)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hYpZo-0005L8-Ot; Thu, 06 Jun 2019 11:24:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hYpZn-0003Ax-Kk; Thu, 06 Jun 2019 11:24:55 +0100
Date: Thu, 6 Jun 2019 11:24:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Race between MMIO writes and level IRQs
Message-ID: <20190606102455.jpp3c6knba3nhiwh@shell.armlinux.org.uk>
References: <459c9bd7-becd-e704-cc13-213770f17018@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <459c9bd7-becd-e704-cc13-213770f17018@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_032706_367870_40C7ECD8 
X-CRM114-Status: GOOD (  25.50  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
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
> 
> Basically, there's a race between the MMIO write and the IRQ unmasking.
> We'd like to be able to guarantee that the MMIO write is complete before
> unmasking interrupts, right?
> 
> Some people use memory barriers, but my understanding is that this is
> not sufficient. The memory barrier may guarantee that the MMIO write
> has left the CPU "domain", but not that it has reached the device.
> 
> Am I mistaken?

You are not mistaken, and this issue has been known for a long time for
busses such as PCI, where writes are "posted" - they can be delayed by
any PCI bridge.  The PCI ordering rules state that a MMIO write must
complete before a MMIO read is allowed, so the way drivers work around
this problem is to use a write-readback sequence where its important
that the write must hit the device in a timely manner.

> So it looks like the only surefire way to guarantee that the MMIO write
> has reached the device is to read the value back from the device?
> 
> Tangential: is this one of the issues solved by MSI?
> https://en.wikipedia.org/wiki/Message_Signaled_Interrupts#Advantages

If anything, MSI is even worse - for example, if you disable the
interrupt at a device by writing and then reading back, an interrupt
could be "in flight" via the MSI mechanism just before the write hits,
but the CPU receives the interrupt after the read-back.

Note that the race condition the wikipedia article talks about is
between the device DMAing _to_ memory and the device sending a MSI.
It is not about the CPU writing to the device and the device sending
a MSI.

However, there is another aspect to consider - in a SMP system, the
interrupt could be processed by another CPU, so merely relying on
writing a peripheral register to stop an interrupt may mean that the
interrupt handler is already executing on some other CPU.
synchronize_irq() helps to avoid that.  Note that it doesn't help with
the MSI issue.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
