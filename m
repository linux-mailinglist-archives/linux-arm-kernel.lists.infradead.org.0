Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DDD370E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c8A12V71909eBsZBlKVDMvsJoigMMOSkb0BDXTUQauA=; b=bsvu7jNlrQhOJl
	/9WsJxyQbjOK3qfP9M2ZgaSyVpc6XvbDj7iRQth2VW56itesvEV4TSxzGUDDfKkMoNO8KfXbY0RM9
	dxXiW+9C85yg4M7gHXA5ejjJIMCwJlV6Hrx86FJi+7CXyWDUNgTQAlukkm5tnuu0AAfhsWsG0L8rE
	rwIspqcGX6nAiJHztGlmim4pWjZfWJmH2NZ5VWfQClQnsJMqz4XQ1+RcZNwEEhq0VnrYxgliCcPlN
	gNeEPJ2qTTqzQSKd/3ylYTwVPKHl8+kthd+dQPhO3izZ+ADZLhiDskcgogQNap9FX5bAzEsUjc+eT
	Qj/srHc+xw0D/s+fe+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp5D-0000Ri-Id; Thu, 06 Jun 2019 09:53:19 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYp56-0000RP-PY
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:53:14 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2758320D88;
 Thu,  6 Jun 2019 11:53:06 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id D0DB520AC3;
 Thu,  6 Jun 2019 11:53:05 +0200 (CEST)
To: Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Race between MMIO writes and level IRQs
Message-ID: <459c9bd7-becd-e704-cc13-213770f17018@free.fr>
Date: Thu, 6 Jun 2019 11:53:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jun  6 11:53:06 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_025312_977405_B029D26E 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

There's something about interrupts I have never quite understood,
which I'd like to clear up once and for all. What I'm about to write
will probably sound trivial to anyone's who's already figured it out,
but I need to walk through it.

Consider a device, living on some peripheral bus, with an interrupt
line flowing from the device into some kind of interrupt controller.

I.e. there are two "communication channels"
1) the peripheral bus, and 2) the "out-of-band" interrupt line.

At some point, the device requires the CPU to do $SOMETHING. It sends
a signal over the interrupt line (either a pulse for edge interrupts,
or keeping the line high for level interrupts). After some time, the
CPU will "take the interrupt", mask all(?) interrupts, and jump to the
proper interrupt service routine (ISR).

The CPU does whatever it's supposed to do, and then needs to inform
the device that "yes, the work is done, stop pestering me". Typically,
this is done by writing some value to one of the device's registers.

AFAICT, this is the part where things can go wrong:

The CPU issues the magic MMIO write, which will take some time to reach
the device over the peripheral bus. Meanwhile, the device maintains the
IRQ signal (assuming a level interrupt). Once the CPU leaves the ISR, the
framework will unmask IRQs. If the write has not yet reached the device,
the CPU will be needlessly interrupted again.

Basically, there's a race between the MMIO write and the IRQ unmasking.
We'd like to be able to guarantee that the MMIO write is complete before
unmasking interrupts, right?

Some people use memory barriers, but my understanding is that this is
not sufficient. The memory barrier may guarantee that the MMIO write
has left the CPU "domain", but not that it has reached the device.

Am I mistaken?

So it looks like the only surefire way to guarantee that the MMIO write
has reached the device is to read the value back from the device?

Tangential: is this one of the issues solved by MSI?
https://en.wikipedia.org/wiki/Message_Signaled_Interrupts#Advantages

Regards.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
