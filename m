Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E28C9917A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFixdmoX6Tb90Zm5IHtKmm1vkiCtE5wZBEQehFJQ7nA=; b=E2+WKr8VN4oVw7
	6mPvrjpAxIL1IFk+PvIoB6rgHgEZFTGke7+OThKRHSAB1gitZIPi5JWp0C2xLDWMYv9wxo4E40LXg
	J1MfuwnZ+d04NNqMMmsPjImcbmo0O5WQv1ylg6JDzDYXKh05gREapqaC0e5xBvfJJVYXcGiSeDlMm
	srITq7pBooVo9+/gdKoVF71v0AuB5E5/y+8WllJ3U9o1Qugmyq3zDi0DPVkRx0ca7eyEFwOqKcSWj
	d5Y4OsxwoTtC+4uMflDCgynBIfTGiEWPYEAfZ8/weGV1XiL7dMrlH5Fga2JVFhL0/aTNxUj63BdIX
	tavzJN4GBGNNBVIO9C2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kn2-000646-Dp; Thu, 22 Aug 2019 10:58:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kmh-0005wH-W5
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:57:42 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DC7189DA9D936A007E2D;
 Thu, 22 Aug 2019 18:57:36 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 18:57:35 +0800
Date: Thu, 22 Aug 2019 11:57:22 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v3 07/10] KVM: arm64: Provide a PV_TIME device to user
 space
