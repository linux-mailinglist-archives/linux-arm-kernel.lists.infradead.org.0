Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB914A20F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TGGspanfzDbug0rYPfzgmZ4nuJW0MPygmPgSCl2toY=; b=OViiIvQRj/mhMc
	on1rxYYYj5p3W4yx8KIJap4YE2XbjJqN2+SZxRnIu5ABMHzwWeSR8JXQGQ7CEEpp2sMGAjt3/k5+f
	pVG/lAkPEMJ/9CE+R+cgy5qKwQFDcEZEUZ883CQB0FOUZyNLqNQ/IfxNmEseMQutTCVL/NUbpJWax
	qdGE9keAxHT158Y14y7LT8xctjwcJaW1ByM3CLiTGZFUGuc4hRn4wWcIcaxuX+tGjucTwQNDm4lnr
	628pQtXac/GrJEpvadVQCEVu0pCIheEsNBmJjm5E/nZR38mDqNC4WJbaDLqLVOql3Za9q6P4+29Yq
	QETMgHRRqnFmW8dAW9Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE8R-0000Vs-CK; Tue, 18 Jun 2019 13:26:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDul-0006X9-Pz
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:13:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so13951093wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7FALWQ6cOh3JsG038fbVz+yiqqz0f79O0ClChfodEQs=;
 b=Q/DsCxTTpuF0/+fAH5Ad7SkE1PEf7KzB0fJmiSFe3Xjj6DuqgZNMeHGkeInINWD7cJ
 Ikx6ys+AQneaMr5n0KwcWnkfDF5TIxTviUkX6TyvNYtHd9KYqkI7bTSr+LvMGZZyjx2W
 2XcDJ4eWGtV/3vi+lK6IMdcjIV/k61XxTIETIq4nloIr254y6uadVtTEjrFn3a9oJ5Zl
 ouXDH8nA7WssQ3LS7eJSiMwDMvY5ELgndTHzN/aANZi3r+XuE1NkLuE7ZE/bNWfND0uH
 5rYsO63g3CRDprdEw7yH9nzGzIeQ4BxagJkD1FsZj+sittr3Dn+TBrqUsJrH5pbz+HYP
 EmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7FALWQ6cOh3JsG038fbVz+yiqqz0f79O0ClChfodEQs=;
 b=EAs/z9A8UXyvtzLy47LLWlyJUz+CPPe96K7Nbkz1SPioxwZVyUMwQ1C8ncPbxDscLS
 N/HfVhbXTfT1749DkggQDxWORGsBG5pv5tx6KnJGAypiSOmgX4S4RJJRLQhZxYCTrrjn
 PVhT6na14HiYm3RJuI+9NmwtSV1kRFNW1H6iXflu2LwvpkiJ+k/lynmvw9lrHzkPaUGV
 647VzDwu4f7KujBIqEfY2Oi1Rf6U5Dw7O7eWAwNUa/7g8zYqYVhtTGqvktCh6uDDbZCh
 GD/7sxfXmmxcsk79WY724DFHWDPVhkgDxs0qUmI4E46pfiwk+a0IY1K7wgGbfozoScse
 mYuA==
X-Gm-Message-State: APjAAAVizAr9wMB/T3Y+YemJhTSXpDysf+UtFOrZXYffAO4Gw7qKgt2G
 tiQgRMy4/6fCdq6DQ+EF3kU=
X-Google-Smtp-Source: APXvYqy1MQ2zlBqmr3KXBZUn3NaMXrsL66L7Sz4lxFaGkx9NZeR8KUFacbmwTj+GSE3ktkFEUI2o6w==
X-Received: by 2002:adf:eecf:: with SMTP id a15mr7408693wrp.354.1560863557790; 
 Tue, 18 Jun 2019 06:12:37 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id f2sm21287538wrq.48.2019.06.18.06.12.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:37 -0700 (PDT)
