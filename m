Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1885F0465
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uoxYv6+f4nkyRcbJ+8qPbIsypCe8ZJIVBephteL7+s=; b=dnZ8/JnYd/Fq8O
	jQo3Q4TvEUf+ubHuRFqNvFSD4QFU9EHVEIT41hQzHbYHcJ/VQf8nwkbjC5z1pitjh/57tneoc3nsm
	GDbG6FPC8G/n9IBXj4adTtYsyLqY4DAUwdqqqUVJ8kublC2RVk86v2ahaOJ53D5uzmu0j3E5NqIv6
	QHfEadlrDp5tICqUGE+mGwYCChcmtPBsAuEzH9F1tv2y1wG/WVhziTIZroaFdppA/KrzDV9lErCvK
	1kWW2F60xOpFR3ZLIwgJX/1/1nD2SxY+by6zZ70odd6tNwJokKgxKG2idXbeHmjSVYN3xZ8kRmAbi
	QLLRFIyY+ndVmlG4QQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS305-0004EW-Vr; Tue, 05 Nov 2019 17:52:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2zw-0004Df-MO
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:52:10 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DB1D20650;
 Tue,  5 Nov 2019 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572976328;
 bh=p+VFQmkLqCjORwfUsYuCrte2jE7w7TTv8ecEBf5sFgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=srDrOLLXcIW6gCW3oXZrBlGEV0CAfb6hz8wpyF0zB5fkJqfSCDq2F9LY03JnvrEgx
 sDKT1bZHpr+8iPIcCDylMkS5Vjsl3QY6li8oE5yiTXO3826kwQscMV2WbszT6NetJc
 2zDNDw1mHVRc2B9RyDRzO7q/kW8GqO0b+ok9/poo=
Date: Tue, 5 Nov 2019 09:52:06 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v3 28/29] crypto: remove deprecated and unused ablkcipher
 support
Message-ID: <20191105175206.GD757@sol.localdomain>
Mail-Followup-To: Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-29-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105132826.1838-29-ardb@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_095208_768301_A3A50AD7 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 02:28:25PM +0100, Ard Biesheuvel wrote:
> Now that all users of the deprecated ablkcipher interface have been
> moved to the skcipher interface, ablkcipher is no longer used and
> can be removed.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Reviewed-by: Eric Biggers <ebiggers@kernel.org>

Thanks for doing this!

A couple ideas for future cleanups below (which, if done, should go in separate
patches rather than in this big one):

> @@ -786,9 +683,6 @@ static int crypto_skcipher_init_tfm(struct crypto_tfm *tfm)
>  	struct crypto_skcipher *skcipher = __crypto_skcipher_cast(tfm);
>  	struct skcipher_alg *alg = crypto_skcipher_alg(skcipher);
>  
> -	if (tfm->__crt_alg->cra_type == &crypto_ablkcipher_type)
> -		return crypto_init_skcipher_ops_ablkcipher(tfm);
> -
>  	skcipher->setkey = skcipher_setkey;
>  	skcipher->encrypt = alg->encrypt;
>  	skcipher->decrypt = alg->decrypt;
>	skcipher->ivsize = alg->ivsize;
>	skcipher->keysize = alg->max_keysize;

Since a crypto_skcipher will now always be paired with a skcipher_alg (rather
than an blkcipher or ablkcipher algorithm), we could remove the 'encrypt',
'decrypt', 'ivsize', and 'keysize' fields of crypto_skcipher, and instead always
get them from the skcipher_alg.

> @@ -182,27 +171,18 @@ static inline u32 skcipher_request_flags(struct skcipher_request *req)
>  static inline unsigned int crypto_skcipher_alg_min_keysize(
>  	struct skcipher_alg *alg)
>  {
> -	if (alg->base.cra_ablkcipher.encrypt)
> -		return alg->base.cra_ablkcipher.min_keysize;
> -
>  	return alg->min_keysize;
>  }
>  
>  static inline unsigned int crypto_skcipher_alg_max_keysize(
>  	struct skcipher_alg *alg)
>  {
> -	if (alg->base.cra_ablkcipher.encrypt)
> -		return alg->base.cra_ablkcipher.max_keysize;
> -
>  	return alg->max_keysize;
>  }
>  
>  static inline unsigned int crypto_skcipher_alg_walksize(
>  	struct skcipher_alg *alg)
>  {
> -	if (alg->base.cra_ablkcipher.encrypt)
> -		return alg->base.cra_blocksize;
> -
>  	return alg->walksize;
>  }
>  
> diff --git a/include/crypto/skcipher.h b/include/crypto/skcipher.h
> index 8c5a31e810da..b4655d91661f 100644
> --- a/include/crypto/skcipher.h
> +++ b/include/crypto/skcipher.h
> @@ -241,9 +241,6 @@ static inline struct skcipher_alg *crypto_skcipher_alg(
>  
>  static inline unsigned int crypto_skcipher_alg_ivsize(struct skcipher_alg *alg)
>  {
> -	if (alg->base.cra_ablkcipher.encrypt)
> -		return alg->base.cra_ablkcipher.ivsize;
> -
>  	return alg->ivsize;
>  }
>  
> @@ -286,9 +283,6 @@ static inline unsigned int crypto_skcipher_blocksize(
>  static inline unsigned int crypto_skcipher_alg_chunksize(
>  	struct skcipher_alg *alg)
>  {
> -	if (alg->base.cra_ablkcipher.encrypt)
> -		return alg->base.cra_blocksize;
> -
>  	return alg->chunksize;
>  }

Now that these helpers are trivial, they could be removed and we could just
dereference the struct skcipher_alg directly.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
