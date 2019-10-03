Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9266C99EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WevCi9rf4FYrEYtSlfacBf2Fzl8w7J96un1x2NUkk+M=; b=uFt0cIWbCuZK7/
	ldjz4Lon/MYFJ1Jj2LJYaswJN97AfU42mW9Qp5Gt4xz2bxOQqz+EAxot65pva6x2Dkr+O9yAQlrll
	74fz8i0vUNqkmJwT1x2ZN0HRfMk8SQpVMNg1LiwnIXEECpsbnjpCI6cCcnmIXGEWA4v1kx1On8TVv
	jRoqoh+TuoXkAaa0y18NJzeKWPdb0u6t0MzUgMEQ0D+RowMq6rhA0cZ778vTsclmx3u8zKq3PgYfE
	5AUivhnWsHQeCyjhVjrOleLeuLVKrhjG/rHIxCMIPMm5V3EjQpshzoZGUCNhQi3hhjELg4nnigP9H
	agoNwsYZl5D5+xYZz0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwV6-0001yg-Am; Thu, 03 Oct 2019 08:30:16 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwUr-0001w9-JM; Thu, 03 Oct 2019 08:30:03 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFwUh-0004Iy-Pa; Thu, 03 Oct 2019 10:29:51 +0200
Date: Thu, 3 Oct 2019 09:29:50 +0100
From: Marc Zyngier <maz@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 5/7] irqchip/irq-bcm2836: Add support for the 7211
 interrupt controller
Message-ID: <20191003092950.04440d74@why>
In-Reply-To: <72f07d2e-b070-301a-6a5d-8e89d32adcd7@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
 <20191001224842.9382-6-f.fainelli@gmail.com>
 <20191002134041.5a181d96@why>
 <72f07d2e-b070-301a-6a5d-8e89d32adcd7@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, eric@anholt.net, wahrenst@gmx.net,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_013001_786371_334E67D8 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX
 ARM ARCHITE..." <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2 Oct 2019 10:06:31 -0700
Florian Fainelli <f.fainelli@gmail.com> wrote:

> On 10/2/19 5:40 AM, Marc Zyngier wrote:
> > On Tue,  1 Oct 2019 15:48:40 -0700
> > Florian Fainelli <f.fainelli@gmail.com> wrote:
> >   
> >> The root interrupt controller on 7211 is about identical to the one
> >> existing on BCM2836, except that the SMP cross call are done through the
> >> standard ARM GIC-400 interrupt controller. This interrupt controller is
> >> used for side band wake-up signals though.  
> > 
> > I don't fully grasp how this thing works.
> > 
> > If the 7211 interrupt controller is root and the GIC is used for SGIs,
> > this means that the GIC outputs (IRQ/FIQ/VIRQ/VFIQ, times eight) are
> > connected to individual inputs to the 7211 controller. Seems totally
> > braindead, and unexpectedly so.
> > 
> > If the GIC is root and the 7211 outputs into the GIC all of its
> > interrupts as a secondary irqchip, it would at least match an existing
> > (and pretty bad) pattern.
> > 
> > So which one of the two is it?  
> 
> The nominal configuration on 7211 is to have all interrupts go through
> the ARM GIC. It is possible however, to fallback to the legacy 2836 mode
> whereby the root interrupt controller for peripheral interrupts is this
> ARMCTL IC. There is a mux that the firmware can control which will
> dictate which root interrupt controller is used for peripherals.
> 
> I have used this mostly for silicon verification and since those are
> fairly harmless patches, just decided to send them out to avoid
> maintaining them out of tree.

This doesn't really answer my question. What I understand is that your
system is laid out like this:

     DEVICES -> ARMCTL -> CPUs
                  ^
                 GIC

How are the various GIC outputs mapped into the ARMCTL? It has 4 of
them per CPU (IRQ/FIQ + vIRQ/vFIQ), which the ARMCTL must somehow map
to its own interrupts, specially if you want to signal IPIs using the
GIC's SGIs (to which you hint in the commit log).

There is a link I'm missing here.

> We have a plan to use those as an "alternate" interrupt domain for low
> power modes and use the fact that peripheral interrupts could be active
> in both domains (GIC and ARMCTRL IC) to help support configuring and
> identifying wake-up sources fro m within Linux.

That's usually done with a hierarchy, where the ARMCTL IC would be a
child of the GIC and see all interrupt configuration calls before they
reach the GIC driver. We have plenty of examples in the tree already.

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
