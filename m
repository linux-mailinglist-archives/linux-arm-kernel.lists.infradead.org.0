Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DFF87C22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iJrX28zcyWhjJkzjwlgKgEiolb8ElvS+6hWxxZfQ1mU=; b=iEt5tQKeqkAIU4fitr5VJSksC
	sWAK2zxMjkL3c04QVl8h6iPFuj/oxrCcLtKbnIOtQPFC+GYi0DjZuk+oCze+f2POt13Ol8yjZvnSU
	j8zasYAE5hNWCXb7ea6N8KyZ/ChgqGjQPSvd/CceVeyBX1BxEIRK1asrKuPpkDSuroiC76Jw+iz0B
	DPqGJxOemODJvh3hfMj26adHX0lJ5EfpBoT7TwOqq3mSWJDkAFCCp9+9AydhlQ1vMMhrQSvXPRxdf
	6f7gAzWlru95Y4ldvBcpU+adkA5A7kOysXcdrYJST/3Tj9wSm5OFzgUwr0tsPjaVzIVCeGhUUCE2E
	MnF7GDTow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5Jp-0002YV-BA; Fri, 09 Aug 2019 13:52:33 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5JO-0002Og-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:52:08 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ACB5A78427CCE41A010A;
 Fri,  9 Aug 2019 21:51:52 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Fri, 9 Aug 2019
 21:51:43 +0800
Subject: Re: [PATCH 9/9] arm64: Retrieve stolen time as paravirtualized guest
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-10-steven.price@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5d763c8e-9c06-c448-2644-25bfa0e57e8c@huawei.com>
Date: Fri, 9 Aug 2019 21:51:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190802145017.42543-10-steven.price@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_065206_805176_E5CB97E4 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 2019/8/2 22:50, Steven Price wrote:
> Enable paravirtualization features when running under a hypervisor
> supporting the PV_TIME_ST hypercall.
> 
> For each (v)CPU, we ask the hypervisor for the location of a shared
> page which the hypervisor will use to report stolen time to us. We set
> pv_time_ops to the stolen time function which simply reads the stolen
> value from the shared page for a VCPU. We guarantee single-copy
> atomicity using READ_ONCE which means we can also read the stolen
> time for another VCPU than the currently running one while it is
> potentially being updated by the hypervisor.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>   arch/arm64/kernel/Makefile |   1 +
>   arch/arm64/kernel/kvm.c    | 155 +++++++++++++++++++++++++++++++++++++
>   include/linux/cpuhotplug.h |   1 +
>   3 files changed, 157 insertions(+)
>   create mode 100644 arch/arm64/kernel/kvm.c
> 
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index 478491f07b4f..eb36edf9b930 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
>   obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
>   obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
>   obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
> +obj-$(CONFIG_PARAVIRT)			+= kvm.o
>   
>   obj-y					+= vdso/ probes/
>   obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
> diff --git a/arch/arm64/kernel/kvm.c b/arch/arm64/kernel/kvm.c
> new file mode 100644
> index 000000000000..245398c79dae
> --- /dev/null
> +++ b/arch/arm64/kernel/kvm.c
> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (C) 2019 Arm Ltd.
> +
> +#define pr_fmt(fmt) "kvmarm-pv: " fmt
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/cpuhotplug.h>
> +#include <linux/io.h>
> +#include <linux/printk.h>
> +#include <linux/psci.h>
> +#include <linux/reboot.h>
> +#include <linux/slab.h>
> +
> +#include <asm/paravirt.h>
> +#include <asm/pvclock-abi.h>
> +#include <asm/smp_plat.h>
> +
> +struct kvmarm_stolen_time_region {
> +	struct pvclock_vcpu_stolen_time_info *kaddr;
> +};
> +
> +static DEFINE_PER_CPU(struct kvmarm_stolen_time_region, stolen_time_region);
> +
> +static bool steal_acc = true;
> +static int __init parse_no_stealacc(char *arg)
> +{
> +	steal_acc = false;
> +	return 0;
> +}
> +early_param("no-steal-acc", parse_no_stealacc);
> +
> +/* return stolen time in ns by asking the hypervisor */
> +static u64 kvm_steal_clock(int cpu)
> +{
> +	struct kvmarm_stolen_time_region *reg;
> +
> +	reg = per_cpu_ptr(&stolen_time_region, cpu);
> +	if (!reg->kaddr) {
> +		pr_warn_once("stolen time enabled but not configured for cpu %d\n",
> +			     cpu);
> +		return 0;
> +	}
> +
> +	return le64_to_cpu(READ_ONCE(reg->kaddr->stolen_time));
> +}
> +
> +static int disable_stolen_time_current_cpu(void)
> +{
> +	struct kvmarm_stolen_time_region *reg;
> +
> +	reg = this_cpu_ptr(&stolen_time_region);
> +	if (!reg->kaddr)
> +		return 0;
> +
> +	memunmap(reg->kaddr);
> +	memset(reg, 0, sizeof(*reg));
> +
> +	return 0;
> +}
> +
> +static int stolen_time_dying_cpu(unsigned int cpu)
> +{
> +	return disable_stolen_time_current_cpu();
> +}
> +
> +static int init_stolen_time_cpu(unsigned int cpu)
> +{
> +	struct kvmarm_stolen_time_region *reg;
> +	struct arm_smccc_res res;
> +
> +	reg = this_cpu_ptr(&stolen_time_region);
> +
> +	if (reg->kaddr)
> +		return 0;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_TIME_ST, &res);
> +
> +	if ((long)res.a0 < 0)
> +		return -EINVAL;

