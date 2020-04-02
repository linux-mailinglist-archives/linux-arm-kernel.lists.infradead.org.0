Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F46219C2F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 15:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFrCV9YvtPh1IaEdQOaocbbd1zHMYHMsh6VCV8+nIdo=; b=buQ6xJ5h6enDVS
	4uZ9zM4N77+y76xK7zqTpK3hEwAzdgBQ9tIppAo+myxcO+VyT9EL/l2wFoX3sclSMbGZeI5kUqCzF
	97aIuIiDjqWYxorxqtVKu/YD5QAnHn1KZ56/9EKBrosIJxT2m0r8whDL+xmkdhX2qV7Mjfm88HsTI
	JZFpxOQQaf1j86KVCgJd1wMZyGPwYZNt3TAFcGfAmLGI7NChYgbBwtfytvhipfF2g8DlnIdVbLD47
	R4W5HPH+18mbuXEd+FA32mxcyeIwMkPnEQ8i9oU9PKnOmjD4SNc561BXvESLw/JmY2Aq/SRmvDR8x
	Q89hlXoIQVkYhBpgz5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0CA-0003SH-H6; Thu, 02 Apr 2020 13:47:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0C5-0003RZ-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 13:47:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A7EC30E;
 Thu,  2 Apr 2020 06:47:37 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1B173F52E;
 Thu,  2 Apr 2020 06:47:36 -0700 (PDT)
Date: Thu, 2 Apr 2020 15:47:35 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/2] KVM: arm64: PSCI: Narrow input registers when using
 32bit functions
Message-ID: <20200402134735.GF3650@e113682-lin.lund.arm.com>
References: <20200401165816.530281-1-maz@kernel.org>
 <20200401165816.530281-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401165816.530281-2-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_064741_628136_738C2197 
X-CRM114-Status: GOOD (  15.84  )
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
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 05:58:15PM +0100, Marc Zyngier wrote:
> When a guest delibarately uses an SSMC32 function number (which is allowed),
> we should make sure we drop the top 32bits from the input arguments, as they
> could legitimately be junk.
> 
> Reported-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/psci.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
> index 17e2bdd4b76f..69ff4a51ceb5 100644
> --- a/virt/kvm/arm/psci.c
> +++ b/virt/kvm/arm/psci.c
> @@ -187,6 +187,18 @@ static void kvm_psci_system_reset(struct kvm_vcpu *vcpu)
>  	kvm_prepare_system_event(vcpu, KVM_SYSTEM_EVENT_RESET);
>  }
>  
> +static void kvm_psci_narrow_to_32bit(struct kvm_vcpu *vcpu)
> +{
> +	int i;
> +
> +	/*
> +	 * Zero the input registers' upper 32 bits. They will be fully
> +	 * zeroed on exit, so we're fine changing them in place.
> +	 */
> +	for (i = 1; i < 4; i++)
> +		vcpu_set_reg(vcpu, i, (u32)vcpu_get_reg(vcpu, i));
> +}
> +
>  static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm *kvm = vcpu->kvm;
> @@ -211,12 +223,16 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
>  		val = PSCI_RET_SUCCESS;
>  		break;
>  	case PSCI_0_2_FN_CPU_ON:
> +		kvm_psci_narrow_to_32bit(vcpu);
> +		fallthrough;
>  	case PSCI_0_2_FN64_CPU_ON:
>  		mutex_lock(&kvm->lock);
>  		val = kvm_psci_vcpu_on(vcpu);
>  		mutex_unlock(&kvm->lock);
>  		break;
>  	case PSCI_0_2_FN_AFFINITY_INFO:
> +		kvm_psci_narrow_to_32bit(vcpu);
> +		fallthrough;
>  	case PSCI_0_2_FN64_AFFINITY_INFO:
>  		val = kvm_psci_vcpu_affinity_info(vcpu);
>  		break;
> -- 
> 2.25.0
> 

Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
