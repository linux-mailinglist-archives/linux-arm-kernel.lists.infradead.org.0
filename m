Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF03E9391
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:28:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgMTA2Vr72KUuMw37U0DXCaHLiigM3w3OQ2L571jkyM=; b=a2i/iELOYSBvEl
	J1VYW3hx8vRUqOyZvYT3hWfatWb3OgxuuudSopCf/NYHT7DzMeQAQ1pSYT9diQuc5b3THaiTu3FnZ
	1U8ijWdSfVacOznjU2aiUaY2K3FEgoyLlfhjE0z5mcO/UnnKpY26+NLKpivsX77b6wcbLZZK2iFg8
	8bfyOwivj1QhuCPslSGpe/T3eXmcE8XmWnDbh9RdVsiTHhL26IGyQgJMFHHiYPOCHbeXbskBhbTgM
	60lfhfCkUZG3XhyZMpxkFq4lE7QlHac0g3CgJCJpXgOE21Km+QGy9tJbHymJWeY/y6ZtgPMPjXFeL
	9tsVukdugDLZnwtZQ6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPauN-0002Xv-S7; Tue, 29 Oct 2019 23:28:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPau1-0002TL-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:27:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id p5so60167plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 16:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lCL+qmkduKTNInPXDzVxZW1X0UXjGITVjnfZG+cBMXQ=;
 b=iKQ8U5OeP+PDnVRLSst/F/ejE8x6+hnsj3lMQTij/hL/bhctavzcvXVU34rWrDT5J3
 ytpLA+/HeBmYfjgFiAN6iknJ9iePJBF/Jk9D6/QM0uXliaJYp3Z14XzcE0txUquzTmqI
 VHfaV9SQAHw1kMWu7oLfKtUFDlWa/R94kNW0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lCL+qmkduKTNInPXDzVxZW1X0UXjGITVjnfZG+cBMXQ=;
 b=Y+XTUkMVYcz1QcDlJ6zy32NrL1u/SDE4FihaUhQ27E8lt0lxj5wrM/YwOE5MLhVHBS
 hjQjtB5oIV1sSUpOZUYxpL19rpeFZd2lbj6j749w0bLT+EKjZhdNcSRhqpYMg5BTDgI+
 zySpcTq0bRGw6+5EMgtAcrweAiFy+xbNZqqsAMeI3wBUFBVOHaLmGjmlOWJ0T6T4NQJk
 DFNmVLyTvCtM+pdPojz3FsaQaxc1YZqYKCETJmcwCnRKS6T6+I3o+qzY560pmO60C5GY
 6daDBOWrFOqt0Caq2UPBhJCoyQVmkKHq7+ibj7lyw9DR6mIsDNZFwlEq2zP6PvqJCvF+
 nhyQ==
X-Gm-Message-State: APjAAAV/Phm5B2SoB5ye8UHHnWc6a/bwoJC3YEwDKVMXgaFZKLv7JL5u
 Q7o46msnrBQ3WCeKYYqkhGw9Aw==
X-Google-Smtp-Source: APXvYqzJpMkTL97KzIqXA8RQm0cq9CmPjJLMJSpojHVK72yWjaZBCCvtF6lYUeAg19RPBP/RAlHTUA==
X-Received: by 2002:a17:902:7d85:: with SMTP id
 a5mr1310958plm.196.1572391673010; 
 Tue, 29 Oct 2019 16:27:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z13sm302714pgz.42.2019.10.29.16.27.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:27:52 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:27:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 06/11] arm64: rename ptrauth key structures to be
 user-specific
Message-ID: <201910291627.0823B87@keescook>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-7-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571300065-10236-7-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_162753_885294_AD2E565A 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 01:44:20PM +0530, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> We currently enable ptrauth for userspace, but do not use it within the
> kernel. We're going to enable it for the kernel, and will need to manage
> a separate set of ptrauth keys for the kernel.
> 
> We currently keep all 5 keys in struct ptrauth_keys. However, as the
> kernel will only need to use 1 key, it is a bit wasteful to allocate a
> whole ptrauth_keys struct for every thread.
> 
> Therefore, a subsequent patch will define a separate struct, with only 1
> key, for the kernel. In preparation for that, rename the existing struct
> (and associated macros and functions) to reflect that they are specific
> to userspace.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

