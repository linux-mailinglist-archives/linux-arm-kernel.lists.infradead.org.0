Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371EC155B75
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+8HWRU3Mwg8loXiOAHIbJ94o1bBkLHH5wUIwXnHpkwM=; b=fR8yWxYEcUv1ZmYMtmLhpJr57
	zK1BlV6UViml+B7VSw+tKWnDH/RZAsDl0uWEVmfOnN3XV6kosM8+DKVoPpqSRby0k1UkZKWImhc51
	A2+rMK+K5ojXg0i+KgUSO2G0URihjSJ+POYbp1aC3Scb8Lhrzf5mSVXkmjZ4FVhMKiz5j2L3Lg/N0
	+9a/7JW8gr4QwSKndUFWqmxbggJHu6CvzluKNHgbcqL1rUR763Y+KV1NUOW02RYaxFlXNwyXqnKdU
	0EfjwaTsfNNvB7m9NpGfK0knLIJn2IfgFb3HJAUWLh7rYuYUgEwWDKyznDLv8Y/WnsNtMT2gIGuUM
	XE+dTLrJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06Ej-0001K3-GB; Fri, 07 Feb 2020 16:12:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06Ec-0001JZ-6b; Fri, 07 Feb 2020 16:12:03 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1235920838;
 Fri,  7 Feb 2020 16:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581091921;
 bh=BXPbsIHGdvZu4lhUnpl6V3vmhO/S2FUUVrZo1qXjLK0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EQv4vxbkRG7xf/fz7MLweFKPorp7j3grKdfmjEgkIBrmzVwGQdk7ibLX+iVrqrLRx
 xOD/yb8ye9ZJLyELukYZ45G5/KG/qsX+N+XpkLhOlroBU15jX/wEiVHaV9wmtem7pq
 vngPmuKpcSMukUfwpRssLANB/iejPsxG84Xxa4BU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j06EZ-003ZIA-CI; Fri, 07 Feb 2020 16:11:59 +0000
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 16:11:59 +0000
From: Marc Zyngier <maz@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
In-Reply-To: <988737dbbc4e499c2faaaa4e567ba3ed8deb9a89.1581089797.git.lukas@wunner.de>
References: <988737dbbc4e499c2faaaa4e567ba3ed8deb9a89.1581089797.git.lukas@wunner.de>
Message-ID: <713627a200d9c8fd7cac424d69e98166@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lukas@wunner.de, tglx@linutronix.de, jason@lakedaemon.net,
 nsaenzjulienne@suse.de, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, serge@raspberrypi.org,
 notstina@gmail.com, wahrenst@gmx.net, mbrugger@suse.com,
 kernel@martin.sperl.org, phil@raspberrypi.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_081202_286746_3CFA9356 
