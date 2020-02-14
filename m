Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8627B15D69C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 12:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvyDzzW371t0DpE2veL54tlrIXl/dd9HsHtTBRMdJxI=; b=DbNZeZWISN1Lx3
	8Vn2TYyg/s/hMNjnnDqDpE3PIlW7hIUE+1JaPpxMe7WPaABq4v6IPhS3sR8pLYBKKemhkHF8Q32lx
	nPhGpdxOXgVC4shQygxnL+BxfuUBByU0qT7yKlDIlUOxJrWmVhMoq2Kd5KpCHVr872NmceJIcAyCD
	h5OvNnaUnrcKqO2TUCJNnLuvpR5KYhiSsO1hrrfLIn46BkD6e9HN4qseEyg4/GDn5RByYznLBFnnL
	6waJ5RXbL+FG+c5feOCIRhOuel0crZldE++yAQruSiSR7bggRpDl17JnTZtec3Ni0JTtBVTgVwRA7
	PyLjYfqofPZBW6+tOvoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ZGx-0004Fr-Pu; Fri, 14 Feb 2020 11:36:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ZGo-0004F9-Ej
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 11:36:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A64C01FB;
 Fri, 14 Feb 2020 03:36:24 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A47E93F68F;
 Fri, 14 Feb 2020 03:36:23 -0800 (PST)
Date: Fri, 14 Feb 2020 11:36:07 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] kvm: arm: VGIC: Fix interrupt group enablement
Message-ID: <20200214113607.39854c81@donnerap.cambridge.arm.com>
In-Reply-To: <e2426986ebc9be4e14eb99028b28a43e@www.loen.fr>
References: <20191122185142.65477-1-andre.przywara@arm.com>
 <e2426986ebc9be4e14eb99028b28a43e@www.loen.fr>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_033630_537511_74776971 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 10:55:01 +0000
Marc Zyngier <maz@kernel.org> wrote:

Hi Marc,

dug this out of my inbox, sorry for warming this up.

> On 2019-11-22 18:51, Andre Przywara wrote:
> > Hi Marc,
> >
> > this is still a bit rough, and only briefly tested, but I wanted to
> > hear your opinion on the general approach (using a second list in
> > addition to the ap_list). Some ugly bits come from the fact that the
> > two lists are not that different, so we have to consider both of them
> > at times. This is what I wanted to avoid with just one list that gets
> > filtered on the fly.
> > Or I am just stupid and don't see how it can be done properly ;-)  
> 
> I don't know about that, but I think there is a better way.
> 
> You have essentially two sets of pending interrupts:
> 
> 1) those that are enabled and group-enabled, that end up in the AP list
> 2) those that are either disabled and/or group-disabled
> 
> Today, (2) are not on any list.

For a reason: because we don't really care about them. And so far they would only become interesting on an *individual* interrupt base, and our VGIC routines can deal very well with that.

> What I'm suggesting is that we create
> a list for these interrupts that cannot be forwarded.

So the problem with that is that a list would need a list lock, and this is where things get hairy:
- Either we introduce a separate disabled_list lock, adding to the nightmare of lock hierarchy we already have. I don't think that's really justifiable just because of group0 IRQs.
- We piggy-back on an existing lock, like the ap_list_lock. The problem with that is that vgic_queue_irq_unlock takes and drops that lock, so we can't just iterate over this disabled list while holding that lock, and feed each IRQ to vgic_queue_irq_unlock() easily.
One solution I was thinking about was something like:
while (!list_empty(disabled_list)) {
	spin_lock(ap_list_lock);
	irq = remove_first_entry(disabled_list);
	spin_unlock(ap_list_lock);

	lock_irq(irq);
	/* re-check? */
	vgic_queue_irq_unlock(irq);
}

Does that sound feasible? It's not really efficient nor nice, but I am not sure we care so much about this since we assume group enablement is rather rare.

Cheers,
Andre

> Then enabling an interrupt or a group is a matter of moving pending
> interrupts from one list to another. And I think most of the logic
> can be hidden in vgic_queue_irq_unlock().
> 
>          M.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
