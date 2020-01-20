Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF53F142F76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 17:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGC8wlOAdj7oj24dUMs83eSIK9FK45YkVggYRSlu2fc=; b=tE3Cgq0toeRSEz
	wu4FdozGGrmsDi0tNJPiX/KeQRO9pcbKB5zemJ4gZd+LAS8ATkuKr7DEHT+06hKos3ay5Ybvi+Ls9
	KeWDa388KPrYPlbC3/tyngsJbJFaI2Hd45ARyCn8hfEiqhE72kGmsKsuGtjtd7KmSs8mzMsdSAwov
	V0TtQBAWxAT7V8mv8ovlu3QDXKLmTazJr0Nkf9KBvbIlnYT+QkxjHHNUzP+aJgONFLNeM3Aupg3Z1
	jsPhS8u3ErUaU6IGNKaqYjlBzhy0kFqxD+6ypzl8oYhlvAvKcskbfkF91e0QLXSH5/oDjqlqOm+sY
	5CKGlHgdFo+ggTVVqc1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZnC-00083b-Ao; Mon, 20 Jan 2020 16:20:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZmu-000820-Ti
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 16:20:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EF6831B;
 Mon, 20 Jan 2020 08:20:26 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25ECF3F6C4;
 Mon, 20 Jan 2020 08:20:24 -0800 (PST)
Subject: Re: [PATCH v3 1/8] KVM: arm64: Document PV-lock interface
To: Zengruan Ye <yezengruan@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 virtualization@lists.linux-foundation.org
References: <20200116124626.1155-1-yezengruan@huawei.com>
 <20200116124626.1155-2-yezengruan@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <35fea56c-b501-2163-2c95-62f918738167@arm.com>