X-CRM114-Status: GOOD (  30.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Serge Schneider <serge@raspberrypi.org>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.org>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Kristina Brooks <notstina@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukas,

On 2020-02-07 15:46, Lukas Wunner wrote:
> Customers of our "Revolution Pi" open source PLCs (which are based on
> the Raspberry Pi) have reported random lockups as well as jittery eMMC,
> UART and SPI latency.  We were able to reproduce the lockups in our lab
> and hooked up a JTAG debugger:
> 
> It turns out that the USB controller's interrupt is already enabled 
> when
> the kernel boots.  All interrupts are disabled when the chip comes out
> of power-on reset, according to the spec.  So apparently the bootloader
> enables the interrupt but neglects to disable it before handing over
> control to the kernel.
> 
> The bootloader is a closed source blob provided by the Raspberry Pi
> Foundation.  Development of an alternative open source bootloader was
> begun by Kristina Brooks but it's not fully functional yet.  Usage of
> the blob is thus without alternative for the time being.
> 
> The Raspberry Pi Foundation's downstream kernel has a performance-
> optimized USB driver (which we use on our Revolution Pi products).
> The driver takes advantage of the FIQ fast interrupt.  Because the
> regular USB interrupt was left enabled by the bootloader, both the
> FIQ and the normal interrupt is enabled once the USB driver probes.
> 
> The spec has the following to say on simultaneously enabling the FIQ
> and the normal interrupt of a peripheral:
> 
> "One interrupt source can be selected to be connected to the ARM FIQ
>  input.  An interrupt which is selected as FIQ should have its normal
>  interrupt enable bit cleared.  Otherwise a normal and an FIQ interrupt
>  will be fired at the same time.  Not a good idea!"

Or to spell it out more clearly: Braindead hardware. Really.

>                                   ^^^^^^^^^^^^^^^
> https://www.raspberrypi.org/app/uploads/2012/02/BCM2835-ARM-Peripherals.pdf
> page 110
> 
> On a multicore Raspberry Pi, the Foundation's kernel routes all normal
> interrupts to CPU 0 and the FIQ to CPU 1.  Because both the FIQ and the
> normal interrupt is enabled, a USB interrupt causes CPU 0 to spin in
> bcm2836_chained_handle_irq() until the FIQ on CPU 1 has cleared it.
> Interrupts with a lower priority than USB are starved as long.
> 
> That explains the jittery eMMC, UART and SPI latency:  On one occasion
> I've seen CPU 0 blocked for no less than 2.9 msec.  Basically,
> everything not USB takes a performance hit:  Whereas eMMC throughput
> on a Compute Module 3 remains relatively constant at 23.5 MB/s with
> this commit, it irregularly dips to 23.0 MB/s without this commit.
> 
> The lockups occur when CPU 0 receives a USB interrupt while holding a
> lock which CPU 1 is trying to acquire while the FIQ is temporarily
> disabled on CPU 1.
> 
> I've tested old releases of the Foundation's bootloader as far back as
> 1.20160202-1 and they all leave the USB interrupt enabled.  Still older
> releases fail to boot a contemporary kernel on a Compute Module 1 or 3,
> which are the only Raspberry Pi variants I have at my disposal for
> testing.
> 
> Fix by disabling IRQs left enabled by the bootloader.  Although the
> impact is most pronounced on the Foundation's downstream kernel,
> it seems prudent to apply the fix to the upstream kernel to guard
> against such mistakes in any present and future bootloader.
> 
> An alternative, though more convoluted approach would be to clear the
> IRQD_IRQ_MASKED flag on all interrupts left enabled on boot.  Then the
> first invocation of handle_level_irq() would mask and thereby quiesce
> those interrupts.

Nah, that's terrible. The right thing to do is indeed to mop up the mess
that the bootloader is bound to leave and start with a clean slate.

> 
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Cc: Serge Schneider <serge@raspberrypi.org>
> Cc: Kristina Brooks <notstina@gmail.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/irqchip/irq-bcm2835.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-bcm2835.c 
> b/drivers/irqchip/irq-bcm2835.c
> index 418245d31921..0d9a5a7ebe2c 100644
> --- a/drivers/irqchip/irq-bcm2835.c
> +++ b/drivers/irqchip/irq-bcm2835.c
> @@ -150,6 +150,13 @@ static int __init armctrl_of_init(struct 
> device_node *node,
>  		intc.enable[b] = base + reg_enable[b];
>  		intc.disable[b] = base + reg_disable[b];
> 
> +		irq = readl(intc.enable[b]);

readl_relaxed(), please. irq is not quite the right type either, please 
use a u32.

> +		if (irq) {
> +			writel(irq, intc.disable[b]);

writel_relaxed().

> +			pr_err(FW_BUG "Bootloader left irq enabled: "
> +			       "bank %d irq %*pbl\n", b, IRQS_PER_BANK, &irq);
> +		}
> +
>  		for (i = 0; i < bank_irqs[b]; i++) {
>  			irq = irq_create_mapping(intc.domain, MAKE_HWIRQ(b, i));
>  			BUG_ON(irq <= 0);

Don't you need to do something about the FIQ side as well?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
