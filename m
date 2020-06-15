Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A931F943C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OV5l4kdasTlMMal8LvSrTDLX0FOfyjLUGXR28dQFpeE=; b=GDDvji+KWXbW5W
	lOxewergt8uBO+a6hKIPm44h3ecYklSyMcScO30pB4h9ZaB/DvmGjwpgX908repa30jaiAcSPzkEC
	LjMNdHA1c+g1pxNIgyWAiO4zGwTJG0iRaJkMxbD7bQixLY78Sm7GspqTJGzkSKacUTh4jL68Ccjlm
	gbOl6TFcroJmtDSMKLDTfccTjCZmCntUxv8m5/jY1GCy1RqpgKiIRePj1KfMeIxV0M9a8tyP7jvN9
	u3rkVrFWMcmCLrLw5r3ClojGoFMCIdIgEKidH9PP3nEF+BpiJJmHsYkFvv7KG1GbgjxuhBC3VkTXt
	S/dg+O5/tmZfX5lZs4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklxs-0003SG-O5; Mon, 15 Jun 2020 10:03:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklxg-0003RM-Kc
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:03:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F0E51F1;
 Mon, 15 Jun 2020 03:03:26 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39CB53F71F;
 Mon, 15 Jun 2020 03:03:25 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:03:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/4] KVM: arm64: Enable Pointer Authentication at EL2 if
 available
Message-ID: <20200615100318.GA773@C02TD0UTHF1T.local>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-2-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_030328_726024_131B26DE 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 09:19:51AM +0100, Marc Zyngier wrote:
> While initializing EL2, switch Pointer Authentication if detected
> from EL1. We use the EL1-provided keys though.

Perhaps "enable address authentication", to avoid confusion with
context-switch, and since generic authentication cannot be disabled
locally at EL2.

> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/hyp-init.S | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
> index 6e6ed5581eed..81732177507d 100644
> --- a/arch/arm64/kvm/hyp-init.S
> +++ b/arch/arm64/kvm/hyp-init.S
> @@ -104,6 +104,17 @@ alternative_else_nop_endif
>  	 */
>  	mov_q	x4, (SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
>  CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
> +alternative_if ARM64_HAS_ADDRESS_AUTH_ARCH
> +	b	1f
> +alternative_else_nop_endif
> +alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
> +	b	2f
> +alternative_else_nop_endif

I see this is the same pattern we use in the kvm context switch, but I
think we can use the ARM64_HAS_ADDRESS_AUTH cap instead (likewise in the
existing code).

AFAICT that won't permit mismatch given both ARM64_HAS_ADDRESS_AUTH_ARCH
and ARM64_HAS_ADDRESS_AUTH_IMP_DEF are dealt with as
ARM64_CPUCAP_BOOT_CPU_FEATURE.

> +1:
> +	orr	x4, x4, #(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB)
> +	orr	x4, x4, #SCTLR_ELx_ENDA
> +	orr	x4, x4, #SCTLR_ELx_ENDB

Assuming we have a spare register, it would be nice if we could follow the same
pattern as in proc.S, where we do:

| ldr     x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
|              SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
| orr     x0, x0, x2

... though we could/should use mov_q rather than a load literal, here and in
proc.S.

... otherwise this looks sound to me.

Thanks,
Mark.

> +2:
>  	msr	sctlr_el2, x4
>  	isb
>  
> -- 
> 2.27.0
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