This appears very mechanical; easy to review! ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since RFC v2:
>  - New patch in this version, to optimize struct usage [Dave]
> 
>  arch/arm64/include/asm/asm_pointer_auth.h | 10 +++++-----
>  arch/arm64/include/asm/pointer_auth.h     |  6 +++---
>  arch/arm64/include/asm/processor.h        |  2 +-
>  arch/arm64/kernel/asm-offsets.c           | 10 +++++-----
>  arch/arm64/kernel/pointer_auth.c          |  4 ++--
>  arch/arm64/kernel/ptrace.c                | 16 ++++++++--------
>  6 files changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> index cb21a06..3d39788 100644
> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -15,21 +15,21 @@
>  alternative_if_not ARM64_HAS_ADDRESS_AUTH
>  	b	.Laddr_auth_skip_\@
>  alternative_else_nop_endif
> -	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIA]
>  	msr_s	SYS_APIAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> -	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIB]
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIB]
>  	msr_s	SYS_APIBKEYLO_EL1, \tmp2
>  	msr_s	SYS_APIBKEYHI_EL1, \tmp3
> -	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDA]
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDA]
>  	msr_s	SYS_APDAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APDAKEYHI_EL1, \tmp3
> -	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDB]
>  	msr_s	SYS_APDBKEYLO_EL1, \tmp2
>  	msr_s	SYS_APDBKEYHI_EL1, \tmp3
>  .Laddr_auth_skip_\@:
>  alternative_if ARM64_HAS_GENERIC_AUTH
> -	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APGA]
>  	msr_s	SYS_APGAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APGAKEYHI_EL1, \tmp3
>  alternative_else_nop_endif
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 21c2115..cc42145 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -22,7 +22,7 @@ struct ptrauth_key {
>   * We give each process its own keys, which are shared by all threads. The keys
>   * are inherited upon fork(), and reinitialised upon exec*().
>   */
> -struct ptrauth_keys {
> +struct ptrauth_keys_user {
>  	struct ptrauth_key apia;
>  	struct ptrauth_key apib;
>  	struct ptrauth_key apda;
> @@ -30,7 +30,7 @@ struct ptrauth_keys {
>  	struct ptrauth_key apga;
>  };
>  
> -static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
> +static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
>  {
>  	if (system_supports_address_auth()) {
>  		get_random_bytes(&keys->apia, sizeof(keys->apia));
> @@ -58,7 +58,7 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  }
>  
>  #define ptrauth_thread_init_user(tsk)					\
> -	ptrauth_keys_init(&(tsk)->thread.keys_user)
> +	ptrauth_keys_init_user(&(tsk)->thread.keys_user)
>  
>  #else /* CONFIG_ARM64_PTR_AUTH */
>  #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5623685..8ec792d 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -144,7 +144,7 @@ struct thread_struct {
>  	unsigned long		fault_code;	/* ESR_EL1 value */
>  	struct debug_info	debug;		/* debugging */
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -	struct ptrauth_keys	keys_user;
> +	struct ptrauth_keys_user	keys_user;
>  #endif
>  };
>  
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index ef0c24b..cf15182 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -131,11 +131,11 @@ int main(void)
>    DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
>  #endif
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -  DEFINE(PTRAUTH_KEY_APIA,	offsetof(struct ptrauth_keys, apia));
> -  DEFINE(PTRAUTH_KEY_APIB,	offsetof(struct ptrauth_keys, apib));
> -  DEFINE(PTRAUTH_KEY_APDA,	offsetof(struct ptrauth_keys, apda));
> -  DEFINE(PTRAUTH_KEY_APDB,	offsetof(struct ptrauth_keys, apdb));
> -  DEFINE(PTRAUTH_KEY_APGA,	offsetof(struct ptrauth_keys, apga));
> +  DEFINE(PTRAUTH_USER_KEY_APIA,		offsetof(struct ptrauth_keys_user, apia));
> +  DEFINE(PTRAUTH_USER_KEY_APIB,		offsetof(struct ptrauth_keys_user, apib));
> +  DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
> +  DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
> +  DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
>    BLANK();
>  #endif
>    return 0;
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index 95985be..1e77736 100644
> --- a/arch/arm64/kernel/pointer_auth.c
> +++ b/arch/arm64/kernel/pointer_auth.c
> @@ -9,7 +9,7 @@
>  
>  int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  {
> -	struct ptrauth_keys *keys = &tsk->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &tsk->thread.keys_user;
>  	unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
>  				      PR_PAC_APDAKEY | PR_PAC_APDBKEY;
>  	unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;
> @@ -18,7 +18,7 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  		return -EINVAL;
>  
>  	if (!arg) {
> -		ptrauth_keys_init(keys);
> +		ptrauth_keys_init_user(keys);
>  		return 0;
>  	}
>  
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index 21176d0..0793739 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -986,7 +986,7 @@ static struct ptrauth_key pac_key_from_user(__uint128_t ukey)
>  }
>  
>  static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
> -				     const struct ptrauth_keys *keys)
> +				     const struct ptrauth_keys_user *keys)
>  {
>  	ukeys->apiakey = pac_key_to_user(&keys->apia);
>  	ukeys->apibkey = pac_key_to_user(&keys->apib);
> @@ -994,7 +994,7 @@ static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
>  	ukeys->apdbkey = pac_key_to_user(&keys->apdb);
>  }
>  
> -static void pac_address_keys_from_user(struct ptrauth_keys *keys,
> +static void pac_address_keys_from_user(struct ptrauth_keys_user *keys,
>  				       const struct user_pac_address_keys *ukeys)
>  {
>  	keys->apia = pac_key_from_user(ukeys->apiakey);
> @@ -1008,7 +1008,7 @@ static int pac_address_keys_get(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				void *kbuf, void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_address_keys user_keys;
>  
>  	if (!system_supports_address_auth())
> @@ -1025,7 +1025,7 @@ static int pac_address_keys_set(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				const void *kbuf, const void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_address_keys user_keys;
>  	int ret;
>  
> @@ -1043,12 +1043,12 @@ static int pac_address_keys_set(struct task_struct *target,
>  }
>  
>  static void pac_generic_keys_to_user(struct user_pac_generic_keys *ukeys,
> -				     const struct ptrauth_keys *keys)
> +				     const struct ptrauth_keys_user *keys)
>  {
>  	ukeys->apgakey = pac_key_to_user(&keys->apga);
>  }
>  
> -static void pac_generic_keys_from_user(struct ptrauth_keys *keys,
> +static void pac_generic_keys_from_user(struct ptrauth_keys_user *keys,
>  				       const struct user_pac_generic_keys *ukeys)
>  {
>  	keys->apga = pac_key_from_user(ukeys->apgakey);
> @@ -1059,7 +1059,7 @@ static int pac_generic_keys_get(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				void *kbuf, void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_generic_keys user_keys;
>  
>  	if (!system_supports_generic_auth())
> @@ -1076,7 +1076,7 @@ static int pac_generic_keys_set(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				const void *kbuf, const void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_generic_keys user_keys;
>  	int ret;
>  
> -- 
> 2.7.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
