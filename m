Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FDD135C4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GTJYHT2LM32BzP3xIjh9BKlAC7oEa3cl94dItehkYKE=; b=qPECmKwB3URF2nBrRl+peRrFY
	gafqpd84DVm3VP4mK40EcDVNT9uPWZTHwzrr0TDC0gvfkYhbhMLCc4nNIx9wNWAEcqoQT4iozm+IS
	PqWC182lDbmEytcNyUh6m7s0p3oEhhyu3qvAuEV74HMGFZRjjNJncfAXrjU7E+0Ba8rWwmuu8x0cg
	5pO4qPhbirLK8GSIuFGVU/LDtKQpj52gYtT2IbCCsU99bbl+XCeHm17yxvtHk3UzL+6BU9JCQhumu
	NG+sFDT+QZXM6uOVC0wppWgZ2KOgvbudN9homAMPJMyDenHOcZ3B4u0010628uYFcHuEF1KlsuhVD
	4P5pZ7MQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZRM-0004V6-Ii; Thu, 09 Jan 2020 15:09:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZRE-0004UK-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:09:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E08C1FB;
 Thu,  9 Jan 2020 07:09:32 -0800 (PST)
Received: from [10.1.27.38] (e122027.cambridge.arm.com [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 336333F534;
 Thu,  9 Jan 2020 07:09:30 -0800 (PST)
Subject: Re: [PATCH v2 6/6] KVM: arm64: Support the VCPU preemption check
To: Zengruan Ye <yezengruan@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 virtualization@lists.linux-foundation.org
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20191226135833.1052-7-yezengruan@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <5a1f6745-2deb-253b-7022-f2725d8d40ba@arm.com>
Date: Thu, 9 Jan 2020 15:09:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191226135833.1052-7-yezengruan@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_070933_034826_C8F4A9E6 
X-CRM114-Status: GOOD (  19.52  )
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
> Support the vcpu_is_preempted() functionality under KVM/arm64. This will
> enhance lock performance on overcommitted hosts (more runnable VCPUs
> than physical CPUs in the system) as doing busy waits for preempted
> VCPUs will hurt system performance far worse than early yielding.
> 
> unix benchmark result:
>    host:  kernel 5.5.0-rc1, HiSilicon Kunpeng920, 8 CPUs
>    guest: kernel 5.5.0-rc1, 16 VCPUs
> 
>                 test-case                |    after-patch    |   before-patch
> ----------------------------------------+-------------------+------------------
>   Dhrystone 2 using register variables   | 334600751.0 lps   | 335319028.3 lps
>   Double-Precision Whetstone             |     32856.1 MWIPS |     32849.6 MWIPS
>   Execl Throughput                       |      3662.1 lps   |      2718.0 lps
>   File Copy 1024 bufsize 2000 maxblocks  |    432906.4 KBps  |    158011.8 KBps
>   File Copy 256 bufsize 500 maxblocks    |    116023.0 KBps  |     37664.0 KBps
>   File Copy 4096 bufsize 8000 maxblocks  |   1432769.8 KBps  |    441108.8 KBps
>   Pipe Throughput                        |   6405029.6 lps   |   6021457.6 lps
>   Pipe-based Context Switching           |    185872.7 lps   |    184255.3 lps
>   Process Creation                       |      4025.7 lps   |      3706.6 lps
>   Shell Scripts (1 concurrent)           |      6745.6 lpm   |      6436.1 lpm
>   Shell Scripts (8 concurrent)           |       998.7 lpm   |       931.1 lpm
>   System Call Overhead                   |   3913363.1 lps   |   3883287.8 lps
> ----------------------------------------+-------------------+------------------
>   System Benchmarks Index Score          |      1835.1       |      1327.6
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>   arch/arm64/include/asm/paravirt.h |   3 +
>   arch/arm64/kernel/paravirt.c      | 117 ++++++++++++++++++++++++++++++
>   arch/arm64/kernel/setup.c         |   2 +
>   include/linux/cpuhotplug.h        |   1 +
>   4 files changed, 123 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/paravirt.h b/arch/arm64/include/asm/paravirt.h
> index 7b1c81b544bb..ca3a2c7881f3 100644
> --- a/arch/arm64/include/asm/paravirt.h
> +++ b/arch/arm64/include/asm/paravirt.h
> @@ -29,6 +29,8 @@ static inline u64 paravirt_steal_clock(int cpu)
>   
>   int __init pv_time_init(void);
>   
> +int __init pv_lock_init(void);
> +
>   __visible bool __native_vcpu_is_preempted(int cpu);
>   
>   static inline bool pv_vcpu_is_preempted(int cpu)
> @@ -39,6 +41,7 @@ static inline bool pv_vcpu_is_preempted(int cpu)
>   #else
>   
>   #define pv_time_init() do {} while (0)
> +#define pv_lock_init() do {} while (0)
>   
>   #endif // CONFIG_PARAVIRT
>   
> diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
> index d8f1ba8c22ce..bd2ad6a17a26 100644
> --- a/arch/arm64/kernel/paravirt.c
> +++ b/arch/arm64/kernel/paravirt.c
> @@ -22,6 +22,7 @@
>   #include <asm/paravirt.h>
>   #include <asm/pvclock-abi.h>
>   #include <asm/smp_plat.h>
> +#include <asm/pvlock-abi.h>
>   
>   struct static_key paravirt_steal_enabled;
>   struct static_key paravirt_steal_rq_enabled;
> @@ -35,6 +36,10 @@ struct pv_time_stolen_time_region {
>   	struct pvclock_vcpu_stolen_time *kaddr;
>   };
>   
> +struct pv_lock_state_region {
> +	struct pvlock_vcpu_state *kaddr;
> +};
> +
>   static DEFINE_PER_CPU(struct pv_time_stolen_time_region, stolen_time_region);
>   
>   static bool steal_acc = true;
> @@ -158,3 +163,115 @@ int __init pv_time_init(void)
>   
>   	return 0;
>   }
> +
> +static DEFINE_PER_CPU(struct pv_lock_state_region, lock_state_region);
> +
> +static bool kvm_vcpu_is_preempted(int cpu)
> +{
> +	struct pv_lock_state_region *reg;
> +	__le64 preempted_le;
> +
> +	reg = per_cpu_ptr(&lock_state_region, cpu);
> +	if (!reg->kaddr) {
> +		pr_warn_once("PV lock enabled but not configured for cpu %d\n",
> +			     cpu);
> +		return false;
> +	}
> +
> +	preempted_le = le64_to_cpu(READ_ONCE(reg->kaddr->preempted));
> +
> +	return !!(preempted_le & 1);

According to the documentation preempted != 0 means preempted, but here you are checking the LSB. You need to be consistent about the ABI.

> +}
> +
> +static int pvlock_vcpu_state_dying_cpu(unsigned int cpu)
> +{
> +	struct pv_lock_state_region *reg;
> +
> +	reg = this_cpu_ptr(&lock_state_region);
> +	if (!reg->kaddr)
> +		return 0;
> +
> +	memunmap(reg->kaddr);
> +	memset(reg, 0, sizeof(*reg));
> +
> +	return 0;
> +}
> +
> +static int init_pvlock_vcpu_state(unsigned int cpu)
> +{
> +	struct pv_lock_state_region *reg;
> +	struct arm_smccc_res res;
> +
> +	reg = this_cpu_ptr(&lock_state_region);
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_LOCK_PREEMPTED, &res);
> +
> +	if (res.a0 == SMCCC_RET_NOT_SUPPORTED) {
> +		pr_warn("Failed to init PV lock data structure\n");
> +		return -EINVAL;
> +	}
> +
> +	reg->kaddr = memremap(res.a0,
> +			      sizeof(struct pvlock_vcpu_state),
> +			      MEMREMAP_WB);
> +
> +	if (!reg->kaddr) {
> +		pr_warn("Failed to map PV lock data structure\n");
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static int kvm_arm_init_pvlock(void)
> +{
> +	int ret;
> +
> +	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
> +				"hypervisor/arm/pvlock:starting",
> +				init_pvlock_vcpu_state,
> +				pvlock_vcpu_state_dying_cpu);
> +	if (ret < 0) {
> +		pr_warn("PV-lock init failed\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static bool has_kvm_pvlock(void)
> +{
> +	struct arm_smccc_res res;
> +
> +	/* To detect the presence of PV lock support we require SMCCC 1.1+ */
> +	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
> +		return false;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
> +			     ARM_SMCCC_HV_PV_LOCK_FEATURES, &res);

As mentioned previously we could do with something more robust to check that the hypervisor is actually KVM before assuming that vendor specific IDs are valid.

Steve

> +
> +	if (res.a0 != SMCCC_RET_SUCCESS)
> +		return false;
> +
> +	return true;
> +}
> +
> +int __init pv_lock_init(void)
> +{
> +	int ret;
> +
> +	if (is_hyp_mode_available())
> +		return 0;
> +
> +	if (!has_kvm_pvlock())
> +		return 0;
> +
> +	ret = kvm_arm_init_pvlock();
> +	if (ret)
> +		return ret;
> +
> +	pv_ops.lock.vcpu_is_preempted = kvm_vcpu_is_preempted;
> +	pr_info("using PV-lock preempted\n");
> +
> +	return 0;
> +}
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 56f664561754..aa3a8b9e710f 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -341,6 +341,8 @@ void __init setup_arch(char **cmdline_p)
>   	smp_init_cpus();
>   	smp_build_mpidr_hash();
>   
> +	pv_lock_init();
> +
>   	/* Init percpu seeds for random tags after cpus are set up. */
>   	kasan_init_tags();
>   
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index e51ee772b9f5..f72ff95ab63a 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -138,6 +138,7 @@ enum cpuhp_state {
>   	CPUHP_AP_DUMMY_TIMER_STARTING,
>   	CPUHP_AP_ARM_XEN_STARTING,
>   	CPUHP_AP_ARM_KVMPV_STARTING,
> +	CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
>   	CPUHP_AP_ARM_CORESIGHT_STARTING,
>   	CPUHP_AP_ARM64_ISNDEP_STARTING,
>   	CPUHP_AP_SMPCFD_DYING,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
