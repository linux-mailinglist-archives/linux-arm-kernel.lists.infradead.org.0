Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82651430EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0VjIy3EGRWPsGiAp35YdMdaZTWGfu2EyvjONmKaT2U=; b=sLszd/WfKRdFRY
	ALw50UO0dPkH6De72MMKnkE1iZzP+IzBJYgYZI3LWxYSzyJg8igviudweTWyURrqBWJkEvuo6/qhJ
	Nob+LBsB0mqp99UxW5isRqKi2s5hIRFko8ozFrWbaiwaiKpC4GC6nVhI/Up+Np7GQ2gM0yc54aqkR
	PgIcYqoyf4VWXi/rjl7IBCIsC6gFp2s1X8pTX6pgN1Qr8lsk/Liy+lXraL+ep4DcmR/wGM4mmZRVb
	zYH67tvCm7PR+8hdZmOtQ22DIDMyPSn0kEJWJNSVpX6LGsFwGISDMRe6c8J5devPz3jlXtMDw0s0n
	6StVA0DLHFhz0rxoy9kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itb6U-0006KK-Li; Mon, 20 Jan 2020 17:44:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itb6L-0006Jy-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:44:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4724122525;
 Mon, 20 Jan 2020 17:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579542277;
 bh=LagBF9JsoTc8+nyOltAMAYejmrgZJ3mO+mVxPeC8f1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w7FpMoXjz/7pumqEKrdLw5EkzFDm7uZCVrCeu9f6zKvsAihTEUpnLcuSyqJ2D0lPB
 FJ9mdYdDQgRjDsWT4AR9Z3CDQ385P3rodouQHK7lXg/k8NNWwe6Vgf9xz8zdE+sVXq
 FxT2MsSp2f7eJ4oki/D8hvagynM2fMR0DfryegYQ=
Date: Mon, 20 Jan 2020 17:44:33 +0000
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v3 2/3] KVM: arm64: limit PMU version to ARMv8.4
Message-ID: <20200120174432.GA23090@willie-the-truck>
References: <20200102123905.29360-1-andrew.murray@arm.com>
 <20200102123905.29360-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102123905.29360-3-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_094438_043592_B028A67B 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, Jan 02, 2020 at 12:39:04PM +0000, Andrew Murray wrote:
> ARMv8.5-PMU introduces 64-bit event counters, however KVM doesn't yet
> support this. Let's trap the Debug Feature Registers in order to limit
> PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.4.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/include/asm/sysreg.h |  4 ++++
>  arch/arm64/kvm/sys_regs.c       | 36 +++++++++++++++++++++++++++++++--
>  2 files changed, 38 insertions(+), 2 deletions(-)

I'll need an ack from the kvm side for this.

> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 6e919fafb43d..1b74f275a115 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -672,6 +672,10 @@
>  #define ID_AA64DFR0_TRACEVER_SHIFT	4
>  #define ID_AA64DFR0_DEBUGVER_SHIFT	0
>  
> +#define ID_DFR0_PERFMON_SHIFT		24
> +
> +#define ID_DFR0_EL1_PMUVER_8_4		5
> +
>  #define ID_ISAR5_RDM_SHIFT		24
>  #define ID_ISAR5_CRC32_SHIFT		16
>  #define ID_ISAR5_SHA2_SHIFT		12
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 9f2165937f7d..61b984d934d1 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -668,6 +668,37 @@ static bool pmu_access_event_counter_el0_disabled(struct kvm_vcpu *vcpu)
>  	return check_pmu_access_disabled(vcpu, ARMV8_PMU_USERENR_ER | ARMV8_PMU_USERENR_EN);
>  }
>  
> +static bool access_id_aa64dfr0_el1(struct kvm_vcpu *vcpu,
> +				   struct sys_reg_params *p,
> +				   const struct sys_reg_desc *rd)
> +{
> +	if (p->is_write)
> +		return write_to_read_only(vcpu, p, rd);
> +
> +	/* Limit guests to PMUv3 for ARMv8.4 */
> +	p->regval = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
> +	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
> +						ID_AA64DFR0_PMUVER_SHIFT,
> +						4, ID_DFR0_EL1_PMUVER_8_4);

nit: I'd probably have a separate define for the field value of the 64-bit
register, since there's no guarantee other values will be encoded the same
way. (i.e. add ID_AA64DFR0_PMUVER_8_4 as well).

> +
> +	return p->regval;
> +}
> +
> +static bool access_id_dfr0_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +			       const struct sys_reg_desc *rd)
> +{
> +	if (p->is_write)
> +		return write_to_read_only(vcpu, p, rd);
> +
> +	/* Limit guests to PMUv3 for ARMv8.4 */
> +	p->regval = read_sanitised_ftr_reg(SYS_ID_DFR0_EL1);
> +	p->regval = cpuid_feature_cap_signed_field_width(p->regval,

You could just return the result here (same above).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
