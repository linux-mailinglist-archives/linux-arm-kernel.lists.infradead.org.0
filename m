Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3FA11E1BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVfg3NYPoGXMConigBead5t5aoUF9b9bkx+LnbWsjnQ=; b=eORxK/TAoS8bAUu530IANhfgD
	HI5uVaRbpfj9rEfcpuSYVQnt4d346Q7xgzN2t/cijGOYHVD/AvfmWr4w0/ApgOlJC6VcF1Ekcs5YI
	ZtmAG2/my4UmpENvUXDCTCBysywOWkoZStuodsXXgSu3sGQ5V7UvquQXHmFkNBzN9kCmdgr6WeNAr
	A7LkcMGKd55Vffk2fSi+e0yqvmi7Mxtpwpe6tdxa0ndJ3Y/WmDF3XT+XhW+o+bECsHrougX9HdEAj
	zweGPRETbWPtgsl9iCzqQOmQRhcGpdtY4TmbARGMtB6PyjTPuXIGaNd737v7+NKLvA9p4ZMnysDAL
	P+YwlsSGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhvw-0001w5-O9; Fri, 13 Dec 2019 10:12:28 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhvp-0001vV-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 10:12:22 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifhvn-00038b-AW; Fri, 13 Dec 2019 11:12:19 +0100
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: [PATCH] KVM: arm64: Only sign-extend MMIO up to register width
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 10:12:19 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191212195055.5541-1-christoffer.dall@arm.com>
References: <20191212195055.5541-1-christoffer.dall@arm.com>
Message-ID: <92df358b3261598b587f95a2aa4d9bc5@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: christoffer.dall@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, djordje.kovacevic@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_021221_467439_9A14E5D7 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, djordje.kovacevic@arm.com,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-12 19:50, Christoffer Dall wrote:
> On AArch64 you can do a sign-extended load to either a 32-bit or 
> 64-bit
> register, and we should only sign extend the register up to the width 
> of
> the register as specified in the operation (by using the 32-bit Wn or
> 64-bit Xn register specifier).

Nice catch. It's only been there for... Oh wait! ;-)

>
> As it turns out, the architecture provides this decoding information 
> in
> the SF ("Sixty-Four" -- how cute...) bit.
>
> Let's take advantage of this with the usual 32-bit/64-bit header file
> dance and do the right thing on AArch64 hosts.
>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>

Cc: stable?

