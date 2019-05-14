Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5861D058
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pGnA9LWHg8NEvdsnZQKIqRzNMR2cSKZFBipJpnP/p0=; b=ML2TTSDU/6o4jA
	ubFNwMbIuEJqBQPmCniJTpRO609S2p+L9OwkKcByXOfavoqEapY1IaMVHssW7vdO0e+qMZLxpQDNu
	QHwjfpNgPAkYz7aj71lGfqM5VFb+6K+5Wc/e7a7QrNRfaUqcvrbeQ3b+dCQNDEMF5njaTU+gaLDdN
	3475g9l3arqVZ+rvroSZ+XYlqTF2MpQ4Ewq1+MRroUS1cQ9a5D+R+Dgd/xj/+Ld/OnvP/6NJoHM3I
	edCXh2FgamYC7JTgEENLzhnKyRdEUTqkWAUOZY9bjx0xs/T00oZiE7Eeq6BCkPVz6fgubnwJ43yDq
	7jIuX6mzNl2r3HlQljzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdp2-0001wD-PW; Tue, 14 May 2019 20:14:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdot-0001uj-Cv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:14:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id i21so99251pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 13:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :subject:cc:to:message-id:user-agent:date;
 bh=NwBKkvRALDSfJXSRslkyqKuEQQ49X1NvKTDQCoJHdlI=;
 b=CCE5qzleFDtTOHIb/LPu8GAOVirRmVFIRYv2NvKSnorxyMLWDwMVTbDQNdiG4j1kxd
 cFx1dYDfqw+fuqMLvgYSomNiIrrgPxPOWY884zW4I65CqNYiEe0Loz/t6G4UK8OHSwaN
 muyemZmyBqRdfBFtb7yczMlrj2swanAKfQpu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:subject:cc:to:message-id:user-agent
 :date;
 bh=NwBKkvRALDSfJXSRslkyqKuEQQ49X1NvKTDQCoJHdlI=;
 b=IRABuWCMFKuKR70kEnOj2FtIuXhm7Ku3o/CnvNdEOoXc+HOlQ89PzEmRBTA7SB9wzB
 mbKDrbFVKe4RQb79mDXEio9oBOCSRJJIDg9h3Mdtr+e993v3fAw1Q0VUyKfWVH8kxep9
 03ocY4Wim138j93w9zG93HWn0KNwrq0y/FjufMi1O6m5mcNOYgLNGwBmBH3CFhg3LGex
 Y2uOc9z5XZuKgp/oUr1fhMuLLMx+aobZSCaHpdRgVsxnL3T1JO47y/pTIwC0lk4hMfar
 Pfg2561JxXmd2PFmycQN5U4zuMKtbXIW6tZaEExHbndmcWjxPz4QmN2rW3jh9GBGN4a1
 C0ww==
X-Gm-Message-State: APjAAAVBfXGr9F6fJEx57rBwDqkQKAA8nPPvSt7TEUjsSpYZi7UG/Fth
 oA2OmT4tVvBQMXy4TkHQePv4LUXEE+RnJw==
X-Google-Smtp-Source: APXvYqzDQ19kpSxfLWSgqhbEO+Bv2cEGlMH90i1VoP/vOiYQQXLgL9nWWDvQ5o3dkbO5mmiC4br8CQ==
X-Received: by 2002:aa7:880f:: with SMTP id c15mr44432292pfo.100.1557864878218; 
 Tue, 14 May 2019 13:14:38 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x4sm21867128pfm.19.2019.05.14.13.14.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:14:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANMq1KBMd7eR3dP=V9gJ6G4OgE6DsXad_gzvuNJ25_pee4+6eg@mail.gmail.com>
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
 <155778659317.14659.136626364818483852@swboyd.mtv.corp.google.com>
 <CANMq1KBMd7eR3dP=V9gJ6G4OgE6DsXad_gzvuNJ25_pee4+6eg@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Nicolas Boichat <drinkcat@chromium.org>
