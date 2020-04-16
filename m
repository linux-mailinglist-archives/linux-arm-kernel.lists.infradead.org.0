Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9253C1ABC27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKtJjr9uTyu/5DW9z4zEx7DhP/OILPl4YJQkNyPYc98=; b=Sr+KlofCJru19A
	B/YW3pWyzUh3+SqOf0/0A1ZBoaUg6FOpRx/E5g1/akg3d9UCP881W20zZBfdtGHSM3HK8PbRNaHYd
	F2xaKHqWGblZN6E0vpBRHqr/Hrdyp37opjxtgasA4a4zeNZ21olEWLsr/ldB2cs4B77fM8k6GUjmT
	FitlmpeGSpQTjr6DQVI2MjsZ5UctvxcjqJDli7H8308pezd3PtqpnZPxVSmaF/ObqeI1XYLQ39klW
	Y2FJ3stH57NiWQa5lvqzZGralpDkMvqnrtGox6Fo0241Ypo+0LoS98JCPsl/Ks2PV4or5KFwSTeky
	dldizzunYP/QqpZ4QztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Te-0006bD-MH; Thu, 16 Apr 2020 09:06:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0TW-0006aL-Jk; Thu, 16 Apr 2020 09:06:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id a81so3936093wmf.5;
 Thu, 16 Apr 2020 02:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yAv2GmlpRM4DHIRBfsgxasc2IYmBEhDxXdtOBrWJ4U8=;
 b=CDIbpLAXS1EKEN13b1kSvVLcPacISXzq1NCV1iNJQ773+hnlYxG6Is9sS4JShoc9n9
 k3G+6a27oWeEwt1pJwSRR0lOqb7uuEEBotwWpvxkLBGK4sdBUm8VpyGwZR2F5LMIYqmk
 jdGMEpxdJ/9JULk5sX11duK6rZAqJyG/z56EqlK13PYxHHxIL+8WRSUbU5ji/DGzNUGm
 HOARn5L1Ub3isaoR3g2aijZ5lSKOTG9AyfvU2TfqATFGm5A0bNt42+GLwleMkWBtAL45
 NP+kQIWlgHBldPKo/9BCkRg6xGazgJNk5fkBnBgzz39Ee28aFn0FcpL1N6kRJexGyPZ3
 9o/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yAv2GmlpRM4DHIRBfsgxasc2IYmBEhDxXdtOBrWJ4U8=;
 b=QvV2ER7FadwO2IyyXXxtDtR5A4FN3weZASlPnDT4tqDQbdmK8cNlPp2d8crUdGiEEB
 3M4/Mb61HshtIbnKP1/M/X8mg6aFLr2umy/N1S4latj9fJ2EZ5pGr8tmRUy6KfyioH7h
 VhK9kqYKPQGlmjaoRfXZW0VshTbZIGrXd02tRQ5paOfWKZSsig8vhoSasJGHFstBHhsu
 Mdh8fayejGRkPCdIlapBTO0e8sBknKL3AWHt88AuWbRkqrILNBgctWjmPBRVwNZXyL/F
 NinOwLBm/Ztheze+B2OZgLqcDxEIsH+p8SvXdn6zoQqYxnBJbXAC0wqUYKYwhglEnhip
 CzYw==
X-Gm-Message-State: AGi0PuZjhFmLzerGvoBsjKbNmwKPB5AR0Z55P2FKFE4JFdWbRF9tcnee
 GnCBEzkXz+a+wiM6WijyXgY=
X-Google-Smtp-Source: APiQypIT5qLrY1V6iR8ope7blS6HLhe0vatqp7eT57ABrFQv0dME7fPlM3XipHt6eXvUq16Sx0qycg==
X-Received: by 2002:a1c:e242:: with SMTP id z63mr3963633wmg.72.1587027981096; 
 Thu, 16 Apr 2020 02:06:21 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id s18sm17572177wrv.2.2020.04.16.02.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 02:06:20 -0700 (PDT)
Date: Thu, 16 Apr 2020 11:06:18 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v3 2/3] crypto: Remove unnecessary memzero_explicit()
Message-ID: <20200416090618.GB29148@Red>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200414200214.1873-1-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414200214.1873-1-longman@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_020622_650878_D9370EBC 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-crypto@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, Chen-Yu Tsai <wens@csie.org>, keyrings@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, David Rientjes <rientjes@google.com>,
 Joe Perches <joe@perches.com>, linux-amlogic@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:02:14PM -0400, Waiman Long wrote:
