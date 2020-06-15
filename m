Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F41F9465
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=losEYFYnHefY73FCddte14uCfvtyHiWlfGIfDQm62vk=; b=GYpkKc6N7Z5POX
	312S86IdCWC4JQhxr87TwS/LWHtoVZbAPyzjTAU/O2PM4tBDCoqmThDikfH0yyzQP3cUZtkXJZ6pn
	NOzE7e5M2Do6z4Hga987Bc97cDXO70YedeiLv84HWKVs4pLRIo0/IO79Dms4o6Ly6xs16LSUjafbj
	E4kwGJBae4OFLtGcsEFCe5XsoVl7mWPO350H3/ECiHAc203T1ERxODM96rpstfmlezT6MfUKS6Fuh
	P1adD3CNzA2/Hwgi1cdrNSKmYZ9pow9zvemwiYnisCoglTwkF16vZ5pc+2pWdWC/s7S/HbwPA7MSx
	j93RdD4ID3gjHT8BzTIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkm6g-0002Jt-TH; Mon, 15 Jun 2020 10:12:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkm6Y-0002If-Ie
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:12:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 008481F1;
 Mon, 15 Jun 2020 03:12:38 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EC203F71F;
 Mon, 15 Jun 2020 03:12:36 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:12:34 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/4] KVM: arm64: Allow ARM64_PTR_AUTH when ARM64_VHE=n
Message-ID: <20200615101234.GB773@C02TD0UTHF1T.local>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-3-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-3-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_031238_659132_515BED07 
X-CRM114-Status: GOOD (  22.42  )
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

On Mon, Jun 15, 2020 at 09:19:52AM +0100, Marc Zyngier wrote:
> We currently prevent PtrAuth from even being built if KVM is selected,
> but VHE isn't. It is a bit of a pointless restriction, since we also
> check this at run time (rejecting the enabling of PtrAuth for the
> vcpu if we're not running with VHE).
> 
> Just drop this apparently useless restriction.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

I can't recall exactly why we had this limitation to begin with, but
given we now save/restore the keys in common hyp code, I don't see a
reason to forbid this, and agree the limitation is pointless, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..d719ea9c596d 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1516,7 +1516,6 @@ menu "ARMv8.3 architectural features"
>  config ARM64_PTR_AUTH
>  	bool "Enable support for pointer authentication"
>  	default y
> -	depends on !KVM || ARM64_VHE
>  	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
>  	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
>  	# which is only understood by binutils starting with version 2.33.1.
> @@ -1543,8 +1542,7 @@ config ARM64_PTR_AUTH
>  
>  	  The feature is detected at runtime. If the feature is not present in
>  	  hardware it will not be advertised to userspace/KVM guest nor will it
> -	  be enabled. However, KVM guest also require VHE mode and hence
> -	  CONFIG_ARM64_VHE=y option to use this feature.
> +	  be enabled.
>  
>  	  If the feature is present on the boot CPU but not on a late CPU, then
>  	  the late CPU will be parked. Also, if the boot CPU does not have
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
