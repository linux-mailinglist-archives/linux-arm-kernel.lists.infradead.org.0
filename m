Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36D1979F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 12:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5vMGGpqCXLqcDbqvSExSZwTs9wJXm03+jOdN+nelxw=; b=qkS8RQsfqY/XtT
	ivaJF4U9tpSlmV9b5xza0N+gyE+Cazm0u7aFckrds9jfdFsTghPpQ8ToUaG8dET0pzXldMNvb/gH5
	z2yUmo1Q5A9rRhJlWuhelwvQi99fadoy/pRZq+cnOVNV45lAfDvq7BvqWUwdULmjfrf8Ecm8typDg
	aDgTkzThAY9aTzgmXlEW9TNm70dhtX9RCyISdXyoW7VgXHpdEfxnrDhpBIcH2n03hwo3uiTiu3pai
	mkedu3nxa3IZxRZNk4gIqxkWRwSJAJEqRjAVtJsMtu3Fa7dJxNSjyRVtBnLsFozxZpqSI5U2gpwkv
	mWWjQGfVnDWr5puGFGqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIs7K-0005q8-Sq; Mon, 30 Mar 2020 10:58:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIs7A-0005pG-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 10:57:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF47A31B;
 Mon, 30 Mar 2020 03:57:52 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 509C83F52E;
 Mon, 30 Mar 2020 03:57:51 -0700 (PDT)
Date: Mon, 30 Mar 2020 11:57:45 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200330105745.GA1309@C02TD0UTHF1T.local>
References: <202003281643.02SGhOi3016886@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003281643.02SGhOi3016886@sdf.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_035756_163108_34A500FF 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi George,

On Tue, Dec 10, 2019 at 07:15:55AM -0500, George Spelvin wrote:
> Since these are authentication keys, stored in the kernel as long
> as they're important, get_random_u64 is fine.  In particular,
> get_random_bytes has significant per-call overhead, so five
> separate calls is painful.

As I am unaware, how does the cost of get_random_bytes() compare to the
cost of get_random_u64()?

> This ended up being a more extensive change, since the previous
> code was unrolled and 10 calls to get_random_u64() seems excessive.
> So the code was rearranged to have smaller object size.

It's not really "unrolled", but rather "not a loop", so I'd prefer to
not artifially make it look like one.

Could you please quantify the size difference when going from
get_random_bytes() to get_random_u64(), if that is excessive enough to
warrant changing the structure of the code? Otherwise please leave the
structure as-is as given it is much easier to reason about -- suggestion
below on how to do that neatly.

> Currently fields[i] = { 1 << i, 16 * i } for all i could be computed
> rather than looked up, but the table seemed more future-proof.
> 
> For ptrauth_keys_switch(), the MSR instructions must be unrolled and
> are much faster than get_random, so although a similar flags-based
> interface is possible, it's probably not worth it.
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/include/asm/pointer_auth.h | 20 +++++----
>  arch/arm64/kernel/pointer_auth.c      | 62 +++++++++++++++------------
>  2 files changed, 46 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 7a24bad1a58b8..b7ef71362a3ae 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -30,17 +30,19 @@ struct ptrauth_keys {
>  	struct ptrauth_key apga;
>  };
>  
> +static inline unsigned long ptrauth_keys_supported(void)
> +{
> +	return (system_supports_address_auth() ?
> +			PR_PAC_APIAKEY | PR_PAC_APIBKEY |
> +			PR_PAC_APDAKEY | PR_PAC_APDBKEY : 0) |
> +	       (system_supports_generic_auth() ? PR_PAC_APGAKEY : 0);
> +}
> +
> +void ptrauth_keys_generate(struct ptrauth_keys *keys, unsigned long flags);
> +
>  static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
>  {
> -	if (system_supports_address_auth()) {
> -		get_random_bytes(&keys->apia, sizeof(keys->apia));
> -		get_random_bytes(&keys->apib, sizeof(keys->apib));
> -		get_random_bytes(&keys->apda, sizeof(keys->apda));
> -		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> -	}
> -
> -	if (system_supports_generic_auth())
> -		get_random_bytes(&keys->apga, sizeof(keys->apga));
> +	ptrauth_keys_generate(keys, ptrauth_keys_supported());
>  }
>  
>  #define __ptrauth_key_install(k, v)				\
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index c507b584259d0..1604ed246128c 100644
> --- a/arch/arm64/kernel/pointer_auth.c
> +++ b/arch/arm64/kernel/pointer_auth.c
> @@ -7,40 +7,48 @@
>  #include <asm/cpufeature.h>
>  #include <asm/pointer_auth.h>
>  
> +/*
> + * Generating crypto-quality random numbers is expensive enough that
> + * there's no point unrolling this.
> + */
> +void ptrauth_keys_generate(struct ptrauth_keys *keys, unsigned long flags)
> +{
> +	size_t i;
> +	static const struct {
> +		/*
> +		 * 8 bits is enough for now.  Compiler will complain
> +		 * if/when we need more.
> +		 */
> +		unsigned char flag, offset;
> +	} fields[] = {
> +		{ PR_PAC_APIAKEY, offsetof(struct ptrauth_keys, apia) },
> +		{ PR_PAC_APIBKEY, offsetof(struct ptrauth_keys, apib) },
> +		{ PR_PAC_APDAKEY, offsetof(struct ptrauth_keys, apda) },
> +		{ PR_PAC_APDBKEY, offsetof(struct ptrauth_keys, apdb) },
> +		{ PR_PAC_APGAKEY, offsetof(struct ptrauth_keys, apga) }
> +	};
> +
> +	for (i = 0; i < ARRAY_SIZE(fields); i++) {
> +		if (flags & fields[i].flag) {
> +			struct ptrauth_key *k = (void *)keys + fields[i].offset;
> +			k->lo = get_random_u64();
> +			k->hi = get_random_u64();
> +		}
> +	}
> +}

