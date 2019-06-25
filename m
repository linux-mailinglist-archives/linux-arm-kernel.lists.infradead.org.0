Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01A854FF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR0lGD2plspvKis0T+ppAt2iHL6Z+1KBJmJOl/UcEEQ=; b=ZOglreJUAlSBm2
	W2vM40ykAR9V/g24xQv6lrWhsL+hOoJzEFH078OjLbuUBJD+JV0lJxLNwNekl5wGpltdMLDm8e6oM
	eEHPjMkb8BZLze07cysqHEtujmxGoqJCkxPmV7PcLhQoFdh+VqAerkgzCf2tk/xZBHUYru+0G9rsC
	FCj4wsx9Cf8fsFJMc/7P6LqhI+ZQ7fmjkw3lwEZBd0QZuEOt3xUeWUL+caQS+RDjwSvB6e4GipwQa
	uP6FNvQsbCsd4vUhv2Bv4DgTadEMruDhXGhxwOHb2qMehY8kPESGJJC420ZL94tNS1eKUrfJf2BfU
	jApCraFBmiQaJMbikb8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflGP-0001bJ-OI; Tue, 25 Jun 2019 13:13:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflGE-0001aT-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:13:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7002F2B;
 Tue, 25 Jun 2019 06:13:20 -0700 (PDT)
Received: from [10.1.215.72] (e121566-lin.cambridge.arm.com [10.1.215.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A4A43F718;
 Tue, 25 Jun 2019 06:13:19 -0700 (PDT)
Subject: Re: [PATCH 11/59] KVM: arm64: nv: Inject HVC exceptions to the
 virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-12-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <c83d9421-a027-9edf-021b-5d41a7a1884b@arm.com>
Date: Tue, 25 Jun 2019 14:13:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-12-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061322_891706_A32ECEAD 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/21/19 10:37 AM, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
>
> Now that the psci call is done by the smc instruction when nested
This suggests that we have support for PSCI calls using SMC as the conduit, but
that is not the case, as the handle_smc function is not changed by this commit,
and support for PSCI via SMC is added later in patch 22/59 "KVM: arm64: nv:
Handle PSCI call via smc from the guest". Perhaps the commit message should be
reworded to reflect that?
> virtualization is enabled, it is clear that all hvc instruction from the
> VM (including from the virtual EL2) are supposed to handled in the
> virtual EL2.
>
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/kvm/handle_exit.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 516aead3c2a9..6c0ac52b34cc 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -30,6 +30,7 @@
>  #include <asm/kvm_coproc.h>
>  #include <asm/kvm_emulate.h>
>  #include <asm/kvm_mmu.h>
> +#include <asm/kvm_nested.h>
>  #include <asm/debug-monitors.h>
>  #include <asm/traps.h>
>  
> @@ -52,6 +53,12 @@ static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  			    kvm_vcpu_hvc_get_imm(vcpu));
>  	vcpu->stat.hvc_exit_stat++;
>  
> +	/* Forward hvc instructions to the virtual EL2 if the guest has EL2. */
> +	if (nested_virt_in_use(vcpu)) {
> +		kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));
> +		return 1;
> +	}
> +
>  	ret = kvm_hvc_call_handler(vcpu);
>  	if (ret < 0) {
>  		vcpu_set_reg(vcpu, 0, ~0UL);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