> ---
>  arch/arm/include/asm/kvm_emulate.h   | 5 +++++
>  arch/arm/include/asm/kvm_mmio.h      | 2 ++
>  arch/arm64/include/asm/kvm_emulate.h | 5 +++++
>  arch/arm64/include/asm/kvm_mmio.h    | 6 ++----
>  virt/kvm/arm/mmio.c                  | 8 +++++++-
>  5 files changed, 21 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/include/asm/kvm_emulate.h
> b/arch/arm/include/asm/kvm_emulate.h
> index 9b118516d2db..fe55d8737a11 100644
> --- a/arch/arm/include/asm/kvm_emulate.h
> +++ b/arch/arm/include/asm/kvm_emulate.h
> @@ -182,6 +182,11 @@ static inline bool kvm_vcpu_dabt_issext(struct
> kvm_vcpu *vcpu)
>  	return kvm_vcpu_get_hsr(vcpu) & HSR_SSE;
>  }
>
> +static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
> +{
> +	return false;
> +}
> +
>  static inline int kvm_vcpu_dabt_get_rd(struct kvm_vcpu *vcpu)
>  {
>  	return (kvm_vcpu_get_hsr(vcpu) & HSR_SRT_MASK) >> HSR_SRT_SHIFT;
> diff --git a/arch/arm/include/asm/kvm_mmio.h
> b/arch/arm/include/asm/kvm_mmio.h
> index 7c0eddb0adb2..32fbf82e3ebc 100644
> --- a/arch/arm/include/asm/kvm_mmio.h
> +++ b/arch/arm/include/asm/kvm_mmio.h
> @@ -14,6 +14,8 @@
>  struct kvm_decode {
>  	unsigned long rt;
>  	bool sign_extend;
> +	/* Not used on 32-bit arm */
> +	bool sixty_four;
>  };
>
>  void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long 
> data);
> diff --git a/arch/arm64/include/asm/kvm_emulate.h
> b/arch/arm64/include/asm/kvm_emulate.h
> index 5efe5ca8fecf..f407b6bdad2e 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -283,6 +283,11 @@ static inline bool kvm_vcpu_dabt_issext(const
> struct kvm_vcpu *vcpu)
>  	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SSE);
>  }
>
> +static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
> +{
> +	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SF);
> +}
> +
>  static inline int kvm_vcpu_dabt_get_rd(const struct kvm_vcpu *vcpu)
>  {
>  	return (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SRT_MASK) >> 
> ESR_ELx_SRT_SHIFT;
> diff --git a/arch/arm64/include/asm/kvm_mmio.h
> b/arch/arm64/include/asm/kvm_mmio.h
> index 02b5c48fd467..b204501a0c39 100644
> --- a/arch/arm64/include/asm/kvm_mmio.h
> +++ b/arch/arm64/include/asm/kvm_mmio.h
> @@ -10,13 +10,11 @@
>  #include <linux/kvm_host.h>
>  #include <asm/kvm_arm.h>
>
> -/*
> - * This is annoying. The mmio code requires this, even if we don't
> - * need any decoding. To be fixed.
> - */
>  struct kvm_decode {
>  	unsigned long rt;
>  	bool sign_extend;
> +	/* Witdth of the register accessed by the faulting instruction is
> 64-bits */
> +	bool sixty_four;
>  };
>
>  void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long 
> data);
> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> index 70d3b449692c..e62454b2e529 100644
> --- a/virt/kvm/arm/mmio.c
> +++ b/virt/kvm/arm/mmio.c
> @@ -83,7 +83,7 @@ unsigned long kvm_mmio_read_buf(const void *buf,
> unsigned int len)
>  int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run 
> *run)
>  {
>  	unsigned long data;
> -	unsigned int len;
> +	unsigned int len, regsize;

Unused variable?

>  	int mask;
>
>  	/* Detect an already handled MMIO return */
> @@ -105,6 +105,9 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu,
> struct kvm_run *run)
>  			data = (data ^ mask) - mask;
>  		}
>
> +		if (!vcpu->arch.mmio_decode.sixty_four)
> +			data = data & 0xffffffff;
> +
>  		trace_kvm_mmio(KVM_TRACE_MMIO_READ, len, run->mmio.phys_addr,
>  			       &data);
>  		data = vcpu_data_host_to_guest(vcpu, data, len);
> @@ -125,6 +128,7 @@ static int decode_hsr(struct kvm_vcpu *vcpu, bool
> *is_write, int *len)
>  	unsigned long rt;
>  	int access_size;
>  	bool sign_extend;
> +	bool sixty_four;
>
>  	if (kvm_vcpu_dabt_iss1tw(vcpu)) {
>  		/* page table accesses IO mem: tell guest to fix its TTBR */
> @@ -138,11 +142,13 @@ static int decode_hsr(struct kvm_vcpu *vcpu,
> bool *is_write, int *len)
>
>  	*is_write = kvm_vcpu_dabt_iswrite(vcpu);
>  	sign_extend = kvm_vcpu_dabt_issext(vcpu);
> +	sixty_four = kvm_vcpu_dabt_issf(vcpu);
>  	rt = kvm_vcpu_dabt_get_rd(vcpu);
>
>  	*len = access_size;
>  	vcpu->arch.mmio_decode.sign_extend = sign_extend;
>  	vcpu->arch.mmio_decode.rt = rt;
> +	vcpu->arch.mmio_decode.sixty_four = sixty_four;
>
>  	return 0;
>  }

I can't remember why we keep this mmio_decode structure as part of
the vcpu. It isn't like it is going to change anytime soon (userspace
cannot change the saved ESR_EL2)...

Anyway, your patch is in keeping with the current shape of the code.
If you're OK with, it, I'll apply it with the above nits addressed.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
