Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7D122E83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PwCKm9qJ87DWP6KxO6dXAScDM8AUr8TRBSwaHKI8Ws=; b=uxWepnOXntubzm
	EDDl3o8aVwgfCy53tI/z2/X9K/sCfQT1fS7lpKo9DUCOq9JqLcVlI+TRQfOPZK2o11Qta6I2KGwW9
	YiJBXQaoMYH+fJN8KdV4paMMKFDiLYPWaGYf3FXfFDBnhgVftnNZr+5mPnUKDUV/OmW+IWCfIk61/
	ufKNEoAwp6PXSdpAs/l8LWr0HhpouDnZSOM4CT1eWGJc6Hun8FJGs0T4d6dhQ94IGSmWYtC8SdX5P
	QPRfpJ2hz763ys19/iJVt3V/lGFSaHUU/Ci3GuBADiOnn5FHxV6AC7Hm9ZcrRPKzE8qMCgJA6aA8F
	/ZzYjHe5LTnZ3mX4UHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDjc-00046f-75; Tue, 17 Dec 2019 14:22:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDjQ-00045b-QF
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:21:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD7E31FB;
 Tue, 17 Dec 2019 06:21:45 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E29473F719;
 Tue, 17 Dec 2019 06:21:43 -0800 (PST)
Date: Tue, 17 Dec 2019 14:21:39 +0000
From: Steven Price <steven.price@arm.com>
To: "yezengruan@huawei.com" <yezengruan@huawei.com>
Subject: Re: [PATCH 1/5] KVM: arm64: Document PV-lock interface
Message-ID: <20191217142138.GA38811@arm.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
 <20191217135549.3240-2-yezengruan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217135549.3240-2-yezengruan@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_062148_939602_F2736D6B 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>, James Morse <James.Morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 01:55:45PM +0000, yezengruan@huawei.com wrote:
> From: Zengruan Ye <yezengruan@huawei.com>
> 
> Introduce a paravirtualization interface for KVM/arm64 to obtain the vcpu
> is currently running or not.
> 
> A hypercall interface is provided for the guest to interrogate the
> hypervisor's support for this interface and the location of the shared
> memory structures.
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>  Documentation/virt/kvm/arm/pvlock.rst | 31 +++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/virt/kvm/arm/pvlock.rst
> 
> diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
> new file mode 100644
> index 000000000000..eec0c36edf17
> --- /dev/null
> +++ b/Documentation/virt/kvm/arm/pvlock.rst
> @@ -0,0 +1,31 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +Paravirtualized lock support for arm64
> +======================================
> +
> +KVM/arm64 provids some hypervisor service calls to support a paravirtualized
> +guest obtaining the vcpu is currently running or not.
> +
> +Two new SMCCC compatible hypercalls are defined:
> +
> +* PV_LOCK_FEATURES:   0xC5000040
> +* PV_LOCK_PREEMPTED:  0xC5000041

These values are in the "Standard Hypervisor Service Calls" section of
SMCCC - so is there a document that describes this features such that
other OSes or hypervisors can implement it? I'm also not entirely sure
of the process of ensuring that the IDs picked are non-conflicting.

Otherwise if this is a KVM specific interface this should probably
belong within the "Vendor Specific Hypervisor Service Calls" section
along with some probing that the hypervisor is actually KVM. Although I
don't see anything KVM specific.

> +
> +The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
> +ARCH_FEATURES mechanism before calling it.
> +
> +PV_LOCK_FEATURES
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0xC5000040
> +    PV_call_id:   (uint32)    The function to query for support.
> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
> +                              PV-lock feature is supported by the hypervisor.
> +    ============= ========    ==========
> +
> +PV_LOCK_PREEMPTED
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0xC5000041
> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the IPA of
> +                              this vcpu's pv data structure is configured by
> +                              the hypervisor.
> +    ============= ========    ==========

From the code it looks like there's another argument for this SMC - the
physical address (or IPA) of a struct pvlock_vcpu_state. This structure
also needs to be described as it is part of the ABI.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
