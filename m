Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CDC34312
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUa4PWzQmpwP5rlQ0JCB3dZmHZrCyn/UNAMmLSZwuWg=; b=SOHgi2oU2g24gD
	GwouO/qZwZiJR7lA+DUWPd3fFdq9drlWVWD2FO3O0XRSRcdrUdMmTW+kDcXZIy0RJbYL8Ah0c7EU1
	z8VXZm1iDAQFnAZhHXUhgcc97E3liuEUi7o0DfuXszYI7Uxai+aLzrL7Tc1BZe1MTAORhKPx3Lns3
	6AAGtOq9Ad60mk2mdnDu6J6CW109LcFNSG5xXwt8btoCLkHggpC4PUvjxa68M55+js+zHj9GwosTz
	DUv7FV+huBsA2S2v9HGx8Yd9HCM/Q8e7f831VeH0AvQMbtoCFBNfUY/fumpSxzIonNP/zeLDWAvTa
	otGpW1KsVeZfWeOfJIKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5f5-0002b1-3U; Tue, 04 Jun 2019 09:23:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5ex-0002ai-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:23:13 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C49D930C3194;
 Tue,  4 Jun 2019 09:23:05 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 90BE7619C3;
 Tue,  4 Jun 2019 09:23:03 +0000 (UTC)
Date: Tue, 4 Jun 2019 11:23:01 +0200
From: Andrew Jones <drjones@redhat.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] KVM: arm64: Filter out invalid core register IDs in
 KVM_GET_REG_LIST
