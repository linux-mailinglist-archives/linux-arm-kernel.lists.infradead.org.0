Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56719D883
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3ZOz/oCySWj2K2aowRqynX6PUERCfsfOgGJzRM9XEg=; b=lHAbeL+YWp21r0
	n7x9KZYBALPsRq05frfm9ku5JbnI28awJYy5J2vdP97z1Ue5Clp5SA495WQVsOHq4mQMyKAhU34nw
	4x1PqLwsrj6epdzhZsmXNbFh0saTwUmpHsgBPapofy6ILst3vFkm/l8YO97RzxlJDjzE73NMsBPE5
	5vgGWNuyklRTrBU9/Fy7hun4uwsOvDG6Sw2N7qm1SDzaWPI0T3Gx/BxOI8U//cuYuefbHOtsJ2Up6
	a21Klva7pRqdjAy64YggtNcKXPla2qndDfG7JuJRcqFcDFjmjeZ4cQm5CQ9Pq3puHU9IEE5qZwsjx
	P9DjiUv3TNEOb71+d6Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMtd-00049g-CH; Fri, 03 Apr 2020 14:02:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMtW-00048j-JF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 14:02:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C857D31B;
 Fri,  3 Apr 2020 07:02:01 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C01603F52E;
 Fri,  3 Apr 2020 07:02:00 -0700 (PDT)
Subject: Re: [PATCH 1/2] KVM: arm64: PSCI: Narrow input registers when using
 32bit functions
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200401165816.530281-1-maz@kernel.org>
 <20200401165816.530281-2-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <a7b7d9d7-120f-2c33-b803-64b999b5a839@arm.com>
Date: Fri, 3 Apr 2020 15:02:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401165816.530281-2-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_070202_671899_92A74312 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: James Morse <james.morse@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/1/20 5:58 PM, Marc Zyngier wrote:
> When a guest delibarately uses an SSMC32 function number (which is allowed),

s/SSMC32/SMC32

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

One minor suggestion, it could be lower_32_bits instead, but that's down to
personal preference and entirely up to you.

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

From ARM DEN 0022D, those are indeed the only functions with ids that differ from
SMC32 to SMC64, and have arguments that KVM doesn't ignore (like it does with
CPU_SUSPEND).

I also had a look at smccc_get_arg{1,2,3}, because they read the register values
and return an unsigned long. smccc_get_arg1 is called after the registers have
been narrowed, or the result is cast into an u32 when called before that.
smccc_get_arg{2,3} are always called as part of the individual PSCI function
implementations, which come after the arguments have been narrowed. With that:

Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
