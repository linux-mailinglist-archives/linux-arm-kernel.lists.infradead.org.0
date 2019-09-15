Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8947EB31F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 22:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zFnSHXrz5jgWp21Gc7+S6XHuTELBnNNOUJnuo36V1k=; b=OTiI/iJeXfwpPt
	YNY3WmikijaUQXniozO7NEOeuiBwzohlE/sR6nWCS0A+c08W3C1qmL/RYqZQNkLjLPXEsj/rF/9kh
	JEIn6xJgqhTPj40DONUVd7ryLczc7YeF0V/mQglOX1QbyggQtub4eI2WFRK9nSdXL5URSeW3VzHdm
	uccGw73HZQ6ovf2IF9feezPyEbvLPhrol12LAyjmvZRvkiX7HgnNyBRfUwsSD4xyoiQT8c3bMRCta
	filjXmqqekPH/SzCXb3KPcsRyx350LV8g/qCp4MNvEs8/Zjz851irqhDMrRZK0xDbHRtIYXzuReki
	XvYaiq39Csaph+5cx02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9axD-0003UZ-KM; Sun, 15 Sep 2019 20:17:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ax1-0003UC-NJ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 20:16:53 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50F5D214AF;
 Sun, 15 Sep 2019 20:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568578610;
 bh=d/HrE/iGcEqOEmCdLte6zzmoLMwAvKRRiPAXELWKn3c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RPq2joGQ2Try6Oplud7Geb+58heA5O9WPpaFV+TgsTLEdLYxZJtAWLKcnE5WvUcgY
 51KdN4G0BdcTMn14Z9pd/5PzdnnYrnnj2ZYSQecLJdj/ECyqpPSRa2m6rBwH22i8jU
 od3ywG3yXgqXps+9ze5whibROFPS8x+liH1IgW64=
Date: Sun, 15 Sep 2019 13:16:48 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] crypto: sun4i-ss: erase key after use
Message-ID: <20190915201648.GA1704@sol.localdomain>
Mail-Followup-To: Corentin Labbe <clabbe.montjoie@gmail.com>,
 davem@davemloft.net, herbert@gondor.apana.org.au,
 mripard@kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 stable@vger.kernel.org
References: <20190915183536.3835-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915183536.3835-1-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_131651_784940_0F5C2F9C 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, stable@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 08:35:36PM +0200, Corentin Labbe wrote:
> When a TFM is unregistered, the sun4i-ss driver does not clean the key used,
> leaking it in memory.
> This patch adds this absent key cleaning.
> 
> Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
> Cc: <stable@vger.kernel.org> # 4.3+
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> index fa4b1b47822e..60d99370a4ec 100644
> --- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> +++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> @@ -503,6 +503,8 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
>  void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
>  {
>  	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
> +
> +	memzero_explicit(op->key, op->keylen);
>  	crypto_free_sync_skcipher(op->fallback_tfm);
>  }
>  
> -- 
> 2.21.0
> 

It's already zeroed by the kzfree() in crypto_destroy_tfm().

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