Message-ID: <155786487644.14659.17142525593824613967@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 14 May 2019 13:14:36 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_131439_475972_A24D063E 
X-CRM114-Status: GOOD (  32.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 linux-gpio@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Boichat (2019-05-13 18:37:58)
> On Tue, May 14, 2019 at 6:29 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Nicolas Boichat (2019-04-28 20:55:15)
> > > During suspend/resume, mtk_eint_mask may be called while
> > > wake_mask is active. For example, this happens if a wake-source
> > > with an active interrupt handler wakes the system:
> > > irq/pm.c:irq_pm_check_wakeup would disable the interrupt, so
> > > that it can be handled later on in the resume flow.
> > >
> > > However, this may happen before mtk_eint_do_resume is called:
> > > in this case, wake_mask is loaded, and cur_mask is restored
> > > from an older copy, re-enabling the interrupt, and causing
> > > an interrupt storm (especially for level interrupts).
> > >
> > > Instead, we just record mask/unmask changes in cur_mask. This
> > > also avoids the need to read the current mask in eint_do_suspend,
> > > and we can remove mtk_eint_chip_read_mask function.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > It looks an awful lot like you should just use IRQCHIP_MASK_ON_SUSPEND
> > here. Isn't that what's happening? All non-wake irqs should be masked at
> > the hardware level so they can't cause a wakeup during suspend and on
> > resume they can be unmasked?
> 
> No, this is for an line that has both wake and interrupt enabled. To
> reword the commit message above:

Is my understanding correct that there isn't a different "wake up"
register that can be written to cause a GPIO to be configured to wake
the system from suspend? The only way to do so is to leave the GPIO
unmasked in the hardware by having EINT_EN[irq] = 1? And thus any
interrupts that we don't want to wake us up during suspend should be
masked in the hardware? 

If that's true, the code here that's trying to keep track of enabled
irqs and wakeup enabled irqs can be replaced with the irqchip flag so
that wakeup irqs are not masked while non-wakeups are masked.


>  1. cur_mask[irq] = 1; wake_mask[irq] = 1; EINT_EN[irq] = 1 (interrupt
> enabled at hardware level)
>  2. System suspends, resumes due to that line (at this stage EINT_HW
> == wake_mask)
>  3. irq_pm_check_wakeup is called, and disables the interrupt =>
> EINT_EN[irq] = 0, but we still have cur_mask[irq] = 1
>  4. mtk_eint_do_resume is called, and restores EINT_EN = cur_mask, so
> it reenables EINT_EN[irq] = 1 => interrupt storm.
> 
> This patch fixes the issue in step 3. So that the interrupt can be
> re-enabled properly later on, sometimes after mtk_eint_do_resume, when
> the driver is ready to handle it.

Right, we'd rather not see irqchip drivers working around the genirq
layer to do these things like tracking cur_mask and wake_mask. That
leads to subtle bugs and makes the driver maintain state across the
irqchip callbacks and system suspend/resume.

> 
> Also, IRQCHIP_MASK_ON_SUSPEND does not handle lines that are enabled
> as a wake source, but without interrupt enabled (e.g. cros_ec driver
> does that), which we do want to support.

Hmm. I thought that even if the irq is disabled by a driver, that would
be a lazy disable so it isn't really masked in the hardware. Then if an
interrupt comes in during suspend on a wake configured irq line, the
hardware will have left it unmasked because IRQCHIP_MASK_ON_SUSPEND in
combination with lazy disable would mean that the line is left unmasked
(ignoring whatever this mediatek driver is doing to mask and unmask in
PM hooks).

Just reading Documentation/power/suspend-and-interrupts.txt I'm led to
believe that the cros_ec driver shouldn't call disable_irq() on the
interrupt if it wants to wakeup from it:

"Calling enable_irq_wake() causes suspend_device_irqs() to treat the
given IRQ in a special way.  Namely, the IRQ remains enabled, by on the
first interrupt it will be disabled, marked as pending and "suspended"
so that it will be re-enabled by resume_device_irqs() during the
subsequent system resume.  Also the PM core is notified about the event
which causes the system suspend in progress to be aborted (that doesn't
have to happen immediately, but at one of the points where the suspend
thread looks for pending wakeup events)."

I suppose the problem is an irq line disabled in hardware that has
wakeup armed on it? Is this even valid? Shouldn't an irq be enabled for
wakeup to work?

We could immediately unmask those lines in the hardware when the
set_wake() callback is called. That way the genirq layer can use the
driver to do what it wants with the hardware and the driver can make
sure that set_wake() will always cause the wakeup interrupt to be
delivered to genirq even when software has disabled it.

But I think that there might be a problem with how genirq understands
the masked state of a line when the wakeup implementation conflates
masked state with wakeup armed state. Consider this call-flow:

	irq masked in hardware, IRQD_IRQ_MASKED is set
	enable_irq_wake()
	  unmask_irq in hardware
	IRQD_WAKEUP_ARMED is set
	<suspend and wakeup from irq>
	handle_level_irq()
	  mask_ack_irq()
	    mask_irq()
	      if (irqd_irq_masked()) -> returns true and skips masking!
	    if (desc->irq_data.chip->irq_ack)
	      ...
	  irq_may_run()
	    irq_pm_check_wakeup()
	      irq_disable()
	        mask_irq() -> does nothing again

In the above flow, we never mask the irq because we thought it was
already masked when it was disabled, but the irqchip implementation
unmasked it to make wakeup work. Maybe we should always mask the irq if
wakeup is armed and we're trying to call mask_irq()? Looks hacky.

diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index 51128bea3846..20257d528880 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -411,7 +411,7 @@ static inline void mask_ack_irq(struct irq_desc *desc)
 
 void mask_irq(struct irq_desc *desc)
 {
-	if (irqd_irq_masked(&desc->irq_data))
+	if (!irqd_is_wakeup_armed(&desc->irq_data) && irqd_irq_masked(&desc->irq_data))
 		return;
 
 	if (desc->irq_data.chip->irq_mask) {



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
