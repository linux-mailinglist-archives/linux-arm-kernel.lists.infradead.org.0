Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BB42935
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xByXumKPuTV9Zb0T9Jp2V02JKWtIEx6SNzrtP7czAbM=; b=rzaaBsDQGc1siQ
	jeS0s2EIk9f5QT1euFUrBgV+vO8z4Q5hF12jFY1wiMUy7Lg6SQkWBolMzOLCHqj7vMEUBMxYctUMA
	YhLy2WA/epsSsNXSoAEUWsBWfLwPXJxepM0PZitVtkoJOB6pLjtm/O4JVTeUUxyH4LxBaOeDksI4h
	UkqHuSxLngK5c0TOK2EAokQeDXu2MwCBbgajswvp7w5dk4En8gwRSOwPuRiQYus70fKGE/HjtjIFk
	8WmNzBYV2O6QQbFI6ExE3llXdHEMaQi2ctAwijWPwgPyM/iYh47PXNRqL5dHhjUrMW4hB6TQ428ta
	/GzbyAFcHrTZXOND99nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4HM-0001aN-MR; Wed, 12 Jun 2019 14:31:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4Gy-0001RR-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:30:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F387D2B;
 Wed, 12 Jun 2019 07:30:41 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 753743F557;
 Wed, 12 Jun 2019 07:30:41 -0700 (PDT)
Date: Wed, 12 Jun 2019 15:30:39 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v8 5/6] KVM: arm/arm64: remove pmc->bitmask
Message-ID: <20190612143039.GE49779@e119886-lin.cambridge.arm.com>
References: <20190522153019.18645-1-andrew.murray@arm.com>
 <20190522153019.18645-6-andrew.murray@arm.com>
 <7f84fcac-ee73-d076-f0e3-3b214912daaf@arm.com>
 <20190522162608.GF8268@e119886-lin.cambridge.arm.com>
 <036304c6-d5a8-5b36-48e1-1e919c55fc4c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <036304c6-d5a8-5b36-48e1-1e919c55fc4c@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_073044_723053_13CE92CA 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, christoffer.dall@arm.com,
 james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 01:54:35PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 22/05/2019 17:26, Andrew Murray wrote:
> > On Wed, May 22, 2019 at 05:07:31PM +0100, Marc Zyngier wrote:
> > > On 22/05/2019 16:30, Andrew Murray wrote:
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
> > > >   virt/kvm/arm/pmu.c    | 15 +++++----------
> > > >   2 files changed, 5 insertions(+), 11 deletions(-)
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
> 
> 
> > > > -
> > > > -	if (val & ARMV8_PMU_PMCR_LC) {
> > > > -		pmc = &pmu->pmc[ARMV8_PMU_CYCLE_IDX];
> > > > -		pmc->bitmask = 0xffffffffffffffffUL;
> > > > -	}
> > > >   }
> 
> ...
> 
> > > >   static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
> > > > @@ -420,7 +415,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> > > >   	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> > > >   	/* The initial sample period (overflow count) of an event. */
> > > > -	attr.sample_period = (-counter) & pmc->bitmask;
> > > > +	attr.sample_period = (-counter) & GENMASK(31, 0);
> > > 
> > > Isn't this the one case where the bitmask actually matters? If we're
> > > dealing with the cycle counter, it shouldn't be truncated, right?
> > 
> > Ah yes, that should be conditional on idx as well.
> 
> The mask for Cycle counter also depends on the PMCR.LC field set by the
> guest, isn't it ? So unless we correlate that with the idx, we could be
> passing in wrong results ?

Yes that's right, I misread the description of LC - it's RES1 for AArch64
but of course this doesn't stop a 32 bit host kernel. I'll update this.

Thanks,

Andrew Murray

> 
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
