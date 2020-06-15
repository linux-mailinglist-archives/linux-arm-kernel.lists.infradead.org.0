Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 239841F9337
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt1fFhqjNyi9uITTdCR7AtzByAx18xNSg3ktjU3eiBY=; b=oYHltLGctoChlr
	YaswXaEOr/GdobdMLjRYTjHpZppf/n6Zjr2S38/I9D/vAFYPykV/JPVN+W3pbEw+X0jBcrLUNFibK
	iVXDV8qHFDVxoU0PRV5UPIyZ5Yies9lcMY20RiWDQTV/gPY/lNyqopSQPUDJASJmXt1gpErd1TYOy
	8SIdlRGciKBUHQnPCqjj2lUKra6lw04IzwsyUP/QZgyyZSK0s6e/3NH6vo1DYOsddbqXZC2fPeuFA
	o2wtH7AiSt9znxBtYrQW7Q2+2XQO67jWzDEYSruNbRXce0Zt3w8d9PHzCsy/iFJcPSbbfDACQRvk5
	OpWTWJw3ZFu7xlJsKOlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklJY-0007JP-OV; Mon, 15 Jun 2020 09:22:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7e-0006jf-7k
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:09:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so13837987wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kBWHSnavnojggz6uvJr4ssNYwt9EO3XZXmWi0mLaVfo=;
 b=u5WnUGXso1CB5GxvVY5/j8SU9R6DyWFLnNXkqLW/yca23ej9LHGG9t327osTw7hV6c
 otK2j+87vksb+pxAnQaE3otq6MTONULdqSOIwMauTjgFICXMGSu3Op4aJ4lOuT+6LJMr
 Z9YA09iSVvv1mUuCTCnu8OICojUAQHjlqjkevFZlNOGr4krWeO0z4IFTZRpfScryQwo3
 T3FYYsNdi1/BurX6pBUs9ch+JI+OUYm5L76j4lj5vjueB3DqOShrhp3KB3VeARns7BTr
 YAbOVynWkOenw/7UXgg2PExrlbTHPj+8+hPpIPFVZdqIPCMc+CG2LAQCeN8d73G9mEB6
 1NPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kBWHSnavnojggz6uvJr4ssNYwt9EO3XZXmWi0mLaVfo=;
 b=CGHiPhC/JAXGgiaWb3/Aa3YOqWFZoCVHEtRaUA+NGuWKaqVZD28UzhYGedIE2tg3tI
 wPBtiWtUE0oT7iV5Q75XOmfFgpi/mB2Nzwm0CYIbYqFYIXcheyZm4EfOAzbRjtQNyAH4
 rQvmliPWQ4BLn9Y1klAFogLA9+GI1RCx34cEoPMlFD3eEkh+oULAcIXnCPaHdlLYjbap
 +RSpsna9OE9RITvPxfXoRTLQITu8aE0J1fqLLcbxZERvSUpRPBHnp8UujZh/nkoJiYsC
 1nNpIiTIqLirhMa7cB7BWlY6ee9rmQe918cmbFrGR7tyeVY20qgSlKtSde+oZWtrjPdQ
 a94Q==
X-Gm-Message-State: AOAM5326u5IE9aN7mYKa0obAXnhWgvE46N5zQse48+NbF7Hgr0o637pz
 1FW0AhqG3BnJEO12Gy7vcORbYQ==
X-Google-Smtp-Source: ABdhPJxWx8VU501epgibxbnVhiRJ1svQndBXVYgotpBnvYqxiAcvxjK5SEZuaVtNXVlxltfUJaKCZg==
X-Received: by 2002:a7b:cb18:: with SMTP id u24mr2040292wmj.67.1592212180116; 
 Mon, 15 Jun 2020 02:09:40 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id j5sm24100579wrq.39.2020.06.15.02.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:39 -0700 (PDT)
Date: Mon, 15 Jun 2020 10:09:35 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 3/4] KVM: arm64: Allow PtrAuth to be enabled from
 userspace on non-VHE systems
Message-ID: <20200615090935.GF177680@google.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-4-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615081954.6233-4-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020942_305866_7D9C0797 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Mon, Jun 15, 2020 at 09:19:53AM +0100, Marc Zyngier wrote:
> Now that the scene is set for enabling PtrAuth on non-VHE, drop
> the restrictions preventing userspace from enabling it.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/reset.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index d3b209023727..2a929789fe2e 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -42,6 +42,11 @@ static u32 kvm_ipa_limit;
>  #define VCPU_RESET_PSTATE_SVC	(PSR_AA32_MODE_SVC | PSR_AA32_A_BIT | \
>  				 PSR_AA32_I_BIT | PSR_AA32_F_BIT)
>  
> +static bool system_has_full_ptr_auth(void)
> +{
> +	return system_supports_address_auth() && system_supports_generic_auth();
> +}
> +
>  /**
>   * kvm_arch_vm_ioctl_check_extension
>   *
> @@ -80,8 +85,7 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  		break;
>  	case KVM_CAP_ARM_PTRAUTH_ADDRESS:
>  	case KVM_CAP_ARM_PTRAUTH_GENERIC:
> -		r = has_vhe() && system_supports_address_auth() &&
> -				 system_supports_generic_auth();
> +		r = system_has_full_ptr_auth();
>  		break;
>  	default:
>  		r = 0;
> @@ -205,19 +209,14 @@ static void kvm_vcpu_reset_sve(struct kvm_vcpu *vcpu)
>  
>  static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
>  {
> -	/* Support ptrauth only if the system supports these capabilities. */
> -	if (!has_vhe())
> -		return -EINVAL;
> -
> -	if (!system_supports_address_auth() ||
> -	    !system_supports_generic_auth())
> -		return -EINVAL;
>  	/*
>  	 * For now make sure that both address/generic pointer authentication
> -	 * features are requested by the userspace together.
> +	 * features are requested by the userspace together and the system
> +	 * supports these capabilities.
>  	 */
>  	if (!test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
> -	    !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features))
> +	    !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features) ||
> +	    !system_has_full_ptr_auth())
>  		return -EINVAL;
>  
>  	vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_PTRAUTH;

That was easy. Let EL2 use ptrauth and it can save and restore the
guest's state and done.

Acked-by: Andrew Scull <ascull@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
