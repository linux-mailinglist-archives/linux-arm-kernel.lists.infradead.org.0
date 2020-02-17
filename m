Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F5E1615CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVemfXi6h6DhD5rM4AKv0iFbp9ZV/7fKD2txg9zr/Lw=; b=H03fptfhzLpGIy
	uJfVPCF7JBpGLEDaff9TfaKW6MYRS8+/gcz6lV0huFfBU7fx5tUXbNzQ9A1WfV9I20dPCtaLJrPyi
	cwF8Y9sPVwyxWAv964AIyWYHkc5BNp2YWiTioG6xCbEJaSzb6ZX77DKzbvAJtJcfYXVED0WRPHBtc
	2UFKl7e5ifvrhBr4a0k5J9BqSxnzds68CrXKe+y33bZYV+pO+x0xYn7AN3cPZMLVpRvc/zg/xm50e
	Tmi58FjHnxs8PfJmwBJTJJXdAXcOh60VrZmeh/qdXtfbb8Aik2DIUOBRl0UC2rNfPdlpQDBUgbK5l
	gU72bWC2qWkqSi0b1Y1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3i5I-0004eC-EX; Mon, 17 Feb 2020 15:13:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3i56-0004dR-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:13:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D54AE328;
 Mon, 17 Feb 2020 07:13:07 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF4A03F703;
 Mon, 17 Feb 2020 07:13:06 -0800 (PST)
Date: Mon, 17 Feb 2020 15:13:04 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 31/94] KVM: arm64: nv: Only toggle cache for virtual
 EL2 when SCTLR_EL2 changes
Message-ID: <20200217151304.GF47755@lakrids.cambridge.arm.com>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-32-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211174938.27809-32-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_071310_691357_F011C7EF 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:48:35PM +0000, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@linaro.org>
> 
> So far we were flushing almost the entire universe whenever a VM would
> load/unload the SCTLR_EL1 and the two versions of that register had
> different MMU enabled settings.  This turned out to be so slow that it
> prevented forward progress for a nested VM, because a scheduler timer
> tick interrupt would always be pending when we reached the nested VM.
> 
> To avoid this problem, we consider the SCTLR_EL2 when evaluating if
> caches are on or off when entering virtual EL2 (because this is the
> value that we end up shadowing onto the hardware EL1 register).
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_mmu.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
> index ee47f7637f28..ec4de0613e7c 100644
> --- a/arch/arm64/include/asm/kvm_mmu.h
> +++ b/arch/arm64/include/asm/kvm_mmu.h
> @@ -88,6 +88,7 @@ alternative_cb_end
>  #include <asm/cacheflush.h>
>  #include <asm/mmu_context.h>
>  #include <asm/pgtable.h>
> +#include <asm/kvm_emulate.h>
>  
>  void kvm_update_va_mask(struct alt_instr *alt,
>  			__le32 *origptr, __le32 *updptr, int nr_inst);
> @@ -305,7 +306,10 @@ struct kvm;
>  
>  static inline bool vcpu_has_cache_enabled(struct kvm_vcpu *vcpu)
>  {
> -	return (vcpu_read_sys_reg(vcpu, SCTLR_EL1) & 0b101) == 0b101;
> +	if (vcpu_mode_el2(vcpu))
> +		return (__vcpu_sys_reg(vcpu, SCTLR_EL2) & 0b101) == 0b101;
> +	else
> +		return (vcpu_read_sys_reg(vcpu, SCTLR_EL1) & 0b101) == 0b101;
>  }

How about:

static bool vcpu_has_cache_enabled(struct kvm_vcpu *vcpu)
{
	unsigned long cm = SCTLR_ELx_C | SCTLR_ELx_M;
	unsigned long sctlr;

	if (vcpu_mode_el2(vcpu))
		sctlr = __vcpu_sys_reg(vcpu, SCTLR_EL2);
	else
		sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
	
	return (sctlr & cm) == cm;
}

... to avoid duplication and make it clearer which fields we're
accessing.

Thanks,
Mark.

>  
>  static inline void __clean_dcache_guest_page(kvm_pfn_t pfn, unsigned long size)
> -- 
> 2.20.1
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
