Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221721E2007
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBxIwKprbgP8HIiehWJoq7zin2VY/f/IPMS9k3dhoOM=; b=cz9OMSEmVYFBeI
	zxr1PdLLpnTuXzHQwSxC+tLaB2zKuRJBACtwByTz39DAVjgTZDe/Y0B5pwU0twyQFC7iagvYdmzTn
	QVeChSmk2lZugkdI+Fh5bVLR3t6w3aKgtMmIn4zlPNZcmwrs02cmM1OIKR2Xk2g55jHYuPJkD9wG1
	rR1XJGcIuZQ6yZgekJRWo7my8p0pEKPuZ13z+yqayYxSeyxwYEskrXhZQSNKBiXwgK3q2XQjzGiyl
	8AW2F85I6GhnN3/PWn9cKBypD1RsMAhcLr4D0p++GxP1QNHWFL7s6SFq/2rvWxKpZZblrDykWrEIY
	PDvOB/xBOuOQF0xgkj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX5O-0001OP-9g; Tue, 26 May 2020 10:45:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX59-0001Nc-5R
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:45:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BF9E55D;
 Tue, 26 May 2020 03:45:13 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65DF43F52E;
 Tue, 26 May 2020 03:45:10 -0700 (PDT)
Date: Tue, 26 May 2020 11:45:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 5/9] kvm/arm64: Replace hsr with esr
Message-ID: <20200526104507.GC1363@C02TD0UTHF1T.local>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-6-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508032919.52147-6-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034515_295249_741222CA 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 01:29:15PM +1000, Gavin Shan wrote:
> This replace the variable names to make them self-explaining. The
> tracepoint isn't changed accordingly because they're part of ABI:
> 
>    * @hsr to @esr
>    * @hsr_ec to @ec
>    * Use kvm_vcpu_trap_get_class() helper if possible
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

As with patch 3, I think this cleanup makes sense independent from the
rest of the series, and I think it'd make sense to bundle all the
patches renaming hsr -> esr, and send those as a preparatory series.

Thanks,
Mark.

