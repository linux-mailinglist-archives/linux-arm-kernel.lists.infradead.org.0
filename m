Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE491DD2DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:From:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sor6dmRImgcP7R0/8dqTrdKftnozdiMgWZyi+ckv1Cw=; b=Q0eXk0nn4tqz8N
	WaHn6quNAURTNo+rDM+7qQm+bXnpF7Hs/SZx6c6YUU55eBpQh0mtphgCakH9qzze+Y0GetYmdV98y
	BX+ma0ggDZWa1OfIlSK/hW7OSSm+ddiqN8WI/5jrT3iKynIUA8KmCusaoP2lujkl0fPNq8EFLp9mr
	xXnJ/zb4ymIB9et2kUq8rru1YAFpbGS7frcYo+4xT5v8jPrMC7Q/o7OZCYlyUwprHf04+vbeXXFtz
	tF9MZgeZowcFgt0a925zQ6bfuENVP8gswmlWQDhHSE2IdMK7yP1FFCTOuaqniZpsE2oY7Xy866zUj
	zq0Y/qLk2wMs3a1wxoIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnnf-0004Wt-Bv; Thu, 21 May 2020 16:12:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnnV-0004WF-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:11:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0314CD6E;
 Thu, 21 May 2020 09:11:52 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5B263F68F;
 Thu, 21 May 2020 09:11:50 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-5-maz@kernel.org>
 <20200519222447.GJ1551@shell.armlinux.org.uk> <jhjk115xu4a.mognet@arm.com>
 <20200521151212.GT1551@shell.armlinux.org.uk>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 04/11] ARM: Allow IPIs to be handled as normal interrupts
Message-ID: <jhjh7w9xo7l.mognet@arm.com>
In-reply-to: <20200521151212.GT1551@shell.armlinux.org.uk>
Date: Thu, 21 May 2020 17:11:44 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_091153_596738_F58AB0F1 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 21/05/20 16:12, Russell King - ARM Linux admin wrote:
> On Thu, May 21, 2020 at 03:03:49PM +0100, Valentin Schneider wrote:
>>
>> On 19/05/20 23:24, Russell King - ARM Linux admin wrote:
>> > On Tue, May 19, 2020 at 05:17:48PM +0100, Marc Zyngier wrote:
>> >> In order to deal with IPIs as normal interrupts, let's add
>> >> a new way to register them with the architecture code.
>> >>
>> >> set_smp_ipi_range() takes a range of interrupts, and allows
>> >> the arch code to request them as if the were normal interrupts.
>> >> A standard handler is then called by the core IRQ code to deal
>> >> with the IPI.
>> >>
>> >> This means that we don't need to call irq_enter/irq_exit, and
>> >> that we don't need to deal with set_irq_regs either. So let's
>> >> move the dispatcher into its own function, and leave handle_IPI()
>> >> as a compatibility function.
>> >>
>> >> On the sending side, let's make use of ipi_send_mask, which
>> >> already exists for this purpose.
>> >
>> > You say nothing about the nesting of irq_enter() and irq_exit()
>> > for scheduler_ipi().
>> >
>> > Given that lockdep introduced the requirement that hard IRQs can't
>> > be nested, are we sure that calling irq_exit() twice is safe?
>> >
>> > Looking at irqtime_account_irq(), it seems that will cause double-
>> > accounting of in-interrupt time, since we will increment
>> > irq_start_time by just over twice the the period spent handling
>> > the IPI.
>> >
>> > I think the rest of irq_exit() should be safe, but still, this
>> > behaviour should be documented at the very least, if not avoided.
>> >
>>
>> x86 does the same (though IIUC only when tracing reschedule IPI's),
>
> Right, so when the system is operating normally, then the accounting is
> correct.  When the reschedule path is being explicitly traced, then
> the accounting will be doubled for it.
>

Right, it's true that they are only affected when tracing.


That said, AFAICT the accounting nests correctly. Consider:

  irq_enter() @t0
    irq_enter() @t1
    ...
    irq_exit() @t2
  irq_exit() @t3

Entering irqtime_account_irq() at time t, we get something like:

  delta = t - irq_start_time;
  irq_start_time = t;

  if (hardirq_count())
          total += delta;

Since we go through the accounting on both irq_enter() and irq_exit(), we'd
have something like:

  irq_enter() @t0
    irq_start_time = t0

  irq_enter() @t1
    delta = t1 - t0
    irq_start_time = t1
    total += t1 - t0

  irq_exit() @t2
    delta = t2 - t1
    irq_start_time = t2
    total += t2 - t1

  irq_exit() @t3
    delta = t3 - t2
    irq_start_time = t3
    total += t3 - t2


So at the end we have incremented the total by

  t1-t0 + t2-t1 + t3-t2 = t3 - t0

IOW the duration of the outermost pair (... Unless I goofed up).

> What's being proposed for ARM is to always have this mis-accounting,
> where no mis-accounting was present before - and some of us (me) /do/
> enable IRQ accounting in our kernels as standard. So, you can take
> this as a kernel regression report from a user.
>
>> and MIPS has the same issue as it also uses generic IRQ IPI's - so
>> although it's not ideal, I think we can live with it.
>
> Yes, but is there anyone who cares about this for MIPS?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
