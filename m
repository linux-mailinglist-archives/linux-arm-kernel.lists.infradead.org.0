Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB65FB77C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 19:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXJKVH1ZTvLkVjjZXA5v9Gv29yGfiThYvMPEQ6ZlIgw=; b=axVP/BPMdwGoNR
	ygTB3l36LXouX3TL32rO6zNJ3WSfpOZkPqdND5XShHrWbSC+3G7R1dP3u6RaKoYYmOFZ9tuPhPb/L
	RAtRQupSEDI/GkUH0KIk9lzpqF225Dxgw1k9nD9nsvr4SUoIZWsYY/xXa2NGYHoRnwbgPRYNz4rrL
	ENZovjAltc+WmgrJeGxN2MB3AhDCrXVI0g4Bl9Xj6fYHc6tIYgsb/QxRA3f2pmsPhgQgQzbfDkN1L
	KhDiw0gxN+lwlM6PsAP1eUQdbo1vupyF7y0dlA1twUNSl8peILxkXI4GeRkm7UZ5AQKu8EeqX11cX
	A6PDjhKN2qRWmSe2Mw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxMa-0006mg-RD; Wed, 13 Nov 2019 18:27:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxMR-0006lu-6z
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:27:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so2210546pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 10:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0SldfB0j+4tKzSNZBilCOOuiK+IfM16jHWw6L5StrsI=;
 b=b6XpEfgqzGrU1tQHqumz1WgRqgES7GyOz0K3XKNnLg4+Q0nhTod/u8TWJuyYeU7ndF
 vNfnNFTFIetnXt2DOMBnqWxhwX4ky7m/TztimnnKHw7gWjvB+/DawG1mD6urae/cW/De
 jpFH2jDthBJfC7BPILUjSadtRARH6TvZ45DEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0SldfB0j+4tKzSNZBilCOOuiK+IfM16jHWw6L5StrsI=;
 b=tLDUkslVuV/g67Uopod+mYpHZAKH47zYllLWhophW6sLwUDIWeZHyzERBc2ta4qnpn
 xS6XsjxzL5n6Fc2/UD8JHEWqrtIkqxhiszeFxAlm/l7Dyb/TvToA43zQMlfgk34VGuq9
 jmjw+yuTbR0pMD2gFvVn0bJIyfSOcnfy25LF+dU2ptHTcyEHlE+wrmHW0P6RG3dWLLC3
 GgphqqlPX+eHVntsoII5CQYI/y6ktA02xF70xgV7cGHpBm9Mt6vieaXCwwBjFZeaoBKY
 j1NkP2uP+zekJEOSz41YnhT/cv1kT1HEmQET146vLR9VR6PKVm3ifMZij0g9+c7zfgxB
 jOGg==
X-Gm-Message-State: APjAAAXGiD+FtzrWiLy/+7w0ynyalRAT6UH7RNplf1fcQ+DNjg7R8F4h
 nkkydlRDKV56r3B635bQrMjclA==
X-Google-Smtp-Source: APXvYqx0m1GhkzXSTISGNFHQr6CvD7Z1RZv2kccmR0jXTamqQxQSAWsV+5D86v+A+4qJ7/tw+/muIA==
X-Received: by 2002:a17:90a:fa96:: with SMTP id
 cu22mr6791848pjb.121.1573669641939; 
 Wed, 13 Nov 2019 10:27:21 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s13sm3803381pfc.110.2019.11.13.10.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 10:27:21 -0800 (PST)
