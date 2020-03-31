Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47633199B52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXkKZbDFJrn/OY+KyO4CnPZgjbun9pgo7EWuSmevFlY=; b=AhTF3/mVGlYjJp
	GNKF3WHK/zrEjE6LMIJobqHaAJWawG0mU/9uvrXwDdL/b7hn8gIHTTt7Du1PQve3qsJhgvQOvWAFA
	mXW345H00/xABF+ml96ZfzihJ12i6zKXO92jWnoQ7x0a6CrURzxX0YuOM//ryMcV7om5PaZk9zgEx
	vdKXTBH2XWsLViX6ugMrECM9+oem62gG+YZsXoSvpDkIadJTNfSsgdF784uTUfEb0KhnSGZTyvr3O
	M5y8ni7+klpUAiu5gkeZ8LhISyvOWnRE3BDDzYB1xc7SEu5X1vYWr//BOeey4PT0km+JmpcsDZ026
	4cgHNc781fqkIJl3gjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJf0-0001ei-Je; Tue, 31 Mar 2020 16:22:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJen-0001dZ-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:22:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7565530E;
 Tue, 31 Mar 2020 09:22:26 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D68D3F71E;
 Tue, 31 Mar 2020 09:22:25 -0700 (PDT)
Date: Tue, 31 Mar 2020 17:22:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [PATCH v2] arm64: ptr auth: Use get_random_u64 instead of _bytes
Message-ID: <20200331162219.GA4400@C02TD0UTHF1T.local>
References: <202003311544.02VFiClP011630@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003311544.02VFiClP011630@sdf.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092229_626635_D07C6B08 
X-CRM114-Status: GOOD (  18.94  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This seems to have been sent twice, so I'm replying to the latest
copy.

On Tue, Mar 31, 2020 at 03:44:12PM +0000, George Spelvin wrote:
> get_random_bytes() is approximately 4x the cost of two
> get_random_u64() calls, because the former implements
> anti-backtracking.
> 
> Because these are authentication keys, useless to an attacker
> as soon as the kernel stops using them, there is no security
> benefit from anti-backtracking.
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org

Given my understanding from discussion on the prior version the
conversion is sound, it doesn't matter that we expose the keys via
ptrace, and the code looks nicer, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

I assume Will or Catalin will pick this up when they next pick up
patches.

Mark.

> ---
> v2: Took out all the clever bitmap-based stuff and made a simple
>     boring helper function to replace get_random_bytes(&key, 16).
> 
>  arch/arm64/include/asm/pointer_auth.h | 16 +++++++++++-----
>  arch/arm64/kernel/pointer_auth.c      | 10 +++++-----
>  2 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 7a24bad1a58b8..1a4590d05785e 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -30,17 +30,23 @@ struct ptrauth_keys {
>  	struct ptrauth_key apga;
>  };
>  
> +static inline void __ptrauth_key_init(struct ptrauth_key *key)
> +{
> +	key->lo = get_random_u64();
> +	key->hi = get_random_u64();
> +}
> +
>  static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
>  {
>  	if (system_supports_address_auth()) {
> -		get_random_bytes(&keys->apia, sizeof(keys->apia));
> -		get_random_bytes(&keys->apib, sizeof(keys->apib));
> -		get_random_bytes(&keys->apda, sizeof(keys->apda));
> -		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> +		__ptrauth_key_init(&keys->apia);
> +		__ptrauth_key_init(&keys->apib);
> +		__ptrauth_key_init(&keys->apda);
> +		__ptrauth_key_init(&keys->apdb);
>  	}
>  
>  	if (system_supports_generic_auth())
> -		get_random_bytes(&keys->apga, sizeof(keys->apga));
> +		__ptrauth_key_init(&keys->apga);
>  }
>  
>  #define __ptrauth_key_install(k, v)				\
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index c507b584259d0..05e2e3d174010 100644
> --- a/arch/arm64/kernel/pointer_auth.c
> +++ b/arch/arm64/kernel/pointer_auth.c
> @@ -31,15 +31,15 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  		return -EINVAL;
>  
>  	if (arg & PR_PAC_APIAKEY)
> -		get_random_bytes(&keys->apia, sizeof(keys->apia));
> +		__ptrauth_key_init(&keys->apia);
>  	if (arg & PR_PAC_APIBKEY)
> -		get_random_bytes(&keys->apib, sizeof(keys->apib));
> +		__ptrauth_key_init(&keys->apib);
>  	if (arg & PR_PAC_APDAKEY)
> -		get_random_bytes(&keys->apda, sizeof(keys->apda));
> +		__ptrauth_key_init(&keys->apda);
>  	if (arg & PR_PAC_APDBKEY)
> -		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> +		__ptrauth_key_init(&keys->apdb);
>  	if (arg & PR_PAC_APGAKEY)
> -		get_random_bytes(&keys->apga, sizeof(keys->apga));
> +		__ptrauth_key_init(&keys->apga);
>  
>  	ptrauth_keys_switch(keys);
>  
> -- 
> 2.26.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
