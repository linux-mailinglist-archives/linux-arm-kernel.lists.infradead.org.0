Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD98865C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sbr50Rfbxcql4deGio8KPYPLEUnTqdflb09Sxgt1pig=; b=pNh8uS6qyAC+Iu
	zSfCtXn6dkNuFW+IKFYyWHOK7qn2N7JZlaHhQLVClkic6rBKHqOih+tt0UV8t1zHjEKfL5PLiMyw5
	mNsP+JW0DmUu2DIHXfR9l4w1sXG0XjYrGUJ1fTIQSCRllTCa3CEslXgLrUuWthf45wbH5LV1XLYOy
	dco6+IRJ9bMUL3Lk1TCXWl0H2Cr0EVmQQOBqZk+6ixiqobY+2BMdxbMbdJ4atJ9U9jqZep4ApdnlF
	vLR2ox0rV6z6dOGnt2s+LtqP6PS/sVkgUt4sPQVZicFZLRzQGOD4wsaE5xOhygo33OQxsdCB5IEc7
	DXlVSzoRprhPb7BWt73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkMU-0003HH-5J; Thu, 08 Aug 2019 15:29:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkMI-0003FH-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:29:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E98A1596;
 Thu,  8 Aug 2019 08:29:35 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A89F3F706;
 Thu,  8 Aug 2019 08:29:33 -0700 (PDT)
Subject: Re: [PATCH 9/9] arm64: Retrieve stolen time as paravirtualized guest
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-10-steven.price@arm.com> <20190804105353.5e9824dc@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <dc8a1e56-7b52-cc8f-265d-27eb5f458613@arm.com>
Date: Thu, 8 Aug 2019 16:29:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804105353.5e9824dc@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_082943_078440_59E4E83F 
X-CRM114-Status: GOOD (  23.67  )
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
Cc: kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/08/2019 10:53, Marc Zyngier wrote:
> On Fri,  2 Aug 2019 15:50:17 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> Enable paravirtualization features when running under a hypervisor
>> supporting the PV_TIME_ST hypercall.
>>
>> For each (v)CPU, we ask the hypervisor for the location of a shared
>> page which the hypervisor will use to report stolen time to us. We set
>> pv_time_ops to the stolen time function which simply reads the stolen
>> value from the shared page for a VCPU. We guarantee single-copy
>> atomicity using READ_ONCE which means we can also read the stolen
>> time for another VCPU than the currently running one while it is
>> potentially being updated by the hypervisor.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/arm64/kernel/Makefile |   1 +
>>  arch/arm64/kernel/kvm.c    | 155 +++++++++++++++++++++++++++++++++++++
> 
> nit: Why not using paravirt.c, which clearly states what it does? The
> alternative would be to name it kvm-pv.c.

I can move it to paravirt.c - seems reasonable.

