Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD1012AAFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 09:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x923Jgo6OTPojUcUXVEWgiBcrpsNpJv8QWyAqAlQY60=; b=ezL2FfV2u7NAV1
	6VWsyviKqM1thrDj5P7cXwFGIRBP4TGZh7bq3O2OFzohdzVlMrGUGMBoOgbwmP/1rrxgAIH+Xk3Fy
	O6ywz6xktpfnHvvQFjGksy/nV0aYnxwCPaEGno6VFfLk5PY4v2wHw2yepec6iltRRcMCSDosaWDPf
	YPavNVl9L+RN/h+oNKdke2SxMWXJ1uufsC5MBJx41aduFlHa3i3D/B0eNWVZtjbKiGwCrDrV3ii2U
	tGZOCUhgr6vJpl+kc1Jeslb9K9RFi9KICrPQIT0zTW0muH/Ny2ACvgKTvKpv9DQ7Ic+32yiFapYOf
	ASSZa2j0brzuJp9FKb7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikObj-0001lE-BF; Thu, 26 Dec 2019 08:34:59 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikObW-0001jV-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 08:34:48 +0000
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 7577A6BC005611B887E2;
 Thu, 26 Dec 2019 16:34:42 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Dec 2019 16:34:41 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Dec 2019 16:34:41 +0800
Subject: Re: [PATCH 5/5] KVM: arm64: Support the vcpu preemption check
To: Steven Price <steven.price@arm.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
 <20191217135549.3240-6-yezengruan@huawei.com>
 <20191217144032.GD38811@arm.com>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <eab5db1c-84d1-5160-3d29-33bbb72f328a@huawei.com>
Date: Thu, 26 Dec 2019 16:34:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191217144032.GD38811@arm.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme719-chm.china.huawei.com (10.1.199.115) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_003446_948233_805D4AD6 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>, James Morse <James.Morse@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>, Catalin
 Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On 2019/12/17 22:40, Steven Price wrote:
