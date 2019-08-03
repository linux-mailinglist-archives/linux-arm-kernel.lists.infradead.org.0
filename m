Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE453805F7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 13:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xjvYvF08KH0D8K99CBl/FZjXmk0vDf+rRmGwKp1Ing=; b=an3fxJne7l1zel
	N6x6bvlaaAHn+Q9BrsG9P31lrqAK+nEZOakbwfnvT/q+uF6gnQOUvaT+tC31lUDK36kMmORcu2sKu
	hhNEDLB0K/R15yV1dCxMI6ACibPe8nPAlOT8RZBdVskL0Le+XPg6Ms4Oq8x2HM3VC8f/t4FBbtpyV
	WVT2OWb8j1ywMmmlIj5ewXFTgijW4wZEDmlsVmXJf38Xxcc+iMX2ZCzYKw7SHFzpHtL9+yUZm+XJd
	aRcmJcMj/EBBsLzUOZEXirGm7Ht42DNDCJEQSklv4aujlaUiaGxlfCvbcNyNXue/hHRSIndNRSZlZ
	2jXXKdOpEdRYhGo2D8nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hts6W-0007d1-Hv; Sat, 03 Aug 2019 11:21:40 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hts6P-0007cX-Tj
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 11:21:35 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1hts6I-0007Dy-TI; Sat, 03 Aug 2019 13:21:27 +0200
Date: Sat, 3 Aug 2019 12:21:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 3/9] KVM: arm64: Implement PV_FEATURES call
Message-ID: <20190803122124.7700f700@why>
In-Reply-To: <20190802145017.42543-4-steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-4-steven.price@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: steven.price@arm.com, catalin.marinas@arm.com,
 pbonzini@redhat.com, rkrcmar@redhat.com, linux@armlinux.org.uk,
 will@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_042134_107173_DB4102B6 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Radim =?UTF-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
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

On Fri,  2 Aug 2019 15:50:11 +0100
Steven Price <steven.price@arm.com> wrote:

> This provides a mechanism for querying which paravirtualized features
> are available in this hypervisor.
> 
> Also add the header file which defines the ABI for the paravirtualized
> clock features we're about to add.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/arm64/include/asm/pvclock-abi.h | 20 ++++++++++++++++++++
>  include/linux/arm-smccc.h            | 14 ++++++++++++++
>  virt/kvm/arm/hypercalls.c            |  9 +++++++++
>  3 files changed, 43 insertions(+)
>  create mode 100644 arch/arm64/include/asm/pvclock-abi.h
> 
> diff --git a/arch/arm64/include/asm/pvclock-abi.h b/arch/arm64/include/asm/pvclock-abi.h
> new file mode 100644
> index 000000000000..1f7cdc102691
> --- /dev/null
> +++ b/arch/arm64/include/asm/pvclock-abi.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 Arm Ltd. */
> +
> +#ifndef __ASM_PVCLOCK_ABI_H
> +#define __ASM_PVCLOCK_ABI_H
> +
> +/* The below structures and constants are defined in ARM DEN0057A */
> +
> +struct pvclock_vcpu_stolen_time_info {
> +	__le32 revision;
> +	__le32 attributes;
> +	__le64 stolen_time;
> +	/* Structure must be 64 byte aligned, pad to that size */
> +	u8 padding[48];
> +} __packed;
> +
> +#define PV_VM_TIME_NOT_SUPPORTED	-1

Isn't the intent for this to be the same value as
SMCCC_RET_NOT_SUPPORTED?

> +#define PV_VM_TIME_INVALID_PARAMETERS	-2

It overlaps with SMCCC_RET_NOT_REQUIRED. Is that a problem? Should we
consider a spec change for this?

> +
> +#endif
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 080012a6f025..e7f129f26ebd 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -45,6 +45,7 @@
>  #define ARM_SMCCC_OWNER_SIP		2
>  #define ARM_SMCCC_OWNER_OEM		3
>  #define ARM_SMCCC_OWNER_STANDARD	4
> +#define ARM_SMCCC_OWNER_STANDARD_HYP	5
>  #define ARM_SMCCC_OWNER_TRUSTED_APP	48
>  #define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
>  #define ARM_SMCCC_OWNER_TRUSTED_OS	50
> @@ -302,5 +303,18 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
>  #define SMCCC_RET_NOT_SUPPORTED			-1
>  #define SMCCC_RET_NOT_REQUIRED			-2
>  
> +/* Paravirtualised time calls (defined by ARM DEN0057A) */
> +#define ARM_SMCCC_HV_PV_FEATURES				\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_64,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   0x20)
> +
> +#define ARM_SMCCC_HV_PV_TIME_ST					\
> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
> +			   ARM_SMCCC_SMC_64,			\
> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
> +			   0x22)
> +
>  #endif /*__ASSEMBLY__*/
>  #endif /*__LINUX_ARM_SMCCC_H*/
> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> index f875241bd030..2906b2df99df 100644
> --- a/virt/kvm/arm/hypercalls.c
> +++ b/virt/kvm/arm/hypercalls.c
> @@ -5,6 +5,7 @@
>  #include <linux/kvm_host.h>
>  
>  #include <asm/kvm_emulate.h>
> +#include <asm/pvclock-abi.h>
>  
>  #include <kvm/arm_hypercalls.h>
>  #include <kvm/arm_psci.h>
> @@ -48,6 +49,14 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>  				break;
>  			}
>  			break;
> +		case ARM_SMCCC_HV_PV_FEATURES:
> +			val = SMCCC_RET_SUCCESS;
> +			break;
> +		}
> +		break;
> +	case ARM_SMCCC_HV_PV_FEATURES:
> +		feature = smccc_get_arg1(vcpu);
> +		switch (feature) {
>  		}
>  		break;
>  	default:


Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
