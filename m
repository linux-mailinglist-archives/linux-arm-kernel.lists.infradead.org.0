Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583F8487A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koZzdXrFPIe7At4uJ+yWP5JIw7qOZdG/FVCaxNTJUdc=; b=HLnLyXbN8laH6S
	Ax5BYZUKO5CX6N4TzBoESKvTCbzy/KdZeVS7YFPcM5w63ra0xQjDS1i4VJI/x9Ix5UZqp8mvvGO8c
	4hiNeta375eLmd8Bcty0GcZzZYuZsmQsdxmmMUvVNniOEoHZrL69Tasa8qdixQe9UFw+aJkOkEGaO
	WVZTO4GbuMsZGTi4TQImJYXQSHq4F1V12ObEd66UtxyOzjd/vVnxm0TY/tozUi0YQ5b5gQ5f6nzaU
	1KYrXmxwdFlcZUgOg4X8Ptv6slVDk2Jgqu0RkAOdid2AaTrXn2QA+j8H0olk24eO58Q8oXt2+Zj4d
	JnAhe2iTiFm8Pw/6uplA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctn9-0001po-Vp; Mon, 17 Jun 2019 15:43:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hctmt-0001pC-GG
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:43:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA9DF28;
 Mon, 17 Jun 2019 08:43:13 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B8813F718;
 Mon, 17 Jun 2019 08:43:13 -0700 (PDT)
Date: Mon, 17 Jun 2019 16:43:11 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v9 4/5] KVM: arm/arm64: remove pmc->bitmask
Message-ID: <20190617154311.GM20984@e119886-lin.cambridge.arm.com>
References: <20190612190450.7085-1-andrew.murray@arm.com>
 <20190612190450.7085-5-andrew.murray@arm.com>
 <6a8e4fdd-d8cf-f3fb-55cd-2d06805b0eb9@arm.com>
 <20190613093957.GG49779@e119886-lin.cambridge.arm.com>
 <5e18d747-1d82-8eed-ef1c-de86c5b3a7e7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e18d747-1d82-8eed-ef1c-de86c5b3a7e7@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_084315_590715_67FCD6C1 
X-CRM114-Status: GOOD (  21.18  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, christoffer.dall@arm.com,
 james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:50:43PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 13/06/2019 10:39, Andrew Murray wrote:
> > On Thu, Jun 13, 2019 at 08:30:51AM +0100, Julien Thierry wrote:
> > > Hi Andrew,
> > > 
> > > On 12/06/2019 20:04, Andrew Murray wrote:
> > > > We currently use pmc->bitmask to determine the width of the pmc - however
> > > > it's superfluous as the pmc index already describes if the pmc is a cycle
> > > > counter or event counter. The architecture clearly describes the widths of
> > > > these counters.
> > > > 
> > > > Let's remove the bitmask to simplify the code.
> > > > 
> > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > ---
> > > >   include/kvm/arm_pmu.h |  1 -
> > > >   virt/kvm/arm/pmu.c    | 19 +++++++++----------
> > > >   2 files changed, 9 insertions(+), 11 deletions(-)
> > > > 
> > > > diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
> > > > index b73f31baca52..2f0e28dc5a9e 100644
> > > > --- a/include/kvm/arm_pmu.h
> > > > +++ b/include/kvm/arm_pmu.h
> > > > @@ -28,7 +28,6 @@
> > > >   struct kvm_pmc {
> > > >   	u8 idx;	/* index into the pmu->pmc array */
> > > >   	struct perf_event *perf_event;
> > > > -	u64 bitmask;
> > > >   };
> > > >   struct kvm_pmu {
> > > > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > > > index ae1e886d4a1a..88ce24ae0b45 100644
> > > > --- a/virt/kvm/arm/pmu.c
> > > > +++ b/virt/kvm/arm/pmu.c
> > > > @@ -47,7 +47,10 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> > > >   		counter += perf_event_read_value(pmc->perf_event, &enabled,
> > > >   						 &running);
> > > > -	return counter & pmc->bitmask;
> > > > +	if (select_idx != ARMV8_PMU_CYCLE_IDX)
> > > > +		counter = lower_32_bits(counter);
> > > 
> > > Shouldn't this depend on PMCR.LC as well? If PMCR.LC is clear we only
> > > want the lower 32bits of the cycle counter.
> > 
> > Yes that's correct. The hunk should look like this:
> > 
> > -       return counter & pmc->bitmask;
> > +       if (!(select_idx == ARMV8_PMU_CYCLE_IDX &&
> > +             __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC))
> > +               counter = lower_32_bits(counter);
> > +
> > +       return counter;
> 
> May be you could add a macro :
> 
> #define vcpu_pmu_counter_is_64bit(vcpu, idx) ?

Yes I think a helper would be useful - though I'd prefer the name
'kvm_pmu_idx_is_long_cycle_counter'. This seems a little clearer as
you could otherwise argue that a chained counter is also 64 bits.

Thanks,

Andrew Murray


> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