> On Tue, Dec 17, 2019 at 01:55:49PM +0000, yezengruan@huawei.com wrote:
>> From: Zengruan Ye <yezengruan@huawei.com>
>>
>> Support the vcpu_is_preempted() functionality under KVM/arm64. This will
>> enhance lock performance on overcommitted hosts (more runnable vcpus
>> than physical cpus in the system) as doing busy waits for preempted
>> vcpus will hurt system performance far worse than early yielding.
>>
>> unix benchmark result:
>>   host:  kernel 5.5.0-rc1, HiSilicon Kunpeng920, 8 cpus
>>   guest: kernel 5.5.0-rc1, 16 vcpus
>>
>>                test-case                |    after-patch    |   before-patch
>> ----------------------------------------+-------------------+------------------
>>  Dhrystone 2 using register variables   | 334600751.0 lps   | 335319028.3 lps
>>  Double-Precision Whetstone             |     32856.1 MWIPS |     32849.6 MWIPS
>>  Execl Throughput                       |      3662.1 lps   |      2718.0 lps
>>  File Copy 1024 bufsize 2000 maxblocks  |    432906.4 KBps  |    158011.8 KBps
>>  File Copy 256 bufsize 500 maxblocks    |    116023.0 KBps  |     37664.0 KBps
>>  File Copy 4096 bufsize 8000 maxblocks  |   1432769.8 KBps  |    441108.8 KBps
>>  Pipe Throughput                        |   6405029.6 lps   |   6021457.6 lps
>>  Pipe-based Context Switching           |    185872.7 lps   |    184255.3 lps
>>  Process Creation                       |      4025.7 lps   |      3706.6 lps
>>  Shell Scripts (1 concurrent)           |      6745.6 lpm   |      6436.1 lpm
>>  Shell Scripts (8 concurrent)           |       998.7 lpm   |       931.1 lpm
>>  System Call Overhead                   |   3913363.1 lps   |   3883287.8 lps
>> ----------------------------------------+-------------------+------------------
>>  System Benchmarks Index Score          |      1835.1       |      1327.6
>>
>> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
>> ---
>>  arch/arm64/include/asm/paravirt.h |  3 +
>>  arch/arm64/kernel/paravirt.c      | 91 +++++++++++++++++++++++++++++++
>>  arch/arm64/kernel/setup.c         |  2 +
>>  include/linux/cpuhotplug.h        |  1 +
>>  4 files changed, 97 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/paravirt.h b/arch/arm64/include/asm/paravirt.h
>> index 7b1c81b544bb..a2cd0183bbef 100644
>> --- a/arch/arm64/include/asm/paravirt.h
>> +++ b/arch/arm64/include/asm/paravirt.h
>> @@ -29,6 +29,8 @@ static inline u64 paravirt_steal_clock(int cpu)
>>  
>>  int __init pv_time_init(void);
>>  
>> +int __init kvm_guest_init(void);
>> +
> 
> This is a *very* generic name - I suggest something like pv_lock_init()
> so it's clear what the function actually does.
> 
>>  __visible bool __native_vcpu_is_preempted(int cpu);
>>  
>>  static inline bool pv_vcpu_is_preempted(int cpu)
>> @@ -39,6 +41,7 @@ static inline bool pv_vcpu_is_preempted(int cpu)
>>  #else
>>  
>>  #define pv_time_init() do {} while (0)
>> +#define kvm_guest_init() do {} while (0)
>>  
>>  #endif // CONFIG_PARAVIRT
>>  
>> diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
>> index d8f1ba8c22ce..a86dead40473 100644
>> --- a/arch/arm64/kernel/paravirt.c
>> +++ b/arch/arm64/kernel/paravirt.c
>> @@ -22,6 +22,7 @@
>>  #include <asm/paravirt.h>
>>  #include <asm/pvclock-abi.h>
>>  #include <asm/smp_plat.h>
>> +#include <asm/pvlock-abi.h>
>>  
>>  struct static_key paravirt_steal_enabled;
>>  struct static_key paravirt_steal_rq_enabled;
>> @@ -158,3 +159,93 @@ int __init pv_time_init(void)
>>  
>>  	return 0;
>>  }
>> +
>> +DEFINE_PER_CPU(struct pvlock_vcpu_state, pvlock_vcpu_region) __aligned(64);
>> +EXPORT_PER_CPU_SYMBOL(pvlock_vcpu_region);
>> +
>> +static int pvlock_vcpu_state_dying_cpu(unsigned int cpu)
>> +{
>> +	struct pvlock_vcpu_state *reg;
>> +
>> +	reg = this_cpu_ptr(&pvlock_vcpu_region);
>> +	if (!reg)
>> +		return -EFAULT;
>> +
>> +	memset(reg, 0, sizeof(*reg));
> 
> I might be missing something obvious here - but I don't see the point of
> this. The hypervisor might immediately overwrite the structure again.
> Indeed you should conside a mechanism for the guest to "unregister" the
> region - otherwise you will face issues with the likes of kexec.
> 
> For pv_time the memory is allocated by the hypervisor not the guest to
> avoid lifetime issues about kexec.


Thanks for pointing it out to me! I'll update the memory allocation
mechanism of the PV lock structure to avoid lifetime issues about
kexec.

> 
>> +
>> +	return 0;
>> +}
>> +
>> +static int init_pvlock_vcpu_state(unsigned int cpu)
>> +{
>> +	struct pvlock_vcpu_state *reg;
>> +	struct arm_smccc_res res;
>> +
>> +	reg = this_cpu_ptr(&pvlock_vcpu_region);
>> +	if (!reg)
>> +		return -EFAULT;
>> +
>> +	/* Pass the memory address to host via hypercall */
>> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_LOCK_PREEMPTED,
>> +			     virt_to_phys(reg), &res);
>> +
>> +	return 0;
>> +}
>> +
>> +static bool kvm_vcpu_is_preempted(int cpu)
>> +{
>> +	struct pvlock_vcpu_state *reg = &per_cpu(pvlock_vcpu_region, cpu);
>> +
>> +	if (reg)
>> +		return !!(reg->preempted & 1);
>> +
>> +	return false;
>> +}
>> +
>> +static int kvm_arm_init_pvlock(void)
>> +{
>> +	int ret;
>> +
>> +	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
>> +				"hypervisor/arm/pvlock:starting",
>> +				init_pvlock_vcpu_state,
>> +				pvlock_vcpu_state_dying_cpu);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	pv_ops.lock.vcpu_is_preempted = kvm_vcpu_is_preempted;
>> +
>> +	pr_info("using PV-lock preempted\n");
>> +
>> +	return 0;
>> +}
>> +
>> +static bool has_kvm_pvlock(void)
>> +{
>> +	struct arm_smccc_res res;
>> +
>> +	/* To detect the presence of PV lock support we require SMCCC 1.1+ */
>> +	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
>> +		return false;
>> +
>> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
>> +			     ARM_SMCCC_HV_PV_LOCK_FEATURES, &res);
>> +
>> +	if (res.a0 != SMCCC_RET_SUCCESS)
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +int __init kvm_guest_init(void)
>> +{
>> +	if (is_hyp_mode_available())
>> +		return 0;
>> +
>> +	if (!has_kvm_pvlock())
>> +		return 0;
>> +
>> +	kvm_arm_init_pvlock();
> 
> Consider reporting errors from kvm_arm_init_pvlock()? At the moment
> it's impossible to tell the difference between pvlock not being
> supported and something failing in the setup.

Good point, I'll update the code.

> 
> Steve
> 
>> +
>> +	return 0;
>> +}
>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>> index 56f664561754..64c4d515ba2d 100644
>> --- a/arch/arm64/kernel/setup.c
>> +++ b/arch/arm64/kernel/setup.c
>> @@ -341,6 +341,8 @@ void __init setup_arch(char **cmdline_p)
>>  	smp_init_cpus();
>>  	smp_build_mpidr_hash();
>>  
>> +	kvm_guest_init();
>> +
>>  	/* Init percpu seeds for random tags after cpus are set up. */
>>  	kasan_init_tags();
>>  
>> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
>> index e51ee772b9f5..f72ff95ab63a 100644
>> --- a/include/linux/cpuhotplug.h
>> +++ b/include/linux/cpuhotplug.h
>> @@ -138,6 +138,7 @@ enum cpuhp_state {
>>  	CPUHP_AP_DUMMY_TIMER_STARTING,
>>  	CPUHP_AP_ARM_XEN_STARTING,
>>  	CPUHP_AP_ARM_KVMPV_STARTING,
>> +	CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
>>  	CPUHP_AP_ARM_CORESIGHT_STARTING,
>>  	CPUHP_AP_ARM64_ISNDEP_STARTING,
>>  	CPUHP_AP_SMPCFD_DYING,
>> -- 
>> 2.19.1
>>
>>
> 
> .
> 

Thanks,

Zengruan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
