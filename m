Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9782A13220D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=15MMSumJ0wHRzFSQDSbZnDisXT7fl4YgAXlh+w5Cuf0=; b=PfE5oJEKBXlPNp83D+5ADV4RH
	v+ATGISAy5PNvJOKqxEfHPkYH77+sHlu8J1+KUkEEdbBfa0wv+IEcbG4HU5VnXnRvqZ/REMoKeAHB
	mO5RBcNhZVoAeTxsmKjVTSF1Mpv7ICwiumuqk/dpesdbzOvs+iMd9i8MbcYU9VzKs3KMwvu5eCNiW
	/tJ7tes+wHqJQsxgJ0lM0qeWSM4tFVc6Xq9JORC2+zxk9du2DCYo/UK2yafJAl89Dj6OzYOGUKL6P
	EahKXLINXDJdFYCnTpdvc4IVK+MQbAPSmPgtu5Oo7+MOZbr3QmX30BBNbxeVCQoHjIGeqBeZcMM4X
	mEeEldq8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokyd-0003Wa-BL; Tue, 07 Jan 2020 09:16:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokyB-0003GV-Dz
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:16:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38B2920656;
 Tue,  7 Jan 2020 09:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578388570;
 bh=hdFiCaeaNP79bTue6oK3n76q0rsZ9EjJ5bhLkJslDM8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=w0RyRqrDUQlTP1euuzRbIXeNZRqGkpwEvpAwzpKbuY7InKXmxbL20omILRfsrnFEE
 dmpIx2rlolza0oax2ce89zyFWA/z/y+UOPTguSQ71+j07OjmMHTYj6FxIzEnx7PEMB
 3ZN7lXAqfL6LFrKu9dIQLSmHfd7BX9aduw+3immQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ioky8-0000iX-HV; Tue, 07 Jan 2020 09:16:08 +0000
MIME-Version: 1.0
Date: Tue, 07 Jan 2020 09:16:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
In-Reply-To: <20191210034026.45229-7-jianyong.wu@arm.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-7-jianyong.wu@arm.com>
Message-ID: <7383dc06897bba253f174cd21a19b5c0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: jianyong.wu@arm.com, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 steven.price@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Steve.Capper@arm.com, Kaly.Xin@arm.com, justin.he@arm.com,
 nd@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_011611_511858_D6A63E10 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, steven.price@arm.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-10 03:40, Jianyong Wu wrote:
> ptp_kvm modules will call hvc to get this service.
> The service offers real time and counter cycle of host for guest.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  include/linux/arm-smccc.h | 12 ++++++++++++
>  virt/kvm/arm/psci.c       | 22 ++++++++++++++++++++++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 6f82c87308ed..aafb6bac167d 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -94,6 +94,7 @@
> 
>  /* KVM "vendor specific" services */
>  #define ARM_SMCCC_KVM_FUNC_FEATURES		0
> +#define ARM_SMCCC_KVM_PTP			1
>  #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
>  #define ARM_SMCCC_KVM_NUM_FUNCS			128
> 
> @@ -103,6 +104,17 @@
>  			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
>  			   ARM_SMCCC_KVM_FUNC_FEATURES)
> 
> +/*
> + * This ID used for virtual ptp kvm clock and it will pass second 
> value
> + * and nanosecond value of host real time and system counter by vcpu
> + * register to guest.
> + */
> +#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
> +			   ARM_SMCCC_SMC_32,				\
> +			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
> +			   ARM_SMCCC_KVM_PTP)
> +

All of this depends on patches that have never need posted to any ML, 
and
just linger in Will's tree. You need to pick them up and post them as 
part
of this series so that they can at least be reviewed.

>  #ifndef __ASSEMBLY__
> 
>  #include <linux/linkage.h>
> diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
> index 0debf49bf259..682d892d6717 100644
> --- a/virt/kvm/arm/psci.c
> +++ b/virt/kvm/arm/psci.c
> @@ -9,6 +9,7 @@
>  #include <linux/kvm_host.h>
>  #include <linux/uaccess.h>
>  #include <linux/wait.h>
> +#include <linux/clocksource_ids.h>
> 
>  #include <asm/cputype.h>
>  #include <asm/kvm_emulate.h>
> @@ -389,6 +390,8 @@ static int kvm_psci_call(struct kvm_vcpu *vcpu)
> 
>  int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  {
> +	struct system_time_snapshot systime_snapshot;
> +	u64 cycles;
>  	u32 func_id = smccc_get_function(vcpu);
>  	u32 val[4] = {};
>  	u32 option;
> @@ -431,6 +434,25 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
>  		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
>  		break;
> +	/*
> +	 * This will used for virtual ptp kvm clock. three
> +	 * values will be passed back.
> +	 * reg0 stores high 32-bit host ktime;
> +	 * reg1 stores low 32-bit host ktime;
> +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
> +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.

That's either two or four values, and not three as you claim above.

Also, I fail to understand the meaning of the host cycle vs cntvoff
comparison. This is something that guest can perform on its own
(it has access to both physical and virtual timers, and can compute
cntvoff without intervention of the hypervisor).

Finally, how does it work with nested virt, where cntvoff is for the
the vEL2 guest?

> +	 */
> +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> +		ktime_get_snapshot(&systime_snapshot);
> +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
> +			return kvm_psci_call(vcpu);

What does this mean? Calling PSCI because you've failed to identify
the clock source? What result do you expect from this? Hint: this
isn't a PSCI call.

Cosmetic comments below:

> +		val[0] = systime_snapshot.real >> 32;

val[0] = upper_32_bits(systime_snapshot.real);

> +		val[1] = systime_snapshot.real << 32 >> 32;

val[1] = lower_32_bits(systime_snapshot.real);

> +		cycles = systime_snapshot.cycles -
> +			 vcpu_vtimer(vcpu)->cntvoff;

On a single line please.

> +		val[2] = cycles >> 32;
> +		val[3] = cycles << 32 >> 32;

Same as above.

> +		break;
>  	default:
>  		return kvm_psci_call(vcpu);
>  	}

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