Date: Wed, 13 Nov 2019 10:27:20 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] crypto: arm64/sha: fix function types
Message-ID: <201911131026.7B0FA60@keescook>
References: <20191112223046.176097-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112223046.176097-1-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_102723_258575_687553A4 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 02:30:46PM -0800, Sami Tolvanen wrote:
> Declare assembly functions with the expected function type
> instead of casting pointers in C to avoid type mismatch failures
> with Control-Flow Integrity (CFI) checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Looks good, yes. This looks very similar to what I needed to do for
x86's SHA routines.

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
>  arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
>  arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
>  arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
>  arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
>  arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
>  5 files changed, 43 insertions(+), 61 deletions(-)
> 
> diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> index bdc1b6d7aff7..3153a9bbb683 100644
> --- a/arch/arm64/crypto/sha1-ce-glue.c
> +++ b/arch/arm64/crypto/sha1-ce-glue.c
> @@ -25,7 +25,7 @@ struct sha1_ce_state {
>  	u32			finalize;
>  };
>  
> -asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> +asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
>  				  int blocks);
>  
>  const u32 sha1_ce_offsetof_count = offsetof(struct sha1_ce_state, sst.count);
> @@ -41,8 +41,7 @@ static int sha1_ce_update(struct shash_desc *desc, const u8 *data,
>  
>  	sctx->finalize = 0;
>  	kernel_neon_begin();
> -	sha1_base_do_update(desc, data, len,
> -			    (sha1_block_fn *)sha1_ce_transform);
> +	sha1_base_do_update(desc, data, len, sha1_ce_transform);
>  	kernel_neon_end();
>  
>  	return 0;
> @@ -64,10 +63,9 @@ static int sha1_ce_finup(struct shash_desc *desc, const u8 *data,
>  	sctx->finalize = finalize;
>  
>  	kernel_neon_begin();
> -	sha1_base_do_update(desc, data, len,
> -			    (sha1_block_fn *)sha1_ce_transform);
> +	sha1_base_do_update(desc, data, len, sha1_ce_transform);
>  	if (!finalize)
> -		sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
> +		sha1_base_do_finalize(desc, sha1_ce_transform);
>  	kernel_neon_end();
>  	return sha1_base_finish(desc, out);
>  }
> @@ -81,7 +79,7 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
>  
>  	sctx->finalize = 0;
>  	kernel_neon_begin();
> -	sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
> +	sha1_base_do_finalize(desc, sha1_ce_transform);
>  	kernel_neon_end();
>  	return sha1_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
> index 604a01a4ede6..a4dacedfe4d4 100644
> --- a/arch/arm64/crypto/sha2-ce-glue.c
> +++ b/arch/arm64/crypto/sha2-ce-glue.c
> @@ -25,7 +25,7 @@ struct sha256_ce_state {
>  	u32			finalize;
>  };
>  
> -asmlinkage void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
> +asmlinkage void sha2_ce_transform(struct sha256_state *sst, u8 const *src,
>  				  int blocks);
>  
>  const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
> @@ -33,7 +33,8 @@ const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
>  const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
>  						 finalize);
>  
> -asmlinkage void sha256_block_data_order(u32 *digest, u8 const *src, int blocks);
> +asmlinkage void sha256_block_data_order(struct sha256_state *sst, u8 const *src,
> +					int blocks);
>  
>  static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
>  			    unsigned int len)
> @@ -42,12 +43,11 @@ static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
>  
>  	if (!crypto_simd_usable())
>  		return sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> +				sha256_block_data_order);
>  
>  	sctx->finalize = 0;
>  	kernel_neon_begin();
> -	sha256_base_do_update(desc, data, len,
> -			      (sha256_block_fn *)sha2_ce_transform);
> +	sha256_base_do_update(desc, data, len, sha2_ce_transform);
>  	kernel_neon_end();
>  
>  	return 0;
> @@ -62,9 +62,8 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
>  	if (!crypto_simd_usable()) {
>  		if (len)
>  			sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> -		sha256_base_do_finalize(desc,
> -				(sha256_block_fn *)sha256_block_data_order);
> +				sha256_block_data_order);
> +		sha256_base_do_finalize(desc, sha256_block_data_order);
>  		return sha256_base_finish(desc, out);
>  	}
>  
> @@ -75,11 +74,9 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
>  	sctx->finalize = finalize;
>  
>  	kernel_neon_begin();
> -	sha256_base_do_update(desc, data, len,
> -			      (sha256_block_fn *)sha2_ce_transform);
> +	sha256_base_do_update(desc, data, len, sha2_ce_transform);
>  	if (!finalize)
> -		sha256_base_do_finalize(desc,
> -					(sha256_block_fn *)sha2_ce_transform);
> +		sha256_base_do_finalize(desc, sha2_ce_transform);
>  	kernel_neon_end();
>  	return sha256_base_finish(desc, out);
>  }
> @@ -89,14 +86,13 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
>  	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
>  
>  	if (!crypto_simd_usable()) {
> -		sha256_base_do_finalize(desc,
> -				(sha256_block_fn *)sha256_block_data_order);
> +		sha256_base_do_finalize(desc, sha256_block_data_order);
>  		return sha256_base_finish(desc, out);
>  	}
>  
>  	sctx->finalize = 0;
>  	kernel_neon_begin();
> -	sha256_base_do_finalize(desc, (sha256_block_fn *)sha2_ce_transform);
> +	sha256_base_do_finalize(desc, sha2_ce_transform);
>  	kernel_neon_end();
>  	return sha256_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
> index e273faca924f..dac3157937ba 100644
> --- a/arch/arm64/crypto/sha256-glue.c
> +++ b/arch/arm64/crypto/sha256-glue.c
> @@ -23,28 +23,25 @@ MODULE_LICENSE("GPL v2");
>  MODULE_ALIAS_CRYPTO("sha224");
>  MODULE_ALIAS_CRYPTO("sha256");
>  
> -asmlinkage void sha256_block_data_order(u32 *digest, const void *data,
> -					unsigned int num_blks);
> +asmlinkage void sha256_block_data_order(struct sha256_state *sst, u8 const *src,
> +					int blocks);
>  EXPORT_SYMBOL(sha256_block_data_order);
>  
> -asmlinkage void sha256_block_neon(u32 *digest, const void *data,
> -				  unsigned int num_blks);
> +asmlinkage void sha256_block_neon(struct sha256_state *sst, u8 const *src,
> +				  int blocks);
>  
>  static int crypto_sha256_arm64_update(struct shash_desc *desc, const u8 *data,
>  				      unsigned int len)
>  {
> -	return sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> +	return sha256_base_do_update(desc, data, len, sha256_block_data_order);
>  }
>  
>  static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
>  				     unsigned int len, u8 *out)
>  {
>  	if (len)
> -		sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> -	sha256_base_do_finalize(desc,
> -				(sha256_block_fn *)sha256_block_data_order);
> +		sha256_base_do_update(desc, data, len, sha256_block_data_order);
> +	sha256_base_do_finalize(desc, sha256_block_data_order);
>  
>  	return sha256_base_finish(desc, out);
>  }
> @@ -87,7 +84,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
>  
>  	if (!crypto_simd_usable())
>  		return sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> +				sha256_block_data_order);
>  
>  	while (len > 0) {
>  		unsigned int chunk = len;
> @@ -103,8 +100,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
>  				sctx->count % SHA256_BLOCK_SIZE;
>  
>  		kernel_neon_begin();
> -		sha256_base_do_update(desc, data, chunk,
> -				      (sha256_block_fn *)sha256_block_neon);
> +		sha256_base_do_update(desc, data, chunk, sha256_block_neon);
>  		kernel_neon_end();
>  		data += chunk;
>  		len -= chunk;
> @@ -118,15 +114,13 @@ static int sha256_finup_neon(struct shash_desc *desc, const u8 *data,
>  	if (!crypto_simd_usable()) {
>  		if (len)
>  			sha256_base_do_update(desc, data, len,
> -				(sha256_block_fn *)sha256_block_data_order);
> -		sha256_base_do_finalize(desc,
> -				(sha256_block_fn *)sha256_block_data_order);
> +				sha256_block_data_order);
> +		sha256_base_do_finalize(desc, sha256_block_data_order);
>  	} else {
>  		if (len)
>  			sha256_update_neon(desc, data, len);
>  		kernel_neon_begin();
> -		sha256_base_do_finalize(desc,
> -				(sha256_block_fn *)sha256_block_neon);
> +		sha256_base_do_finalize(desc, sha256_block_neon);
>  		kernel_neon_end();
>  	}
>  	return sha256_base_finish(desc, out);
> diff --git a/arch/arm64/crypto/sha512-ce-glue.c b/arch/arm64/crypto/sha512-ce-glue.c
> index 2369540040aa..0f964235d753 100644
> --- a/arch/arm64/crypto/sha512-ce-glue.c
> +++ b/arch/arm64/crypto/sha512-ce-glue.c
> @@ -27,18 +27,18 @@ MODULE_LICENSE("GPL v2");
>  asmlinkage void sha512_ce_transform(struct sha512_state *sst, u8 const *src,
>  				    int blocks);
>  
> -asmlinkage void sha512_block_data_order(u64 *digest, u8 const *src, int blocks);
> +asmlinkage void sha512_block_data_order(struct sha512_state *sst, u8 const *src,
> +					int blocks);
>  
>  static int sha512_ce_update(struct shash_desc *desc, const u8 *data,
>  			    unsigned int len)
>  {
>  	if (!crypto_simd_usable())
>  		return sha512_base_do_update(desc, data, len,
> -				(sha512_block_fn *)sha512_block_data_order);
> +					     sha512_block_data_order);
>  
>  	kernel_neon_begin();
> -	sha512_base_do_update(desc, data, len,
> -			      (sha512_block_fn *)sha512_ce_transform);
> +	sha512_base_do_update(desc, data, len, sha512_ce_transform);
>  	kernel_neon_end();
>  
>  	return 0;
> @@ -50,16 +50,14 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
>  	if (!crypto_simd_usable()) {
>  		if (len)
>  			sha512_base_do_update(desc, data, len,
> -				(sha512_block_fn *)sha512_block_data_order);
> -		sha512_base_do_finalize(desc,
> -				(sha512_block_fn *)sha512_block_data_order);
> +					      sha512_block_data_order);
> +		sha512_base_do_finalize(desc, sha512_block_data_order);
>  		return sha512_base_finish(desc, out);
>  	}
>  
>  	kernel_neon_begin();
> -	sha512_base_do_update(desc, data, len,
> -			      (sha512_block_fn *)sha512_ce_transform);
> -	sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
> +	sha512_base_do_update(desc, data, len, sha512_ce_transform);
> +	sha512_base_do_finalize(desc, sha512_ce_transform);
>  	kernel_neon_end();
>  	return sha512_base_finish(desc, out);
>  }
> @@ -67,13 +65,12 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
>  static int sha512_ce_final(struct shash_desc *desc, u8 *out)
>  {
>  	if (!crypto_simd_usable()) {
> -		sha512_base_do_finalize(desc,
> -				(sha512_block_fn *)sha512_block_data_order);
> +		sha512_base_do_finalize(desc, sha512_block_data_order);
>  		return sha512_base_finish(desc, out);
>  	}
>  
>  	kernel_neon_begin();
> -	sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
> +	sha512_base_do_finalize(desc, sha512_ce_transform);
>  	kernel_neon_end();
>  	return sha512_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha512-glue.c b/arch/arm64/crypto/sha512-glue.c
> index d915c656e5fe..0f6b610a7954 100644
> --- a/arch/arm64/crypto/sha512-glue.c
> +++ b/arch/arm64/crypto/sha512-glue.c
> @@ -20,25 +20,22 @@ MODULE_LICENSE("GPL v2");
>  MODULE_ALIAS_CRYPTO("sha384");
>  MODULE_ALIAS_CRYPTO("sha512");
>  
> -asmlinkage void sha512_block_data_order(u32 *digest, const void *data,
> -					unsigned int num_blks);
> +asmlinkage void sha512_block_data_order(struct sha512_state *sst,
> +					u8 const *src, int blocks);
>  EXPORT_SYMBOL(sha512_block_data_order);
>  
>  static int sha512_update(struct shash_desc *desc, const u8 *data,
>  			 unsigned int len)
>  {
> -	return sha512_base_do_update(desc, data, len,
> -			(sha512_block_fn *)sha512_block_data_order);
> +	return sha512_base_do_update(desc, data, len, sha512_block_data_order);
>  }
>  
>  static int sha512_finup(struct shash_desc *desc, const u8 *data,
>  			unsigned int len, u8 *out)
>  {
>  	if (len)
> -		sha512_base_do_update(desc, data, len,
> -			(sha512_block_fn *)sha512_block_data_order);
> -	sha512_base_do_finalize(desc,
> -			(sha512_block_fn *)sha512_block_data_order);
> +		sha512_base_do_update(desc, data, len, sha512_block_data_order);
> +	sha512_base_do_finalize(desc, sha512_block_data_order);
>  
>  	return sha512_base_finish(desc, out);
>  }
> 
> base-commit: 100d46bd72ec689a5582c2f5f4deadc5bcb92d60
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
