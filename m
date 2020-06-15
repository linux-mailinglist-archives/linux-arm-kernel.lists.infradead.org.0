Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA9A1F946F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1fjDIQBTFxLQWAvyvilk+BrQjQj5hZB5kdh83WiKSs=; b=sUYMgOVAT0gqBA
	8LXErKKI38C9g8Lv8CcyImgSizesOLULX6GMd6Rd7EHABmGQKpFayPHlvwuutxX4qSPShteEK/4d4
	PUnniwvdzBQKKMdaMh2Bv/Dar9JtiYeBwwSp6dnqIcSo5+1/YUjztgbgr4s+ygjl+f0b2IyUuZicd
	LrLLpV9rv41G4eX2DYlOoNTNc0jX4Ss59aFMKolwDjmaV0sj5EY8o7FFEu43FEGgyEiQ1mJ0/EnTB
	VUS5pfwScGuvG88mE2xVDzYIT8SnE9lUmQXWMn0A8GcaCo9q5Vazoata4KpQ4Lvr6z4nSkbCkK9LV
	GnLyABX09j1TBqtBH7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmA5-0005lS-Ff; Mon, 15 Jun 2020 10:16:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkm9x-0005l4-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:16:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 860D71F1;
 Mon, 15 Jun 2020 03:16:08 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A7FA3F71F;
 Mon, 15 Jun 2020 03:16:07 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:16:05 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 3/4] KVM: arm64: Allow PtrAuth to be enabled from
 userspace on non-VHE systems
Message-ID: <20200615101605.GC773@C02TD0UTHF1T.local>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-4-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-4-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_031609_442794_B9B04E34 
X-CRM114-Status: GOOD (  18.73  )
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
Cc: kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 09:19:53AM +0100, Marc Zyngier wrote:
> Now that the scene is set for enabling PtrAuth on non-VHE, drop
> the restrictions preventing userspace from enabling it.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Other than dropping the `has_vhe()` check this appears to be
functionally equivalent and easier to follow, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kvm/reset.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index d3b209023727..2a929789fe2e 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -42,6 +42,11 @@ static u32 kvm_ipa_limit;
>  #define VCPU_RESET_PSTATE_SVC	(PSR_AA32_MODE_SVC | PSR_AA32_A_BIT | \
>  				 PSR_AA32_I_BIT | PSR_AA32_F_BIT)
>  
> +static bool system_has_full_ptr_auth(void)
> +{
> +	return system_supports_address_auth() && system_supports_generic_auth();
> +}
> +
>  /**
>   * kvm_arch_vm_ioctl_check_extension
>   *
> @@ -80,8 +85,7 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  		break;
>  	case KVM_CAP_ARM_PTRAUTH_ADDRESS:
>  	case KVM_CAP_ARM_PTRAUTH_GENERIC:
> -		r = has_vhe() && system_supports_address_auth() &&
> -				 system_supports_generic_auth();
> +		r = system_has_full_ptr_auth();
>  		break;
>  	default:
>  		r = 0;
> @@ -205,19 +209,14 @@ static void kvm_vcpu_reset_sve(struct kvm_vcpu *vcpu)
>  
>  static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
>  {
> -	/* Support ptrauth only if the system supports these capabilities. */
> -	if (!has_vhe())
> -		return -EINVAL;
> -
> -	if (!system_supports_address_auth() ||
> -	    !system_supports_generic_auth())
> -		return -EINVAL;
>  	/*
>  	 * For now make sure that both address/generic pointer authentication
> -	 * features are requested by the userspace together.
> +	 * features are requested by the userspace together and the system
> +	 * supports these capabilities.
>  	 */
>  	if (!test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
> -	    !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features))
> +	    !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features) ||
> +	    !system_has_full_ptr_auth())
>  		return -EINVAL;
>  
>  	vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_PTRAUTH;
> -- 
> 2.27.0
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
