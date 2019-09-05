Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6848CAA2D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20Bdf+D70AaAWjfySj2UjkQyLhE8DnzgSvQ0a4y+is4=; b=tqYCFgqr3+d5Am
	MUXxcqXNIdG/fBT8a9yxHHKG5LkTbHpmJlxmMTYHvGADr2ZO9MNmNP/N3jO/k3D+d/nsPuYt70j3z
	QkeOxC7urf/BEiH4D7zGeUDEA7Jk4+doNhL66yRjmC6xIVqN1n5TyYI0StTpgfJbE2oileYTu9PDZ
	4bJRcvpUVEyUD9UMChZHYkpqUYaoxtH9gvtHRwXc8BqgIw2vG3KtsebQQGaYSULgQAX6nHxrX3Pra
	d2oaT/f/KdfloiwSG08dMQfSlP4Jv67kjDIIR1ZxMRS7PSUBZoJab3yit5UR6CfrS8NNucLcZS+Z+
	S5nRb1bkPHLjNoycqhzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qh4-0005Ve-O6; Thu, 05 Sep 2019 12:16:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qgr-0005V5-5D
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 12:16:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A3E128;
 Thu,  5 Sep 2019 05:16:40 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2EA823F718;
 Thu,  5 Sep 2019 05:16:40 -0700 (PDT)
Date: Thu, 5 Sep 2019 14:16:38 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190905121638.GD4320@e113682-lin.lund.arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <20190905092039.GG32415@stefanha-x1.localdomain>
 <561eae08-c5f1-9543-275c-0da0a85cd7df@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <561eae08-c5f1-9543-275c-0da0a85cd7df@gmx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_051641_284449_13A2C0F4 
X-CRM114-Status: GOOD (  28.85  )
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
Cc: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Hajnoczi <stefanha@redhat.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heinrich,

On Thu, Sep 05, 2019 at 02:01:36PM +0200, Heinrich Schuchardt wrote:
> On 9/5/19 11:20 AM, Stefan Hajnoczi wrote:
> > On Wed, Sep 04, 2019 at 08:07:36PM +0200, Heinrich Schuchardt wrote:
> > > If an application tries to access memory that is not mapped, an error
> > > ENOSYS, "load/store instruction decoding not implemented" may occur.
> > > QEMU will hang with a register dump.
> > > 
> > > Instead create a data abort that can be handled gracefully by the
> > > application running in the virtual environment.
> > > 
> > > Now the virtual machine can react to the event in the most appropriate
> > > way - by recovering, by writing an informative log, or by rebooting.
> > > 
> > > Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> > > ---
> > >   virt/kvm/arm/mmio.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> > > index a8a6a0c883f1..0cbed7d6a0f4 100644
> > > --- a/virt/kvm/arm/mmio.c
> > > +++ b/virt/kvm/arm/mmio.c
> > > @@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > >   		if (ret)
> > >   			return ret;
> > >   	} else {
> > > -		kvm_err("load/store instruction decoding not implemented\n");
> > > -		return -ENOSYS;
> > > +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> > > +		return 1;
> > 
> > I see this more as a temporary debugging hack than something to merge.
> > 
> > It sounds like in your case the guest environment provided good
> > debugging information and you preferred it over debugging this from the
> > host side.  That's fine, but allowing the guest to continue running in
> > the general case makes it much harder to track down the root cause of a
> > problem because many guest CPU instructions may be executed after the
> > original problem occurs.  Other guest software may fail silently in
> > weird ways.  IMO it's best to fail early.
> > 
> > Stefan
> > 
> 
> As virtual machine are ubiquitous, expect also mission critical system
> to run on them. At development time halting a machine may be a good
> idea. In production this is often the worst solution. Rebooting may be
> essential for survival.
> 
> For an anecdotal example see:
> https://www.hq.nasa.gov/alsj/a11/a11.1201-pa.html
> 
> I am convinced that leaving it to the guest to decide how to react is
> the best choice.
> 
Maintaining strong adherence to the architecture is equally important,
and I'm sure we can find anecdotes to support how not doing the
expected, can also lead to disastrous outcomes.

Have you had a look at the suggested patch I sent?  The idea is that we
can preserve existing legacy ABI, allow for a better debugging
experience, allow userspace to do emulation if it so wishes, and provide
a better error message if userspace doesn't handle this properly.

One thing we could change from my proposed patch would be to have KVM
inject the access as an external abort if the target address also
doesn't hit an MMIO device, which is by far the common scenario reported
here on the list.

Hopefully, a mission critical deployment based on KVM/Arm (scary as that
sounds), would use a recent and patched VMM (QEMU) that either causes
the external abort, or reboots the VM, as per the configuration of the
particular system in question.


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