> ---
>  arch/arm64/kvm/handle_exit.c | 28 ++++++++++++++--------------
>  arch/arm64/kvm/hyp/switch.c  |  9 ++++-----
>  arch/arm64/kvm/sys_regs.c    | 30 +++++++++++++++---------------
>  3 files changed, 33 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 00858db82a64..e3b3dcd5b811 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -123,13 +123,13 @@ static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
>   */
>  static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>  	int ret = 0;
>  
>  	run->exit_reason = KVM_EXIT_DEBUG;
> -	run->debug.arch.hsr = hsr;
> +	run->debug.arch.hsr = esr;
>  
> -	switch (ESR_ELx_EC(hsr)) {
> +	switch (kvm_vcpu_trap_get_class(esr)) {
>  	case ESR_ELx_EC_WATCHPT_LOW:
>  		run->debug.arch.far = vcpu->arch.fault.far_el2;
>  		/* fall through */
> @@ -139,8 +139,8 @@ static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  	case ESR_ELx_EC_BRK64:
>  		break;
>  	default:
> -		kvm_err("%s: un-handled case hsr: %#08x\n",
> -			__func__, (unsigned int) hsr);
> +		kvm_err("%s: un-handled case esr: %#08x\n",
> +			__func__, (unsigned int)esr);
>  		ret = -1;
>  		break;
>  	}
> @@ -150,10 +150,10 @@ static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  
>  static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>  
> -	kvm_pr_unimpl("Unknown exception class: hsr: %#08x -- %s\n",
> -		      hsr, esr_get_class_string(hsr));
> +	kvm_pr_unimpl("Unknown exception class: esr: %#08x -- %s\n",
> +		      esr, esr_get_class_string(esr));
>  
>  	kvm_inject_undefined(vcpu);
>  	return 1;
> @@ -230,10 +230,10 @@ static exit_handle_fn arm_exit_handlers[] = {
>  
>  static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
>  {
> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
> -	u8 hsr_ec = ESR_ELx_EC(hsr);
> +	u32 esr = kvm_vcpu_get_esr(vcpu);
> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>  
> -	return arm_exit_handlers[hsr_ec];
> +	return arm_exit_handlers[ec];
>  }
>  
>  /*
> @@ -273,15 +273,15 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>  {
>  	if (ARM_SERROR_PENDING(exception_index)) {
>  		u32 esr = kvm_vcpu_get_esr(vcpu);
> -		u8 hsr_ec = ESR_ELx_EC(esr);
> +		u8 ec = kvm_vcpu_trap_get_class(esr);
>  
>  		/*
>  		 * HVC/SMC already have an adjusted PC, which we need
>  		 * to correct in order to return to after having
>  		 * injected the SError.
>  		 */
> -		if (hsr_ec == ESR_ELx_EC_HVC32 || hsr_ec == ESR_ELx_EC_HVC64 ||
> -		    hsr_ec == ESR_ELx_EC_SMC32 || hsr_ec == ESR_ELx_EC_SMC64) {
> +		if (ec == ESR_ELx_EC_HVC32 || ec == ESR_ELx_EC_HVC64 ||
> +		    ec == ESR_ELx_EC_SMC32 || ec == ESR_ELx_EC_SMC64) {
>  			u32 adj =  kvm_vcpu_trap_il_is32bit(esr) ? 4 : 2;
>  			*vcpu_pc(vcpu) -= adj;
>  		}
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index 369f22f49f3d..7bf4840bf90e 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -356,8 +356,8 @@ static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
>  static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
>  {
>  	u32 esr = kvm_vcpu_get_esr(vcpu);
> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>  	bool vhe, sve_guest, sve_host;
> -	u8 hsr_ec;
>  
>  	if (!system_supports_fpsimd())
>  		return false;
> @@ -372,14 +372,13 @@ static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
>  		vhe = has_vhe();
>  	}
>  
> -	hsr_ec = kvm_vcpu_trap_get_class(esr);
> -	if (hsr_ec != ESR_ELx_EC_FP_ASIMD &&
> -	    hsr_ec != ESR_ELx_EC_SVE)
> +	if (ec != ESR_ELx_EC_FP_ASIMD &&
> +	    ec != ESR_ELx_EC_SVE)
>  		return false;
>  
>  	/* Don't handle SVE traps for non-SVE vcpus here: */
>  	if (!sve_guest)
> -		if (hsr_ec != ESR_ELx_EC_FP_ASIMD)
> +		if (ec != ESR_ELx_EC_FP_ASIMD)
>  			return false;
>  
>  	/* Valid trap.  Switch the context: */
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 012fff834a4b..58f81ab519af 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -2182,10 +2182,10 @@ static void unhandled_cp_access(struct kvm_vcpu *vcpu,
>  				struct sys_reg_params *params)
>  {
>  	u32 esr = kvm_vcpu_get_esr(vcpu);
> -	u8 hsr_ec = kvm_vcpu_trap_get_class(esr);
> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>  	int cp = -1;
>  
> -	switch(hsr_ec) {
> +	switch (ec) {
>  	case ESR_ELx_EC_CP15_32:
>  	case ESR_ELx_EC_CP15_64:
>  		cp = 15;
> @@ -2216,17 +2216,17 @@ static int kvm_handle_cp_64(struct kvm_vcpu *vcpu,
>  			    size_t nr_specific)
>  {
>  	struct sys_reg_params params;
> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
> -	int Rt = kvm_vcpu_sys_get_rt(hsr);
> -	int Rt2 = (hsr >> 10) & 0x1f;
> +	u32 esr = kvm_vcpu_get_esr(vcpu);
> +	int Rt = kvm_vcpu_sys_get_rt(esr);
> +	int Rt2 = (esr >> 10) & 0x1f;
>  
>  	params.is_aarch32 = true;
>  	params.is_32bit = false;
> -	params.CRm = (hsr >> 1) & 0xf;
> -	params.is_write = ((hsr & 1) == 0);
> +	params.CRm = (esr >> 1) & 0xf;
> +	params.is_write = ((esr & 1) == 0);
>  
>  	params.Op0 = 0;
> -	params.Op1 = (hsr >> 16) & 0xf;
> +	params.Op1 = (esr >> 16) & 0xf;
>  	params.Op2 = 0;
>  	params.CRn = 0;
>  
> @@ -2273,18 +2273,18 @@ static int kvm_handle_cp_32(struct kvm_vcpu *vcpu,
>  			    size_t nr_specific)
>  {
>  	struct sys_reg_params params;
> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
> -	int Rt  = kvm_vcpu_sys_get_rt(hsr);
> +	u32 esr = kvm_vcpu_get_esr(vcpu);
> +	int Rt = kvm_vcpu_sys_get_rt(esr);
>  
>  	params.is_aarch32 = true;
>  	params.is_32bit = true;
> -	params.CRm = (hsr >> 1) & 0xf;
> +	params.CRm = (esr >> 1) & 0xf;
>  	params.regval = vcpu_get_reg(vcpu, Rt);
> -	params.is_write = ((hsr & 1) == 0);
> -	params.CRn = (hsr >> 10) & 0xf;
> +	params.is_write = ((esr & 1) == 0);
> +	params.CRn = (esr >> 10) & 0xf;
>  	params.Op0 = 0;
> -	params.Op1 = (hsr >> 14) & 0x7;
> -	params.Op2 = (hsr >> 17) & 0x7;
> +	params.Op1 = (esr >> 14) & 0x7;
> +	params.Op2 = (esr >> 17) & 0x7;
>  
>  	if (!emulate_cp(vcpu, &params, target_specific, nr_specific) ||
>  	    !emulate_cp(vcpu, &params, global, nr_global)) {
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
