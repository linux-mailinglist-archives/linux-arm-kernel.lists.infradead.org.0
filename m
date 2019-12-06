Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE152115018
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjTtePo5DvP9xrXeOLVSrzda7HurKiL5iQobXB369e0=; b=LDDYYPDAXSAsaH
	K6WxvHLd/zU5tjPl/TK9EdRxo4t13PIHZ+/pmXuj+c64TZdLkhNqaYf2ET6AA9bs/V6zZ7NEx9ARh
	gkUfjhj/5vWkwZ3GH/1vjJx38EWum75CUYKZ7x42sDBk3NNGrCxfB7TwP+aeq98Ku/F0j+lxDn3hD
	yopkEat4sX1eaysareTX+xrrGG2fEYalUbMyFaqfNO9suynVfmOxNw6VCV1nw5YANzk1ejiVjq+Dv
	VEDtNYWKMhTcMtATr3kCF82EAtDGO0s0jMjQVNSh/g7BI8kMQEzVVmrDVXwpimwe34MNTZnPFi31o
	f58eKAyGnK63h/N3Akkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCEh-0000dW-Aw; Fri, 06 Dec 2019 11:57:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCEa-0000ct-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:57:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 902B631B;
 Fri,  6 Dec 2019 03:57:19 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5B3F63F52E; Fri,  6 Dec 2019 03:57:18 -0800 (PST)
Date: Fri, 6 Dec 2019 11:57:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v2] arm64: KVM: Invoke compute_layout() before
 alternatives are applied
Message-ID: <20191206115716.GC32767@arrakis.emea.arm.com>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
 <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_035720_520952_DA604355 
X-CRM114-Status: GOOD (  13.28  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 08:58:05PM +0100, Sebastian Andrzej Siewior wrote:
> @@ -408,6 +410,8 @@ static void __init hyp_mode_check(void)
>  			   "CPU: CPUs started in inconsistent modes");
>  	else
>  		pr_info("CPU: All CPU(s) started at EL1\n");
> +	if (IS_ENABLED(CONFIG_KVM_ARM_HOST))
> +		kvm_compute_layout();
>  }

It looks like we call this unconditionally here even if the kernel was
booted at EL1.

>  void __init smp_cpus_done(unsigned int max_cpus)
> diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
> index 2cf7d4b606c38..dab1fea4752aa 100644
> --- a/arch/arm64/kvm/va_layout.c
> +++ b/arch/arm64/kvm/va_layout.c
> @@ -22,7 +22,7 @@ static u8 tag_lsb;
>  static u64 tag_val;
>  static u64 va_mask;
>  
> -static void compute_layout(void)
> +__init void kvm_compute_layout(void)
>  {
>  	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
>  	u64 hyp_va_msb;
> @@ -110,9 +110,6 @@ void __init kvm_update_va_mask(struct alt_instr *alt,
>  
>  	BUG_ON(nr_inst != 5);
>  
> -	if (!has_vhe() && !va_mask)
> -		compute_layout();
> -
>  	for (i = 0; i < nr_inst; i++) {
>  		u32 rd, rn, insn, oinsn;
>  
> @@ -156,9 +153,6 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
>  		return;
>  	}
>  
> -	if (!va_mask)
> -		compute_layout();

And here we had a few more checks.

Maybe it's still correct but asking anyway.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
