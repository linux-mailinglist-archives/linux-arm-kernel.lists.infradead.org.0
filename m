Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB30219D885
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIpRIDHwOMYq+ECTcCXx160OA7TsQBXsnn1eY1jKqCY=; b=f0NKvCVodRDGQi
	57fgstMEJ0sS4S9O2Y5QSz00iI/MPX1RSttW8zf05u6Mpmfsvu91B35NIUMHEZSqoFXDTNEZo9ruH
	MRNQGdtcekQ/fIyBMLcWlzbCufSpoL04atZwaPn/0MCTIt1NiJgnLu3FlfimC7sBF5f5WCZVTBom/
	fTImeSt0XVcljPunKcTxNFfQNQRgwLAXcbW2K3MfdMC8zqMVrCC/D94DRIqPrnyEklkpr5dQWuPxe
	7Pg/d2Iocy/nEWHcydrP0TEbuXS6kpKs8sYBws1mqShjE6eeyVOLPCOLIAQVbHAau/qsKGbfAwFaz
	4awxafKqlHPctrCOSCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMtt-0004Me-IP; Fri, 03 Apr 2020 14:02:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMth-0004Ja-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 14:02:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE3B431B;
 Fri,  3 Apr 2020 07:02:12 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A11DF3F52E;
 Fri,  3 Apr 2020 07:02:11 -0700 (PDT)
Subject: Re: [PATCH 2/2] KVM: arm64: PSCI: Forbid 64bit functions for 32bit
 guests
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200401165816.530281-1-maz@kernel.org>
 <20200401165816.530281-3-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <9c188c7e-5038-eb51-af1d-b3f54b070e6d@arm.com>
Date: Fri, 3 Apr 2020 15:02:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401165816.530281-3-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_070213_908448_770806C6 
X-CRM114-Status: GOOD (  20.52  )
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

Hello,

On 4/1/20 5:58 PM, Marc Zyngier wrote:
> Implementing (and even advertising) 64bit PSCI functions to 32bit
> guests is at least a bit odd, if not altogether violating the
> spec which says ("5.2.1 Register usage in arguments and return values"):
>
> "Adherence to the SMC Calling Conventions implies that any AArch32
> caller of an SMC64 function will get a return code of 0xFFFFFFFF(int32).
> This matches the NOT_SUPPORTED error code used in PSCI"
>
> Tighten the implementation by pretending these functions are not
> there for 32bit guests.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/psci.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
> index 69ff4a51ceb5..122795cdd984 100644
> --- a/virt/kvm/arm/psci.c
> +++ b/virt/kvm/arm/psci.c
> @@ -199,6 +199,21 @@ static void kvm_psci_narrow_to_32bit(struct kvm_vcpu *vcpu)
>  		vcpu_set_reg(vcpu, i, (u32)vcpu_get_reg(vcpu, i));
>  }
>  
> +static unsigned long kvm_psci_check_allowed_function(struct kvm_vcpu *vcpu, u32 fn)
> +{
> +	switch(fn) {
> +	case PSCI_0_2_FN64_CPU_SUSPEND:
> +	case PSCI_0_2_FN64_CPU_ON:
> +	case PSCI_0_2_FN64_AFFINITY_INFO:

I checked in ARM DEN 0022D, those are indeed the only 3 functions that KVM
implements and have a different function ID based on the calling convention.

> +		/* Disallow these functions for 32bit guests */
> +		if (vcpu_mode_is_32bit(vcpu))
> +			return PSCI_RET_NOT_SUPPORTED;
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
>  static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm *kvm = vcpu->kvm;
> @@ -206,6 +221,10 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
>  	unsigned long val;
>  	int ret = 1;
>  
> +	val = kvm_psci_check_allowed_function(vcpu, psci_fn);
> +	if (val)
> +		goto out;
> +
>  	switch (psci_fn) {
>  	case PSCI_0_2_FN_PSCI_VERSION:
>  		/*
> @@ -273,6 +292,7 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
>  		break;
>  	}
>  
> +out:
>  	smccc_set_retval(vcpu, val, 0, 0, 0);
>  	return ret;
>  }
> @@ -290,6 +310,10 @@ static int kvm_psci_1_0_call(struct kvm_vcpu *vcpu)
>  		break;
>  	case PSCI_1_0_FN_PSCI_FEATURES:
>  		feature = smccc_get_arg1(vcpu);
> +		val = kvm_psci_check_allowed_function(vcpu, feature);
> +		if (val)
> +			break;
> +
>  		switch(feature) {
>  		case PSCI_0_2_FN_PSCI_VERSION:
>  		case PSCI_0_2_FN_CPU_SUSPEND:

The patch makes sense to me:

Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
