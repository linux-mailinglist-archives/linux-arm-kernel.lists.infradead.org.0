Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F311B2372
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWClUR20dPxYevMdtm9oRVAtEsMvh1vGnxubcNvvK4M=; b=i4rGvigEwqfxIM
	MjfTFAY4vw1niupH6gCa+RvgYknPneeNf/7pep0nvFW5y/oBcUi/jeZTN56fQ45Ql4nBCtGD3nPbI
	0NOnYrP2HzhGQ+3Xck20ZbsU0wr3vuaVU13pc10lx/OYXjp0/Ti2sBlrFhCgwOji+MBmVnPMuvHJ/
	oHjDQzWrUrsxl7kVqtof9su3ay7Sn7XYzUSmVKlIH8wn2DPDM2UtWSqWxH3Vn4hbmrgqCAVxILnV/
	P2oPZNjUzxPMFwNF+0luUnFCuBS/KVcdxcY+5nLrUXnqoKRlcGxEsWWmGva4M55Bch2UVPCkyiXwr
	WNegn2x5ed4etmUWi/5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQpfM-0000O5-QF; Tue, 21 Apr 2020 09:58:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQpey-0000Fx-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:57:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1BB01FB;
 Tue, 21 Apr 2020 02:57:43 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 554A83F73D;
 Tue, 21 Apr 2020 02:57:39 -0700 (PDT)
Date: Tue, 21 Apr 2020 10:57:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Message-ID: <20200421095736.GB16306@C02TD0UTHF1T.local>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-6-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421032304.26300-6-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_025745_242218_69306BEB 
X-CRM114-Status: GOOD (  20.70  )
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
Cc: maz@kernel.org, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, steven.price@arm.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 11:23:00AM +0800, Jianyong Wu wrote:
> ptp_kvm modules will get this service through smccc call.
> The service offers real time and counter cycle of host for guest.
> Also let caller determine which cycle of virtual counter or physical counter
> to return.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  include/linux/arm-smccc.h | 21 +++++++++++++++++++
>  virt/kvm/arm/hypercalls.c | 44 ++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 64 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 59494df0f55b..747b7595d0c6 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -77,6 +77,27 @@
>  			   ARM_SMCCC_SMC_32,				\
>  			   0, 0x7fff)
>  
> +/* PTP KVM call requests clock time from guest OS to host */
> +#define ARM_SMCCC_HYP_KVM_PTP_FUNC_ID				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_32,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   0)
> +
> +/* request for virtual counter from ptp_kvm guest */
> +#define ARM_SMCCC_HYP_KVM_PTP_VIRT				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_32,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   1)
> +
> +/* request for physical counter from ptp_kvm guest */
> +#define ARM_SMCCC_HYP_KVM_PTP_PHY				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_32,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   2)

ARM_SMCCC_OWNER_STANDARD_HYP is for standard calls as defined in SMCCC
and companion documents, so we should refer to the specific
documentation here. Where are these calls defined?

If these calls are Linux-specific then ARM_SMCCC_OWNER_STANDARD_HYP
isn't appropriate to use, as they are vendor-specific hypervisor service
call.

It looks like we don't currently have a ARM_SMCCC_OWNER_HYP for that
(which IIUC would be 6), but we can add one as necessary. I think that
Will might have added that as part of his SMCCC probing bits.

> +
>  #ifndef __ASSEMBLY__
>  
>  #include <linux/linkage.h>
> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> index 550dfa3e53cd..a5309c28d4dc 100644
> --- a/virt/kvm/arm/hypercalls.c
> +++ b/virt/kvm/arm/hypercalls.c
> @@ -3,6 +3,7 @@
>  
>  #include <linux/arm-smccc.h>
>  #include <linux/kvm_host.h>
> +#include <linux/clocksource_ids.h>
>  
>  #include <asm/kvm_emulate.h>
>  
> @@ -11,8 +12,11 @@
>  
>  int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  {
> -	u32 func_id = smccc_get_function(vcpu);
> +	struct system_time_snapshot systime_snapshot;
> +	long arg[4];
> +	u64 cycles;
>  	long val = SMCCC_RET_NOT_SUPPORTED;
> +	u32 func_id = smccc_get_function(vcpu);
>  	u32 feature;
>  	gpa_t gpa;
>  
> @@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  		if (gpa != GPA_INVALID)
>  			val = gpa;
>  		break;
> +	/*
> +	 * This serves virtual kvm_ptp.
> +	 * Four values will be passed back.
> +	 * reg0 stores high 32-bit host ktime;
> +	 * reg1 stores low 32-bit host ktime;
> +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
> +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
> +	 */
> +	case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:

Shouldn't the host opt-in to providing this to the guest, as with other
features?

> +		/*
> +		 * system time and counter value must captured in the same
> +		 * time to keep consistency and precision.
> +		 */
> +		ktime_get_snapshot(&systime_snapshot);
> +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
> +			break;
> +		arg[0] = upper_32_bits(systime_snapshot.real);
> +		arg[1] = lower_32_bits(systime_snapshot.real);

Why exactly does the guest need the host's real time? Neither the cover
letter nor this commit message have explained that, and for those of us
unfamliar with PTP it would be very helpful to know that to understand
what's going on.

> +		/*
> +		 * which of virtual counter or physical counter being
> +		 * asked for is decided by the first argument.
> +		 */
> +		feature = smccc_get_arg1(vcpu);
> +		switch (feature) {
> +		case ARM_SMCCC_HYP_KVM_PTP_PHY:
> +			cycles = systime_snapshot.cycles;
> +			break;
> +		case ARM_SMCCC_HYP_KVM_PTP_VIRT:
> +		default:
> +			cycles = systime_snapshot.cycles -
> +			vcpu_vtimer(vcpu)->cntvoff;
> +		}
> +		arg[2] = upper_32_bits(cycles);
> +		arg[3] = lower_32_bits(cycles);
> +
> +		smccc_set_retval(vcpu, arg[0], arg[1], arg[2], arg[3]);

I think the 'arg' buffer is confusing here, and it'd be clearer to have:

	u64 snaphot;
	u64 cycles;

... and here do:

		smccc_set_retval(vcpu,
				 upper_32_bits(snaphot),
				 lower_32_bits(snapshot), 
				 upper_32_bits(cycles),
				 lower_32_bits(cycles));

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
