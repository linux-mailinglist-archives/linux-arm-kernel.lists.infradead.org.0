Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B174F7BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP7wcl/1HBJ/1BXllrk7wK2a90Vu9XUuLIcWFMSM/74=; b=KPHw0Gs+MOv+VO
	YgAlC6dQifSvYFqbyrfQAtuZyv4kZ4GzFl2DcEfltdWqc3izYnarmsj91GQ1si9kuHX5z9CrmG6ni
	BmzgUAyl1glA+la2f5wrIOL/OzksKf2cb1DbLKetJ11vcKqulc/vE8K4/rL7OT3znZWz+iynkCusF
	m4sQU+tRgV6ILMJGJI6kqoaMxYJXoTB1QaKI8K9mT8NQ+FjikHn4/XRlmxb6uxAXRGlm4i7V+cXA5
	2ZpJPAgW/glTMO4GKuVSA1jvY+7EqEaSyyiWv/tWq4N1njiJhAA8sLQZeLdM6ij9iCHt+jeJf3Io0
	3BR1CXiO/KPgdFCy9Aow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekTT-0004gW-TQ; Sat, 22 Jun 2019 18:10:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekTI-0004fv-2O
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:10:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1hekT8-0005Xe-EE; Sat, 22 Jun 2019 20:10:30 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>)
 id 1hekT7-0003ug-1g; Sat, 22 Jun 2019 20:10:29 +0200
Date: Sat, 22 Jun 2019 20:10:29 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
Message-ID: <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
Mail-Followup-To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Vinod Koul <vinod.koul@intel.com>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 19:59:46 up 36 days, 17 min, 59 users,  load average: 0.04, 0.06,
 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_111040_116947_A1365204 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 05:53:18PM +0100, Russell King - ARM Linux admin wrote:
> Old code:
> 
> -       while (!(ret = readl_relaxed(sdma->regs + SDMA_H_INTR) & 1)) {
> -               if (timeout-- <= 0)
> -                       break;
> -               udelay(1);
> -       }
> 
> So, while bit 0 is _clear_ the loop continues to poll.
> 
> 
> New code:
> 
> +       ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
> +                                               reg, !(reg & 1), 1, 500);
> 
> Doesn't really tell us what the termination condition is (because of
> the obfuscation taking away the details), but if we dig into the
> macro maze:
> 
> #define readl_relaxed_poll_timeout_atomic(addr, val, cond, delay_us, timeout_us) \
>         readx_poll_timeout_atomic(readl_relaxed, addr, val, cond, delay_us, timeout_us)
> 
> #define readx_poll_timeout_atomic(op, addr, val, cond, delay_us, timeout_us) \
> ({ \
>         u64 __timeout_us = (timeout_us); \
>         unsigned long __delay_us = (delay_us); \
>         ktime_t __timeout = ktime_add_us(ktime_get(), __timeout_us); \
>         for (;;) { \
>                 (val) = op(addr); \
>                 if (cond) \
>                         break; \
> 
> "cond" is passed in to here unmodified, so this becomes:
> 
> 	for (;;) {
> 		reg = readl_relaxed(sdma->regs + SDMA_H_STATSTOP);
> 		if (!(reg & 1))
> 			break;
> 
> So, if bit 0 of this register is clear, we terminate the loop.
> 
> Seems to me like this is a great illustration why using a helper
> _introduces_ bugs, because it hides the detail about what the exit
> condition for the embedded loop actually is, and leads to this kind
> of error.
> 
> In any case, the conversion is obviously incorrect.
> 
> I occasionally see the "Timeout waiting for CH0 ready" error during
> boot on a cbi4, which, given the above, means that we did end up
> seeing bit 1 set (so according to the old code, we waited
> successfully.)

The old code was polling SDMA_H_INTR so it waited for the bit to be set.
The new code (as documented in the commit message) polls SDMA_H_STATSTOP
instead.
I believe this register is called SDMAARM_STOP_STAT in the reference
manual. And the documentation states: "Reading this register yields the
current state of the HE[i] bits".
And from the documentation of the SDMA "DONE" instruction:
"Clear HE bit for the current channel, send an interrupt to the Arm
platform for the current channel and reschedule."

My interpretation of this is, that waiting for the bit in SDMA_H_STATSTOP
to become zero has the same effect as waiting for the bit in SDMA_H_INTR to
be set. Or am I missing something?

Michael

> Looking at the date of the commit, this is almost a three year old
> bug.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