>>  include/linux/cpuhotplug.h |   1 +
>>  3 files changed, 157 insertions(+)
>>  create mode 100644 arch/arm64/kernel/kvm.c
>>
>> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
>> index 478491f07b4f..eb36edf9b930 100644
>> --- a/arch/arm64/kernel/Makefile
>> +++ b/arch/arm64/kernel/Makefile
>> @@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
>>  obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
>>  obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
>>  obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
>> +obj-$(CONFIG_PARAVIRT)			+= kvm.o
>>  
>>  obj-y					+= vdso/ probes/
>>  obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
>> diff --git a/arch/arm64/kernel/kvm.c b/arch/arm64/kernel/kvm.c
>> new file mode 100644
>> index 000000000000..245398c79dae
>> --- /dev/null
>> +++ b/arch/arm64/kernel/kvm.c
>> @@ -0,0 +1,155 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (C) 2019 Arm Ltd.
>> +
>> +#define pr_fmt(fmt) "kvmarm-pv: " fmt
>> +
>> +#include <linux/arm-smccc.h>
>> +#include <linux/cpuhotplug.h>
>> +#include <linux/io.h>
>> +#include <linux/printk.h>
>> +#include <linux/psci.h>
>> +#include <linux/reboot.h>
>> +#include <linux/slab.h>
>> +
>> +#include <asm/paravirt.h>
>> +#include <asm/pvclock-abi.h>
>> +#include <asm/smp_plat.h>
>> +
>> +struct kvmarm_stolen_time_region {
>> +	struct pvclock_vcpu_stolen_time_info *kaddr;
>> +};
>> +
>> +static DEFINE_PER_CPU(struct kvmarm_stolen_time_region, stolen_time_region);
>> +
>> +static bool steal_acc = true;
>> +static int __init parse_no_stealacc(char *arg)
>> +{
>> +	steal_acc = false;
>> +	return 0;
>> +}
>> +early_param("no-steal-acc", parse_no_stealacc);
>> +
>> +/* return stolen time in ns by asking the hypervisor */
>> +static u64 kvm_steal_clock(int cpu)
>> +{
>> +	struct kvmarm_stolen_time_region *reg;
>> +
>> +	reg = per_cpu_ptr(&stolen_time_region, cpu);
>> +	if (!reg->kaddr) {
>> +		pr_warn_once("stolen time enabled but not configured for cpu %d\n",
>> +			     cpu);
>> +		return 0;
>> +	}
>> +
>> +	return le64_to_cpu(READ_ONCE(reg->kaddr->stolen_time));
>> +}
>> +
>> +static int disable_stolen_time_current_cpu(void)
>> +{
>> +	struct kvmarm_stolen_time_region *reg;
>> +
>> +	reg = this_cpu_ptr(&stolen_time_region);
>> +	if (!reg->kaddr)
>> +		return 0;
>> +
>> +	memunmap(reg->kaddr);
>> +	memset(reg, 0, sizeof(*reg));
>> +
>> +	return 0;
>> +}
>> +
>> +static int stolen_time_dying_cpu(unsigned int cpu)
>> +{
>> +	return disable_stolen_time_current_cpu();
>> +}
>> +
>> +static int init_stolen_time_cpu(unsigned int cpu)
>> +{
>> +	struct kvmarm_stolen_time_region *reg;
>> +	struct arm_smccc_res res;
>> +
>> +	reg = this_cpu_ptr(&stolen_time_region);
>> +
>> +	if (reg->kaddr)
>> +		return 0;
> 
> Can this actually happen? It'd take two CPU_UP calls from the HP
> notifiers to get in that situation...

Yes, something would have to be very broken for that to happen - I'll
remove this check.

>> +
>> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_TIME_ST, &res);
>> +
>> +	if ((long)res.a0 < 0)
>> +		return -EINVAL;
>> +
>> +	reg->kaddr = memremap(res.a0,
>> +			sizeof(struct pvclock_vcpu_stolen_time_info),
>> +			MEMREMAP_WB);
>> +
>> +	if (reg->kaddr == NULL) {
>> +		pr_warn("Failed to map stolen time data structure\n");
>> +		return -EINVAL;
> 
> -ENOMEM is the expected return code.

Ok

>> +	}
>> +
>> +	if (le32_to_cpu(reg->kaddr->revision) != 0 ||
>> +			le32_to_cpu(reg->kaddr->attributes) != 0) {
>> +		pr_warn("Unexpected revision or attributes in stolen time data\n");
>> +		return -ENXIO;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int kvm_arm_init_stolen_time(void)
>> +{
>> +	int ret;
>> +
>> +	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVMPV_STARTING,
>> +				"hypervisor/kvmarm/pv:starting",
>> +				init_stolen_time_cpu, stolen_time_dying_cpu);
>> +	if (ret < 0)
>> +		return ret;
>> +	return 0;
>> +}
>> +
>> +static bool has_kvm_steal_clock(void)
>> +{
>> +	struct arm_smccc_res res;
>> +
>> +	/* To detect the presence of PV time support we require SMCCC 1.1+ */
>> +	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
>> +		return false;
>> +
>> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
>> +			     ARM_SMCCC_HV_PV_FEATURES, &res);
>> +
>> +	if (res.a0 != SMCCC_RET_SUCCESS)
>> +		return false;
>> +
>> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_FEATURES,
>> +			     ARM_SMCCC_HV_PV_TIME_ST, &res);
>> +
>> +	if (res.a0 != SMCCC_RET_SUCCESS)
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +static int __init kvm_guest_init(void)
>> +{
>> +	int ret = 0;
>> +
>> +	if (!has_kvm_steal_clock())
>> +		return 0;
>> +
>> +	ret = kvm_arm_init_stolen_time();
>> +	if (ret)
>> +		return ret;
>> +
>> +	pv_ops.time.steal_clock = kvm_steal_clock;
>> +
>> +	static_key_slow_inc(&paravirt_steal_enabled);
>> +	if (steal_acc)
>> +		static_key_slow_inc(&paravirt_steal_rq_enabled);
>> +
>> +	pr_info("using stolen time PV\n");
>> +
>> +	return 0;
>> +}
>> +early_initcall(kvm_guest_init);
> 
> Is there any reason why we wouldn't directly call into this rather than
> using an initcall?

I'm not sure where the direct call would go - any pointers?

Thanks,

Steve

>> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
>> index 068793a619ca..89d75edb5750 100644
>> --- a/include/linux/cpuhotplug.h
>> +++ b/include/linux/cpuhotplug.h
>> @@ -136,6 +136,7 @@ enum cpuhp_state {
>>  	/* Must be the last timer callback */
>>  	CPUHP_AP_DUMMY_TIMER_STARTING,
>>  	CPUHP_AP_ARM_XEN_STARTING,
>> +	CPUHP_AP_ARM_KVMPV_STARTING,
>>  	CPUHP_AP_ARM_CORESIGHT_STARTING,
>>  	CPUHP_AP_ARM64_ISNDEP_STARTING,
>>  	CPUHP_AP_SMPCFD_DYING,
> 
> 
> Thanks,
> 
> 	M.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
