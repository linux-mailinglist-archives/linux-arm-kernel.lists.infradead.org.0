Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0E11F39F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L+q1u7+TC8KwOZtMRFVMgwoynlSziyjJmBEfx7ZsOq8=; b=s6Civum9jOj07roIUa75N2iB3
	Y2a2KEviw/QJuceydXJ+joM81EKcyAByFukABpTn5HHSDxIbzsvJE3zhMTmQYSyQ79Gpzz4hw9fzG
	ueDF40WWtF+wcDRGDHAZyaA1NNoXarH2nqzt0z8JGiXmAOvM6ZNF8UCoJoSDi019qpbS3m1iaBtJ1
	4sAXtIkuGmq45jsmiRL81p0OpkDuR4T4+61pyhuhnmVUY1yNNTbJMEDWInhPKkcXdFfsRaJL+N+/T
	+ydiqKlv0zglRWldjxuOAEfE09EomUQ91pMz8+EzqHrzjU3LJ8Go8Pff/i4NF5hpW90XSv6LlwVF/
	MM3Lz3E3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicdU-0002aw-Sk; Tue, 09 Jun 2020 11:41:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicdG-0002Zb-V7
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:41:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 788251FB;
 Tue,  9 Jun 2020 04:41:25 -0700 (PDT)
Received: from [10.57.11.57] (unknown [10.57.11.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 048F93F66F;
 Tue,  9 Jun 2020 04:41:23 -0700 (PDT)
Subject: Re: [PATCH 1/2] KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
To: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200609084921.1448445-1-maz@kernel.org>
 <20200609084921.1448445-2-maz@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7c173265-3f8e-51df-d700-7e3658a0e4d8@arm.com>
Date: Tue, 9 Jun 2020 12:41:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609084921.1448445-2-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_044131_048590_66FC5AC2 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: James Morse <james.morse@arm.com>, kernel-team@android.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>, stable@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-09 09:49, Marc Zyngier wrote:
> AArch32 CP1x registers are overlayed on their AArch64 counterparts
> in the vcpu struct. This leads to an interesting problem as they
> are stored in their CPU-local format, and thus a CP1x register
> doesn't "hit" the lower 32bit portion of the AArch64 register on
> a BE host.
> 
> To workaround this unfortunate situation, introduce a bias trick
> in the vcpu_cp1x() accessors which picks the correct half of the
> 64bit register.
> 
> Cc: stable@vger.kernel.org
> Reported-by: James Morse <james.morse@arm.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   arch/arm64/include/asm/kvm_host.h | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 59029e90b557..e80c0e06f235 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -404,8 +404,14 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg);
>    * CP14 and CP15 live in the same array, as they are backed by the
>    * same system registers.
>    */
> -#define vcpu_cp14(v,r)		((v)->arch.ctxt.copro[(r)])
> -#define vcpu_cp15(v,r)		((v)->arch.ctxt.copro[(r)])
> +#ifdef CPU_BIG_ENDIAN

Ahem... I think you're missing a "CONFIG_" there ;)

Bonus trickery - for a 0 or 1 value you can simply use IS_ENABLED().

Robin.

> +#define CPx_OFFSET	1
> +#else
> +#define CPx_OFFSET	0
> +#endif
> +
> +#define vcpu_cp14(v,r)		((v)->arch.ctxt.copro[(r) ^ CPx_OFFSET])
> +#define vcpu_cp15(v,r)		((v)->arch.ctxt.copro[(r) ^ CPx_OFFSET])
>   
>   struct kvm_vm_stat {
>   	ulong remote_tlb_flush;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
