Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D6BD633C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WwL89YDCJ8wNixTqowwBbkADfoJ7Io91HSWZPqbR9E=; b=iNru/fumeX+99A
	0zuJGk9gNf1/SSTMPtMls042syoKR6Br/6FtaF1phiyk8Lx0O8KQaRg4w+9yNb+NZgRbcv+iPehZw
	i0RJQ4lktNqIKRl/OD15NXphASPprXHwOuj+ZXXEji2CA2BX/V2cYzJaCW2yp6K9z2Hm9hoNVJamp
	5ftUtrmKxdRT9Tp8HHzYdU343v2Ja6FDIXuqUHgPcaxReClLPNX5uv7sRSOqnc+1RLmFC97h6LQTi
	wPy7C4A/SOB8yoN9gzvOad4/jbdsEPzeZnxSMuD2Q8jV5uRmpETKC3i9pavW6g6Ssb7MfvmWppavT
	JGK7WNVHtd8DUS5Px5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzz9-0004Pm-NO; Mon, 14 Oct 2019 13:02:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzz0-0004P9-Sc
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:01:56 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93733217D9;
 Mon, 14 Oct 2019 13:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571058114;
 bh=NpehrkHyjb0psRZp/Hleb6tPGTn2vlQy2Pv8V0UUgIc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1SuzeT8T1X07sLA2AodJqOIqxuFyQAXDKnF0NVeR/9VZCQezCUZ0x6GQVRHhIxTtx
 E2akFGO3lShs8zz1ILXf2SwHGIJpi9GIC1g+WkjHh/yd1Dd5smXfLHajU+Y2cjRIWr
 0GwY5BTrYA87nElB5mL1LXfU2W6C7mR3yDaDWcHE=
Date: Mon, 14 Oct 2019 21:01:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 16/25] crypto: mxs - switch to skcipher API
Message-ID: <20191014130124.GT12262@dragon>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-17-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014121910.7264-17-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_060154_965500_296B6090 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-crypto@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Copy Marek who is the author of the driver.

Shawn

