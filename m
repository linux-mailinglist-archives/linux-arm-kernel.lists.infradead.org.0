Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E34E1B6C6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 06:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=69gEW8y0kl4x4JFHqE2ZW7HnGzobL96ggcQyiVu9zAo=; b=YWuTc4sBeuY7ak7fFO3pqRym0
	UgbYo48BiR4QyrJaEtR6jJ2rKfYcC2tNxW/9z/oy2afIqCQP2beBIbKfx8Zwois+f2n94W7MbP3yM
	+ieBfkcBPTahVMgPu/kgkFlc4+lIqtvKCzHKMz3QhU1fXxgwnTpvPnr6nWlwfwFi1z50dAYQa6z65
	LOZ19CD1wQvWIvdtXHkppmp0hO2Y4djd7HeqzFPdyBG480C5m09B3ypZy06gbxquA7j5JCiAfgrDl
	mrV37j2t3L+JelaWvjueDn0mXxNdnynYEctb7iA8UZiF+IGkIWIosKwTMOA/5qe+D74M+jKYOPpev
	JtCfBXGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRpdW-0001Xv-RC; Fri, 24 Apr 2020 04:08:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRpdN-0001US-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 04:08:15 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7E6B1DEC27DDEED61367;
 Fri, 24 Apr 2020 12:08:03 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Fri, 24 Apr 2020
 12:07:52 +0800
Subject: Re: [PATCH 18/26] KVM: arm64: Don't use empty structures as CPU reset
 state
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-19-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <77963c60-bcc4-0c9e-fd35-d696827ea55c@huawei.com>
Date: Fri, 24 Apr 2020 12:07:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-19-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_210814_035987_6C1CCBA3 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Andre Przywara <andre.przywara@arm.com>,
 George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/4/22 20:00, Marc Zyngier wrote:
> Keeping empty structure as the vcpu state initializer is slightly
> wasteful: we only want to set pstate, and zero everything else.
> Just do that.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   arch/arm64/kvm/reset.c | 20 +++++++++-----------
>   1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index 241db35a7ef4f..895d7d9ad1866 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -37,15 +37,11 @@ static u32 kvm_ipa_limit;
>   /*
>    * ARMv8 Reset Values
>    */
> -static const struct kvm_regs default_regs_reset = {
> -	.regs.pstate = (PSR_MODE_EL1h | PSR_A_BIT | PSR_I_BIT |
> -			PSR_F_BIT | PSR_D_BIT),
> -};
> +#define VCPU_RESET_PSTATE_EL1	(PSR_MODE_EL1h | PSR_A_BIT | PSR_I_BIT | \
> +				 PSR_F_BIT | PSR_D_BIT)
>   
> -static const struct kvm_regs default_regs_reset32 = {
> -	.regs.pstate = (PSR_AA32_MODE_SVC | PSR_AA32_A_BIT |
> -			PSR_AA32_I_BIT | PSR_AA32_F_BIT),
> -};
> +#define VCPU_RESET_PSTATE_SVC	(PSR_AA32_MODE_SVC | PSR_AA32_A_BIT | \
> +				 PSR_AA32_I_BIT | PSR_AA32_F_BIT)
>   
>   static bool cpu_has_32bit_el1(void)
>   {
> @@ -261,6 +257,7 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
>   	const struct kvm_regs *cpu_reset;
>   	int ret = -EINVAL;
>   	bool loaded;
> +	u32 pstate;
>   
>   	/* Reset PMU outside of the non-preemptible section */
>   	kvm_pmu_vcpu_reset(vcpu);
> @@ -291,16 +288,17 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
>   		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
>   			if (!cpu_has_32bit_el1())
>   				goto out;
> -			cpu_reset = &default_regs_reset32;
> +			pstate = VCPU_RESET_PSTATE_SVC;
>   		} else {
> -			cpu_reset = &default_regs_reset;
> +			pstate = VCPU_RESET_PSTATE_EL1;
>   		}
>   
>   		break;
>   	}
>   
>   	/* Reset core registers */
> -	memcpy(vcpu_gp_regs(vcpu), cpu_reset, sizeof(*cpu_reset));
> +	memset(vcpu_gp_regs(vcpu), 0, sizeof(*cpu_reset));

Be careful that we can *not* use 'sizeof(*cpu_reset)' here anymore.  As
you're going to refactor the layout of the core registers whilst keeping
the kvm_regs API unchanged.  Resetting the whole kvm_regs will go
corrupting some affected registers and make them temporarily invalid.
The bad thing will show up after you start moving ELR_EL1 around,
specifically in patch #20...

And the first victim is ... MPIDR_EL1 (the first one in sys_regs array).
Now you know how this was spotted ;-)  I think this should be the root
cause of what Zengtao had previously reported [*].

If these registers are all expected to be reset to architecturally
UNKNOWN values, I think we can just drop this memset(), though haven't
check with the ARM ARM carefully.


Thanks,
Zenghui


[*] 
https://lore.kernel.org/kvmarm/f55386a9-8eaa-944f-453d-9c3c4abee5fb@arm.com/T/#mc6c7268755f5cdaff7a23c34e6e16ea36bcfbe22

> +	vcpu_gp_regs(vcpu)->regs.pstate = pstate;
>   
>   	/* Reset system registers */
>   	kvm_reset_sys_regs(vcpu);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
