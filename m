Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6433A143C09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qGT1soB5ylJJrn3SZeI/4PUego5z++V5P0Tfm/riXc=; b=eirI+mka+49o6D
	jZXTZQenrnJSNc+L1kY/r1XSH5YTX19UkKEYpLRjMDOfUfRPRZj66pVhj8OUKOkSDci7sKmp7C16+
	azwfIjX5/mLK760FJCxNsdaJZ4DjY52TzyJqcKLMFXYxDnJQyQ/gY4g+Y4z4tj+7K0Z4I5wU6KrfC
	6+2Oifqlw3f8LAOLVYBNnFNXa92QqxUYEP8LHHKcS78nmzE0b8d9xKbUNE7pyxxZJinJ5Um9bzueY
	Xg660xD78iLXcdkDzSmJKBtkH7B0BwCHtn1Diw5Sr+X8U6SJCZq17aajoVOS+W20esOHnCXq/Or1q
	n8eKJnX/cBtwqL9GbBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itri5-0006Av-Kj; Tue, 21 Jan 2020 11:28:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrhq-000600-1K
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:28:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00AD01FB;
 Tue, 21 Jan 2020 03:28:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 684913F6C4;
 Tue, 21 Jan 2020 03:28:24 -0800 (PST)
Date: Tue, 21 Jan 2020 11:28:22 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 2/3] KVM: arm64: limit PMU version to ARMv8.4
Message-ID: <20200121112822.GC5109@e119886-lin.cambridge.arm.com>
References: <20200102123905.29360-1-andrew.murray@arm.com>
 <20200102123905.29360-3-andrew.murray@arm.com>
 <20200120174432.GA23090@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174432.GA23090@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_032827_607495_26FD9828 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 05:44:33PM +0000, Will Deacon wrote:
> On Thu, Jan 02, 2020 at 12:39:04PM +0000, Andrew Murray wrote:
> > ARMv8.5-PMU introduces 64-bit event counters, however KVM doesn't yet
> > support this. Let's trap the Debug Feature Registers in order to limit
> > PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.4.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > ---
> >  arch/arm64/include/asm/sysreg.h |  4 ++++
> >  arch/arm64/kvm/sys_regs.c       | 36 +++++++++++++++++++++++++++++++--
> >  2 files changed, 38 insertions(+), 2 deletions(-)
> 
> I'll need an ack from the kvm side for this.
> 
> > diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> > index 6e919fafb43d..1b74f275a115 100644
> > --- a/arch/arm64/include/asm/sysreg.h
> > +++ b/arch/arm64/include/asm/sysreg.h
> > @@ -672,6 +672,10 @@
> >  #define ID_AA64DFR0_TRACEVER_SHIFT	4
> >  #define ID_AA64DFR0_DEBUGVER_SHIFT	0
> >  
> > +#define ID_DFR0_PERFMON_SHIFT		24
> > +
> > +#define ID_DFR0_EL1_PMUVER_8_4		5
> > +
> >  #define ID_ISAR5_RDM_SHIFT		24
> >  #define ID_ISAR5_CRC32_SHIFT		16
> >  #define ID_ISAR5_SHA2_SHIFT		12
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 9f2165937f7d..61b984d934d1 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -668,6 +668,37 @@ static bool pmu_access_event_counter_el0_disabled(struct kvm_vcpu *vcpu)
> >  	return check_pmu_access_disabled(vcpu, ARMV8_PMU_USERENR_ER | ARMV8_PMU_USERENR_EN);
> >  }
> >  
> > +static bool access_id_aa64dfr0_el1(struct kvm_vcpu *vcpu,
> > +				   struct sys_reg_params *p,
> > +				   const struct sys_reg_desc *rd)
> > +{
> > +	if (p->is_write)
> > +		return write_to_read_only(vcpu, p, rd);
> > +
> > +	/* Limit guests to PMUv3 for ARMv8.4 */
> > +	p->regval = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
> > +	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
> > +						ID_AA64DFR0_PMUVER_SHIFT,
> > +						4, ID_DFR0_EL1_PMUVER_8_4);
> 
> nit: I'd probably have a separate define for the field value of the 64-bit
> register, since there's no guarantee other values will be encoded the same
> way. (i.e. add ID_AA64DFR0_PMUVER_8_4 as well).

Yes that seems reasonable, i'll update it.

> 
> > +
> > +	return p->regval;
> > +}
> > +
> > +static bool access_id_dfr0_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> > +			       const struct sys_reg_desc *rd)
> > +{
> > +	if (p->is_write)
> > +		return write_to_read_only(vcpu, p, rd);
> > +
> > +	/* Limit guests to PMUv3 for ARMv8.4 */
> > +	p->regval = read_sanitised_ftr_reg(SYS_ID_DFR0_EL1);
> > +	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
> 
> You could just return the result here (same above).

Or perhaps a bool - sigh.

Thanks,

Andrew Murray

> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
