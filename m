Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7590E8108D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 05:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nW/iV378WNdjP1CJmFTmjO75nEE6kbNQ9/KVjQfK+4g=; b=eaM3RmyWQE0v9MWr5tTbcigWa
	Eb1Ht92AXXpc101nyVCIcjOODWPkrp9W9c1zC6vlwd0DXC/+VNHGUHHEAx7kI6U4y5pNzJCYrits9
	c78oKmmzdWGy6LdW3dF9Cb6i9/klzyg7nUbsyOBrCKSLmSTTr1WLd9EF/5vcXGN0qEPrg4WOt1/FF
	H/XJCYfFQCllsOx96G7V325Kdz+O8hhe8o/c1aLKfjaYgqF50BU4ArHawMmJSgpBghbTAXX19qiMH
	FSAGXd2A2dJt8+peai5ukzKrramrSbR5sokdc7jXcy+bUfLzcYHd2LqaYi6eD9wvDKLJuAgKuI7tK
	rJ0fHQw2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huTe4-0004gA-9V; Mon, 05 Aug 2019 03:26:48 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huTds-0004f0-7L
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 03:26:38 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0D4FB1DD753B7D944085;
 Mon,  5 Aug 2019 11:26:25 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 5 Aug 2019
 11:26:17 +0800
Subject: Re: [PATCH 1/9] KVM: arm64: Document PV-time interface
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-2-steven.price@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <3bdd764a-b6f5-d17e-a703-d8eb13838efc@huawei.com>
Date: Mon, 5 Aug 2019 11:23:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190802145017.42543-2-steven.price@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_202636_447777_7CE7530B 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

On 2019/8/2 22:50, Steven Price wrote:
> Introduce a paravirtualization interface for KVM/arm64 based on the
> "Arm Paravirtualized Time for Arm-Base Systems" specification DEN 0057A.
> 
> This only adds the details about "Stolen Time" as the details of "Live
> Physical Time" have not been fully agreed.
> 
> User space can specify a reserved area of memory for the guest and
> inform KVM to populate the memory with information on time that the host
> kernel has stolen from the guest.
> 
> A hypercall interface is provided for the guest to interrogate the
> hypervisor's support for this interface and the location of the shared
> memory structures.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>   Documentation/virtual/kvm/arm/pvtime.txt | 107 +++++++++++++++++++++++
>   1 file changed, 107 insertions(+)
>   create mode 100644 Documentation/virtual/kvm/arm/pvtime.txt
                                     ^^^^^^^
This directory has been renamed recently, see:

https://patchwork.ozlabs.org/patch/1136104/


Zenghui

> 
> diff --git a/Documentation/virtual/kvm/arm/pvtime.txt b/Documentation/virtual/kvm/arm/pvtime.txt
> new file mode 100644
> index 000000000000..e6ae9799e1d5
> --- /dev/null
> +++ b/Documentation/virtual/kvm/arm/pvtime.txt
> @@ -0,0 +1,107 @@
> +Paravirtualized time support for arm64
> +======================================
> +
> +Arm specification DEN0057/A defined a standard for paravirtualised time
> +support for Aarch64 guests:
> +
> +https://developer.arm.com/docs/den0057/a
> +
> +KVM/Arm64 implements the stolen time part of this specification by providing
> +some hypervisor service calls to support a paravirtualized guest obtaining a
> +view of the amount of time stolen from its execution.
> +
> +Two new SMCCC compatible hypercalls are defined:
> +
> +PV_FEATURES 0xC5000020
> +PV_TIME_ST  0xC5000022
> +
> +These are only available in the SMC64/HVC64 calling convention as
> +paravirtualized time is not available to 32 bit Arm guests.
> +
> +PV_FEATURES
> +    Function ID:  (uint32)  : 0xC5000020
> +    PV_func_id:   (uint32)  : Either PV_TIME_LPT or PV_TIME_ST
> +    Return value: (int32)   : NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
> +                              PV-time feature is supported by the hypervisor.
> +
> +PV_TIME_ST
> +    Function ID:  (uint32)  : 0xC5000022
> +    Return value: (int64)   : IPA of the stolen time data structure for this
> +                              (V)CPU. On failure:
> +                              NOT_SUPPORTED (-1)
> +
> +Stolen Time
> +-----------
> +
> +The structure pointed to by the PV_TIME_ST hypercall is as follows:
> +
> +  Field       | Byte Length | Byte Offset | Description
> +  ----------- | ----------- | ----------- | --------------------------
> +  Revision    |      4      |      0      | Must be 0 for version 0.1
> +  Attributes  |      4      |      4      | Must be 0
> +  Stolen time |      8      |      8      | Stolen time in unsigned
> +              |             |             | nanoseconds indicating how
> +              |             |             | much time this VCPU thread
> +              |             |             | was involuntarily not
> +              |             |             | running on a physical CPU.
> +
> +The structure will be updated by the hypervisor periodically as time is stolen
> +from the VCPU. It will be present within a reserved region of the normal
> +memory given to the guest. The guest should not attempt to write into this
> +memory. There is a structure by VCPU of the guest.
> +
> +User space interface
> +====================
> +
> +User space can request that KVM provide the paravirtualized time interface to
> +a guest by creating a KVM_DEV_TYPE_ARM_PV_TIME device, for example:
> +
> +    struct kvm_create_device pvtime_device = {
> +            .type = KVM_DEV_TYPE_ARM_PV_TIME,
> +            .attr = 0,
> +            .flags = 0,
> +    };
> +
> +    pvtime_fd = ioctl(vm_fd, KVM_CREATE_DEVICE, &pvtime_device);
> +
> +The guest IPA of the structures must be given to KVM. This is the base address
> +of an array of stolen time structures (one for each VCPU). For example:
> +
> +    struct kvm_device_attr st_base = {
> +            .group = KVM_DEV_ARM_PV_TIME_PADDR,
> +            .attr = KVM_DEV_ARM_PV_TIME_ST,
> +            .addr = (u64)(unsigned long)&st_paddr
> +    };
> +
> +    ioctl(pvtime_fd, KVM_SET_DEVICE_ATTR, &st_base);
> +
> +For migration (or save/restore) of a guest it is necessary to save the contents
> +of the shared page(s) and later restore them. KVM_DEV_ARM_PV_TIME_STATE_SIZE
> +provides the size of this data and KVM_DEV_ARM_PV_TIME_STATE allows the state
> +to be read/written.
> +
> +It is also necessary for the physical address to be set identically when
> +restoring.
> +
> +    void *save_state(int fd, u64 attr, u32 *size) {
> +        struct kvm_device_attr get_size = {
> +                .group = KVM_DEV_ARM_PV_TIME_STATE_SIZE,
> +                .attr = attr,
> +                .addr = (u64)(unsigned long)size
> +        };
> +
> +        ioctl(fd, KVM_GET_DEVICE_ATTR, get_size);
> +
> +        void *buffer = malloc(*size);
> +
> +        struct kvm_device_attr get_state = {
> +                .group = KVM_DEV_ARM_PV_TIME_STATE,
> +                .attr = attr,
> +                .addr = (u64)(unsigned long)size
> +        };
> +
> +        ioctl(fd, KVM_GET_DEVICE_ATTR, buffer);
> +    }
> +
> +    void *st_state = save_state(pvtime_fd, KVM_DEV_ARM_PV_TIME_ST, &st_size);
> +
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
