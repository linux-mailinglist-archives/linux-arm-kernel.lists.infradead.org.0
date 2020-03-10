Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AE617F660
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EHqnhAklzRaTTg3LBNAz1jGkoc3EiOTdr3+AQX4K/Y=; b=MMaH231DX/igF5
	eSN0kbulO7EdQC2n0Ri8Xz9oNhrn54gg6zfPwnjzUryBVm3vvQH8WojUgyMQNBA8KmBPjiTEHCct8
	pla6iQOmp+OQNNu8gwTpXr1QBDr7A8ke4XIYWWvSD0+pZN+QR/GwSmpSyrbTJR4EukKKCDdosqYZu
	qmshLtJzc+rmGsCdhM+amh83ygYYfIcN91rDXV200uDqQRR9oXOyr5px9Hv6QGBL4pYIZdMKvnCjF
	Tz1cruVQkrQqdCnOfb64hFOghKDgtU03wXRjB48bN8nYj9ixKloMOS24Fi6pfZQXDiezrisQJuhhS
	yQXajbtrJFrZnxq6QSbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdAm-00062P-Sk; Tue, 10 Mar 2020 11:35:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdAb-00061m-Uj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:35:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F34530E;
 Tue, 10 Mar 2020 04:35:31 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27D163F67D;
 Tue, 10 Mar 2020 04:35:29 -0700 (PDT)
Subject: Re: [PATCH v6 03/18] arm64: rename ptrauth key structures to be
 user-specific
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-4-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <1dca26b3-0df1-f4cc-d32c-1eee4c474e9a@arm.com>
Date: Tue, 10 Mar 2020 11:35:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-4-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_043534_088363_04C70FA8 
X-CRM114-Status: GOOD (  24.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
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

Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> [Amit: Re-positioned the patch to reduce the diff]
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/include/asm/pointer_auth.h | 12 ++++++------
>  arch/arm64/include/asm/processor.h    |  2 +-
>  arch/arm64/kernel/pointer_auth.c      |  8 ++++----
>  arch/arm64/kernel/ptrace.c            | 16 ++++++++--------
>  4 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 7a24bad..799b079 100644
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
> @@ -50,7 +50,7 @@ do {								\
>  	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
>  } while (0)
>  
> -static inline void ptrauth_keys_switch(struct ptrauth_keys *keys)
> +static inline void ptrauth_keys_switch_user(struct ptrauth_keys_user *keys)
>  {
>  	if (system_supports_address_auth()) {
>  		__ptrauth_key_install(APIA, keys->apia);
> @@ -80,12 +80,12 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  #define ptrauth_thread_init_user(tsk)					\
>  do {									\
>  	struct task_struct *__ptiu_tsk = (tsk);				\
> -	ptrauth_keys_init(&__ptiu_tsk->thread.keys_user);		\
> -	ptrauth_keys_switch(&__ptiu_tsk->thread.keys_user);		\
> +	ptrauth_keys_init_user(&__ptiu_tsk->thread.keys_user);		\
> +	ptrauth_keys_switch_user(&__ptiu_tsk->thread.keys_user);		\
>  } while (0)
>  
>  #define ptrauth_thread_switch(tsk)	\
> -	ptrauth_keys_switch(&(tsk)->thread.keys_user)
> +	ptrauth_keys_switch_user(&(tsk)->thread.keys_user)
>  
>  #else /* CONFIG_ARM64_PTR_AUTH */
>  #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5ba6320..496a928 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -146,7 +146,7 @@ struct thread_struct {
>  	unsigned long		fault_code;	/* ESR_EL1 value */
>  	struct debug_info	debug;		/* debugging */
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -	struct ptrauth_keys	keys_user;
> +	struct ptrauth_keys_user	keys_user;
>  #endif
>  };
>  
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index c507b58..af5a638 100644
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
> @@ -18,8 +18,8 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  		return -EINVAL;
>  
>  	if (!arg) {
> -		ptrauth_keys_init(keys);
> -		ptrauth_keys_switch(keys);
> +		ptrauth_keys_init_user(keys);
> +		ptrauth_keys_switch_user(keys);
>  		return 0;
>  	}
>  
> @@ -41,7 +41,7 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  	if (arg & PR_PAC_APGAKEY)
>  		get_random_bytes(&keys->apga, sizeof(keys->apga));
>  
> -	ptrauth_keys_switch(keys);
> +	ptrauth_keys_switch_user(keys);
>  
>  	return 0;
>  }
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index cd6e5fa..b3d3005 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -999,7 +999,7 @@ static struct ptrauth_key pac_key_from_user(__uint128_t ukey)
>  }
>  
>  static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
> -				     const struct ptrauth_keys *keys)
> +				     const struct ptrauth_keys_user *keys)
>  {
>  	ukeys->apiakey = pac_key_to_user(&keys->apia);
>  	ukeys->apibkey = pac_key_to_user(&keys->apib);
> @@ -1007,7 +1007,7 @@ static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
>  	ukeys->apdbkey = pac_key_to_user(&keys->apdb);
>  }
>  
> -static void pac_address_keys_from_user(struct ptrauth_keys *keys,
> +static void pac_address_keys_from_user(struct ptrauth_keys_user *keys,
>  				       const struct user_pac_address_keys *ukeys)
>  {
>  	keys->apia = pac_key_from_user(ukeys->apiakey);
> @@ -1021,7 +1021,7 @@ static int pac_address_keys_get(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				void *kbuf, void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_address_keys user_keys;
>  
>  	if (!system_supports_address_auth())
> @@ -1038,7 +1038,7 @@ static int pac_address_keys_set(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				const void *kbuf, const void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_address_keys user_keys;
>  	int ret;
>  
> @@ -1056,12 +1056,12 @@ static int pac_address_keys_set(struct task_struct *target,
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
> @@ -1072,7 +1072,7 @@ static int pac_generic_keys_get(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				void *kbuf, void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_generic_keys user_keys;
>  
>  	if (!system_supports_generic_auth())
> @@ -1089,7 +1089,7 @@ static int pac_generic_keys_set(struct task_struct *target,
>  				unsigned int pos, unsigned int count,
>  				const void *kbuf, const void __user *ubuf)
>  {
> -	struct ptrauth_keys *keys = &target->thread.keys_user;
> +	struct ptrauth_keys_user *keys = &target->thread.keys_user;
>  	struct user_pac_generic_keys user_keys;
>  	int ret;
>  
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