On Mon, Oct 14, 2019 at 02:19:01PM +0200, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/crypto/mxs-dcp.c | 140 +++++++++-----------
>  1 file changed, 65 insertions(+), 75 deletions(-)
> 
> diff --git a/drivers/crypto/mxs-dcp.c b/drivers/crypto/mxs-dcp.c
> index bf8d2197bc11..f438b425c655 100644
> --- a/drivers/crypto/mxs-dcp.c
> +++ b/drivers/crypto/mxs-dcp.c
> @@ -211,11 +211,11 @@ static int mxs_dcp_start_dma(struct dcp_async_ctx *actx)
>   * Encryption (AES128)
>   */
>  static int mxs_dcp_run_aes(struct dcp_async_ctx *actx,
> -			   struct ablkcipher_request *req, int init)
> +			   struct skcipher_request *req, int init)
>  {
>  	struct dcp *sdcp = global_sdcp;
>  	struct dcp_dma_desc *desc = &sdcp->coh->desc[actx->chan];
> -	struct dcp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct dcp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>  	int ret;
>  
>  	dma_addr_t key_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_key,
> @@ -274,9 +274,9 @@ static int mxs_dcp_aes_block_crypt(struct crypto_async_request *arq)
>  {
>  	struct dcp *sdcp = global_sdcp;
>  
> -	struct ablkcipher_request *req = ablkcipher_request_cast(arq);
> +	struct skcipher_request *req = skcipher_request_cast(arq);
>  	struct dcp_async_ctx *actx = crypto_tfm_ctx(arq->tfm);
> -	struct dcp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct dcp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>  
>  	struct scatterlist *dst = req->dst;
>  	struct scatterlist *src = req->src;
> @@ -305,7 +305,7 @@ static int mxs_dcp_aes_block_crypt(struct crypto_async_request *arq)
>  
>  	if (!rctx->ecb) {
>  		/* Copy the CBC IV just past the key. */
> -		memcpy(key + AES_KEYSIZE_128, req->info, AES_KEYSIZE_128);
> +		memcpy(key + AES_KEYSIZE_128, req->iv, AES_KEYSIZE_128);
>  		/* CBC needs the INIT set. */
>  		init = 1;
>  	} else {
> @@ -316,10 +316,10 @@ static int mxs_dcp_aes_block_crypt(struct crypto_async_request *arq)
>  		src_buf = sg_virt(src);
>  		len = sg_dma_len(src);
>  		tlen += len;
> -		limit_hit = tlen > req->nbytes;
> +		limit_hit = tlen > req->cryptlen;
>  
>  		if (limit_hit)
> -			len = req->nbytes - (tlen - len);
> +			len = req->cryptlen - (tlen - len);
>  
>  		do {
>  			if (actx->fill + len > out_off)
> @@ -375,10 +375,10 @@ static int mxs_dcp_aes_block_crypt(struct crypto_async_request *arq)
>  	/* Copy the IV for CBC for chaining */
>  	if (!rctx->ecb) {
>  		if (rctx->enc)
> -			memcpy(req->info, out_buf+(last_out_len-AES_BLOCK_SIZE),
> +			memcpy(req->iv, out_buf+(last_out_len-AES_BLOCK_SIZE),
>  				AES_BLOCK_SIZE);
>  		else
> -			memcpy(req->info, in_buf+(last_out_len-AES_BLOCK_SIZE),
> +			memcpy(req->iv, in_buf+(last_out_len-AES_BLOCK_SIZE),
>  				AES_BLOCK_SIZE);
>  	}
>  
> @@ -422,17 +422,17 @@ static int dcp_chan_thread_aes(void *data)
>  	return 0;
>  }
>  
> -static int mxs_dcp_block_fallback(struct ablkcipher_request *req, int enc)
> +static int mxs_dcp_block_fallback(struct skcipher_request *req, int enc)
>  {
> -	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
> -	struct dcp_async_ctx *ctx = crypto_ablkcipher_ctx(tfm);
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> +	struct dcp_async_ctx *ctx = crypto_skcipher_ctx(tfm);
>  	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);
>  	int ret;
>  
>  	skcipher_request_set_sync_tfm(subreq, ctx->fallback);
>  	skcipher_request_set_callback(subreq, req->base.flags, NULL, NULL);
>  	skcipher_request_set_crypt(subreq, req->src, req->dst,
> -				   req->nbytes, req->info);
> +				   req->cryptlen, req->iv);
>  
>  	if (enc)
>  		ret = crypto_skcipher_encrypt(subreq);
> @@ -444,12 +444,12 @@ static int mxs_dcp_block_fallback(struct ablkcipher_request *req, int enc)
>  	return ret;
>  }
>  
> -static int mxs_dcp_aes_enqueue(struct ablkcipher_request *req, int enc, int ecb)
> +static int mxs_dcp_aes_enqueue(struct skcipher_request *req, int enc, int ecb)
>  {
>  	struct dcp *sdcp = global_sdcp;
>  	struct crypto_async_request *arq = &req->base;
>  	struct dcp_async_ctx *actx = crypto_tfm_ctx(arq->tfm);
> -	struct dcp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
> +	struct dcp_aes_req_ctx *rctx = skcipher_request_ctx(req);
>  	int ret;
>  
>  	if (unlikely(actx->key_len != AES_KEYSIZE_128))
> @@ -468,30 +468,30 @@ static int mxs_dcp_aes_enqueue(struct ablkcipher_request *req, int enc, int ecb)
>  	return ret;
>  }
>  
> -static int mxs_dcp_aes_ecb_decrypt(struct ablkcipher_request *req)
> +static int mxs_dcp_aes_ecb_decrypt(struct skcipher_request *req)
>  {
>  	return mxs_dcp_aes_enqueue(req, 0, 1);
>  }
>  
> -static int mxs_dcp_aes_ecb_encrypt(struct ablkcipher_request *req)
> +static int mxs_dcp_aes_ecb_encrypt(struct skcipher_request *req)
>  {
>  	return mxs_dcp_aes_enqueue(req, 1, 1);
>  }
>  
> -static int mxs_dcp_aes_cbc_decrypt(struct ablkcipher_request *req)
> +static int mxs_dcp_aes_cbc_decrypt(struct skcipher_request *req)
>  {
>  	return mxs_dcp_aes_enqueue(req, 0, 0);
>  }
>  
> -static int mxs_dcp_aes_cbc_encrypt(struct ablkcipher_request *req)
> +static int mxs_dcp_aes_cbc_encrypt(struct skcipher_request *req)
>  {
>  	return mxs_dcp_aes_enqueue(req, 1, 0);
>  }
>  
> -static int mxs_dcp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
> +static int mxs_dcp_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
>  			      unsigned int len)
>  {
> -	struct dcp_async_ctx *actx = crypto_ablkcipher_ctx(tfm);
> +	struct dcp_async_ctx *actx = crypto_skcipher_ctx(tfm);
>  	unsigned int ret;
>  
>  	/*
> @@ -525,10 +525,10 @@ static int mxs_dcp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
>  	return ret;
>  }
>  
> -static int mxs_dcp_aes_fallback_init(struct crypto_tfm *tfm)
> +static int mxs_dcp_aes_fallback_init_tfm(struct crypto_skcipher *tfm)
>  {
> -	const char *name = crypto_tfm_alg_name(tfm);
> -	struct dcp_async_ctx *actx = crypto_tfm_ctx(tfm);
> +	const char *name = crypto_tfm_alg_name(crypto_skcipher_tfm(tfm));
> +	struct dcp_async_ctx *actx = crypto_skcipher_ctx(tfm);
>  	struct crypto_sync_skcipher *blk;
>  
>  	blk = crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
> @@ -536,13 +536,13 @@ static int mxs_dcp_aes_fallback_init(struct crypto_tfm *tfm)
>  		return PTR_ERR(blk);
>  
>  	actx->fallback = blk;
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct dcp_aes_req_ctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct dcp_aes_req_ctx));
>  	return 0;
>  }
>  
> -static void mxs_dcp_aes_fallback_exit(struct crypto_tfm *tfm)
> +static void mxs_dcp_aes_fallback_exit_tfm(struct crypto_skcipher *tfm)
>  {
> -	struct dcp_async_ctx *actx = crypto_tfm_ctx(tfm);
> +	struct dcp_async_ctx *actx = crypto_skcipher_ctx(tfm);
>  
>  	crypto_free_sync_skcipher(actx->fallback);
>  }
> @@ -854,54 +854,44 @@ static void dcp_sha_cra_exit(struct crypto_tfm *tfm)
>  }
>  
>  /* AES 128 ECB and AES 128 CBC */
> -static struct crypto_alg dcp_aes_algs[] = {
> +static struct skcipher_alg dcp_aes_algs[] = {
>  	{
> -		.cra_name		= "ecb(aes)",
> -		.cra_driver_name	= "ecb-aes-dcp",
> -		.cra_priority		= 400,
> -		.cra_alignmask		= 15,
> -		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -					  CRYPTO_ALG_ASYNC |
> +		.base.cra_name		= "ecb(aes)",
> +		.base.cra_driver_name	= "ecb-aes-dcp",
> +		.base.cra_priority	= 400,
> +		.base.cra_alignmask	= 15,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC |
>  					  CRYPTO_ALG_NEED_FALLBACK,
> -		.cra_init		= mxs_dcp_aes_fallback_init,
> -		.cra_exit		= mxs_dcp_aes_fallback_exit,
> -		.cra_blocksize		= AES_BLOCK_SIZE,
> -		.cra_ctxsize		= sizeof(struct dcp_async_ctx),
> -		.cra_type		= &crypto_ablkcipher_type,
> -		.cra_module		= THIS_MODULE,
> -		.cra_u	= {
> -			.ablkcipher = {
> -				.min_keysize	= AES_MIN_KEY_SIZE,
> -				.max_keysize	= AES_MAX_KEY_SIZE,
> -				.setkey		= mxs_dcp_aes_setkey,
> -				.encrypt	= mxs_dcp_aes_ecb_encrypt,
> -				.decrypt	= mxs_dcp_aes_ecb_decrypt
> -			},
> -		},
> +		.base.cra_blocksize	= AES_BLOCK_SIZE,
> +		.base.cra_ctxsize	= sizeof(struct dcp_async_ctx),
> +		.base.cra_module	= THIS_MODULE,
> +
> +		.min_keysize		= AES_MIN_KEY_SIZE,
> +		.max_keysize		= AES_MAX_KEY_SIZE,
> +		.setkey			= mxs_dcp_aes_setkey,
> +		.encrypt		= mxs_dcp_aes_ecb_encrypt,
> +		.decrypt		= mxs_dcp_aes_ecb_decrypt,
> +		.init			= mxs_dcp_aes_fallback_init_tfm,
> +		.exit			= mxs_dcp_aes_fallback_exit_tfm,
>  	}, {
> -		.cra_name		= "cbc(aes)",
> -		.cra_driver_name	= "cbc-aes-dcp",
> -		.cra_priority		= 400,
> -		.cra_alignmask		= 15,
> -		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -					  CRYPTO_ALG_ASYNC |
> +		.base.cra_name		= "cbc(aes)",
> +		.base.cra_driver_name	= "cbc-aes-dcp",
> +		.base.cra_priority	= 400,
> +		.base.cra_alignmask	= 15,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC |
>  					  CRYPTO_ALG_NEED_FALLBACK,
> -		.cra_init		= mxs_dcp_aes_fallback_init,
> -		.cra_exit		= mxs_dcp_aes_fallback_exit,
> -		.cra_blocksize		= AES_BLOCK_SIZE,
> -		.cra_ctxsize		= sizeof(struct dcp_async_ctx),
> -		.cra_type		= &crypto_ablkcipher_type,
> -		.cra_module		= THIS_MODULE,
> -		.cra_u = {
> -			.ablkcipher = {
> -				.min_keysize	= AES_MIN_KEY_SIZE,
> -				.max_keysize	= AES_MAX_KEY_SIZE,
> -				.setkey		= mxs_dcp_aes_setkey,
> -				.encrypt	= mxs_dcp_aes_cbc_encrypt,
> -				.decrypt	= mxs_dcp_aes_cbc_decrypt,
> -				.ivsize		= AES_BLOCK_SIZE,
> -			},
> -		},
> +		.base.cra_blocksize	= AES_BLOCK_SIZE,
> +		.base.cra_ctxsize	= sizeof(struct dcp_async_ctx),
> +		.base.cra_module	= THIS_MODULE,
> +
> +		.min_keysize		= AES_MIN_KEY_SIZE,
> +		.max_keysize		= AES_MAX_KEY_SIZE,
> +		.setkey			= mxs_dcp_aes_setkey,
> +		.encrypt		= mxs_dcp_aes_cbc_encrypt,
> +		.decrypt		= mxs_dcp_aes_cbc_decrypt,
> +		.ivsize			= AES_BLOCK_SIZE,
> +		.init			= mxs_dcp_aes_fallback_init_tfm,
> +		.exit			= mxs_dcp_aes_fallback_exit_tfm,
>  	},
>  };
>  
> @@ -1104,8 +1094,8 @@ static int mxs_dcp_probe(struct platform_device *pdev)
>  	sdcp->caps = readl(sdcp->base + MXS_DCP_CAPABILITY1);
>  
>  	if (sdcp->caps & MXS_DCP_CAPABILITY1_AES128) {
> -		ret = crypto_register_algs(dcp_aes_algs,
> -					   ARRAY_SIZE(dcp_aes_algs));
> +		ret = crypto_register_skciphers(dcp_aes_algs,
> +						ARRAY_SIZE(dcp_aes_algs));
>  		if (ret) {
>  			/* Failed to register algorithm. */
>  			dev_err(dev, "Failed to register AES crypto!\n");
> @@ -1139,7 +1129,7 @@ static int mxs_dcp_probe(struct platform_device *pdev)
>  
>  err_unregister_aes:
>  	if (sdcp->caps & MXS_DCP_CAPABILITY1_AES128)
> -		crypto_unregister_algs(dcp_aes_algs, ARRAY_SIZE(dcp_aes_algs));
> +		crypto_unregister_skciphers(dcp_aes_algs, ARRAY_SIZE(dcp_aes_algs));
>  
>  err_destroy_aes_thread:
>  	kthread_stop(sdcp->thread[DCP_CHAN_CRYPTO]);
> @@ -1164,7 +1154,7 @@ static int mxs_dcp_remove(struct platform_device *pdev)
>  		crypto_unregister_ahash(&dcp_sha1_alg);
>  
>  	if (sdcp->caps & MXS_DCP_CAPABILITY1_AES128)
> -		crypto_unregister_algs(dcp_aes_algs, ARRAY_SIZE(dcp_aes_algs));
> +		crypto_unregister_skciphers(dcp_aes_algs, ARRAY_SIZE(dcp_aes_algs));
>  
>  	kthread_stop(sdcp->thread[DCP_CHAN_HASH_SHA]);
>  	kthread_stop(sdcp->thread[DCP_CHAN_CRYPTO]);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