Date: Mon, 20 Jan 2020 16:20:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200116124626.1155-2-yezengruan@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_082029_048093_F0E9D3E2 
X-CRM114-Status: GOOD (  26.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, daniel.lezcano@linaro.org, linux@armlinux.org.uk,
 james.morse@arm.com, longman@redhat.com, maz@kernel.org,
 wanghaibin.wang@huawei.com, will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zengruan,

Given Marc and Will's thread[1] about a possible alternative way of
handling this I won't do a thorough review as this might not be the best
way of handling the underlying problem, but there's some comments below
for you to consider.

[1] http://lkml.kernel.org/r/b1d23a82d6a7caa79a99597fb83472be%40kernel.org

On 16/01/2020 12:46, Zengruan Ye wrote:
> Introduce a paravirtualization interface for KVM/arm64 to obtain the vCPU
> that is currently running or not.
> 
> The PV lock structure of the guest is allocated by user space.
> 
> A hypercall interface is provided for the guest to interrogate the
> hypervisor's support for this interface and the location of the shared
> memory structures.
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>  Documentation/virt/kvm/arm/pvlock.rst   | 68 +++++++++++++++++++++++++
>  Documentation/virt/kvm/devices/vcpu.txt | 14 +++++
>  2 files changed, 82 insertions(+)
>  create mode 100644 Documentation/virt/kvm/arm/pvlock.rst
> 
> diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
> new file mode 100644
> index 000000000000..11776273c0a4
> --- /dev/null
> +++ b/Documentation/virt/kvm/arm/pvlock.rst
> @@ -0,0 +1,68 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +Paravirtualized lock support for arm64
> +======================================
> +
> +KVM/arm64 provides some hypervisor service calls to support a paravirtualized
> +guest obtaining whether the vCPU is currently running or not.
> +
> +Two new SMCCC compatible hypercalls are defined:

NIT: As defined this is now only a single (multiplexed) hypercall.

> +* ARM_SMCCC_VENDOR_HYP_KVM_PV_LOCK_FUNC_ID:  0x86000001

You appear to have changed the SMC32/SMC64 bit on the ID, so this is now
a 32-bit SMC, but the calling convention below (returning an int64)
seems to rely on the guest being 64-bit. Any reason for this change?
Given the implementation doesn't accept 32-bit clients and the calling
convention requires returning a 64-bit value for 64-bit guests this
seems wrong to me.

> +  - KVM_PV_LOCK_FEATURES   0
> +  - KVM_PV_LOCK_PREEMPTED  1
> +
> +The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
> +ARCH_FEATURES mechanism and the hypervisor should be KVM before calling it.
> +
> +KVM_PV_LOCK_FEATURES
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0x86000001
> +    PV_call_id:   (uint32)    0
> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
> +                              PV-lock feature is supported by the hypervisor.
> +    ============= ========    ==========

Because you are now multiplexing the two functions you've lost the
parameter which previously was for "The function to query for support".
Which makes this _FEATURES operation fairly pointless (you might as well
just call KVM_PV_LOCK_PREEMPTED and handle the NOT_SUPPORTED error return).

Steve

> +
> +KVM_PV_LOCK_PREEMPTED
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0x86000001
> +    PV_call_id:   (uint32)    1
> +    Return value: (int64)     IPA of the PV-lock data structure for this vCPU.
> +                              On failure:
> +                              NOT_SUPPORTED (-1)
> +    ============= ========    ==========
> +
> +The IPA returned by KVM_PV_LOCK_PREEMPTED should be mapped by the guest as
> +normal memory with inner and outer write back caching attributes, in the inner
> +shareable domain.
> +
> +KVM_PV_LOCK_PREEMPTED returns the structure for the calling vCPU.
> +
> +PV lock state
> +-------------
> +
> +The structure pointed to by the KVM_PV_LOCK_PREEMPTED hypercall is as follows:
> +
> ++-----------+-------------+-------------+-----------------------------------+
> +| Field     | Byte Length | Byte Offset | Description                       |
> ++===========+=============+=============+===================================+
> +| preempted |      8      |      0      | Indicates that the vCPU that owns |
> +|           |             |             | this struct is running or not.    |
> +|           |             |             | Non-zero values mean the vCPU has |
> +|           |             |             | been preempted. Zero means the    |
> +|           |             |             | vCPU is not preempted.            |
> ++-----------+-------------+-------------+-----------------------------------+
> +
> +The preempted field will be updated to 1 by the hypervisor prior to scheduling
> +a vCPU. When the vCPU is scheduled out, the preempted field will be updated
> +to 0 by the hypervisor.
> +
> +The structure will be present within a reserved region of the normal memory
> +given to the guest. The guest should not attempt to write into this memory.
> +There is a structure per vCPU of the guest.
> +
> +It is advisable that one or more 64k pages are set aside for the purpose of
> +these structures and not used for other purposes, this enables the guest to map
> +the region using 64k pages and avoids conflicting attributes with other memory.
> +
> +For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
> +section "4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL".
> diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
> index 6f3bd64a05b0..2c68d9a0f644 100644
> --- a/Documentation/virt/kvm/devices/vcpu.txt
> +++ b/Documentation/virt/kvm/devices/vcpu.txt
> @@ -74,3 +74,17 @@ Specifies the base address of the stolen time structure for this VCPU. The
>  base address must be 64 byte aligned and exist within a valid guest memory
>  region. See Documentation/virt/kvm/arm/pvtime.txt for more information
>  including the layout of the stolen time structure.
> +
> +4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL
> +Architectures: ARM64
> +
> +4.1 ATTRIBUTE: KVM_ARM_VCPU_PVLOCK_IPA
> +Parameters: 64-bit base address
> +Returns: -ENXIO:  PV lock not implemented
> +         -EEXIST: Base address already set for this vCPU
> +         -EINVAL: Base address not 64 byte aligned
> +
> +Specifies the base address of the PV lock structure for this vCPU. The
> +base address must be 64 byte aligned and exist within a valid guest memory
> +region. See Documentation/virt/kvm/arm/pvlock.rst for more information
> +including the layout of the pv lock structure.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
