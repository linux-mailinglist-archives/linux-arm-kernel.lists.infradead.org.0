Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732EE1F948C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0v5CTLbabMpPoNrIYnK2hQ8csSHLsY7kizZOqFHc4w=; b=oufq1rKU7Y3M9h
	tsp13fyA8EO+kBB4aeoDWa4fh9HxgcMxN37yZkydUTkiaxR+VBo+pmGA7dAa3gvv1+KmttwRxYPUM
	3RFyfMGjLxRG8Bmo/0owtTduvyGkj5xumxQjvKjZkL18ZAORoqNgtR5iSzNSYGXHW+5056Vx3VyG3
	TkqbO/wOuuLx3nmsEXWRwLKE+HuKU+i94JOom5i2lLSQxnzPkm+CngSb5D1qBJUkDfGn10NTG54s8
	OZPtJxPIV4MduBxzJ0+kUWcRomfw0/YfV4kedDTfVXvzKzTT+TuKiMQeQCiluw2CWXj0xt/xnMu36
	vmMewCL+YRsYR8PzeVzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmJF-00044l-Ld; Mon, 15 Jun 2020 10:25:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmJ3-000440-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:25:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 092D81F1;
 Mon, 15 Jun 2020 03:25:33 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15F323F71F;
 Mon, 15 Jun 2020 03:25:31 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:25:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 4/4] KVM: arm64: Check HCR_EL2 instead of shadow copy to
 swap PtrAuth registers
Message-ID: <20200615102529.GD773@C02TD0UTHF1T.local>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-5-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-5-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_032533_890650_8E047586 
X-CRM114-Status: GOOD (  15.64  )
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

On Mon, Jun 15, 2020 at 09:19:54AM +0100, Marc Zyngier wrote:
> When save/restoring PtrAuth registers between host and guest, it is
> pretty useless to fetch the in-memory state, while we have the right
> state in the HCR_EL2 system register. Use that instead.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

It took me a while to spot that we switched the guest/host hcr_el2 value
in the __activate_traps() and __deactivate_traps() paths, but given that
this is only called in the __kvm_vcpu_run_*() paths called between
those, I agree this is sound. Given that:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/kvm_ptrauth.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_ptrauth.h b/arch/arm64/include/asm/kvm_ptrauth.h
> index 6301813dcace..f1830173fa9e 100644
> --- a/arch/arm64/include/asm/kvm_ptrauth.h
> +++ b/arch/arm64/include/asm/kvm_ptrauth.h
> @@ -74,7 +74,7 @@ alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
>  	b	1001f
>  alternative_else_nop_endif
>  1000:
> -	ldr	\reg1, [\g_ctxt, #(VCPU_HCR_EL2 - VCPU_CONTEXT)]
> +	mrs	\reg1, hcr_el2
>  	and	\reg1, \reg1, #(HCR_API | HCR_APK)
>  	cbz	\reg1, 1001f
>  	add	\reg1, \g_ctxt, #CPU_APIAKEYLO_EL1
> @@ -90,7 +90,7 @@ alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
>  	b	2001f
>  alternative_else_nop_endif
>  2000:
> -	ldr	\reg1, [\g_ctxt, #(VCPU_HCR_EL2 - VCPU_CONTEXT)]
> +	mrs	\reg1, hcr_el2
>  	and	\reg1, \reg1, #(HCR_API | HCR_APK)
>  	cbz	\reg1, 2001f
>  	add	\reg1, \g_ctxt, #CPU_APIAKEYLO_EL1
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
