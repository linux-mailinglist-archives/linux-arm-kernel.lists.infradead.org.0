Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1640B4E895
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 15:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vg7pnFNl1zaj+ncqisP3RDb3vAooO3/Gr9OUfByMv+s=; b=fuzN5M8CNhGLtb
	Qofh1XYUCFQBFN6tL39qwO3bNB7+ISxLig0fckU5s99A0OG1orqNt65qTNga6RraNbgK9jn+xuorf
	mg5UFpNnTyPHkEsH3CHyErk2kKghblJIssdKQtsnhUp6Kfxjl56HkGKohtozx89PEZBqAq57S/k8m
	JFX0M+uNiy9+bIK1udSzGWh/ig8qxfgVDGqAp5w+dmaCSKkCLTFlVglnt43fkAVNGV2ylHAxopKTf
	VJjh8IgJ7LoXAAHiwFJLJ1UCbQq4tugajUezzJqJ4ili4EKG0kWYv8Ei8+NC08vpN89DD19XqxRrC
	NLa8e2utfGbN9xc+/yMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJHk-0000uk-Ea; Fri, 21 Jun 2019 13:08:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heJHJ-0000em-91
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 13:08:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B006142F;
 Fri, 21 Jun 2019 06:08:28 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 407DF3F246;
 Fri, 21 Jun 2019 06:08:27 -0700 (PDT)
Subject: Re: [PATCH 04/59] KVM: arm64: nv: Introduce nested virtualization
 VCPU feature
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-5-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <95a96d6c-ada4-289c-2634-9877fa04086a@arm.com>
Date: Fri, 21 Jun 2019 14:08:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-5-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_060829_384706_AFBECF6F 
X-CRM114-Status: GOOD (  16.20  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21/06/2019 10:37, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> Introduce the feature bit and a primitive that checks if the feature is
> set behind a static key check based on the cpus_have_const_cap check.
> 
> Checking nested_virt_in_use() on systems without nested virt enabled
> should have neglgible overhead.
> 
> We don't yet allow userspace to actually set this feature.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm/include/asm/kvm_nested.h   |  9 +++++++++
>  arch/arm64/include/asm/kvm_nested.h | 13 +++++++++++++
>  arch/arm64/include/uapi/asm/kvm.h   |  1 +
>  3 files changed, 23 insertions(+)
>  create mode 100644 arch/arm/include/asm/kvm_nested.h
>  create mode 100644 arch/arm64/include/asm/kvm_nested.h
> 
> diff --git a/arch/arm/include/asm/kvm_nested.h b/arch/arm/include/asm/kvm_nested.h
> new file mode 100644
> index 000000000000..124ff6445f8f
> --- /dev/null
> +++ b/arch/arm/include/asm/kvm_nested.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ARM_KVM_NESTED_H
> +#define __ARM_KVM_NESTED_H
> +
> +#include <linux/kvm_host.h>
> +
> +static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu) { return false; }
> +
> +#endif /* __ARM_KVM_NESTED_H */
> diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
> new file mode 100644
> index 000000000000..8a3d121a0b42
> --- /dev/null
> +++ b/arch/arm64/include/asm/kvm_nested.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ARM64_KVM_NESTED_H
> +#define __ARM64_KVM_NESTED_H
> +
> +#include <linux/kvm_host.h>
> +
> +static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
> +{
> +	return cpus_have_const_cap(ARM64_HAS_NESTED_VIRT) &&
> +		test_bit(KVM_ARM_VCPU_NESTED_VIRT, vcpu->arch.features);

Nit: You could make it even cheaper for some systems by adding
IS_DEFINED(CONFIG_ARM64_VHE). It would also make the dependency between
NV and VHE more explicit.

Otherwise:

Reviewed-by: Julien Thierry <julien.thierry@arm.com>

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
