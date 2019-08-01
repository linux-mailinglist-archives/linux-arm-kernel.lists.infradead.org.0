Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A71F7D392
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6pu2Lx62nJ4E1k2PSvq8AWicbBwAterU7XVUgAfiF4s=; b=cDurVKgS8NdJaRPilMo2HeZkW
	WKdoP7msZPOH1M/jDFVKx1aI6jbmI4Lequk0Qsv6TO4fnv91K7w2OOI3vKhpMimg7xvTInIBVrUG0
	0UdidLgpkitcodi017/LukxA5ciu/vb2jsw/ffGWaa/6uX4mGokxO2AiFEfiMq/SlxRlfBUoLWk4B
	c0PwmgrHLIgqnBBwwm35f/qE5h0cVipZWAc5oagA3NcAVWnkur9Tij0Ljy9078iNRd5LfJxwt0KOU
	NvIn+hxpJa/lrcQN15Ox5jZp8gJsITE8Pshj3v9Kl4o3Z5BS4QwC+p60LPgWPCJpgMa8zTJ5ZWFsD
	8lzZEZtbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1Tv-0004B2-MU; Thu, 01 Aug 2019 03:10:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1Tp-0004Ai-0u
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:10:14 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so68785400qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 20:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x/odhJjJZsFpQEq64CfkZ/tUuCfIvx2p0skAiSc9AMk=;
 b=SNPV9I+zjDKyV/1amQSvudWoBdFZhiFPqkw3r37++49Em6DqpkRePS3wYQmC/mB5sR
 fd3Jygg+ABcOpFwdaXtrGwoMWkOHv6tVFloG9nUqXomdp7EbD0J0zFZap8EacY6jOu7p
 Lr1v6MRxaL0jEoYX83LJ5/YxJN4LE4LCt4t7SID7Uq0PQApUrF83yEnQlxnajkF52IGa
 MFAD7/j2xzGr6upgnu8bgTHMjDuvPbHZQAMNw1ylUliFZ469knxLhLGcz6SctjZmqMex
 2eitq2uRPqdxEIJs8zN25jZeEl60i8zP7tdEB/YNJogczxFgocB+vo5tu/UfXafE9Vy/
 qWOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x/odhJjJZsFpQEq64CfkZ/tUuCfIvx2p0skAiSc9AMk=;
 b=ThTmZQeM3fHtXj/HdYYbS6m42S7a+iAyMXy5ye5vgdFIwjdu2JTu/AXjt1RP8rJqzo
 JDDfLe2jsUvU98E3qx2UU8xzVwF4VWWMXyqcvXS7ewstLDOHfO6HmaYNR5c+Ag/7Oc8G
 rIsdkxHWHZHtf7ac0Mr37wmb2SBxuLLXNG4dCz3JBxXECs5RPfOzR9RA+2lo31bHx2oQ
 bPcF00rLHTSqUQSkVBP8jXJd3boAB6ksWIVdk4wwn6OH4GkRMscb3ce0nAeO27gh6AUq
 wZNKEQTwdxcSQ9JyQeHXs7+vSdbvG3/RChRyp8FxOUrOO/sQm2BYq5EIHGJTRipx7fO9
 RF5g==
X-Gm-Message-State: APjAAAX9f9w4refAUvoJmzpuYcFCB45AKCozHXuJkAz484tqCkBKxl+f
 PxlmcnTXnRrGZdGCiMYQIl8=
X-Google-Smtp-Source: APXvYqxqwk69UVnW1VsL8YvLhF6imP7rHXZKkD1DhMPNwii9iJVpz4eL0yPrV8B1K5FHDCpkk9vpkA==
X-Received: by 2002:ac8:70d1:: with SMTP id g17mr89254982qtp.124.1564629010715; 
 Wed, 31 Jul 2019 20:10:10 -0700 (PDT)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id 2sm36743291qtz.73.2019.07.31.20.10.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 20:10:09 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 6C4E122028;
 Wed, 31 Jul 2019 23:10:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 31 Jul 2019 23:10:08 -0400
X-ME-Sender: <xms:D1hCXWat38nPm2-XO30h0qrs0Ye5-Rdr9HwLOWN4Uht-b6q4f1y5Xw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeigdeihecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehgtderredtredvnecuhfhrohhmpeeuohhquhhn
 ucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecukfhppeeghe
 drfedvrdduvdekrddutdelnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhm
 vghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekhe
 ehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghm
 vgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:D1hCXUWXPsd9rAG4S5nOEpU96DseiCuSjD_vVermpvXekbmQ1BRsXg>
 <xmx:D1hCXf_cMmknZQPbQdUoQmYyJ-nZ8v0qo-IAliRVAZQcAj1SCBcppg>
 <xmx:D1hCXd82F1neui2zduvMFtzaaM8eUDdoUR8cfeev72TG_go8UPUTSw>
 <xmx:EFhCXUJbPnS4DJZO_fgLnSmHtB7rBDdRf_lnDXQVr59x3WoaBbLYLg>
Received: from localhost (unknown [45.32.128.109])
 by mail.messagingengine.com (Postfix) with ESMTPA id 38A8880065;
 Wed, 31 Jul 2019 23:10:07 -0400 (EDT)
Date: Thu, 1 Aug 2019 11:10:04 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 3/5] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190801031004.GD26905@tardis>
References: <20190731161256.22210-1-andrew.murray@arm.com>
 <20190731161256.22210-4-andrew.murray@arm.com>