Date: Tue, 18 Jun 2019 15:12:34 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] crypto: sun4i-ss - reduce stack usage
Message-ID: <20190618131234.GA8474@Red>
References: <20190617132538.2759714-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617132538.2759714-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061245_159552_5D0DFF15 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 03:25:17PM +0200, Arnd Bergmann wrote:
> After the latest addition, the stack usage of sun4i_ss_cipher_poll
> grew beyond the warning limit when KASAN is enabled:
> 
> drivers/crypto/sunxi-ss/sun4i-ss-cipher.c:118:12: error: stack frame size of 1152 bytes in function 'sun4i_ss_cipher_poll' [-Werror,-Wframe-larger-than=]
> static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
> 
> Reduce it in three ways:
> 
> - split out the new code into a separate function so its stack
>   usage can overlap that of the sun4i_ss_opti_poll() code path
> - mark both special cases as noinline_for_stack, which should
>   ideally result in a tail call that frees the rest of the
>   stack
> - move the buf and obuf variables into the code blocks in
>   which they are used.
> 
> The three separate functions now use 144, 640 and 304 bytes of kernel
> stack, respectively.
> 
> Fixes: 0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 47 +++++++++++++++--------
>  1 file changed, 30 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> index 7b0c42882830..4ab14d58e85b 100644
> --- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> +++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> @@ -12,7 +12,7 @@
>   */
>  #include "sun4i-ss.h"
>  
> -static int sun4i_ss_opti_poll(struct skcipher_request *areq)
> +static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_request *areq)
>  {
>  	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
>  	struct sun4i_tfm_ctx *op = crypto_skcipher_ctx(tfm);
> @@ -114,6 +114,29 @@ static int sun4i_ss_opti_poll(struct skcipher_request *areq)
>  	return err;
>  }
>  
> +
> +static int noinline_for_stack sun4i_ss_cipher_poll_fallback(struct skcipher_request *areq)
> +{
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
> +	struct sun4i_tfm_ctx *op = crypto_skcipher_ctx(tfm);
> +	struct sun4i_cipher_req_ctx *ctx = skcipher_request_ctx(areq);
> +	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
> +	int err;
> +
> +	skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
> +	skcipher_request_set_callback(subreq, areq->base.flags, NULL,
> +				      NULL);
> +	skcipher_request_set_crypt(subreq, areq->src, areq->dst,
> +				   areq->cryptlen, areq->iv);
> +	if (ctx->mode & SS_DECRYPTION)
> +		err = crypto_skcipher_decrypt(subreq);
> +	else
> +		err = crypto_skcipher_encrypt(subreq);
> +	skcipher_request_zero(subreq);
> +
> +	return err;
> +}
> +
>  /* Generic function that support SG with size not multiple of 4 */
>  static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
>  {
> @@ -140,8 +163,6 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
>  	unsigned int todo;
>  	struct sg_mapping_iter mi, mo;
>  	unsigned int oi, oo;	/* offset for in and out */
> -	char buf[4 * SS_RX_MAX];/* buffer for linearize SG src */
> -	char bufo[4 * SS_TX_MAX]; /* buffer for linearize SG dst */
>  	unsigned int ob = 0;	/* offset in buf */
>  	unsigned int obo = 0;	/* offset in bufo*/
>  	unsigned int obl = 0;	/* length of data in bufo */
> @@ -178,20 +199,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
>  	if (no_chunk == 1 && !need_fallback)
>  		return sun4i_ss_opti_poll(areq);
>  
> -	if (need_fallback) {
> -		SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
> -		skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
> -		skcipher_request_set_callback(subreq, areq->base.flags, NULL,
> -					      NULL);
> -		skcipher_request_set_crypt(subreq, areq->src, areq->dst,
> -					   areq->cryptlen, areq->iv);
> -		if (ctx->mode & SS_DECRYPTION)
> -			err = crypto_skcipher_decrypt(subreq);
> -		else
> -			err = crypto_skcipher_encrypt(subreq);
> -		skcipher_request_zero(subreq);
> -		return err;
> -	}
> +	if (need_fallback)
> +		return sun4i_ss_cipher_poll_fallback(areq);
>  
>  	spin_lock_irqsave(&ss->slock, flags);
>  
> @@ -224,6 +233,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
>  
>  	while (oleft) {
>  		if (ileft) {
> +			char buf[4 * SS_RX_MAX];/* buffer for linearize SG src */
> +
>  			/*
>  			 * todo is the number of consecutive 4byte word that we
>  			 * can read from current SG
> @@ -281,6 +292,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
>  				oo = 0;
>  			}
>  		} else {
> +			char bufo[4 * SS_TX_MAX]; /* buffer for linearize SG dst */
> +
>  			/*
>  			 * read obl bytes in bufo, we read at maximum for
>  			 * emptying the device
> -- 
> 2.20.0
> 

Tested-by: Corentin LABBE <clabbe.montjoie@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
