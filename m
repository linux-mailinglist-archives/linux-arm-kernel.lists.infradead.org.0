Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2328A135BC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ajTT20tiEcW9ewN3p67z8vqTIkBbAst8gDOCE7kYmI0=; b=Q5YNZQ3EB3TQvYD/4zuVrLZug
	W/DsIC4QCzZZ3384Cw/ZU9/8Dgq/tW0OFH3Kl1FHUmTrvBNWaB+MUqMps1NFtNlTzTFTtKNbL8b8k
	npJhd4T0ZHwF+EE9ncNwN8jPqb2Ouh+HObqmiqfcsJwLEOsT5VcYsqcAoYbDQ0eNkVYUvRA6iaZvc
	s2OnUBuXk2uC8LqC2cY/tSBFo5mbIp9RIjjmtJYoAzZXY9g8DXuIIaX3E7xti40Ok1i3qjqkc8h63
	A1PemA/PV7ddotsfn765QTHBFT2Ox61AP2AzSb18h5BAMZnIBuLLw9bBZ3lreXEz4f701tzrEG18M
	TkEwmGU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZBZ-0003u5-6S; Thu, 09 Jan 2020 14:53:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZBQ-0003tM-6s
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:53:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2267C1FB;
 Thu,  9 Jan 2020 06:53:11 -0800 (PST)
Received: from [10.1.27.38] (e122027.cambridge.arm.com [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 120D93F534;
 Thu,  9 Jan 2020 06:53:08 -0800 (PST)
Subject: Re: [PATCH v2 1/6] KVM: arm64: Document PV-lock interface
To: Zengruan Ye <yezengruan@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 virtualization@lists.linux-foundation.org
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20191226135833.1052-2-yezengruan@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <c26ebc8d-6a10-6bc4-0af8-cd4883addbf0@arm.com>
Date: Thu, 9 Jan 2020 14:53:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191226135833.1052-2-yezengruan@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_065312_335480_F382DABB 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, james.morse@arm.com,
 maz@kernel.org, will@kernel.org, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/12/2019 13:58, Zengruan Ye wrote:
> Introduce a paravirtualization interface for KVM/arm64 to obtain the VCPU
> is currently running or not.
> 
> The PV lock structure of the guest is allocated by user space.
> 
> A hypercall interface is provided for the guest to interrogate the
> hypervisor's support for this interface and the location of the shared
> memory structures.
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>   Documentation/virt/kvm/arm/pvlock.rst   | 63 +++++++++++++++++++++++++
>   Documentation/virt/kvm/devices/vcpu.txt | 14 ++++++
>   2 files changed, 77 insertions(+)
>   create mode 100644 Documentation/virt/kvm/arm/pvlock.rst
> 
> diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
> new file mode 100644
> index 000000000000..58b3b8ee7537
> --- /dev/null
> +++ b/Documentation/virt/kvm/arm/pvlock.rst
> @@ -0,0 +1,63 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +Paravirtualized lock support for arm64
> +======================================
> +
> +KVM/arm64 provides some hypervisor service calls to support a paravirtualized
> +guest obtaining the VCPU is currently running or not.
NIT:              ^ whether

> +
> +Two new SMCCC compatible hypercalls are defined:
> +
> +* PV_LOCK_FEATURES:   0xC6000020
> +* PV_LOCK_PREEMPTED:  0xC6000021
> +
> +The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
> +ARCH_FEATURES mechanism before calling it.

Since these are within the "vendor specific" SMCCC region ideally you should also check that you are talking to KVM. (Other hypervisors could allocate SMCCC IDs differently within this block). Will has a patch on a branch which gives an example of how this could work [1]

[1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/commit/?h=kvm/hvc&id=464f5a1741e5959c3e4d2be1966ae0093b4dce06

> +
> +PV_LOCK_FEATURES
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0xC6000020
> +    PV_call_id:   (uint32)    The function to query for support.
> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
> +                              PV-lock feature is supported by the hypervisor.
> +    ============= ========    ==========
> +
> +PV_LOCK_PREEMPTED
> +    ============= ========    ==========
> +    Function ID:  (uint32)    0xC6000021
> +    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the IPA of
> +                              this VCPU's pv data structure is configured by
> +                              the hypervisor.
> +    ============= ========    ==========

PV_LOCK_PREEMPTED also needs to return the address of this data structure. Either by returning this in another register, or by e.g. treating a positive return as an address and a negative value as an error.

> +
> +The IPA returned by PV_LOCK_PREEMPTED should be mapped by the guest as normal
> +memory with inner and outer write back caching attributes, in the inner
> +shareable domain.
> +
> +PV_LOCK_PREEMPTED returns the structure for the calling VCPU.
> +
> +PV lock state
> +-------------
> +
> +The structure pointed to by the PV_LOCK_PREEMPTED hypercall is as follows:
> +
> ++-----------+-------------+-------------+---------------------------------+
> +| Field     | Byte Length | Byte Offset | Description                     |
> ++===========+=============+=============+=================================+
> +| preempted |      8      |      0      | Indicate the VCPU who owns this |

NIT: s/Indicate/Indicates that/. Also more common English would be "the VCPU *that* owns"

> +|           |             |             | struct is running or not.       |
> +|           |             |             | Non-zero values mean the VCPU   |
> +|           |             |             | has been preempted. Zero means  |
> +|           |             |             | the VCPU is not preempted.      |
> ++-----------+-------------+-------------+---------------------------------+
> +
> +The preempted field will be updated to 1 by the hypervisor prior to scheduling
> +a VCPU. When the VCPU is scheduled out, the preempted field will be updated
> +to 0 by the hypervisor.
> +
> +The structure will be present within a reserved region of the normal memory
> +given to the guest. The guest should not attempt to write into this memory.
> +There is a structure per VCPU of the guest.

I think it would be worth mentioning in this document that the structure is guaranteed to be 64-byte aligned.

Steve

> +
> +For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
> +section "4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL".
> diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
> index 6f3bd64a05b0..c10a5945075b 100644
> --- a/Documentation/virt/kvm/devices/vcpu.txt
> +++ b/Documentation/virt/kvm/devices/vcpu.txt
> @@ -74,3 +74,17 @@ Specifies the base address of the stolen time structure for this VCPU. The
>   base address must be 64 byte aligned and exist within a valid guest memory
>   region. See Documentation/virt/kvm/arm/pvtime.txt for more information
>   including the layout of the stolen time structure.
> +
> +4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL
> +Architectures: ARM64
> +
> +4.1 ATTRIBUTE: KVM_ARM_VCPU_PVLOCK_IPA
> +Parameters: 64-bit base address
> +Returns: -ENXIO:  PV lock not implemented
> +         -EEXIST: Base address already set for this VCPU
> +         -EINVAL: Base address not 64 byte aligned
> +
> +Specifies the base address of the PV lock structure for this VCPU. The
> +base address must be 64 byte aligned and exist within a valid guest memory
> +region. See Documentation/virt/kvm/arm/pvlock.rst for more information
> +including the layout of the pv lock structure.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
