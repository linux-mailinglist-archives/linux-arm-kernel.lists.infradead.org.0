Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560FBC4B84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6/GmY3EIclCLj/ThAjvl4B3gDF06QLYMCWd3i8lgqfo=; b=Y8agvFvC75aZQZpbcn8TiZ1Aa
	yZYCmvREhz1mcVxUp42jC2OmEXkQE3CYJuVehuy5iJUFmjZ+ewVl+zLZAJFnnTzGFiDPkBqr1lvlC
	8EHD14DxmzCncsnGyrUKbYFmmrhfaqDd2Vit/JnAbSIykLs/GDlPOLiF2yFn+SRWOSRbXrMIWbBZN
	A0n+EGxvDC8CCZYzWuMLxg6LqVYQjZAFvL4GC7vAqKOWlOib2Ur0481/a/GfByBItuR3RQ0UpGPgB
	52K5B6eOPBJwElrq8rit0vE5klY+WbIEZBhwlBhPGQu3YSUCtBRyCGaRBXDnTCxGIjTUjL+z9Q1ld
	vw7rb48HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbyi-000180-2p; Wed, 02 Oct 2019 10:35:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbyP-0000de-VW
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:35:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9FDF218DE;
 Wed,  2 Oct 2019 10:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570012509;
 bh=brnNpYIs7Q+Xu8m+TvEnNG+OdQyAGoF7mmBZLbGsUr8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oQ5ZInHBi+IvAVJ+Ax9yk+aBJU5/p5AiMmW8t9cJ7IIcvmJ3mKisl1se7eSa+zm80
 61haUjOag0XcmZcZ69pOQmBtxXvDwxI65HJSw9k4oibtuoDyK7A2HBOOU89LYP6S5k
 ZMJ6MO9Cb5BiwLMUJlTO0led5RSDVqKrqeXmee0A=
Date: Wed, 2 Oct 2019 12:35:06 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191002103506.zdoyhhzmroa6smwl@gilmour>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191001184141.27956-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_033510_117373_E20280EC 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9010770067648479247=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9010770067648479247==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bmfwxxf5fnjaabw6"
Content-Disposition: inline


--bmfwxxf5fnjaabw6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 01, 2019 at 08:41:32PM +0200, Corentin Labbe wrote:
> +	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
> +	if (ce->variant->model == CE_v2)
> +		cet->t_dlen = areq->cryptlen;

It's entirely redundant withe the compatible.

How about using something like has_t_dlen or whatever name you find
best in the variant structure?

