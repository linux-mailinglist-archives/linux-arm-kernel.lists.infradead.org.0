Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7DF6A42F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFQVlcSe0X8yfY8dZOZ4HzlFFk2mZIJQxRwO6Vrt2CI=; b=WxxhOTRJlanaBo
	039/MRRf+Pn1cFZjonPjE/TM7xabJyF28mo2b39EdxTV9NLbFDKpQCrAbGQL8q51YsmMaJZu9cW1o
	2AUOwtFepQ/4J0RYP0xw836pLbyhNpy2dAkWduNh8ebn4PqcD7XL6mTYeav1EopDSEst+pF2UOnjq
	p0b28+rD3brgDboOdhhUGa7N1M1RMFLWiKA35wLYSO4eBcTt4hqi+fYa9M44Ukyvt3s0J7uv5zKCo
	CC20tPP+Jn9AwsHjYCxT8t3AWUyLzmeJvjSiVQjA/xckKCcN+5l9uca1/twaSIRHQEp8XpaS4NIBx
	zey8aPaKyMjCyI9tOjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ8s-0001F3-FU; Tue, 16 Jul 2019 08:48:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ7b-0000YM-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:47:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13D242B;
 Tue, 16 Jul 2019 01:47:38 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E94343F59C;
 Tue, 16 Jul 2019 01:47:36 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:47:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC] Add virtual SDEI support in qemu
Message-ID: <20190716084734.GL2790@e103592.cambridge.arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
 <20190715134848.GI56232@lakrids.cambridge.arm.com>
 <4daefb19-6c15-f82c-31e9-1ae035d45bd5@arm.com>
 <20190715144446.GK56232@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715144446.GK56232@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014739_436683_CD4E5826 
X-CRM114-Status: GOOD (  22.51  )
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
 qemu-arm@nongnu.org, James Morse <james.morse@arm.com>,
 Guoheyi <guoheyi@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 03:44:46PM +0100, Mark Rutland wrote:
> On Mon, Jul 15, 2019 at 03:26:39PM +0100, James Morse wrote:
> > On 15/07/2019 14:48, Mark Rutland wrote:
> > > On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
> > >> One option (suggested to me by James Morse) would be to allow userspace
> > >> to disable in the in-kernel PSCI implementation and provide its own
> > >> PSCI to the guest via SMC -- in which case userspace that wants to
> > >> implement SDEI would have to implement PSCI as well.
> > > 
> > > I think this would be the best approach, since it puts userspace in
> > > charge of everything.
> > > 
> > > However, this interacts poorly with FW-based mitigations that we
> > > implement in hyp. I suspect we'd probably need a mechanism to delegate
> > > that responsibility back to the kernel, and figure out if that has any
> > > interaction with thigns that got punted to userspace...
> > 
> > This has come up before:
> > https://lore.kernel.org/r/59C139D0.3040507@arm.com
> > 
> > I agree Qemu should opt-in to this, it needs to be a feature that is enabled.
> > 
> > I had an early version of something like this for testing SDEI before
> > there was firmware available. The review feedback from Christoffer was
> > that it should include HVC and SMC, their immediates, and shouldn't be
> > tied to SMC-CC ranges.
> > 
> > I think this should be a catch-all as Heyi describes to deliver
> > 'unhandled SMC/HVC' to user-space as hypercall exits. We should
> > include the immediate in the struct.
> > 
> > We can allow Qemu to disable the in-kernel PSCI implementation, which
> > would let it be done in user-space via this catch-all mechanism. (PSCI
> > in user-space has come up on another thread recently). The in-kernel
> > PSCI needs to be default-on for backwards compatibility.
> > 
> > As Mark points out, the piece that's left is the 'arch workaround'
> > stuff. We always need to handle these in the kernel. I don't think
> > these should be routed-back, they should be un-obtainable by
> > user-space.
> 
> Sure; I meant that those should be handled in the kernel rather than
> going to host userspace and back.
> 
> I was suggesting was that userspace would opt into taking ownership of
> all HVC calls, then explicitly opt-in to the kernel handling specific
> (sets of) calls.

The most logical thing to do would be to have userspace handle all
calls, but add an ioctl to forward a call to KVM.  This puts userspace
in charge of the SMCCC interface, with KVM handling only those things
that userspace can't do for itself, on request.

If the performance overhead is unacceptable for certain calls, we could
have a way to delegate specific function IDs to KVM.  I suspect that
will be the exception rather than the rule.

> There are probably issues with that, but I suspect defining "all
> undandled calls" will be problematic otherwise.

Agreed: the set of calls not handled by KVM will mutate over time.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
