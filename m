Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC010731E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKqLBdD9RFmzfPJGPj0y3/gbI4vic+2e4vcUqQSaaUs=; b=ffETFodiSBQ2mS
	zRLWs1EWcBXLJzxcuju7tvkjvjcVKeXMIOc4OG1e7VG+JgoLMSHhTmvXUKREJT9SuFnvRh9ZAPx/z
	GF7dnr70UMp+COh5+sxYy6/Q+h4Y8JBCY2rdGcWmENFcgKfncF+5fv//RmpmXc6elU+UqueBcaQ+0
	wEvSxLBiwPfTBtwF58w3OCXMER72OP13BKMa8bOAlf6Zh9lY/AplmDXreusIM5+KRIpK9FlVcx9jx
	FRQult0VRsR6Dmqqcgehjry3qy3rl4H9b0Z4Ir81PGpYvZSVA3YFTd9De3QxTuhxubYFePgWynR5O
	okku/R2xBihFBQPkBUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8z7-00084e-V0; Fri, 22 Nov 2019 13:28:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8yv-00084L-4Q
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:28:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id b11so7440312wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7x8rtMw+zf2Pybsc2/aXomPVeuPbUM/INhAVnOtjICY=;
 b=B6u2MDpLYcyRpe1zG0XyK2CR0FYAyFW606aYePJ/mq7gJjalCgJ4YQwGjvv4bUzrww
 IFZtLH3INuj4CTgV41tDcd587etBOHEVjJrz1uABBhxlG60D8xApyggyEHSgNmwPK4OT
 dEAFeAQVUY06Do3AsiuTB8IltroZAgmW3FGDax0IzlQOKzdaOgPYk+U3t34uSYu1OSSM
 JTWal+2iqgtFABSbaf9FdRf8D//mnyuClIPfJ3zeSfaq05sWctRsCKKBnqF2N7ZlsIBz
 AbuXuSG61GUYfcSt+OWuaeFw8xOvmJVLMLk6/+FezHzSMseCq6nLeU0asuMzaAYySBqP
 IWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7x8rtMw+zf2Pybsc2/aXomPVeuPbUM/INhAVnOtjICY=;
 b=iJc0Bp0kTYgduR33rQB7yLo0eVcUxRh6F7MWyZ60S9DittrXWAWvzY+/dPO2YnBHRT
 N2mclcNG4IdwWuSbv4zBw/Wr2A8GXHSwpLJnfFnLObgN8GtbOZhNh8Ay9P2STVZ8AXt6
 vVJHZfv9VuQd2325iuJMznNzlks0d0HvwDYtuhi5YQzhD80zO4BNw/H/Q5wdcIFvJQ9i
 Bk8If02NgeLh6hDxOffBmSJ6BLKXAXbB/9SheNdtIMhHx4eSLwmnG7sn5gEHvbdp5T/h
 2IVa5oTv3d3za0h3l0roVil45DZwKrsLbqOKC9bBoJe3p5pOKb4C7O/Vmyi8kTQbUgXO
 LLfw==
X-Gm-Message-State: APjAAAWEb7LSDvCx3oPk+ky1PZYJlBQC/QOk7CfABXsakUtLvEt+4JT4
 j2dbUsUqweySuyywITbFkZhCeOIlSt32QMb4gKPzuNPa/AQ=
X-Google-Smtp-Source: APXvYqxXzRgYmVHA05N9eGSmTtEpd3b0FvmZdbbYuKAvPvulSQxhp0mb6giP65EgxNkkldLA+OAZ9CZuCwhBgcxS8Xk=
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr15860346wma.119.1574429294298; 
 Fri, 22 Nov 2019 05:28:14 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-7-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1574166746-27197-7-git-send-email-amit.kachhap@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 22 Nov 2019 14:28:03 +0100
Message-ID: <CAKv+Gu9-fL_1HS1-Bo4T5Kq6HHz=T-MYrt8y3Rj_iTgpEeHqrA@mail.gmail.com>
Subject: Re: [PATCH v2 06/14] arm64: rename ptrauth key structures to be
 user-specific
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_052817_185079_8B636902 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>
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
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Could we combine this patch with #2 somehow? You are modifying lots of
code that you just introduced there.