> Since kfree_sensitive() will do an implicit memzero_explicit(),
> there is no need to call memzero_explicit() before it. Eliminate those
> memzero_explicit() and simplify the call sites. For better correctness,
> keylen is cleared if key memory allocation fails.
> 
> Signed-off-by: Waiman Long <longman@redhat.com>
> ---
>  .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 23 +++++++-----------
>  .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 24 +++++++------------
>  drivers/crypto/amlogic/amlogic-gxl-cipher.c   | 14 ++++-------
>  drivers/crypto/inside-secure/safexcel_hash.c  |  3 +--
>  4 files changed, 24 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> index aa4e8fdc2b32..a2bac10d2876 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
> @@ -366,10 +366,7 @@ void sun8i_ce_cipher_exit(struct crypto_tfm *tfm)
>  {
>  	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
>  
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	crypto_free_sync_skcipher(op->fallback_tfm);
>  	pm_runtime_put_sync_suspend(op->ce->dev);
>  }
> @@ -391,14 +388,13 @@ int sun8i_ce_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  		dev_dbg(ce->dev, "ERROR: Invalid keylen %u\n", keylen);
>  		return -EINVAL;
>  	}
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	op->keylen = keylen;
>  	op->key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
> -	if (!op->key)
> +	if (unlikely(!op->key)) {
> +		op->keylen = 0;
>  		return -ENOMEM;
> +	}
>  
>  	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
>  	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
> @@ -416,14 +412,13 @@ int sun8i_ce_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  	if (err)
>  		return err;
>  
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	op->keylen = keylen;
>  	op->key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
> -	if (!op->key)
> +	if (unlikely(!op->key)) {
> +		op->keylen = 0;
>  		return -ENOMEM;
> +	}
>  
>  	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
>  	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
> diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> index 5246ef4f5430..a24d567a6c36 100644
> --- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> +++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> @@ -249,7 +249,6 @@ static int sun8i_ss_cipher(struct skcipher_request *areq)
>  			offset = areq->cryptlen - ivsize;
>  			if (rctx->op_dir & SS_DECRYPTION) {
>  				memcpy(areq->iv, backup_iv, ivsize);
> -				memzero_explicit(backup_iv, ivsize);
>  				kfree_sensitive(backup_iv);
>  			} else {
>  				scatterwalk_map_and_copy(areq->iv, areq->dst, offset,
> @@ -367,10 +366,7 @@ void sun8i_ss_cipher_exit(struct crypto_tfm *tfm)
>  {
>  	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
>  
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	crypto_free_sync_skcipher(op->fallback_tfm);
>  	pm_runtime_put_sync(op->ss->dev);
>  }
> @@ -392,14 +388,13 @@ int sun8i_ss_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  		dev_dbg(ss->dev, "ERROR: Invalid keylen %u\n", keylen);
>  		return -EINVAL;
>  	}
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	op->keylen = keylen;
>  	op->key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
> -	if (!op->key)
> +	if (unlikely(!op->key))
> +		op->keylen = 0;
>  		return -ENOMEM;
> +	}
>  
>  	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
>  	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
> @@ -418,14 +413,13 @@ int sun8i_ss_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  		return -EINVAL;
>  	}
>  
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	op->keylen = keylen;
>  	op->key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
> -	if (!op->key)
> +	if (unlikely(!op->key))
> +		op->keylen = 0;
>  		return -ENOMEM;
> +	}
>  
>  	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
>  	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
> diff --git a/drivers/crypto/amlogic/amlogic-gxl-cipher.c b/drivers/crypto/amlogic/amlogic-gxl-cipher.c
> index fd1269900d67..5312bad7534e 100644
> --- a/drivers/crypto/amlogic/amlogic-gxl-cipher.c
> +++ b/drivers/crypto/amlogic/amlogic-gxl-cipher.c
> @@ -341,10 +341,7 @@ void meson_cipher_exit(struct crypto_tfm *tfm)
>  {
>  	struct meson_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
>  
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	crypto_free_sync_skcipher(op->fallback_tfm);
>  }
>  
> @@ -368,14 +365,13 @@ int meson_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  		dev_dbg(mc->dev, "ERROR: Invalid keylen %u\n", keylen);
>  		return -EINVAL;
>  	}
> -	if (op->key) {
> -		memzero_explicit(op->key, op->keylen);
> -		kfree(op->key);
> -	}
> +	kfree_sensitive(op->key);
>  	op->keylen = keylen;
>  	op->key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
> -	if (!op->key)
> +	if (unlikely(!op->key))
> +		op->keylen = 0;
>  		return -ENOMEM;
> +	}
>  
>  	return crypto_sync_skcipher_setkey(op->fallback_tfm, key, keylen);
>  }

For sun8i-ss/sun8i-ce
Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>
For amlogic
Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
