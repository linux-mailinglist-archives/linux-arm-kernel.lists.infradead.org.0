Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F1C3E71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXLoyWvCLi4kDpihIU5uyjy0wEG2cnqmcfXgJ+mhaJ4=; b=Nr3uKjfHuN1zBy
	9zyLqLbuzc1NTj0CWlJI2ewgJWip+6c1q93GW6LObjUfvcNK6NC0rzpZY42J4Fec+xAvRmrbaA4u3
	ibsxh/WypZWx49VPG5dsnbwqBiZDl293Xd6IOPoTI4kwak6pAnIGBk++v8r+mkthRMTkJMW55heKL
	KiOxclFjxhwFfXInErgb0bKrD5lrgyt2ZzZhU9KrzYcROmQH59a4nlCctYwpeFDMyfWi2EZYrihTX
	b8/AfmwIozJQRvqV2VnUMQKbX3N3z8pb9Ndv8UvKzfxqqlphkUs2TTJENAVfHF/JyOOQv19uPjCR8
	Pf0uwOr0BoHZyMIa2oBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLoX-0000gD-HS; Tue, 01 Oct 2019 17:19:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLoN-0000f5-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:19:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B28001570;
 Tue,  1 Oct 2019 10:19:40 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BF1A3F918;
 Tue,  1 Oct 2019 10:19:32 -0700 (PDT)
Subject: Re: [RFC PATCH 2/2] kvm/arm64: expose hypercall_forwarding capability
To: Heyi Guo <guoheyi@huawei.com>
References: <1569338454-26202-1-git-send-email-guoheyi@huawei.com>
 <1569338454-26202-3-git-send-email-guoheyi@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bd2c398b-7703-03a2-052b-1414630d0b43@arm.com>
Date: Tue, 1 Oct 2019 18:19:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1569338454-26202-3-git-send-email-guoheyi@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101943_633775_6BC154A5 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 linux-kernel@vger.kernel.org, Dave Martin <Dave.Martin@arm.com>,
 qemu-arm@nongnu.org, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, wanghaibin.wang@huawei.com,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heyi,

On 24/09/2019 16:20, Heyi Guo wrote:
> Add new KVM capability "KVM_CAP_FORWARD_HYPERCALL" for user space to
> probe whether KVM supports forwarding hypercall.
> 
> The capability should be enabled by user space explicitly, for we
> don't want user space application to deal with unexpected hypercall
> exits. We also use an additional argument to pass exception bit mask,
> to request KVM to forward all hypercalls except the classes specified
> in the bit mask.
> 
> Currently only PSCI can be set as exception, so that we can still keep
> consistent with the old PSCI processing flow.

I agree this needs to be default-on, but I don't think this exclusion mechanism is extensible.


> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index f4a8ae9..2201b62 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -102,6 +105,28 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  	return r;
>  }
>  
> +int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
> +			    struct kvm_enable_cap *cap)
> +{
> +	if (cap->flags)
> +		return -EINVAL;
> +
> +	switch (cap->cap) {
> +	case KVM_CAP_FORWARD_HYPERCALL: {
> +		__u64 exclude_flags = cap->args[0];

and if there are more than 64 things to exclude?


> +		/* Only support excluding PSCI right now */
> +		if (exclude_flags & ~KVM_CAP_FORWARD_HYPERCALL_EXCL_PSCI)
> +			return -EINVAL;

Once we have a 65th bit, older kernels will let user-space set it, but nothing happens.


> +		kvm->arch.hypercall_forward = true;
> +		if (exclude_flags & KVM_CAP_FORWARD_HYPERCALL_EXCL_PSCI)
> +			kvm->arch.hypercall_excl_psci = true;
> +		return 0;
> +	}
> +	}
> +
> +	return -EINVAL;
> +}

While 4*64 'named bits' for SMC/HVC ranges might be enough, it is tricky to work with.
Both the kernel and user-space have to maintain a list of bit->name and
name->call-number-range, which may change over time.

A case in point: According to PSCI's History (Section 7 of DEN022D), PSCIv1.1 added
SYSTEM_RESET2, MEM_PROTECT and MEM_PROTECT_CHECK_RANGE.

I think its simpler for the HYPERCALL thing to act as a catch-all, and we provide
something to enumerate the list of function id's the kernel implements.

We can then add controls to disable the PSCI (which I think is the only one we have a case
for disabling). I think the PSCI disable should wait until it has a user.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
