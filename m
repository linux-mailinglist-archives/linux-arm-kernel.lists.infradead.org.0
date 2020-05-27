Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BD41E463A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 16:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN5d9sy3lsbo75WNy3J2Q6dOkmBnwKjpWBWQEo+D7/c=; b=i3+4J4A462HfZs
	woTaQHDSW+9f0JROYLZGEXEwwaH4Crj+yPucXPF5giS8X4cwfoB3KJxhj4rDHSzFwK76QSRYc0YEV
	g7Wjb/nGfD+v7ZwW1tFJVsU2XmMKUGJZiU/ZSoLf6L8P2oo00LzOCqE7gjsH8CoKRA7brK41s3IVv
	tpAQdYMW+Jq+lu8hiop571A2T2WtTTK4jTh5P0Z0BqdCqJ+/OSc2/TJzCvO5w7nrg/LxG48mmN8RE
	bk7jDigLIGQ77hJmJ6Hn7SFr5s8Vu04ISiZuh0W0DxmhZI2Jq0dfbWpq72IfNkBTf6CIpKh6c6QhO
	FnYchj7cELDHwtBz2JAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxFk-000290-Uz; Wed, 27 May 2020 14:41:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxFb-00028O-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 14:41:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC2EC30E;
 Wed, 27 May 2020 07:41:43 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 70C2D3F6C4;
 Wed, 27 May 2020 07:41:40 -0700 (PDT)
Date: Wed, 27 May 2020 15:41:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 26/26] KVM: arm64: Parametrize exception entry with a
 target EL
Message-ID: <20200527144133.GA59947@C02TD0UTHF1T.local>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-27-maz@kernel.org>
 <20200519104457.GA19548@C02TD0UTHF1T.local>
 <db34b0fbd58275a0a2a0c9108b9507d6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db34b0fbd58275a0a2a0c9108b9507d6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_074147_241818_7194BEF1 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:34:09AM +0100, Marc Zyngier wrote:
> HI Mark,
> 
> On 2020-05-19 11:44, Mark Rutland wrote:
> > On Wed, Apr 22, 2020 at 01:00:50PM +0100, Marc Zyngier wrote:
> > > -static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
> > > +static void enter_exception(struct kvm_vcpu *vcpu, unsigned long
> > > target_mode,
> > > +			    enum exception_type type)
> > 
> > Since this is all for an AArch64 target, could we keep `64` in the name,
> > e.g enter_exception64? That'd mirror the callers below.
> > 
> > >  {
> > > -	unsigned long sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
> > > -	unsigned long old, new;
> > > +	unsigned long sctlr, vbar, old, new, mode;
> > > +	u64 exc_offset;
> > > +
> > > +	mode = *vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT);
> > > +
> > > +	if      (mode == target_mode)
> > > +		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
> > > +	else if ((mode | 1) == target_mode)
> > > +		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
> > 
> > It would be nice if we could add a mnemonic for the `1` here, e.g.
> > PSR_MODE_SP0 or PSR_MODE_THREAD_BIT.
> 
> I've addressed both comments as follows:
> 
> diff --git a/arch/arm64/include/asm/ptrace.h
> b/arch/arm64/include/asm/ptrace.h
> index bf57308fcd63..953b6a1ce549 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -35,6 +35,7 @@
>  #define GIC_PRIO_PSR_I_SET		(1 << 4)
> 
>  /* Additional SPSR bits not exposed in the UABI */
> +#define PSR_MODE_THREAD_BIT	(1 << 0)
>  #define PSR_IL_BIT		(1 << 20)
> 
>  /* AArch32-specific ptrace requests */
> diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
> index 3dbcbc839b9c..ebfdfc27b2bd 100644
> --- a/arch/arm64/kvm/inject_fault.c
> +++ b/arch/arm64/kvm/inject_fault.c
> @@ -43,8 +43,8 @@ enum exception_type {
>   * Here we manipulate the fields in order of the AArch64 SPSR_ELx layout,
> from
>   * MSB to LSB.
>   */
> -static void enter_exception(struct kvm_vcpu *vcpu, unsigned long
> target_mode,
> -			    enum exception_type type)
> +static void enter_exception64(struct kvm_vcpu *vcpu, unsigned long
> target_mode,
> +			      enum exception_type type)
>  {
>  	unsigned long sctlr, vbar, old, new, mode;
>  	u64 exc_offset;
> @@ -53,7 +53,7 @@ static void enter_exception(struct kvm_vcpu *vcpu,
> unsigned long target_mode,
> 
>  	if      (mode == target_mode)
>  		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
> -	else if ((mode | 1) == target_mode)
> +	else if ((mode | PSR_MODE_THREAD_BIT) == target_mode)
>  		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
>  	else if (!(mode & PSR_MODE32_BIT))
>  		exc_offset = LOWER_EL_AArch64_VECTOR;
> @@ -126,7 +126,7 @@ static void inject_abt64(struct kvm_vcpu *vcpu, bool
> is_iabt, unsigned long addr
>  	bool is_aarch32 = vcpu_mode_is_32bit(vcpu);
>  	u32 esr = 0;
> 
> -	enter_exception(vcpu, PSR_MODE_EL1h, except_type_sync);
> +	enter_exception64(vcpu, PSR_MODE_EL1h, except_type_sync);
> 
>  	vcpu_write_sys_reg(vcpu, addr, FAR_EL1);
> 
> @@ -156,7 +156,7 @@ static void inject_undef64(struct kvm_vcpu *vcpu)
>  {
>  	u32 esr = (ESR_ELx_EC_UNKNOWN << ESR_ELx_EC_SHIFT);
> 
> -	enter_exception(vcpu, PSR_MODE_EL1h, except_type_sync);
> +	enter_exception64(vcpu, PSR_MODE_EL1h, except_type_sync);
> 
>  	/*
>  	 * Build an unknown exception, depending on the instruction

Thanks; that all looks good to me, and my R-b stands!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
