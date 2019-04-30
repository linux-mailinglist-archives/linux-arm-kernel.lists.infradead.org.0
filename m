Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58322F389
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33y/8i1+kWpqbD3MZX9W8GXKGu7HJRPUdtqL7sLX14E=; b=An+RYGarQjss2C
	0SXUryu76cv6IM04BtHTsA7fQL/IHwC+np1BhEqYuLhnXT02UibUhpBVIA86s6L++vPrKSU0XiKlU
	OD+92+ds/EzyejMkSySM5Qipvmk/+S9mky5F6qO4rX3P8REnR1q7HstwdEGrPQ9DeT8Yv965RQSmE
	r+Cb5u5TabdiO/JiIbPe5So4yr/CSDgxz01FxfNHslA3upJny1GmfQdp88UURjSFNkNJesj41QGva
	GVg4do4gSEikiAXkT8MMqBeGYOLqdSKnGPe/vCgv2jRAN9GAYTDATmwcF866+avGEnkMtOXwDXnUM
	K3LzNu8bfnGu0SUqq/7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPTZ-0005Io-NI; Tue, 30 Apr 2019 09:55:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPTR-0005IQ-Pa
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:54:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0429380D;
 Tue, 30 Apr 2019 02:54:53 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FC7B3F5C1;
 Tue, 30 Apr 2019 02:54:52 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:54:50 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v13 6/8] arm64: KVM: Enable VHE support for :G/:H perf
 event modifiers
Message-ID: <20190430095450.GF22493@e119886-lin.cambridge.arm.com>
References: <20190409192217.23459-1-andrew.murray@arm.com>
 <20190409192217.23459-7-andrew.murray@arm.com>
 <2bbd0c72-3f51-f942-d6a2-478db940445f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bbd0c72-3f51-f942-d6a2-478db940445f@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_025453_843156_444B72CA 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, christoffer.dall@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 02:43:36PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 09/04/2019 20:22, Andrew Murray wrote:
> > With VHE different exception levels are used between the host (EL2) and
> > guest (EL1) with a shared exception level for userpace (EL0). We can take
> > advantage of this and use the PMU's exception level filtering to avoid
> > enabling/disabling counters in the world-switch code. Instead we just
> 
> s/Instead// ?
> 
> > modify the counter type to include or exclude EL0 at vcpu_{load,put} time.
> 
> 
> > 
> > We also ensure that trapped PMU system register writes do not re-enable
> > EL0 when reconfiguring the backing perf events.
> > 
> > This approach completely avoids blackout windows seen with !VHE.
> > 
> > Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Acked-by: Will Deacon <will.deacon@arm.com>
> 
> ....
> 
> > +/*
> > + * On VHE ensure that only guest events have EL0 counting enabled
> > + */
> > +void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu)
> > +{
> > +	struct kvm_cpu_context *host_ctxt;
> > +	struct kvm_host_data *host;
> > +	u32 events_guest, events_host;
> > +
> > +	if (!has_vhe())
> > +		return;
> > +
> > +	host_ctxt = vcpu->arch.host_cpu_context;
> > +	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
> > +	events_guest = host->pmu_events.events_guest;
> > +	events_host = host->pmu_events.events_host;
> > +
> > +	kvm_vcpu_pmu_enable_el0(events_guest);
> > +	kvm_vcpu_pmu_disable_el0(events_host);
> > +}
> > +
> > +/*
> > + * On VHE ensure that only guest host have EL0 counting enabled
> 
> nit: s/guest/host/host events/
> 
> > + */
> > +void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu)
> > +{
> > +	struct kvm_cpu_context *host_ctxt;
> > +	struct kvm_host_data *host;
> > +	u32 events_guest, events_host;
> > +
> > +	if (!has_vhe())
> > +		return;
> > +
> > +	host_ctxt = vcpu->arch.host_cpu_context;
> > +	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
> > +	events_guest = host->pmu_events.events_guest;
> > +	events_host = host->pmu_events.events_host;
> > +
> > +	kvm_vcpu_pmu_enable_el0(events_host);
> > +	kvm_vcpu_pmu_disable_el0(events_guest);
> > +}
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 539feecda5b8..c7fa47ad2387 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -695,6 +695,7 @@ static bool access_pmcr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> >   		val |= p->regval & ARMV8_PMU_PMCR_MASK;
> >   		__vcpu_sys_reg(vcpu, PMCR_EL0) = val;
> >   		kvm_pmu_handle_pmcr(vcpu, val);
> > +		kvm_vcpu_pmu_restore_guest(vcpu);
> 
> nit: I am not sure if we need to do this for PMCR accesses ? Unless
> we have modified some changes to the events (e.g, like the two instances
> below). Or am I missing something here ?

Thanks for the review.

The reason is that PMCR, via the E bit, can lead to kvm_pmu_handle_pmcr
calling kvm_pmu_enable_counter and perf_event_enable. If I recall correctly,
perf_event_enable could lead to armv8pmu_enable_event which may rewrite
config_base. However in this context (trap) we stay in the guest and may
not call kvm_vcpu_pmu_restore_{guest,host} for a while - thus the EL0 enable
bits of the underlying event may be incorrect (for example when exclude_host
is set we exclude EL0 from config_base - however as we are in the guest we
need it to be included!).

Thanks,

Andrew Murray

> 
> Otherwise:
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