Message-ID: <20190822115722.00005aa7@huawei.com>
In-Reply-To: <20190821153656.33429-8-steven.price@arm.com>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-8-steven.price@arm.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_035740_496922_157E0AE1 
X-CRM114-Status: GOOD (  21.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Radim =?UTF-8?Q?Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K
 Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell
 King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo
 Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 16:36:53 +0100
Steven Price <steven.price@arm.com> wrote:

> Allow user space to inform the KVM host where in the physical memory
> map the paravirtualized time structures should be located.
> 
> A device is created which provides the base address of an array of
> Stolen Time (ST) structures, one for each VCPU. There must be (64 *
> total number of VCPUs) bytes of memory available at this location.
> 
> The address is given in terms of the physical address visible to
> the guest and must be page aligned. The guest will discover the address
> via a hypercall.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

Hi Steven,

One general question inline.  I'm not particularly familiar with this area
of the kernel, so maybe I'm missing something obvious, but having
.destroy free the kvm_device which wasn't created in .create seems
'unusual'. 

Otherwise, FWIW looks good to me.

Jonathan

> ---
>  arch/arm/include/asm/kvm_host.h   |  4 ++
>  arch/arm64/include/asm/kvm_host.h |  1 +
>  arch/arm64/include/uapi/asm/kvm.h |  8 +++
>  include/uapi/linux/kvm.h          |  2 +
>  virt/kvm/arm/arm.c                |  1 +
>  virt/kvm/arm/pvtime.c             | 94 +++++++++++++++++++++++++++++++
>  6 files changed, 110 insertions(+)
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 47d2ced99421..b6c8dbc0556b 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -325,6 +325,10 @@ static inline int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  int kvm_perf_init(void);
>  int kvm_perf_teardown(void);
>  
> +static inline void kvm_pvtime_init(void)
> +{
> +}
> +
>  static inline int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
>  {
>  	return SMCCC_RET_NOT_SUPPORTED;
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index b6fa7beffd8a..7b2147f62c16 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -489,6 +489,7 @@ void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
>  int kvm_perf_init(void);
>  int kvm_perf_teardown(void);
>  
> +void kvm_pvtime_init(void);
>  int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
>  int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu);
>  int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init);
> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> index 9a507716ae2f..209c4de67306 100644
> --- a/arch/arm64/include/uapi/asm/kvm.h
> +++ b/arch/arm64/include/uapi/asm/kvm.h
> @@ -367,6 +367,14 @@ struct kvm_vcpu_events {
>  #define KVM_PSCI_RET_INVAL		PSCI_RET_INVALID_PARAMS
>  #define KVM_PSCI_RET_DENIED		PSCI_RET_DENIED
>  
> +/* Device Control API: PV_TIME */
> +#define KVM_DEV_ARM_PV_TIME_REGION	0
> +#define  KVM_DEV_ARM_PV_TIME_ST		0
> +struct kvm_dev_arm_st_region {
> +	__u64 gpa;
> +	__u64 size;
> +};
> +
>  #endif
>  
>  #endif /* __ARM_KVM_H__ */
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index 5e3f12d5359e..265156a984f2 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -1222,6 +1222,8 @@ enum kvm_device_type {
>  #define KVM_DEV_TYPE_ARM_VGIC_ITS	KVM_DEV_TYPE_ARM_VGIC_ITS
>  	KVM_DEV_TYPE_XIVE,
>  #define KVM_DEV_TYPE_XIVE		KVM_DEV_TYPE_XIVE
> +	KVM_DEV_TYPE_ARM_PV_TIME,
> +#define KVM_DEV_TYPE_ARM_PV_TIME	KVM_DEV_TYPE_ARM_PV_TIME
>  	KVM_DEV_TYPE_MAX,
>  };
>  
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 5e8343e2dd62..bfb5a842e6ab 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -1494,6 +1494,7 @@ static int init_subsystems(void)
>  
>  	kvm_perf_init();
>  	kvm_coproc_table_init();
> +	kvm_pvtime_init();
>  
>  out:
>  	on_each_cpu(_kvm_arch_hardware_disable, NULL, 1);
> diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
> index 28603689f6e0..3e55c1fb6a49 100644
> --- a/virt/kvm/arm/pvtime.c
> +++ b/virt/kvm/arm/pvtime.c
> @@ -2,7 +2,9 @@
>  // Copyright (C) 2019 Arm Ltd.
>  
>  #include <linux/arm-smccc.h>
> +#include <linux/kvm_host.h>
>  
> +#include <asm/kvm_mmu.h>
>  #include <asm/pvclock-abi.h>
>  
>  #include <kvm/arm_hypercalls.h>
> @@ -86,3 +88,95 @@ int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
>  
>  	return ret;
>  }
> +
> +static int kvm_arm_pvtime_create(struct kvm_device *dev, u32 type)
> +{
> +	return 0;
> +}
> +
> +static void kvm_arm_pvtime_destroy(struct kvm_device *dev)
> +{
> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
> +
> +	pvtime->st_base = GPA_INVALID;
> +	kfree(dev);

Nothing to do with your patch as such... All users do the same.

This seems miss balanced. Why do we need to free the device by hand
when we didn't create it in the create function?  I appreciate
the comments say this is needed, but as far as I can see every
single callback does kfree(dev) at the end which seems an
odd thing to do.

> +}
> +
> +static int kvm_arm_pvtime_set_attr(struct kvm_device *dev,
> +				   struct kvm_device_attr *attr)
> +{
> +	struct kvm *kvm = dev->kvm;
> +	struct kvm_arch_pvtime *pvtime = &kvm->arch.pvtime;
> +	u64 __user *user = (u64 __user *)attr->addr;
> +	struct kvm_dev_arm_st_region region;
> +
> +	switch (attr->group) {
> +	case KVM_DEV_ARM_PV_TIME_REGION:
> +		if (copy_from_user(&region, user, sizeof(region)))
> +			return -EFAULT;
> +		if (region.gpa & ~PAGE_MASK)
> +			return -EINVAL;
> +		if (region.size & ~PAGE_MASK)
> +			return -EINVAL;
> +		switch (attr->attr) {
> +		case KVM_DEV_ARM_PV_TIME_ST:
> +			if (pvtime->st_base != GPA_INVALID)
> +				return -EEXIST;
> +			pvtime->st_base = region.gpa;
> +			pvtime->st_size = region.size;
> +			return 0;
> +		}
> +		break;
> +	}
> +	return -ENXIO;
> +}
> +
> +static int kvm_arm_pvtime_get_attr(struct kvm_device *dev,
> +				   struct kvm_device_attr *attr)
> +{
> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
> +	u64 __user *user = (u64 __user *)attr->addr;
> +	struct kvm_dev_arm_st_region region;
> +
> +	switch (attr->group) {
> +	case KVM_DEV_ARM_PV_TIME_REGION:
> +		switch (attr->attr) {
> +		case KVM_DEV_ARM_PV_TIME_ST:
> +			region.gpa = pvtime->st_base;
> +			region.size = pvtime->st_size;
> +			if (copy_to_user(user, &region, sizeof(region)))
> +				return -EFAULT;
> +			return 0;
> +		}
> +		break;
> +	}
> +	return -ENXIO;
> +}
> +
> +static int kvm_arm_pvtime_has_attr(struct kvm_device *dev,
> +				   struct kvm_device_attr *attr)
> +{
> +	switch (attr->group) {
> +	case KVM_DEV_ARM_PV_TIME_REGION:
> +		switch (attr->attr) {
> +		case KVM_DEV_ARM_PV_TIME_ST:
> +			return 0;
> +		}
> +		break;
> +	}
> +	return -ENXIO;
> +}
> +
> +static const struct kvm_device_ops pvtime_ops = {
> +	"Arm PV time",
> +	.create = kvm_arm_pvtime_create,
> +	.destroy = kvm_arm_pvtime_destroy,
> +	.set_attr = kvm_arm_pvtime_set_attr,
> +	.get_attr = kvm_arm_pvtime_get_attr,
> +	.has_attr = kvm_arm_pvtime_has_attr
> +};
> +
> +void kvm_pvtime_init(void)
> +{
> +	kvm_register_device_ops(&pvtime_ops, KVM_DEV_TYPE_ARM_PV_TIME);
> +}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
