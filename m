Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17919143124
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ysir3VvnAZwLOdUP/Q7gF5h1VSpq3IeE2cXJyLP794Y=; b=httZsyQD8xLWgOW7hEm5HiNUo
	T9liQN/3Gm72Kh8mwlABXZyHPNIr69SemDM72Ayj1aZ92rcXkMZueb5XjoQOZVnji59JekdrVLxWG
	i59z8N5DHqp+bLJ+dDJ/OgcRRzCKUrohrLs0ihYtGbYgmkLZCDQzCIEIA6AsJSUFL9I8XI0nF/8f/
	/kg0teUj8X4fppnOtmGQ5dTGTQkaSLgC3+NiRli+frxUFUhQBgr1l0ePDLqxP9/altmiZ+kL0fKcf
	kPeNS9F65m87EyWbCkGn/uLSiS6oUMqgYX9jx0iX7nilEl889MYocfTiW6ngkUGw0DFWM/o5HTEv4
	oKV+2zQbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbH4-0002tR-JC; Mon, 20 Jan 2020 17:55:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbGi-0002sx-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:55:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0D3022314;
 Mon, 20 Jan 2020 17:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579542919;
 bh=8bOHTYRbLS8txTcPyDaCdCmZAjMXTNyGIy7MeklFyyo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IooBH/8jTScBInV0AEkiGiZPHkboAsYt5L7M/D6YY5IM/A5GHtwHCFvFW6h6fS1hO
 MILodesfftr3jl1l9b3vUTu0IOwhH83ttRmdEwthgTdy16iwvhETgYA5tJ2bCKpQUR
 fLtoxYBMxKEgi+yRkJ6X4B+kTm4/2NENGmjlJ13Y=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itbGf-000KpS-NS; Mon, 20 Jan 2020 17:55:17 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 17:55:17 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v3 2/3] KVM: arm64: limit PMU version to ARMv8.4
In-Reply-To: <20200102123905.29360-3-andrew.murray@arm.com>
References: <20200102123905.29360-1-andrew.murray@arm.com>
 <20200102123905.29360-3-andrew.murray@arm.com>
Message-ID: <336acb6b88c2df5e6114e6f8811687e4@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_095520_890880_D70621B8 
X-CRM114-Status: GOOD (  17.40  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-02 12:39, Andrew Murray wrote:
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
> 
> diff --git a/arch/arm64/include/asm/sysreg.h 
> b/arch/arm64/include/asm/sysreg.h
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
> @@ -668,6 +668,37 @@ static bool
> pmu_access_event_counter_el0_disabled(struct kvm_vcpu *vcpu)
>  	return check_pmu_access_disabled(vcpu, ARMV8_PMU_USERENR_ER |
> ARMV8_PMU_USERENR_EN);
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
> +
> +	return p->regval;

If feels very odd to return the register value in place of a something
that actually indicates whether we should update the PC or not. I have
no idea what is happening here in this case.

> +}
> +
> +static bool access_id_dfr0_el1(struct kvm_vcpu *vcpu, struct 
> sys_reg_params *p,
> +			       const struct sys_reg_desc *rd)
> +{
> +	if (p->is_write)
> +		return write_to_read_only(vcpu, p, rd);
> +
> +	/* Limit guests to PMUv3 for ARMv8.4 */
> +	p->regval = read_sanitised_ftr_reg(SYS_ID_DFR0_EL1);
> +	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
> +						ID_DFR0_PERFMON_SHIFT,
> +						4, ID_DFR0_EL1_PMUVER_8_4);
> +
> +	return p->regval;

Same here.

> +}
> +
>  static bool access_pmcr(struct kvm_vcpu *vcpu, struct sys_reg_params 
> *p,
>  			const struct sys_reg_desc *r)
>  {
> @@ -1409,7 +1440,8 @@ static const struct sys_reg_desc sys_reg_descs[] 
> = {
>  	/* CRm=1 */
>  	ID_SANITISED(ID_PFR0_EL1),
>  	ID_SANITISED(ID_PFR1_EL1),
> -	ID_SANITISED(ID_DFR0_EL1),
> +	{ SYS_DESC(SYS_ID_DFR0_EL1), access_id_dfr0_el1 },

How about the .get_user and .set_user accessors that were provided by
ID_SANITISED and that are now dropped? You should probably define a
new wrapper that allows you to override the .access method.

> +
>  	ID_HIDDEN(ID_AFR0_EL1),
>  	ID_SANITISED(ID_MMFR0_EL1),
>  	ID_SANITISED(ID_MMFR1_EL1),
> @@ -1448,7 +1480,7 @@ static const struct sys_reg_desc sys_reg_descs[] 
> = {
>  	ID_UNALLOCATED(4,7),
> 
>  	/* CRm=5 */
> -	ID_SANITISED(ID_AA64DFR0_EL1),
> +	{ SYS_DESC(SYS_ID_AA64DFR0_EL1), access_id_aa64dfr0_el1 },
>  	ID_SANITISED(ID_AA64DFR1_EL1),
>  	ID_UNALLOCATED(5,2),
>  	ID_UNALLOCATED(5,3),

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