> ---
> Changes since last version:
> * None
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
>         b       .Laddr_auth_skip_\@
>  alternative_else_nop_endif
> -       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
> +       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIA]
>         msr_s   SYS_APIAKEYLO_EL1, \tmp2
>         msr_s   SYS_APIAKEYHI_EL1, \tmp3
> -       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIB]
> +       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIB]
>         msr_s   SYS_APIBKEYLO_EL1, \tmp2
>         msr_s   SYS_APIBKEYHI_EL1, \tmp3
> -       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDA]
> +       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDA]
>         msr_s   SYS_APDAKEYLO_EL1, \tmp2
>         msr_s   SYS_APDAKEYHI_EL1, \tmp3
> -       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
> +       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDB]
>         msr_s   SYS_APDBKEYLO_EL1, \tmp2
>         msr_s   SYS_APDBKEYHI_EL1, \tmp3
>  .Laddr_auth_skip_\@:
>  alternative_if ARM64_HAS_GENERIC_AUTH
> -       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
> +       ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APGA]
>         msr_s   SYS_APGAKEYLO_EL1, \tmp2
>         msr_s   SYS_APGAKEYHI_EL1, \tmp3
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
>         struct ptrauth_key apia;
>         struct ptrauth_key apib;
>         struct ptrauth_key apda;
> @@ -30,7 +30,7 @@ struct ptrauth_keys {
>         struct ptrauth_key apga;
>  };
>
> -static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
> +static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
>  {
>         if (system_supports_address_auth()) {
>                 get_random_bytes(&keys->apia, sizeof(keys->apia));
> @@ -58,7 +58,7 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  }
>
>  #define ptrauth_thread_init_user(tsk)                                  \
> -       ptrauth_keys_init(&(tsk)->thread.keys_user)
> +       ptrauth_keys_init_user(&(tsk)->thread.keys_user)
>
>  #else /* CONFIG_ARM64_PTR_AUTH */
>  #define ptrauth_prctl_reset_keys(tsk, arg)     (-EINVAL)
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5623685..8ec792d 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -144,7 +144,7 @@ struct thread_struct {
>         unsigned long           fault_code;     /* ESR_EL1 value */
>         struct debug_info       debug;          /* debugging */
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -       struct ptrauth_keys     keys_user;
> +       struct ptrauth_keys_user        keys_user;
>  #endif
>  };
>
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index ef0c24b..cf15182 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -131,11 +131,11 @@ int main(void)
>    DEFINE(SDEI_EVENT_PRIORITY,  offsetof(struct sdei_registered_event, priority));
>  #endif
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -  DEFINE(PTRAUTH_KEY_APIA,     offsetof(struct ptrauth_keys, apia));
> -  DEFINE(PTRAUTH_KEY_APIB,     offsetof(struct ptrauth_keys, apib));
> -  DEFINE(PTRAUTH_KEY_APDA,     offsetof(struct ptrauth_keys, apda));
> -  DEFINE(PTRAUTH_KEY_APDB,     offsetof(struct ptrauth_keys, apdb));
> -  DEFINE(PTRAUTH_KEY_APGA,     offsetof(struct ptrauth_keys, apga));
> +  DEFINE(PTRAUTH_USER_KEY_APIA,                offsetof(struct ptrauth_keys_user, apia));
> +  DEFINE(PTRAUTH_USER_KEY_APIB,                offsetof(struct ptrauth_keys_user, apib));
> +  DEFINE(PTRAUTH_USER_KEY_APDA,                offsetof(struct ptrauth_keys_user, apda));
> +  DEFINE(PTRAUTH_USER_KEY_APDB,                offsetof(struct ptrauth_keys_user, apdb));
> +  DEFINE(PTRAUTH_USER_KEY_APGA,                offsetof(struct ptrauth_keys_user, apga));
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
> -       struct ptrauth_keys *keys = &tsk->thread.keys_user;
> +       struct ptrauth_keys_user *keys = &tsk->thread.keys_user;
>         unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
>                                       PR_PAC_APDAKEY | PR_PAC_APDBKEY;
>         unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;
> @@ -18,7 +18,7 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>                 return -EINVAL;
>
>         if (!arg) {
> -               ptrauth_keys_init(keys);
> +               ptrauth_keys_init_user(keys);
>                 return 0;
>         }
>
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index 21176d0..0793739 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -986,7 +986,7 @@ static struct ptrauth_key pac_key_from_user(__uint128_t ukey)
>  }
>
>  static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
> -                                    const struct ptrauth_keys *keys)
> +                                    const struct ptrauth_keys_user *keys)
>  {
>         ukeys->apiakey = pac_key_to_user(&keys->apia);
>         ukeys->apibkey = pac_key_to_user(&keys->apib);
> @@ -994,7 +994,7 @@ static void pac_address_keys_to_user(struct user_pac_address_keys *ukeys,
>         ukeys->apdbkey = pac_key_to_user(&keys->apdb);
>  }
>
> -static void pac_address_keys_from_user(struct ptrauth_keys *keys,
> +static void pac_address_keys_from_user(struct ptrauth_keys_user *keys,
>                                        const struct user_pac_address_keys *ukeys)
>  {
>         keys->apia = pac_key_from_user(ukeys->apiakey);
> @@ -1008,7 +1008,7 @@ static int pac_address_keys_get(struct task_struct *target,
>                                 unsigned int pos, unsigned int count,
>                                 void *kbuf, void __user *ubuf)
>  {
> -       struct ptrauth_keys *keys = &target->thread.keys_user;
> +       struct ptrauth_keys_user *keys = &target->thread.keys_user;
>         struct user_pac_address_keys user_keys;
>
>         if (!system_supports_address_auth())
> @@ -1025,7 +1025,7 @@ static int pac_address_keys_set(struct task_struct *target,
>                                 unsigned int pos, unsigned int count,
>                                 const void *kbuf, const void __user *ubuf)
>  {
> -       struct ptrauth_keys *keys = &target->thread.keys_user;
> +       struct ptrauth_keys_user *keys = &target->thread.keys_user;
>         struct user_pac_address_keys user_keys;
>         int ret;
>
> @@ -1043,12 +1043,12 @@ static int pac_address_keys_set(struct task_struct *target,
>  }
>
>  static void pac_generic_keys_to_user(struct user_pac_generic_keys *ukeys,
> -                                    const struct ptrauth_keys *keys)
> +                                    const struct ptrauth_keys_user *keys)
>  {
>         ukeys->apgakey = pac_key_to_user(&keys->apga);
>  }
>
> -static void pac_generic_keys_from_user(struct ptrauth_keys *keys,
> +static void pac_generic_keys_from_user(struct ptrauth_keys_user *keys,
>                                        const struct user_pac_generic_keys *ukeys)
>  {
>         keys->apga = pac_key_from_user(ukeys->apgakey);
> @@ -1059,7 +1059,7 @@ static int pac_generic_keys_get(struct task_struct *target,
>                                 unsigned int pos, unsigned int count,
>                                 void *kbuf, void __user *ubuf)
>  {
> -       struct ptrauth_keys *keys = &target->thread.keys_user;
> +       struct ptrauth_keys_user *keys = &target->thread.keys_user;
>         struct user_pac_generic_keys user_keys;
>
>         if (!system_supports_generic_auth())
> @@ -1076,7 +1076,7 @@ static int pac_generic_keys_set(struct task_struct *target,
>                                 unsigned int pos, unsigned int count,
>                                 const void *kbuf, const void __user *ubuf)
>  {
> -       struct ptrauth_keys *keys = &target->thread.keys_user;
> +       struct ptrauth_keys_user *keys = &target->thread.keys_user;
>         struct user_pac_generic_keys user_keys;
>         int ret;
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