MIME-Version: 1.0
In-Reply-To: <20190731161256.22210-4-andrew.murray@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_201013_094472_A6710CE4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ard.Biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0631330792066347904=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0631330792066347904==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bajzpZikUji1w+G9"
Content-Disposition: inline


--bajzpZikUji1w+G9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Wed, Jul 31, 2019 at 05:12:54PM +0100, Andrew Murray wrote:
[...]
> +
> +#define __lse_ll_sc_body(op, ...)					\
> +({									\
> +	system_uses_lse_atomics() ?					\
> +		__lse_##op(__VA_ARGS__) :				\
> +		__ll_sc_##op(__VA_ARGS__);				\
> +})
> +
> +#define ATOMIC_OP(op)							\
> +static inline void arch_##op(int i, atomic_t *v)			\
> +{									\
> +	__lse_ll_sc_body(op, i, v);					\
> +}
> +
> +ATOMIC_OP(atomic_andnot)
> +ATOMIC_OP(atomic_or)
> +ATOMIC_OP(atomic_xor)
> +ATOMIC_OP(atomic_add)
> +ATOMIC_OP(atomic_and)
> +ATOMIC_OP(atomic_sub)
> +
> +
> +#define ATOMIC_FETCH_OP(name, op)					\
> +static inline int arch_##op##name(int i, atomic_t *v)			\
> +{									\
> +	return __lse_ll_sc_body(op, i, v);				\

Color me blind if I'm wrong, but should't this be:

	return __lse_ll_sc_body(op##name, i, v);				\

? Otherwise all variants will use the fully-ordered implementation.

> +}
> +
> +#define ATOMIC_FETCH_OPS(op)						\
> +	ATOMIC_FETCH_OP(_relaxed, op)					\
> +	ATOMIC_FETCH_OP(_acquire, op)					\
> +	ATOMIC_FETCH_OP(_release, op)					\
> +	ATOMIC_FETCH_OP(        , op)
> +
> +ATOMIC_FETCH_OPS(atomic_fetch_andnot)
> +ATOMIC_FETCH_OPS(atomic_fetch_or)
> +ATOMIC_FETCH_OPS(atomic_fetch_xor)
> +ATOMIC_FETCH_OPS(atomic_fetch_add)
> +ATOMIC_FETCH_OPS(atomic_fetch_and)
> +ATOMIC_FETCH_OPS(atomic_fetch_sub)
> +ATOMIC_FETCH_OPS(atomic_add_return)
> +ATOMIC_FETCH_OPS(atomic_sub_return)
> +
> +
> +#define ATOMIC64_OP(op)							\
> +static inline void arch_##op(long i, atomic64_t *v)			\
> +{									\
> +	__lse_ll_sc_body(op, i, v);					\
> +}
> +
> +ATOMIC64_OP(atomic64_andnot)
> +ATOMIC64_OP(atomic64_or)
> +ATOMIC64_OP(atomic64_xor)
> +ATOMIC64_OP(atomic64_add)
> +ATOMIC64_OP(atomic64_and)
> +ATOMIC64_OP(atomic64_sub)
> +
> +
> +#define ATOMIC64_FETCH_OP(name, op)					\
> +static inline long arch_##op##name(long i, atomic64_t *v)		\
> +{									\
> +	return __lse_ll_sc_body(op, i, v);				\

Ditto.

Regards,
Boqun

> +}
> +
> +#define ATOMIC64_FETCH_OPS(op)						\
> +	ATOMIC64_FETCH_OP(_relaxed, op)					\
> +	ATOMIC64_FETCH_OP(_acquire, op)					\
> +	ATOMIC64_FETCH_OP(_release, op)					\
> +	ATOMIC64_FETCH_OP(        , op)
> +
> +ATOMIC64_FETCH_OPS(atomic64_fetch_andnot)
> +ATOMIC64_FETCH_OPS(atomic64_fetch_or)
> +ATOMIC64_FETCH_OPS(atomic64_fetch_xor)
> +ATOMIC64_FETCH_OPS(atomic64_fetch_add)
> +ATOMIC64_FETCH_OPS(atomic64_fetch_and)
> +ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
> +ATOMIC64_FETCH_OPS(atomic64_add_return)
> +ATOMIC64_FETCH_OPS(atomic64_sub_return)
> +
> +
[...]

--bajzpZikUji1w+G9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEj5IosQTPz8XU1wRHSXnow7UH+rgFAl1CWAYACgkQSXnow7UH
+rgtLwgAgfZRc36cZRSUtqqwgPbMHM3J9ZgdPLKZu9Vc0I9faWk8HPXJNx/6GPQT
Ze4dDM2x2qonB5XtySmvCkutNemQBuawR7FvfndpCNQnS+HRVk3MEUx026IJK/Ns
2uvSPnQ47DB0y/CbGVO5lRBQ64icnfhXMVbJGcSR+Uz2VoJEPeSxfR5tnAF+bxRf
nPUgtFdhTjLnvjUbwjDtiDG7Tx9XDEnCN5OfKmjijR5XxZLzedVoRLRmBYR7cZGi
hrjJ4HUBcTLtPsozFgGVF9bJaUZxwUNfrsfxPJtdnuXTxx9u0VkgU9sMTFNzQ1xc
240qVaXOsZlej7Ov9E+4GBKKjG1uUw==
=pFu9
-----END PGP SIGNATURE-----

--bajzpZikUji1w+G9--


--===============0631330792066347904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0631330792066347904==--

