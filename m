Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9750F69388
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTShwk7vSoWilIQcw6atI6xThfOdCjSQ7Nstzu/rDC4=; b=lJdwUfpYTX6/xh
	OiXq+LM0ZbGkjYJE5qWqIEj1hINWzTuXfJtxnN0o9HpJreRJXRq6VB5S1msUAO47eIFcW0FnNLV9R
	DZpGNdbM537BuUcScXVMAx+3Ehb1TeZOvTkxV8EVcqtekrHNGDVt2SwZMWVrjSuan7Pu5iSvj/+0P
	LDNxJ+BewKb3rxaMX6KpOY0gfJG6DU9mRhEzA0GVhGXP/k3PToGDOPhy+ztD0k1lvKxB/3dwk6E5+
	PReicypL/0/rxhWJ0aYHnX8cmrQoRzZVIiISZHfceKKOsy/huOvT+u5WUf9NLdopGO4po0PESFSnF
	kK6/oeSlK+SyU1+QZ7Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2Dv-0001BA-94; Mon, 15 Jul 2019 14:45:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2Di-0001AG-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:44:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90D3C28;
 Mon, 15 Jul 2019 07:44:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 714D23F59C;
 Mon, 15 Jul 2019 07:44:48 -0700 (PDT)
Date: Mon, 15 Jul 2019 15:44:46 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [RFC] Add virtual SDEI support in qemu
Message-ID: <20190715144446.GK56232@lakrids.cambridge.arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
 <20190715134848.GI56232@lakrids.cambridge.arm.com>
 <4daefb19-6c15-f82c-31e9-1ae035d45bd5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4daefb19-6c15-f82c-31e9-1ae035d45bd5@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_074450_762619_CCEB692C 
X-CRM114-Status: GOOD (  20.44  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, qemu-devel@nongnu.org,
 Dave Martin <Dave.Martin@arm.com>, qemu-arm@nongnu.org,
 Guoheyi <guoheyi@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 03:26:39PM +0100, James Morse wrote:
> On 15/07/2019 14:48, Mark Rutland wrote:
> > On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
> >> One option (suggested to me by James Morse) would be to allow userspace
> >> to disable in the in-kernel PSCI implementation and provide its own
> >> PSCI to the guest via SMC -- in which case userspace that wants to
> >> implement SDEI would have to implement PSCI as well.
> > 
> > I think this would be the best approach, since it puts userspace in
> > charge of everything.
> > 
> > However, this interacts poorly with FW-based mitigations that we
> > implement in hyp. I suspect we'd probably need a mechanism to delegate
> > that responsibility back to the kernel, and figure out if that has any
> > interaction with thigns that got punted to userspace...
> 
> This has come up before:
> https://lore.kernel.org/r/59C139D0.3040507@arm.com
> 
> I agree Qemu should opt-in to this, it needs to be a feature that is enabled.
> 
> I had an early version of something like this for testing SDEI before
> there was firmware available. The review feedback from Christoffer was
> that it should include HVC and SMC, their immediates, and shouldn't be
> tied to SMC-CC ranges.
> 
> I think this should be a catch-all as Heyi describes to deliver
> 'unhandled SMC/HVC' to user-space as hypercall exits. We should
> include the immediate in the struct.
> 
> We can allow Qemu to disable the in-kernel PSCI implementation, which
> would let it be done in user-space via this catch-all mechanism. (PSCI
> in user-space has come up on another thread recently). The in-kernel
> PSCI needs to be default-on for backwards compatibility.
> 
> As Mark points out, the piece that's left is the 'arch workaround'
> stuff. We always need to handle these in the kernel. I don't think
> these should be routed-back, they should be un-obtainable by
> user-space.

Sure; I meant that those should be handled in the kernel rather than
going to host userspace and back.

I was suggesting was that userspace would opt into taking ownership of
all HVC calls, then explicitly opt-in to the kernel handling specific
(sets of) calls.

There are probably issues with that, but I suspect defining "all
undandled calls" will be problematic otherwise.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
