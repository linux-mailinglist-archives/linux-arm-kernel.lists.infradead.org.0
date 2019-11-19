Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ED31026D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9euBQ1ybeKngrFlwSnBSjb+yWAn9Fccq8Bs4AUXbjLk=; b=MAG5V1zN+b72Wx
	Zclq9FbKSY7/8NH2q3BOv6nGbvnJA/I5mOHPTqIliDdFSMy/M50/i7+0js6e/bd2rNnOsaYlsYsP4
	6VEU52PfGKpVuJZF6f2rTyoS4cPgOTPQkSeTRAgUMZvjmaNVap3KYtV65Ih4kRV0J6jcFjI1jF7yU
	I/H3oZaXtW06QjCoc8834lv1y9zArrWB0NAYdO7GCgTPM2IlPrpVe2F3HibtLMzfR8NC5NJOkBnL2
	qhVMJU/RMViGCVbv3NQGKy4z0XhF9+zUfx29U+rsMeUQ+aOYNIEuJLACyR97Nc81zEiWCuTVZVbM7
	UUldsHeMOyrZWcogkyyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Yw-0004c7-6m; Tue, 19 Nov 2019 14:33:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4Yl-0004bE-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:32:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E00930E;
 Tue, 19 Nov 2019 06:32:48 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A036D3F6C4;
 Tue, 19 Nov 2019 06:32:47 -0800 (PST)
Date: Tue, 19 Nov 2019 14:32:43 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/3] kvm: arm: VGIC: Scan all IRQs when interrupt group
 gets enabled
Message-ID: <20191119143243.28378f8d@donnerap.cambridge.arm.com>
In-Reply-To: <4245ee82a03c9403f8e4ff815f032709@www.loen.fr>
References: <20191108174952.740-1-andre.przywara@arm.com>
 <20191108174952.740-3-andre.przywara@arm.com>
 <20191110142914.6ffdfdfa@why>
 <20191112093658.08f248c5@donnerap.cambridge.arm.com>
 <9ddab86ca3959acbb8b7aad24be5f1ad@www.loen.fr>
 <20191118141216.352a3a0a@donnerap.cambridge.arm.com>
 <4245ee82a03c9403f8e4ff815f032709@www.loen.fr>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_063251_495258_EB4AE03D 
X-CRM114-Status: GOOD (  29.22  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 09:40:40 +0000
Marc Zyngier <maz@kernel.org> wrote:

Hi Marc,

[ ... ]

> >>
> >> I think that could work. One queue for each group, holding pending,
> >> enabled, group-disabled interrupts. Pending, disabled interrupts are
> >> not queued anywhere, just like today.
> >>
> >> The only snag is per-cpu interrupts. On which queue do they live?
> >> Do you have per-CPU queues? or a global one?  
> >
> > Yes, the idea was to have a per-VCPU "grp_dis_list" in addition to
> > the ap_list, reusing the ap_list list_head in struct vgic_irq.
> > vgic_queue_irq_unlock() would put them into *one* of those two lists,
> > depending on their group-enabled status. When a group gets enabled, 
> > we
> > just have to transfer the IRQs from grp_dis_list to ap_list.
> >
> > But fleshing this out I was wondering if it couldn't be much simpler:
> > We ignore the group-enabled status most of the time, except in
> > vgic_flush_lr_state(). So group-disabled IRQs *would go* to the
> > ap_list (when they are otherwise pending|active and enabled), but
> > would be skipped when eventually populating the LRs.
> > vgic_prune_ap_list would also not touch them, so they would stay in
> > the ap_list (unless removed for other reasons).
> >
> > That might raise some eyebrows (because we keep IRQs in the ap_list
> > which are not ready), but would require only minimal changes and 
> > avoid
> > all kind of nasty/racy code to be added. The only downside I see is
> > that the ap_list could potentially be much longer, but we could 
> > change
> > the sorting algorithm if needed to keep group-disabled IRQs at the
> > end, at which point it wouldn't really matter.
> >
> > Do you see any problem with that approach? Alex seemed to remember
> > that you had an objection against a very similar (if not identical)
> > idea before.  
> 
> My main worry with this is that it causes overhead on the fast path.
> Disabled interrupts (for whichever reason they are disabled) shouldn't
> have to be evaluated on the fast path.
> 
> Take for example kvm_vgic_vcpu_pending_irq(), which we evaluate pretty
> often (each time a vcpu wakes up). Do we want to scan a bunch of
> group-disabled interrupts there? No.
> 
> At the end of the day, what we're looking at is a list of disabled,
> pending interrupts. They can be disabled for multiple reasons
> (group is disabled, or interrupt itself is disabled). But they should
> *not* end-up on the AP list, because that list has a precise semantic.
> 
> Your suggestion to add the group-disabled interrupts to the AP list
> may be a cool hack, but it is mostly a hack that opens the whole thing
> to a bunch of corner cases. Let's not do that.

I understand what you are saying, and I had similar gripes. It was just too tempting to not give it a try ;-)
 
> >> >> And if a group has
> >> >> been disabled, how do you retire these interrupts from the AP   
> >> list?  
> >> >
> >> > This is done above: we kick the respective VCPU and rely on
> >> > vgic_prune_ap_list() to remove them (that uses   
> >> vgic_target_oracle(),  
> >> > which in turn checks vgic_irq_is_grp_enabled()).  
> >>
> >> But what if the CPU isn't running? Kicking it isn't going to do 
> >> much,
> >> is it?  
> >
> > Not directly, but in either approach that would be handled similar to
> > disabled interrupts: once the VCPU runs, they would *not* end up in
> > LRs (because we check the oracle before), and would be cleaned up in
> > prune() once the guest exits (at least for the original approach).  
> 
> I lost track of the original approach already :-/
> 
> Try and build the above suggestion. It should follow the same flow as
> the enabled, group-enabled interrupts, just with a different list.

OK, will do.

Thanks!

Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