> +static int sun8i_ce_probe(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	u32 v;
> +	int err, i, ce_method, id, irq;
> +	unsigned long cr;
> +	struct sun8i_ce_dev *ce;
> +
> +	ce = devm_kzalloc(&pdev->dev, sizeof(*ce), GFP_KERNEL);
> +	if (!ce)
> +		return -ENOMEM;
> +
> +	ce->dev = &pdev->dev;
> +	platform_set_drvdata(pdev, ce);
> +
> +	ce->variant = of_device_get_match_data(&pdev->dev);
> +	if (!ce->variant) {
> +		dev_err(&pdev->dev, "Missing Crypto Engine variant\n");
> +		return -EINVAL;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	ce->base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(ce->base))
> +		return PTR_ERR(ce->base);
> +
> +	for (i = 0; i < CE_MAX_CLOCKS; i++) {
> +		if (!ce->variant->ce_clks[i].name)
> +			continue;
> +		ce->ceclks[i] = devm_clk_get(&pdev->dev, ce->variant->ce_clks[i].name);
> +		if (IS_ERR(ce->ceclks[i])) {
> +			err = PTR_ERR(ce->ceclks[i]);
> +			dev_err(&pdev->dev, "Cannot get %s CE clock err=%d\n",
> +				ce->variant->ce_clks[i].name, err);
> +			return err;
> +		}
> +		cr = clk_get_rate(ce->ceclks[i]);
> +		if (!cr)
> +			return -EINVAL;
> +		if (ce->variant->ce_clks[i].freq > 0 &&
> +		    cr != ce->variant->ce_clks[i].freq) {
> +			dev_info(&pdev->dev, "Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\n",
> +				 ce->variant->ce_clks[i].name,
> +				 ce->variant->ce_clks[i].freq,
> +				 ce->variant->ce_clks[i].freq / 1000000,
> +				 cr, cr / 1000000);
> +			err = clk_set_rate(ce->ceclks[i], ce->variant->ce_clks[i].freq);
> +			if (err)
> +				dev_err(&pdev->dev, "Fail to set %s clk speed to %lu hz\n",
> +					ce->variant->ce_clks[i].name,
> +					ce->variant->ce_clks[i].freq);
> +		}
> +		if (ce->variant->ce_clks[i].max_freq > 0 &&
> +		    cr > ce->variant->ce_clks[i].max_freq)
> +			dev_warn(&pdev->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
> +				 ce->variant->ce_clks[i].name, cr,
> +				 ce->variant->ce_clks[i].max_freq);
> +	}
> +
> +	/* Get Non Secure IRQ */
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(ce->dev, "Cannot get CryptoEngine Non-secure IRQ\n");
> +		return irq;
> +	}
> +
> +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "bus");
> +	if (IS_ERR(ce->reset)) {
> +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> +			return PTR_ERR(ce->reset);
> +		dev_err(&pdev->dev, "No reset control found\n");
> +		return PTR_ERR(ce->reset);
> +	}
> +
> +	mutex_init(&ce->mlock);
> +
> +	err = allocate_chanlist(ce);
> +	if (err)
> +		return err;
> +
> +	err = sun8i_ce_pm_init(ce);
> +	if (err)
> +		goto error_pm;
> +
> +	err = devm_request_irq(&pdev->dev, irq, ce_irq_handler, 0,
> +			       "sun8i-ce-ns", ce);
> +	if (err) {
> +		dev_err(ce->dev, "Cannot request CryptoEngine Non-secure IRQ (err=%d)\n", err);
> +		goto error_irq;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
> +		ce_algs[i].ce = ce;
> +		switch (ce_algs[i].type) {
> +		case CRYPTO_ALG_TYPE_SKCIPHER:
> +			id = ce_algs[i].ce_algo_id;
> +			ce_method = ce->variant->alg_cipher[id];
> +			if (ce_method == CE_ID_NOTSUPP) {
> +				dev_info(ce->dev,
> +					 "DEBUG: Algo of %s not supported\n",
> +					 ce_algs[i].alg.skcipher.base.cra_name);
> +				ce_algs[i].ce = NULL;
> +				break;
> +			}
> +			id = ce_algs[i].ce_blockmode;
> +			ce_method = ce->variant->op_mode[id];
> +			if (ce_method == CE_ID_NOTSUPP) {
> +				dev_info(ce->dev, "DEBUG: Blockmode of %s not supported\n",
> +					 ce_algs[i].alg.skcipher.base.cra_name);
> +				ce_algs[i].ce = NULL;
> +				break;
> +			}
> +			dev_info(ce->dev, "DEBUG: Register %s\n",
> +				 ce_algs[i].alg.skcipher.base.cra_name);
> +			err = crypto_register_skcipher(&ce_algs[i].alg.skcipher);
> +			if (err) {
> +				dev_err(ce->dev, "Fail to register %s\n",
> +					ce_algs[i].alg.skcipher.base.cra_name);
> +				ce_algs[i].ce = NULL;
> +				goto error_alg;
> +			}
> +			break;
> +		default:
> +			ce_algs[i].ce = NULL;
> +			dev_err(ce->dev, "ERROR: tryed to register an unknown algo\n");
> +		}
> +	}
> +
> +	err = pm_runtime_get_sync(ce->dev);
> +	if (err < 0)
> +		goto error_alg;
> +
> +	v = readl(ce->base + CE_CTR);
> +	v >>= CE_DIE_ID_SHIFT;
> +	v &= CE_DIE_ID_MASK;
> +	dev_info(&pdev->dev, "CryptoEngine Die ID %x\n", v);
> +
> +	pm_runtime_put_sync(ce->dev);
> +
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +	/* Ignore error of debugfs */
> +	ce->dbgfs_dir = debugfs_create_dir("sun8i-ce", NULL);
> +	ce->dbgfs_stats = debugfs_create_file("stats", 0444,
> +					      ce->dbgfs_dir, ce,
> +					      &sun8i_ce_debugfs_fops);
> +#endif
> +	return 0;
> +error_alg:
> +	unregister_algs(ce);
> +	i = MAXFLOW;
> +error_irq:
> +	sun8i_ce_pm_exit(ce);
> +error_pm:
> +	free_chanlist(ce, i);
> +	return err;
> +}

It's still pretty long. Can you move the clocks, algo initialisation
(and debugfs maybe?) to a function of their own?

Maxime

--bmfwxxf5fnjaabw6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZR9WgAKCRDj7w1vZxhR
xfjVAP91tltcU83h8GVTqSvoqqTWADm4H5LeA3sI7p7k+z8ovQEAlHdQIwX6SuiQ
DQJAlSoeZZ7cZRgoANODDLBzmpD1Pgo=
=42mB
-----END PGP SIGNATURE-----

--bmfwxxf5fnjaabw6--


--===============9010770067648479247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9010770067648479247==--

