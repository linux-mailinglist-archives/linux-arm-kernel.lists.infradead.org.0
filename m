Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A91657C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0jmtvo3X0GPw4Uy1SUvL1+KHoGC4EzK3aL8CeJMEOs=; b=h4gw4LHQogbbOu
	jFREjhT8tuYHXdVIkqXri6dJs7srI7unOWBU8O8EZFqKb/tllNMCaY3CcJKhV0jD/vHht8kXivuLM
	PvHwMojC2WX1abidLlCA9WkYK94rqyvT4PzGhPY+HuCGM8AeHrhCmclPXCJdZPrsB05F38oth5imI
	q0Dic8IiC/mCSicIP/nkdPe286Xq4swM6pSFtGOTV6sgQsXXlxT7Nx74xdwpaA6UqNdT+MJayDwXB
	fgbH1L+xZMeYJxmNI3uy/1WRmvABgL6uiw/Ja/unQBezYQZrmGdGmWKcHFS+PF0mvdwSrr/i/8qpZ
	pTxKyQ5PxybSvHk/WUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYwj-00085m-3R; Thu, 11 Jul 2019 13:17:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYwc-000854-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:17:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 279D52B;
 Thu, 11 Jul 2019 06:17:05 -0700 (PDT)
Received: from [10.1.196.217] (e121566-lin.cambridge.arm.com [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D6103F59C;
 Thu, 11 Jul 2019 06:17:04 -0700 (PDT)
Subject: Re: [PATCH 48/59] KVM: arm64: nv: Load timer before the GIC
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-49-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <ca6b0bf9-078f-fcc4-e689-46490153cc3f@arm.com>
Date: Thu, 11 Jul 2019 14:17:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-49-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_061706_476891_5D623818 
X-CRM114-Status: GOOD (  15.66  )
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

On 6/21/19 10:38 AM, Marc Zyngier wrote:
> In order for vgic_v3_load_nested to be able to observe which
> which timer interrupts have the HW bit set for the current

s/which which/which

> context, the timers must have been loaded in the new mode
> and the right timer mapped to their corresponding HW IRQs.
>
> At the moment, we load the GIC first, meaning that timer
> interrupts injected to an L2 guest will never have the HW
> HW bit set (we see the old configuration).

s/HW HW/HW

> Swapping the two loads solves this particular problem.
>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  virt/kvm/arm/arm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index e8b584b79847..ca10a11e044e 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -361,8 +361,8 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  	vcpu->arch.host_cpu_context = &cpu_data->host_ctxt;
>  
>  	kvm_arm_set_running_vcpu(vcpu);
> -	kvm_vgic_load(vcpu);
>  	kvm_timer_vcpu_load(vcpu);
> +	kvm_vgic_load(vcpu);
>  	kvm_vcpu_load_sysregs(vcpu);
>  	kvm_arch_vcpu_load_fp(vcpu);
>  	kvm_vcpu_pmu_restore_guest(vcpu);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