Message-ID: <20190604092301.26vbijfoapl4whp6@kamzik.brq.redhat.com>
References: <1559580727-13444-1-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559580727-13444-1-git-send-email-Dave.Martin@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 04 Jun 2019 09:23:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_022311_611477_D2868906 
X-CRM114-Status: GOOD (  32.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>, kvmarm@lists.cs.columbia.edu,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 05:52:07PM +0100, Dave Martin wrote:
> Since commit d26c25a9d19b ("arm64: KVM: Tighten guest core register
> access from userspace"), KVM_{GET,SET}_ONE_REG rejects register IDs
> that do not correspond to a single underlying architectural register.
> 
> KVM_GET_REG_LIST was not changed to match however: instead, it
> simply yields a list of 32-bit register IDs that together cover the
> whole kvm_regs struct.  This means that if userspace tries to use
> the resulting list of IDs directly to drive calls to KVM_*_ONE_REG,
> some of those calls will now fail.
> 
> This was not the intention.  Instead, iterating KVM_*_ONE_REG over
> the list of IDs returned by KVM_GET_REG_LIST should be guaranteed
> to work.
> 
> This patch fixes the problem by splitting validate_core_offset()
> into a backend core_reg_size_from_offset() which does all of the
> work except for checking that the size field in the register ID
> matches, and kvm_arm_copy_reg_indices() and num_core_regs() are
> converted to use this to enumerate the valid offsets.
> 
> kvm_arm_copy_reg_indices() now also sets the register ID size field
> appropriately based on the value returned, so the register ID
> supplied to userspace is fully qualified for use with the register
> access ioctls.

Ah yes, I've seen this issue, but hadn't gotten around to fixing it.

> 
> Cc: stable@vger.kernel.org
> Fixes: d26c25a9d19b ("arm64: KVM: Tighten guest core register access from userspace")
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> ---
> 
> Changes since v3:

Hmm, I didn't see a v1-v3.

> 
>  * Rebased onto v5.2-rc1.
> 
>  * Tested with qemu by migrating from one qemu instance to another on
>    ThunderX2.

One of the reasons I was slow to fix this is because QEMU doesn't care
about the core registers when it uses KVM_GET_REG_LIST. It just completely
skips all core reg indices, so it never finds out that they're invalid.
And kvmtool doesn't use KVM_GET_REG_LIST at all. But it's certainly good
to fix this.

> 
> ---
>  arch/arm64/kvm/guest.c | 53 +++++++++++++++++++++++++++++++++++++-------------
>  1 file changed, 40 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 3ae2f82..6527c76 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -70,10 +70,8 @@ static u64 core_reg_offset_from_id(u64 id)
>  	return id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK | KVM_REG_ARM_CORE);
>  }
>  
> -static int validate_core_offset(const struct kvm_vcpu *vcpu,
> -				const struct kvm_one_reg *reg)
> +static int core_reg_size_from_offset(const struct kvm_vcpu *vcpu, u64 off)
>  {
> -	u64 off = core_reg_offset_from_id(reg->id);
>  	int size;
>  
>  	switch (off) {
> @@ -103,8 +101,7 @@ static int validate_core_offset(const struct kvm_vcpu *vcpu,
>  		return -EINVAL;
>  	}
>  
> -	if (KVM_REG_SIZE(reg->id) != size ||
> -	    !IS_ALIGNED(off, size / sizeof(__u32)))
> +	if (!IS_ALIGNED(off, size / sizeof(__u32)))
>  		return -EINVAL;
>  
>  	/*
> @@ -115,6 +112,21 @@ static int validate_core_offset(const struct kvm_vcpu *vcpu,
>  	if (vcpu_has_sve(vcpu) && core_reg_offset_is_vreg(off))
>  		return -EINVAL;
>  
> +	return size;
> +}
> +
> +static int validate_core_offset(const struct kvm_vcpu *vcpu,
> +				const struct kvm_one_reg *reg)
> +{
> +	u64 off = core_reg_offset_from_id(reg->id);
> +	int size = core_reg_size_from_offset(vcpu, off);
> +
> +	if (size < 0)
> +		return -EINVAL;
> +
> +	if (KVM_REG_SIZE(reg->id) != size)
> +		return -EINVAL;
> +
>  	return 0;
>  }
>  
> @@ -453,19 +465,34 @@ static int copy_core_reg_indices(const struct kvm_vcpu *vcpu,
>  {
>  	unsigned int i;
>  	int n = 0;
> -	const u64 core_reg = KVM_REG_ARM64 | KVM_REG_SIZE_U64 | KVM_REG_ARM_CORE;
>  
>  	for (i = 0; i < sizeof(struct kvm_regs) / sizeof(__u32); i++) {
> -		/*
> -		 * The KVM_REG_ARM64_SVE regs must be used instead of
> -		 * KVM_REG_ARM_CORE for accessing the FPSIMD V-registers on
> -		 * SVE-enabled vcpus:
> -		 */
> -		if (vcpu_has_sve(vcpu) && core_reg_offset_is_vreg(i))
> +		u64 reg = KVM_REG_ARM64 | KVM_REG_ARM_CORE | i;
> +		int size = core_reg_size_from_offset(vcpu, i);
> +
> +		if (size < 0)
> +			continue;
> +
> +		switch (size) {
> +		case sizeof(__u32):
> +			reg |= KVM_REG_SIZE_U32;
> +			break;
> +
> +		case sizeof(__u64):
> +			reg |= KVM_REG_SIZE_U64;
> +			break;
> +
> +		case sizeof(__uint128_t):
> +			reg |= KVM_REG_SIZE_U128;
> +			break;
> +
> +		default:
> +			WARN_ON(1);
>  			continue;
> +		}
>  
>  		if (uindices) {
> -			if (put_user(core_reg | i, uindices))
> +			if (put_user(reg, uindices))
>  				return -EFAULT;
>  			uindices++;
>  		}
> -- 
> 2.1.4
>

Reviewed-by: Andrew Jones <drjones@redhat.com>

I've also tested this using a kvm selftests test I wrote. I haven't posted
that test yet because it needs some cleanup and I planned on getting back
to that when getting back to fixing this issue. Anyway, before this patch
every other 64-bit core reg index is invalid (because its indexing 32-bits
but claiming a size of 64), all fp regs are invalid, and we were even
providing a couple indices that mapped to struct padding. After this patch
everything is right with the world.

Tested-by: Andrew Jones <drjones@redhat.com>

Thanks,
drew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
