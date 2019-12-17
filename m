Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED34122EBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8WN41H7yc7VzvEoTswSuu2rn146rNV9Hp3aA5+LERk=; b=lmNsfgFIKsoUOB
	3Z+2xpuxL+4AhxLzD7K0imXiz/WCn0VjyZd11Pd3SlR5ELuVMGpSadzyWZl+jZiG361zdZSgWiJF8
	SI5IMAKFZ5JidluPSoLCaLEcYUHmgOhpErq20Q6FOqZGJINWHJtoQwBDVf+Pj6St3BWPInE667znA
	l5WUremLa1m+RFM/cjDiMj3XpUzTygxBT+jmHX3jFAKZ15bx71C+KeA5/+fj22XAIiWi4AxwCwCP/
	j8rSY27OJPYJ6CgjPsZnVQEUs+wQxnOA66aoMBS2Hw+u8pNJVhJPKz+FcfZmnCK5Xk+o6qiSwtM2V
	d+jWDrPZXOaC2GbV6jPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDqV-0007Ez-Bc; Tue, 17 Dec 2019 14:29:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDqH-0007Ad-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:28:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F3E71FB;
 Tue, 17 Dec 2019 06:28:52 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A44063F67D;
 Tue, 17 Dec 2019 06:28:50 -0800 (PST)
Date: Tue, 17 Dec 2019 14:28:48 +0000
From: Steven Price <steven.price@arm.com>
To: "yezengruan@huawei.com" <yezengruan@huawei.com>
Subject: Re: [PATCH 2/5] KVM: arm64: Implement PV_LOCK_FEATURES call
Message-ID: <20191217142848.GB38811@arm.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
 <20191217135549.3240-3-yezengruan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217135549.3240-3-yezengruan@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_062853_426655_BE11F45B 
X-CRM114-Status: GOOD (  19.34  )
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

On Tue, Dec 17, 2019 at 01:55:46PM +0000, yezengruan@huawei.com wrote:
> From: Zengruan Ye <yezengruan@huawei.com>
> 
> This provides a mechanism for querying which paravirtualized lock
> features are available in this hypervisor.
> 
> Also add the header file which defines the ABI for the paravirtualized
> lock features we're about to add.
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>  arch/arm64/include/asm/pvlock-abi.h | 16 ++++++++++++++++
>  include/linux/arm-smccc.h           | 13 +++++++++++++
>  virt/kvm/arm/hypercalls.c           |  3 +++
>  3 files changed, 32 insertions(+)
>  create mode 100644 arch/arm64/include/asm/pvlock-abi.h
> 
> diff --git a/arch/arm64/include/asm/pvlock-abi.h b/arch/arm64/include/asm/pvlock-abi.h
> new file mode 100644
> index 000000000000..06e0c3d7710a
> --- /dev/null
> +++ b/arch/arm64/include/asm/pvlock-abi.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright(c) 2019 Huawei Technologies Co., Ltd
> + * Author: Zengruan Ye <yezengruan@huawei.com>
> + */
> +
> +#ifndef __ASM_PVLOCK_ABI_H
> +#define __ASM_PVLOCK_ABI_H
> +
> +struct pvlock_vcpu_state {
> +	__le64 preempted;

Somewhere we need to document when 'preempted' is. It looks like it's a
1-bit field from the later patches.

> +	/* Structure must be 64 byte aligned, pad to that size */
> +	u8 padding[56];
> +} __packed;
> +
> +#endif
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 59494df0f55b..59e65a951959 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -377,5 +377,18 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
>  			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
>  			   0x21)
>  
> +/* Paravirtualised lock calls */
> +#define ARM_SMCCC_HV_PV_LOCK_FEATURES				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_64,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   0x40)
> +
> +#define ARM_SMCCC_HV_PV_LOCK_PREEMPTED				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_64,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   0x41)
> +
>  #endif /*__ASSEMBLY__*/
>  #endif /*__LINUX_ARM_SMCCC_H*/
> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> index 550dfa3e53cd..ff13871fd85a 100644
> --- a/virt/kvm/arm/hypercalls.c
> +++ b/virt/kvm/arm/hypercalls.c
> @@ -52,6 +52,9 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  		case ARM_SMCCC_HV_PV_TIME_FEATURES:
>  			val = SMCCC_RET_SUCCESS;
>  			break;
> +		case ARM_SMCCC_HV_PV_LOCK_FEATURES:
> +			val = SMCCC_RET_SUCCESS;
> +			break;

Ideally you wouldn't report that PV_LOCK_FEATURES exists until the
actual hypercalls are wired up to avoid breaking a bisect.

Steve

>  		}
>  		break;
>  	case ARM_SMCCC_HV_PV_TIME_FEATURES:
> -- 
> 2.19.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
