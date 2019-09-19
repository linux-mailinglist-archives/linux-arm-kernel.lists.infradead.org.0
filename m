Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96905B7F7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kNlZ0MJil9aIkSBPZJQFCZ39yvBN1yj4K1TF2kfXUMQ=; b=bhUAYylpzw7Vr1vAoH4knJB1L
	7KRdScj0KIb6Dbj/HvM73b1ra7qZqjytFPFx0lca7FFOA0tXJRX4eTb29UbpGw2jNMAtqs9kkFLB3
	8AaIjVFIQdwOMizfVTJKd2uZknvPrANyjlSw23+ocYwXmMdH6BZBkXVZ1+PZRVU7ykr9Q87wdB5sw
	k8nlpoInTbESaOIYv4pxWEozo+KZKTfX8DVOMFLFAawjgogpw/KKAlUDzD8Ni0w/cMmAkLcs+wBS5
	McoMUeD3Nq8MXZMjRqdUlk/oWq821izgnQYKbPpXgESBOJxM00E1Jo7En62Z1SONd12FNVr6DyZlu
	HBpEufRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAzjn-00070I-GR; Thu, 19 Sep 2019 16:56:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAzit-0006zO-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 16:56:04 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE9D9206C2;
 Thu, 19 Sep 2019 16:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568912162;
 bh=zsfPmeUZCZdmuEtRS/K6Wqpv2tm4qLC9eXVgWfIrPAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u4g6J2LMzhF7guyY4SPvfR9r4kprWzEm6OSCjCaYm6nPTL1zNWUWZNqz7TkJHg7si
 sScSk5E7uMoq7IPXbonY1O8Q4zscoRZKH+eS9CLRj8PXFoHCZ8Ola2hyqQ2aMRpQBo
 YjL6OTFJVfJ/tVQkgvwsKUHP83mOX1bSDr1eWhBo=
Date: Thu, 19 Sep 2019 18:55:59 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 2/2] crypto: sun4i-ss: enable pm_runtime
Message-ID: <20190919165559.e7xyapggcwp2ukdt@gilmour>
References: <20190919051035.4111-1-clabbe.montjoie@gmail.com>
 <20190919051035.4111-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190919051035.4111-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_095603_322340_870F2EFC 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3677747472168466275=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3677747472168466275==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m4buvghxnpijbdft"
Content-Disposition: inline


--m4buvghxnpijbdft
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Sep 19, 2019 at 07:10:35AM +0200, Corentin Labbe wrote:
> This patch enables power management on the Security System.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  9 +++
>  drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 94 +++++++++++++++++++----
>  drivers/crypto/sunxi-ss/sun4i-ss-hash.c   | 12 +++
>  drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |  9 ++-
>  drivers/crypto/sunxi-ss/sun4i-ss.h        |  2 +
>  5 files changed, 110 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> index fa4b1b47822e..c9799cbe0530 100644
> --- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> +++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> @@ -480,6 +480,7 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
>  	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
>  	struct sun4i_ss_alg_template *algt;
>  	const char *name = crypto_tfm_alg_name(tfm);
> +	int err;
>
>  	memset(op, 0, sizeof(struct sun4i_tfm_ctx));
>
> @@ -497,13 +498,21 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
>  		return PTR_ERR(op->fallback_tfm);
>  	}
>
> +	err = pm_runtime_get_sync(op->ss->dev);
> +	if (err < 0)
> +		goto error_pm;
>  	return 0;

Newline here

> +error_pm:
> +	crypto_free_sync_skcipher(op->fallback_tfm);
> +	return err;
>  }
>
>  void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
>  {
>  	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
> +
>  	crypto_free_sync_skcipher(op->fallback_tfm);
> +	pm_runtime_put(op->ss->dev);
>  }
>
>  /* check and set the AES key, prepare the mode to be used */
> diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> index 6c2db5d83b06..311c2653a9c3 100644
> --- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> +++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> @@ -44,7 +44,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
>  				.cra_blocksize = MD5_HMAC_BLOCK_SIZE,
>  				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
>  				.cra_module = THIS_MODULE,
> -				.cra_init = sun4i_hash_crainit
> +				.cra_init = sun4i_hash_crainit,
> +				.cra_exit = sun4i_hash_craexit

You should add a comma at the end to prevent having to modify it again

>  			}
>  		}
>  	}
> @@ -70,7 +71,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
>  				.cra_blocksize = SHA1_BLOCK_SIZE,
>  				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
>  				.cra_module = THIS_MODULE,
> -				.cra_init = sun4i_hash_crainit
> +				.cra_init = sun4i_hash_crainit,
> +				.cra_exit = sun4i_hash_craexit

Ditto

>  			}
>  		}
>  	}
> @@ -262,6 +264,61 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
>  	return err;
>  }
>
> +/*
> + * Power management strategy: The device is suspended unless a TFM exists for
> + * one of the algorithms proposed by this driver.
> + */
> +#if defined(CONFIG_PM)
> +static int sun4i_ss_pm_suspend(struct device *dev)
> +{
> +	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
> +
> +	sun4i_ss_disable(ss);
> +	return 0;
> +}
> +
> +static int sun4i_ss_pm_resume(struct device *dev)
> +{
> +	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
> +
> +	return sun4i_ss_enable(ss);
> +}
> +#endif
> +

Why not just have the suspend and resume function and the enable /
disable functions merged together, you're not using them directy as
far as I can see.

> +const struct dev_pm_ops sun4i_ss_pm_ops = {
> +	SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NULL)
> +};
> +
> +/*
> + * When power management is enabled, this function enables the PM and set the
> + * device as suspended
> + * When power management is disabled, this function just enables the device
> + */
> +static int sun4i_ss_pm_init(struct sun4i_ss_ctx *ss)
> +{
> +	int err;
> +
> +	pm_runtime_use_autosuspend(ss->dev);
> +	pm_runtime_set_autosuspend_delay(ss->dev, 2000);
> +
> +	err = pm_runtime_set_suspended(ss->dev);
> +	if (err)
> +		return err;
> +	pm_runtime_enable(ss->dev);
> +#if !defined(CONFIG_PM)
> +	err = sun4i_ss_enable(ss);
> +#endif
> +	return err;
> +}

This looks nicer:
https://elixir.bootlin.com/linux/latest/source/drivers/spi/spi-sun4i.c#L492

Or, just make it depend on CONFIG_PM, we should probably do it anyway
at the ARCH level anyway.

Maxime

--m4buvghxnpijbdft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYOzHwAKCRDj7w1vZxhR
xUwDAP9O9xdsnOnkb0SasX2EtOGv2LlMjbgmiiXL09f4KZYYggEAjIdC2vHA8T6J
paJO7YWU8+BcPkZ4sPIudoliIvHaxw0=
=S4zM
-----END PGP SIGNATURE-----

--m4buvghxnpijbdft--


--===============3677747472168466275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3677747472168466275==--

