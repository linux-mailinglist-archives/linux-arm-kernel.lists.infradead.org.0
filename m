Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A950FB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1A5PtCRq7EQL+0hQ/jjSOk69ILqMWsxYinkq3JvIm7Q=; b=jGM7bL9+A/zm35
	N+AlrPPGzJJeO2i360qPJwgdJ+DwzaWXvSy+YNl3kK0yCRK5WEtTN/sCn/QMkX+L4G33NU2NQ+5yI
	/OeJUOFO93vf18yER4tKLmMTa3zSUXp/pSsIOiJSzZkx1Odyqxb2lOGDHGsvOynqUpFqPlTyqKyTd
	HVn97iDJk59LNhQMADEbczH/ti12Ru5gdcP5zMevwY0WnUXswv/PHBYLiwjZZBbKY3ZKsRtgqVTVA
	GxycEVxDt5JUZGdBly3O9EJvMwA2gvFg1SLf/ILUw0HPnMdonixblugbRayhi5wxv7mRrt5RUyCzp
	8R0xU/OCW89unGUBJ73w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQZi-0004DO-Tl; Mon, 24 Jun 2019 15:08:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQZW-0004Cy-6A
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 15:07:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CB8D344;
 Mon, 24 Jun 2019 08:07:53 -0700 (PDT)
Received: from [192.168.1.34] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DE383F71E;
 Mon, 24 Jun 2019 08:07:51 -0700 (PDT)