Hi Steven,

Since userspace is not involved yet (right?), no one will create the
PV_TIME device for guest (and no one will specify the IPA of the shared
stolen time region), and I guess we will get a "not supported" error
here.

So what should we do if we want to test this series now?  Any userspace
tools?  If no, do you have any plans for userspace developing? ;-)


Thanks,
zenghui

> +
> +	reg->kaddr = memremap(res.a0,
> +			sizeof(struct pvclock_vcpu_stolen_time_info),
> +			MEMREMAP_WB);
> +
> +	if (reg->kaddr == NULL) {
> +		pr_warn("Failed to map stolen time data structure\n");
> +		return -EINVAL;
> +	}
> +
> +	if (le32_to_cpu(reg->kaddr->revision) != 0 ||
> +			le32_to_cpu(reg->kaddr->attributes) != 0) {
> +		pr_warn("Unexpected revision or attributes in stolen time data\n");
> +		return -ENXIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int kvm_arm_init_stolen_time(void)
> +{
> +	int ret;
> +
> +	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVMPV_STARTING,
> +				"hypervisor/kvmarm/pv:starting",
> +				init_stolen_time_cpu, stolen_time_dying_cpu);
> +	if (ret < 0)
> +		return ret;
> +	return 0;
> +}
> +
> +static bool has_kvm_steal_clock(void)
> +{
> +	struct arm_smccc_res res;
> +
> +	/* To detect the presence of PV time support we require SMCCC 1.1+ */
> +	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
> +		return false;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
> +			     ARM_SMCCC_HV_PV_FEATURES, &res);
> +
> +	if (res.a0 != SMCCC_RET_SUCCESS)
> +		return false;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_FEATURES,
> +			     ARM_SMCCC_HV_PV_TIME_ST, &res);
> +
> +	if (res.a0 != SMCCC_RET_SUCCESS)
> +		return false;
> +
> +	return true;
> +}
> +
> +static int __init kvm_guest_init(void)
> +{
> +	int ret = 0;
> +
> +	if (!has_kvm_steal_clock())
> +		return 0;
> +
> +	ret = kvm_arm_init_stolen_time();
> +	if (ret)
> +		return ret;
> +
> +	pv_ops.time.steal_clock = kvm_steal_clock;
> +
> +	static_key_slow_inc(&paravirt_steal_enabled);
> +	if (steal_acc)
> +		static_key_slow_inc(&paravirt_steal_rq_enabled);
> +
> +	pr_info("using stolen time PV\n");
> +
> +	return 0;
> +}
> +early_initcall(kvm_guest_init);
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index 068793a619ca..89d75edb5750 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -136,6 +136,7 @@ enum cpuhp_state {
>   	/* Must be the last timer callback */
>   	CPUHP_AP_DUMMY_TIMER_STARTING,
>   	CPUHP_AP_ARM_XEN_STARTING,
> +	CPUHP_AP_ARM_KVMPV_STARTING,
>   	CPUHP_AP_ARM_CORESIGHT_STARTING,
>   	CPUHP_AP_ARM64_ISNDEP_STARTING,
>   	CPUHP_AP_SMPCFD_DYING,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