If we must use get_random_u64() in place of get_random_bytes(), please
add a per-key helper and keep the structure largely as-is:

// Note: we can drop inline if there is a real size issue
static inline void __ptrauth_key_init(struct ptrauth_key *key)
{
	key->lo = get_random_u64();
	key->hi = get_random_u64();
}

static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
{
	if (system_supports_address_auth()) {
		__ptrauth_key_init(&keys->apia);
		__ptrauth_key_init(&keys->apib);
		__ptrauth_key_init(&keys->apda);
		__ptrauth_key_init(&keys->apdb);
	}

	if (system_supports_generic_auth())
		__ptrauth_key_init(&keys->apga);
	ptrauth_keys_generate(keys, ptrauth_keys_supported());
}

> +
>  int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  {
> +	unsigned long supported = ptrauth_keys_supported();
>  	struct ptrauth_keys *keys = &tsk->thread.keys_user;
> -	unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
> -				      PR_PAC_APDAKEY | PR_PAC_APDBKEY;
> -	unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;
>  
> -	if (!system_supports_address_auth() && !system_supports_generic_auth())
> +	if (!supported || arg & ~supported)
>  		return -EINVAL;
>  
> -	if (!arg) {
> -		ptrauth_keys_init(keys);
> -		ptrauth_keys_switch(keys);
> -		return 0;
> -	}
> -
> -	if (arg & ~key_mask)
> -		return -EINVAL;
> -
> -	if (((arg & addr_key_mask) && !system_supports_address_auth()) ||
> -	    ((arg & PR_PAC_APGAKEY) && !system_supports_generic_auth()))
> -		return -EINVAL;
> -
> -	if (arg & PR_PAC_APIAKEY)
> -		get_random_bytes(&keys->apia, sizeof(keys->apia));
> -	if (arg & PR_PAC_APIBKEY)
> -		get_random_bytes(&keys->apib, sizeof(keys->apib));
> -	if (arg & PR_PAC_APDAKEY)
> -		get_random_bytes(&keys->apda, sizeof(keys->apda));
> -	if (arg & PR_PAC_APDBKEY)
> -		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> -	if (arg & PR_PAC_APGAKEY)
> -		get_random_bytes(&keys->apga, sizeof(keys->apga));
> +	if (!arg)
> +		arg = supported;

... and similarly this should only need to change to use
__ptrauth_key_init(), as above.

Thanks,
Mark.

>  
> +	ptrauth_keys_generate(keys, arg);
>  	ptrauth_keys_switch(keys);
>  
>  	return 0;
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
