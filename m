Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BF91FCB3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sv4g9DLgjkVcC8Yi33IykhQSwi0IcgLAF1DI40rEScA=; b=a1x4Thy4otR4tkF7eq833sPci
	r54qs/xqPjfzSsIRUQSuMYCCZKZoqaX1ofC3rDCB2CmT96OyF/74QUw7iC3ubp91igMyXh6LxpS2t
	ItZo48ZJ5NfWR127aJAZVOdzX/xq7nSNxl6ZJqbXB/pjxgCQZFs6u5iTba0F6iAbaAcLDwJV5zv2v
	6eZYwBbIRjJd6rHGS3tx7Log/03R0Ki8IZq/w0rIGcJEBWSlzglg12qXa0p3M75ij8fz0/75TxX6b
	KNhUeyr7EoIA0t3s9zIkROsCcyLFlYouEG36PHAHZEyc1HZc2DcNJOk4Lor2U90QYXLdPxzurOE16
	E0De4zuZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVbn-0001XL-Ln; Wed, 17 Jun 2020 10:47:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVbc-0001WJ-A3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:47:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BF7A208B3;
 Wed, 17 Jun 2020 10:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592390863;
 bh=6JWW2IP5OHhYePQHs/w7+V8xyYWD4Gc3HpAFhwrnPQQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GJUFTinrfqpCCrY4NycRdNUZ2Hro8zeipOC3ZMeVPii/BDDvlXnBMP143bd1M6+3w
 jZJdMZR9Zt9pg5mpCY2oNSQW932LM+KXWtSA8g/yE6ibZpH3DnLHhf5Rx/J4TtcA8a
 KLSepr+obpjiYgiYjluC3GM0PJa+Dmzj2i7W5jug=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlVbZ-003l3h-Ua; Wed, 17 Jun 2020 11:47:42 +0100
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 11:47:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] KVM: arm64: kvm_reset_vcpu() return code incorrect with
 SVE
In-Reply-To: <20200617104339.35094-1-steven.price@arm.com>
References: <20200617104339.35094-1-steven.price@arm.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <c9761495762abe174e6546122916fc38@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: steven.price@arm.com, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dave.Martin@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_034744_391867_20AF577F 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Dave Martin <Dave.Martin@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On 2020-06-17 11:43, Steven Price wrote:
> If SVE is enabled then 'ret' can be assigned the return value of
> kvm_vcpu_enable_sve() which may be 0 causing future "goto out" sites to
> erroneously return 0 on failure rather than -EINVAL as expected.
> 
> Remove the initialisation of 'ret' and make setting the return value
> explicit to avoid this situation in the future.
> 
> Fixes: 9a3cdf26e336 ("KVM: arm64/sve: Allow userspace to enable SVE for 
> vcpus")
> Reported-by: James Morse <james.morse@arm.com>
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> The problematic chunk isn't visible in the diff, so reproduced here:
> 
> 	if (!kvm_arm_vcpu_sve_finalized(vcpu)) {
> 		if (test_bit(KVM_ARM_VCPU_SVE, vcpu->arch.features)) {
> 			ret = kvm_vcpu_enable_sve(vcpu);
> 			if (ret)
> 				goto out;
> 		}
> 	} else {
> 		kvm_vcpu_reset_sve(vcpu);
> 	}
> 
>  arch/arm64/kvm/reset.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index d3b209023727..f1057603b756 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -245,7 +245,7 @@ static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu 
> *vcpu)
>   */
>  int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
>  {
> -	int ret = -EINVAL;
> +	int ret;
>  	bool loaded;
>  	u32 pstate;
> 
> @@ -269,15 +269,19 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
> 
>  	if (test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
>  	    test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features)) {
> -		if (kvm_vcpu_enable_ptrauth(vcpu))
> +		if (kvm_vcpu_enable_ptrauth(vcpu)) {
> +			ret = -EINVAL;
>  			goto out;
> +		}
>  	}
> 
>  	switch (vcpu->arch.target) {
>  	default:
>  		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
> -			if (!cpus_have_const_cap(ARM64_HAS_32BIT_EL1))
> +			if (cpus_have_const_cap(ARM64_HAS_32BIT_EL1)) {

Do you really mean this? Seems counter-productive... :-(

> +				ret = -EINVAL;
>  				goto out;
> +			}
>  			pstate = VCPU_RESET_PSTATE_SVC;
>  		} else {
>  			pstate = VCPU_RESET_PSTATE_EL1;

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