Subject: Re: [PATCH 15/59] KVM: arm64: nv: Refactor vcpu_{read,write}_sys_reg
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-16-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <a64c85c3-0230-d9d0-aea6-b8a4196e62b2@arm.com>
Date: Mon, 24 Jun 2019 16:07:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-16-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_080754_316578_CC3087BF 
X-CRM114-Status: GOOD (  21.33  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/21/2019 10:37 AM, Marc Zyngier wrote:
> Extract the direct HW accessors for later reuse.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/kvm/sys_regs.c | 247 +++++++++++++++++++++-----------------
>  1 file changed, 139 insertions(+), 108 deletions(-)
> 
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 2b8734f75a09..e181359adadf 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -182,99 +182,161 @@ const struct el2_sysreg_map *find_el2_sysreg(const struct el2_sysreg_map *map,
>  	return entry;
>  }
>  
> +static bool __vcpu_read_sys_reg_from_cpu(int reg, u64 *val)
> +{
> +	/*
> +	 * System registers listed in the switch are not saved on every
> +	 * exit from the guest but are only saved on vcpu_put.
> +	 *
> +	 * Note that MPIDR_EL1 for the guest is set by KVM via VMPIDR_EL2 but
> +	 * should never be listed below, because the guest cannot modify its
> +	 * own MPIDR_EL1 and MPIDR_EL1 is accessed for VCPU A from VCPU B's
> +	 * thread when emulating cross-VCPU communication.
> +	 */
> +	switch (reg) {
> +	case CSSELR_EL1:	*val = read_sysreg_s(SYS_CSSELR_EL1);	break;
> +	case SCTLR_EL1:		*val = read_sysreg_s(SYS_SCTLR_EL12);	break;
> +	case ACTLR_EL1:		*val = read_sysreg_s(SYS_ACTLR_EL1);	break;
> +	case CPACR_EL1:		*val = read_sysreg_s(SYS_CPACR_EL12);	break;
> +	case TTBR0_EL1:		*val = read_sysreg_s(SYS_TTBR0_EL12);	break;
> +	case TTBR1_EL1:		*val = read_sysreg_s(SYS_TTBR1_EL12);	break;
> +	case TCR_EL1:		*val = read_sysreg_s(SYS_TCR_EL12);	break;
> +	case ESR_EL1:		*val = read_sysreg_s(SYS_ESR_EL12);	break;
> +	case AFSR0_EL1:		*val = read_sysreg_s(SYS_AFSR0_EL12);	break;
> +	case AFSR1_EL1:		*val = read_sysreg_s(SYS_AFSR1_EL12);	break;
> +	case FAR_EL1:		*val = read_sysreg_s(SYS_FAR_EL12);	break;
> +	case MAIR_EL1:		*val = read_sysreg_s(SYS_MAIR_EL12);	break;
> +	case VBAR_EL1:		*val = read_sysreg_s(SYS_VBAR_EL12);	break;
> +	case CONTEXTIDR_EL1:	*val = read_sysreg_s(SYS_CONTEXTIDR_EL12);break;
> +	case TPIDR_EL0:		*val = read_sysreg_s(SYS_TPIDR_EL0);	break;
> +	case TPIDRRO_EL0:	*val = read_sysreg_s(SYS_TPIDRRO_EL0);	break;
> +	case TPIDR_EL1:		*val = read_sysreg_s(SYS_TPIDR_EL1);	break;
> +	case AMAIR_EL1:		*val = read_sysreg_s(SYS_AMAIR_EL12);	break;
> +	case CNTKCTL_EL1:	*val = read_sysreg_s(SYS_CNTKCTL_EL12);	break;
> +	case PAR_EL1:		*val = read_sysreg_s(SYS_PAR_EL1);	break;
> +	case DACR32_EL2:	*val = read_sysreg_s(SYS_DACR32_EL2);	break;
> +	case IFSR32_EL2:	*val = read_sysreg_s(SYS_IFSR32_EL2);	break;
> +	case DBGVCR32_EL2:	*val = read_sysreg_s(SYS_DBGVCR32_EL2);	break;
> +	default:		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static bool __vcpu_write_sys_reg_to_cpu(u64 val, int reg)
> +{
> +	/*
> +	 * System registers listed in the switch are not restored on every
> +	 * entry to the guest but are only restored on vcpu_load.
> +	 *
> +	 * Note that MPIDR_EL1 for the guest is set by KVM via VMPIDR_EL2 but
> +	 * should never be listed below, because the the MPIDR should only be
> +	 * set once, before running the VCPU, and never changed later.
> +	 */
> +	switch (reg) {
> +	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	break;
> +	case SCTLR_EL1:		write_sysreg_s(val, SYS_SCTLR_EL12);	break;
> +	case ACTLR_EL1:		write_sysreg_s(val, SYS_ACTLR_EL1);	break;
> +	case CPACR_EL1:		write_sysreg_s(val, SYS_CPACR_EL12);	break;
> +	case TTBR0_EL1:		write_sysreg_s(val, SYS_TTBR0_EL12);	break;
> +	case TTBR1_EL1:		write_sysreg_s(val, SYS_TTBR1_EL12);	break;
> +	case TCR_EL1:		write_sysreg_s(val, SYS_TCR_EL12);	break;
> +	case ESR_EL1:		write_sysreg_s(val, SYS_ESR_EL12);	break;
> +	case AFSR0_EL1:		write_sysreg_s(val, SYS_AFSR0_EL12);	break;
> +	case AFSR1_EL1:		write_sysreg_s(val, SYS_AFSR1_EL12);	break;
> +	case FAR_EL1:		write_sysreg_s(val, SYS_FAR_EL12);	break;
> +	case MAIR_EL1:		write_sysreg_s(val, SYS_MAIR_EL12);	break;
> +	case VBAR_EL1:		write_sysreg_s(val, SYS_VBAR_EL12);	break;
> +	case CONTEXTIDR_EL1:	write_sysreg_s(val, SYS_CONTEXTIDR_EL12);break;
> +	case TPIDR_EL0:		write_sysreg_s(val, SYS_TPIDR_EL0);	break;
> +	case TPIDRRO_EL0:	write_sysreg_s(val, SYS_TPIDRRO_EL0);	break;
> +	case TPIDR_EL1:		write_sysreg_s(val, SYS_TPIDR_EL1);	break;
> +	case AMAIR_EL1:		write_sysreg_s(val, SYS_AMAIR_EL12);	break;
> +	case CNTKCTL_EL1:	write_sysreg_s(val, SYS_CNTKCTL_EL12);	break;
> +	case PAR_EL1:		write_sysreg_s(val, SYS_PAR_EL1);	break;
> +	case DACR32_EL2:	write_sysreg_s(val, SYS_DACR32_EL2);	break;
> +	case IFSR32_EL2:	write_sysreg_s(val, SYS_IFSR32_EL2);	break;
> +	case DBGVCR32_EL2:	write_sysreg_s(val, SYS_DBGVCR32_EL2);	break;
> +	default:		return false;
> +	}
> +
> +	return true;
> +}
> +
>  u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
>  {
> -	u64 val;
> +	u64 val = 0x8badf00d8badf00d;
>  
>  	if (!vcpu->arch.sysregs_loaded_on_cpu)
> -		goto immediate_read;
> +		goto memory_read;
>  
>  	if (unlikely(sysreg_is_el2(reg))) {
>  		const struct el2_sysreg_map *el2_reg;
>  
>  		if (!is_hyp_ctxt(vcpu))
> -			goto immediate_read;
> +			goto memory_read;
>  
>  		switch (reg) {
> +		case ELR_EL2:
> +			return read_sysreg_el1(SYS_ELR);

Hmmm, This change feels a bit out of place.

Also, patch 13 added ELR_EL2 and SP_EL2 to the switch cases for physical
sysreg accesses. Now ELR_EL2 is moved out of the main switch cases and
SP_EL2 is completely omitted.

I'd say either patch 13 needs to be reworked or there is a separate
patch that should be extracted from this patch to have an intermediate
state, or the commit message on this patch should be more detailed.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
