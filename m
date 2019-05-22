Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C912682F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvYbudiT0/UZ7a2ktCqUWEQNeKtxjQNVCCDCgrlE3Vc=; b=c1WP+kp8eDl2Gy
	kN56SpzEiBjMKKSpUtHpQkcXxV07LNLrEcgvskv1A23SGr8N0a6jY1BVUjpqEDHrkD2X7PQPTZKoM
	hBP10wAqbEDyhlosKqQo6wSanEoii6gPeseOvYvG2s6FrLGJRSSbmZaOQviPweUT4LX/d52Mg89Az
	i0qVjcUSl16UMCeKVlT6BMrpdioLHSgKRtWulMOhCM9dAn2Ea2Tf1yYDVVuEPJBkVnmE8LoLf5WXn
	dZbioDNtaUIFPp3JS4L+hXRTS903ctO/8nVDf4SIQFqNoFBaxQ6yhKCqVjXDDvVjvBjaA4sSzIfU0
	PeMkHJ4HHDDz5T5K3n7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTU4K-0004ZZ-Gz; Wed, 22 May 2019 16:26:20 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTU4E-0004Z7-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:26:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06EFF341;
 Wed, 22 May 2019 09:26:11 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93A4B3F5AF;
 Wed, 22 May 2019 09:26:10 -0700 (PDT)
Date: Wed, 22 May 2019 17:26:08 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v8 5/6] KVM: arm/arm64: remove pmc->bitmask
Message-ID: <20190522162608.GF8268@e119886-lin.cambridge.arm.com>
References: <20190522153019.18645-1-andrew.murray@arm.com>
 <20190522153019.18645-6-andrew.murray@arm.com>
 <7f84fcac-ee73-d076-f0e3-3b214912daaf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f84fcac-ee73-d076-f0e3-3b214912daaf@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_092614_126075_BE037D5A 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 05:07:31PM +0100, Marc Zyngier wrote:
> On 22/05/2019 16:30, Andrew Murray wrote:
> > We currently use pmc->bitmask to determine the width of the pmc - however
> > it's superfluous as the pmc index already describes if the pmc is a cycle
> > counter or event counter. The architecture clearly describes the widths of
> > these counters.
> > 
> > Let's remove the bitmask to simplify the code.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  include/kvm/arm_pmu.h |  1 -
> >  virt/kvm/arm/pmu.c    | 15 +++++----------
> >  2 files changed, 5 insertions(+), 11 deletions(-)
> > 
> > diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
> > index b73f31baca52..2f0e28dc5a9e 100644
> > --- a/include/kvm/arm_pmu.h
> > +++ b/include/kvm/arm_pmu.h
> > @@ -28,7 +28,6 @@
> >  struct kvm_pmc {
> >  	u8 idx;	/* index into the pmu->pmc array */
> >  	struct perf_event *perf_event;
> > -	u64 bitmask;
> >  };
> >  
> >  struct kvm_pmu {
> > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > index ae1e886d4a1a..c4e2bc213617 100644
> > --- a/virt/kvm/arm/pmu.c
> > +++ b/virt/kvm/arm/pmu.c
> > @@ -47,7 +47,10 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> >  		counter += perf_event_read_value(pmc->perf_event, &enabled,
> >  						 &running);
> >  
> > -	return counter & pmc->bitmask;
> > +	if (select_idx != ARMV8_PMU_CYCLE_IDX)
> > +		counter = lower_32_bits(counter);
> > +
> > +	return counter;
> >  }
> >  
> >  /**
> > @@ -113,7 +116,6 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
> >  	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
> >  		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
> >  		pmu->pmc[i].idx = i;
> > -		pmu->pmc[i].bitmask = 0xffffffffUL;
> >  	}
> >  }
> >  
> > @@ -348,8 +350,6 @@ void kvm_pmu_software_increment(struct kvm_vcpu *vcpu, u64 val)
> >   */
> >  void kvm_pmu_handle_pmcr(struct kvm_vcpu *vcpu, u64 val)
> >  {
> > -	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > -	struct kvm_pmc *pmc;
> >  	u64 mask;
> >  	int i;
> >  
> > @@ -368,11 +368,6 @@ void kvm_pmu_handle_pmcr(struct kvm_vcpu *vcpu, u64 val)
> >  		for (i = 0; i < ARMV8_PMU_CYCLE_IDX; i++)
> >  			kvm_pmu_set_counter_value(vcpu, i, 0);
> >  	}
> > -
> > -	if (val & ARMV8_PMU_PMCR_LC) {
> > -		pmc = &pmu->pmc[ARMV8_PMU_CYCLE_IDX];
> > -		pmc->bitmask = 0xffffffffffffffffUL;
> > -	}
> >  }
> >  
> >  static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
> > @@ -420,7 +415,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  
> >  	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> >  	/* The initial sample period (overflow count) of an event. */
> > -	attr.sample_period = (-counter) & pmc->bitmask;
> > +	attr.sample_period = (-counter) & GENMASK(31, 0);
> 
> Isn't this the one case where the bitmask actually matters? If we're
> dealing with the cycle counter, it shouldn't be truncated, right?

Ah yes, that should be conditional on idx as well. 

Thanks,

Andrew Murray

> 
> >  
> >  	event = perf_event_create_kernel_counter(&attr, -1, current,
> >  						 kvm_pmu_perf_overflow, pmc);
> > 
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
