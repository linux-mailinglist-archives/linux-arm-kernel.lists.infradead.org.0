Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F45E55168
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nv0N03dzUZuE2d3vdZY7EXR7L7ca74rBRU2Z/4oEn0A=; b=GeCXSAjvKUP2sD
	SeprehimhjuT1DgvUVJyjia0AIkqwt5U6OrNNgPWuQDvS3cdlp03I1nYqn+Q9aJ8lZaw5NQ8oOWNe
	bLIueA2Eu+Cnwh/vnqkHAW7dP5IzYcMOx1zZRaZcHA1pLHIiaRRdTDlZwN3QvWuIsXjzsTfkW5+xw
	etuJufv+t3UgbU4m2PGaTJrr1JM6ukt2ObV7lqmvNGDnoWQvbhWomSt8T+GMYI38IxfEQhezklGgu
	kkU+CCI0sY581uQe5sj+p/O4FmJblVuOn9CsRg6G8+QPKoQv/LqEcKGgCh3rQZCqaFlGHrGqcA6gM
	9JVRTBiUlhDtsMmtcdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmIS-0006P0-Qs; Tue, 25 Jun 2019 14:19:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmII-0006OA-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:19:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6A8F2B;
 Tue, 25 Jun 2019 07:19:33 -0700 (PDT)
Received: from [10.37.8.194] (unknown [10.37.8.194])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F57E3F718;
 Tue, 25 Jun 2019 07:19:31 -0700 (PDT)
Subject: Re: [PATCH 23/59] KVM: arm64: nv: Respect virtual HCR_EL2.TWX setting
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-24-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <53793288-0d5d-4212-c1f4-ffa6a790d1c4@arm.com>
Date: Tue, 25 Jun 2019 15:19:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-24-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071934_530490_29427D04 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/21/2019 10:38 AM, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> Forward exceptions due to WFI or WFE instructions to the virtual EL2 if
> they are not coming from the virtual EL2 and virtual HCR_EL2.TWX is set.
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_nested.h |  2 ++
>  arch/arm64/kvm/Makefile             |  1 +
>  arch/arm64/kvm/handle_exit.c        | 13 +++++++++-
>  arch/arm64/kvm/nested.c             | 39 +++++++++++++++++++++++++++++
>  4 files changed, 54 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/kvm/nested.c
> 
> diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
> index 8a3d121a0b42..645e5e11b749 100644
> --- a/arch/arm64/include/asm/kvm_nested.h
> +++ b/arch/arm64/include/asm/kvm_nested.h
> @@ -10,4 +10,6 @@ static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
>  		test_bit(KVM_ARM_VCPU_NESTED_VIRT, vcpu->arch.features);
>  }
>  
> +int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
> +
>  #endif /* __ARM64_KVM_NESTED_H */
> diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
> index 9e450aea7db6..f11bd8b0d837 100644
> --- a/arch/arm64/kvm/Makefile
> +++ b/arch/arm64/kvm/Makefile
> @@ -36,4 +36,5 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/irqchip.o
>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arch_timer.o
>  kvm-$(CONFIG_KVM_ARM_PMU) += $(KVM)/arm/pmu.o
>  
> +kvm-$(CONFIG_KVM_ARM_HOST) += nested.o
>  kvm-$(CONFIG_KVM_ARM_HOST) += emulate-nested.o
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index e348c15c81bc..ddba212fd6ec 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -127,7 +127,18 @@ static int handle_no_fpsimd(struct kvm_vcpu *vcpu, struct kvm_run *run)
>   */
>  static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
> -	if (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_WFx_ISS_WFE) {
> +	bool is_wfe = !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_WFx_ISS_WFE);
> +
> +	if (nested_virt_in_use(vcpu)) {
> +		int ret = handle_wfx_nested(vcpu, is_wfe);
> +
> +		if (ret < 0 && ret != -EINVAL)
> +			return ret;
> +		else if (ret >= 0)
> +			return ret;

I think you can simplify this:

	if (ret != -EINVAL)
		return ret;

Cheers,

Julien


> +	}
> +
> +	if (is_wfe) {
>  		trace_kvm_wfx_arm64(*vcpu_pc(vcpu), true);
>  		vcpu->stat.wfe_exit_stat++;
>  		kvm_vcpu_on_spin(vcpu, vcpu_mode_priv(vcpu));
> diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
> new file mode 100644
> index 000000000000..3872e3cf1691
> --- /dev/null
> +++ b/arch/arm64/kvm/nested.c
> @@ -0,0 +1,39 @@
> +/*
> + * Copyright (C) 2017 - Columbia University and Linaro Ltd.
> + * Author: Jintack Lim <jintack.lim@linaro.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <linux/kvm.h>
> +#include <linux/kvm_host.h>
> +
> +#include <asm/kvm_emulate.h>
> +
> +/*
> + * Inject wfx to the virtual EL2 if this is not from the virtual EL2 and
> + * the virtual HCR_EL2.TWX is set. Otherwise, let the host hypervisor
> + * handle this.
> + */
> +int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe)
> +{
> +	u64 hcr_el2 = __vcpu_sys_reg(vcpu, HCR_EL2);
> +
> +	if (vcpu_mode_el2(vcpu))
> +		return -EINVAL;
> +
> +	if ((is_wfe && (hcr_el2 & HCR_TWE)) || (!is_wfe && (hcr_el2 & HCR_TWI)))
> +		return kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));
> +
> +	return -EINVAL;
> +}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
