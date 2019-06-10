Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A9B3B296
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEBpj9vmGeJ5pIBaXQjEuUR7L+fDYXuhnbHh0SblKL4=; b=DOX2V94/bwnYwY
	N93c5DGqv5CMO5PXY9FZX+u1NQEvga8ChdHzMsC04Zu2AH/WCfPCPRgxsDumicsTEZEgB+UEX2T13
	KWdlGnqwEWQDaH84gcH+9RawvcT7gMKOmKDlWoXboH20RJPOFKXlRL4fuCb9Jl849ZcatvagDe/vc
	64dsCG7g+wmpsG7gyVRsCVicDzPkafb+Rl4wPmykm4OOyB7nGbdB/ZQ8FoViTLJ64VT6BE9cSp4bD
	vekcQdAGM70UjlFEln6rtoSx4w+GWpxvb0b5GNhE0ZINAC2w/SNPABldcd89cdq0ZzjUhBpda35O8
	8MQ8AOZNXndoKMYrHOMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH2H-0007Hl-Je; Mon, 10 Jun 2019 09:56:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haH24-0007H0-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:56:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61DC7344;
 Mon, 10 Jun 2019 02:56:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 204573F246;
 Mon, 10 Jun 2019 02:57:44 -0700 (PDT)
Date: Mon, 10 Jun 2019 10:56:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V2] KVM: arm64: Implement vq_present() as a macro
Message-ID: <20190610095559.GL28398@e103592.cambridge.arm.com>
References: <7c2590c4d8cc95cd40bbb05c0d0c5e2b0735a16b.1560145715.git.viresh.kumar@linaro.org>
 <20190610090917.GK28398@e103592.cambridge.arm.com>
 <20190610095030.yurzajuyylyo57h2@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610095030.yurzajuyylyo57h2@vireshk-i7>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_025604_669392_8CD42BF6 
X-CRM114-Status: GOOD (  21.53  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:20:30PM +0530, Viresh Kumar wrote:
> On 10-06-19, 10:09, Dave Martin wrote:
> > You could drop the extra level of indirection on vqs now.  The only
> > thing it achieves is to enforce the size of the array via type-
> > checkout, but the macro can't easily do that (unless you can think
> > of another way to do it).
> > 
> > Otherwise, looks good.
> 
> Below is what I wrote initially this morning and then moved to the
> current version as I wasn't sure if you would want that :)
> 
> -- 
> viresh
> 
> -------------------------8<-------------------------
> 
> From be823e68faffc82a6f621c16ce1bd45990d92791 Mon Sep 17 00:00:00 2001
> Message-Id: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160165.git.viresh.kumar@linaro.org>
> From: Viresh Kumar <viresh.kumar@linaro.org>
> Date: Mon, 10 Jun 2019 11:15:17 +0530
> Subject: [PATCH] KVM: arm64: Implement vq_present() as a macro
> 
> This routine is a one-liner and doesn't really need to be function and
> can be implemented as a macro.
> 
> Suggested-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/arm64/kvm/guest.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 3ae2f82fca46..ae734fcfd4ea 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -207,13 +207,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  
>  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)
>  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
> -
> -static bool vq_present(
> -	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> -	unsigned int vq)
> -{
> -	return (*vqs)[vq_word(vq)] & vq_mask(vq);
> -}
> +#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
>  
>  static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  {
> @@ -258,7 +252,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  
>  	max_vq = 0;
>  	for (vq = SVE_VQ_MIN; vq <= SVE_VQ_MAX; ++vq)
> -		if (vq_present(&vqs, vq))
> +		if (vq_present(vqs, vq))
>  			max_vq = vq;
>  
>  	if (max_vq > sve_vq_from_vl(kvm_sve_max_vl))
> @@ -272,7 +266,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>  	 * maximum:
>  	 */
>  	for (vq = SVE_VQ_MIN; vq <= max_vq; ++vq)
> -		if (vq_present(&vqs, vq) != sve_vq_available(vq))
> +		if (vq_present(vqs, vq) != sve_vq_available(vq))
>  			return -EINVAL;

I think I prefer this version:

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
