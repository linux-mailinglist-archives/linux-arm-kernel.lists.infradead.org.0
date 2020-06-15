Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D98E1F925F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQOGPMDTBVuVfZkZxBqptpjdWrIhpZtFr+n6vW5FBOg=; b=tYwgYHrjgF/mCz
	4ZCjfs3jzC1Gudc0CZUXsu0rsbmA+CnkECK0uGDu21766gXRWvw6FRcxEeOEZPdOqZbk3EkXHpFMf
	/6BEq5FiAeQ/Ve62g9liNT+mcnDTijTtAiF2cJqY7EARp+RgltWcYtRkMtHKgkJFKetGCkhzgs8M8
	g5TSqxEi1vg9JPJcRCyM6un3M2NXmRlVFVLMbSCHSx3TjJ2S0QHtS31HYT6H94r3ZeKn8QdB9fyWP
	VNulkiW+wVLB11OujAazsmVTJtWzs3laE/eSZ+s2YqvYh90R49yvx4OkXzFn83b87WxthY9xwFZjo
	VUrwOCzufAfIZronkJIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkwh-0002O8-Lx; Mon, 15 Jun 2020 08:58:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkwX-0002Ng-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:58:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id q25so13983948wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5ShxQ/p8QgWJk316YAyJ/2tQifOc4oxip3xhjWlqJEQ=;
 b=HbVh+hzk5EMCxM8HGK4hG1KrtSz8Nm/Y6fwcA3KHzRcyUFMqNhJy20y/BVVd2vSQvW
 AErfOfpMe734o02wktzcMFgR2BX2dgnZYwJBZBldKTZIq5SUyVfg6nNP/80txEzIAfmr
 +gb9uCi7jZtYrv0+/5lGpjxNz/DoagX/I2qFwY72TakjZb6Sh35Zd0czsvw7EDfJ5z3k
 EN/5hItz0s1wsQl+L0hGFE+IoKsaUbQoG012t9KJh2NbSfJwm8+qau8Y2Q6Scr/2YEur
 DwiK8g9gUopMHDDNckOxXOcZH1JVHtGStDfFIanwt5BVtw+qlwkJWamTCGWX3ZrDsgTi
 aTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5ShxQ/p8QgWJk316YAyJ/2tQifOc4oxip3xhjWlqJEQ=;
 b=mYU2jGcscNxg2tdUtwzEBdSiF5TONuQRONXL1wXs1FmO5q88+JfYkXvi62VVznmwsD
 Pxb/afF3RfWarsDcMSaXCGHP62Akix3QGp5x9+nDJ8vaCVwML2wdA46e5xj61Nm3Ky65
 5vIJhUNTWkPllAgKNMch39g21KoyczOiUZx08zWz29nPTOrx9p+/j9LDaHDQcgXqd/d1
 fpvMIS7MOwjWN0zHIBxbe0l9eDNWQ0ooY8+lm2t9Tz7lkJEw147feb9DL93vkbcS5H3z
 bHFTuCZNVJNgE9wvhLt8sxdkxZsUqebWwpiNLwRJWlGDIOkD+39W/b8AzRL6qM2xda+r
 KaiQ==
X-Gm-Message-State: AOAM530YTUehwgtXEVHMtltXwmCW+HaLepqDTDrBVU8DpKbJ4+b5Op4w
 g4GvTptGpYcHrwgdK3LT/CJsnw==
X-Google-Smtp-Source: ABdhPJwLOxCm//URtwLoljmFofuNMfLd0PKuFSaN0kqqtlnaKFsHDaMnEqPiaGR8skUD0V+QZBoTjA==
X-Received: by 2002:a1c:7d4c:: with SMTP id y73mr11858831wmc.188.1592211491868; 
 Mon, 15 Jun 2020 01:58:11 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id y80sm21776273wmc.34.2020.06.15.01.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:58:11 -0700 (PDT)
Date: Mon, 15 Jun 2020 09:58:06 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/4] KVM: arm64: Allow ARM64_PTR_AUTH when ARM64_VHE=n
Message-ID: <20200615085806.GE177680@google.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-3-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-3-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_015813_489832_EFFF31E1 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
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

...and we just got the patch to let EL2 use the ptrauth instructions for
the save restore in hyp/entry.S!

Acked-by: Andrew Scull <ascull@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
