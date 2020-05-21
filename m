Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C311DD0DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdVSRrKX84SDjaJlfWtB8abXefrshQFQWYcoAxjgaKY=; b=AZ5EMeEK4FSo5L
	qi4SFymv7SWGQ2Qn+DLmL5SjjS17rvlW6utir/0O1NQlHZuP7djjCcqF3884lCdQYHkPcQ4ZjuzUK
	iAiMdMbTOcx//C9+x0/HnrYX8GTbD/HcPF9//wJ9HasHUdYxZT9HnBj5H0krO+BqxTnLZ7W+9IgZP
	Mp51+YngTZKEVW46qrS6osSxuvkSDwt18wZVu3vF5ffpJ5lxAvBA13H2KCOSr4DlS9Ohrhxhh+NVQ
	q8zY6sRKmS46CPRWI3cW4+CiwfnrEXpfiG4uUHHE2pRXjuXB5ltVggjmXDERooAh5Ax+avndBGbbL
	wnfXil7c0hcHSApYUd9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbms6-0004sC-Bg; Thu, 21 May 2020 15:12:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmrx-0004re-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vu0Vaxs7IefmouAAAzANzYnryWDduj56r+NgTrTYkZs=; b=cvHO6Au5II47Bw46tKmX9ddJY
 NNPdxihzF1xRveiO5KeHqkQRyrLIVwEyy5VIEQf/DPsQBWBqKyRKEnZKSI6ROgHy9rsiQH5t9pnPp
 qC5LFl+SiPr+9evpFbTP6Y5GGkzAU92ZQfe8ATLSxhlRcyI5MB4moG62SI1LAUbXAwjd04kNZ58pD
 Z2dkufbj1cPu/cjGQuwDTWn6lOi40EAFQ/tGgL1QsWstVf7UiQf8lLPsumuDOqBzuQExzdCgaCDrb
 i1XRYcPh50FYF3SGaZxQ3yyElk8ww08hnK/BDPx8Af4JLCGVK4ja/8mb9l2XKd/hJpa5R4wjIfnfn
 p9CbQ4Xrw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:35116)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbmrp-0002k7-0D; Thu, 21 May 2020 16:12:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbmrk-0000Ix-EH; Thu, 21 May 2020 16:12:12 +0100
Date: Thu, 21 May 2020 16:12:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH 04/11] ARM: Allow IPIs to be handled as normal interrupts
Message-ID: <20200521151212.GT1551@shell.armlinux.org.uk>
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-5-maz@kernel.org>
 <20200519222447.GJ1551@shell.armlinux.org.uk>
 <jhjk115xu4a.mognet@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <jhjk115xu4a.mognet@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_081226_082321_D4D64ACE 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 21, 2020 at 03:03:49PM +0100, Valentin Schneider wrote:
> 
> On 19/05/20 23:24, Russell King - ARM Linux admin wrote:
> > On Tue, May 19, 2020 at 05:17:48PM +0100, Marc Zyngier wrote:
> >> In order to deal with IPIs as normal interrupts, let's add
> >> a new way to register them with the architecture code.
> >>
> >> set_smp_ipi_range() takes a range of interrupts, and allows
> >> the arch code to request them as if the were normal interrupts.
> >> A standard handler is then called by the core IRQ code to deal
> >> with the IPI.
> >>
> >> This means that we don't need to call irq_enter/irq_exit, and
> >> that we don't need to deal with set_irq_regs either. So let's
> >> move the dispatcher into its own function, and leave handle_IPI()
> >> as a compatibility function.
> >>
> >> On the sending side, let's make use of ipi_send_mask, which
> >> already exists for this purpose.
> >
> > You say nothing about the nesting of irq_enter() and irq_exit()
> > for scheduler_ipi().
> >
> > Given that lockdep introduced the requirement that hard IRQs can't
> > be nested, are we sure that calling irq_exit() twice is safe?
> >
> > Looking at irqtime_account_irq(), it seems that will cause double-
> > accounting of in-interrupt time, since we will increment
> > irq_start_time by just over twice the the period spent handling
> > the IPI.
> >
> > I think the rest of irq_exit() should be safe, but still, this
> > behaviour should be documented at the very least, if not avoided.
> >
> 
> x86 does the same (though IIUC only when tracing reschedule IPI's),

Right, so when the system is operating normally, then the accounting is
correct.  When the reschedule path is being explicitly traced, then
the accounting will be doubled for it.

What's being proposed for ARM is to always have this mis-accounting,
where no mis-accounting was present before - and some of us (me) /do/
enable IRQ accounting in our kernels as standard. So, you can take
this as a kernel regression report from a user.

> and MIPS has the same issue as it also uses generic IRQ IPI's - so
> although it's not ideal, I think we can live with it.

Yes, but is there anyone who cares about this for MIPS?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
