Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F38AC552
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 10:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/n3021NBtZ9uRaoAehPIKF2AsOe08SdUQ5SeXiKGQU=; b=dImFCd7TWA87OD
	3dM51+xk984tD2Z8PrOenyOLG7TjXTYlMfigybcBPvKsJE/ffoq0F/t+dIHNpexUGqbyPASj4Bt98
	qHPWreD4BXXcbKkR4C52pia98B4FPMZKBKga5/YiVqm8miWjN+0sqEDIwrQar61t+egbShsYh76BA
	k9A2FXuDHZJlgBH0rd6CTi/tjFi3qe/668pUgW6LOdPb3niJx+6N/LiMIRQErVn2RU5nFiEqklxyN
	dNEZDDhfXYS/Njsr+FUBgRjIeNX1wLJ9L8S0EzYNFS6cLJA2/72NNkkZK6lxoV9YWCjHdvQl9O6FU
	1f6pxvoiNk81EmsUzIHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6VxA-0001hE-Dw; Sat, 07 Sep 2019 08:20:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Vww-0000xB-8U
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 08:20:04 +0000
Received: from localhost (unknown [212.213.198.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EB13208C3;
 Sat,  7 Sep 2019 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567844398;
 bh=A6moeyz6Y4nkJpu3Bhn6KCPmNBZrCR62uuuIUrz+jLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qi5gpsRrvbn2wiknxgAHnFZw6rUl2H1OQoeYVnWpyE0m7//MzOduOX24OFFIpiGsC
 sURuN9CstuNbxqF53zt2BcS1HckiJ/DBl1t1shuZSPkKTW+ZJxVUl+xpclgVCb3SWC
 qADKNfPmHtINPkeZmf4DmB2R6aN9svHwGGDPeFw8=
Date: Sat, 7 Sep 2019 11:19:51 +0300
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 2/9] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20190907081951.v2huvhm44jfprfop@flea>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906184551.17858-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_012002_350402_FB49262E 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I can't really comment on the crypto side, so my review is going to be
pretty boring.

On Fri, Sep 06, 2019 at 08:45:44PM +0200, Corentin Labbe wrote:
> +static const struct ce_variant ce_h3_variant = {
> +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> +		CE_ID_NOTSUPP,
> +	},

As far as I can see, it's always the same value, so I'm not sure why
it's a parameter.

> +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> +	},

Ditto

> +	.intreg = CE_ISR,

Ditto

> +	.maxflow = 4,

Ditto

> +	.ce_clks = {
> +		{ "ahb", 200000000 },

This is the default IIRC, and the clock driver will ignore any clock
rate change on it anyway, so the clock rate is pretty much useless
there.

> +		{ "mod", 48000000 },

48MHz seems pretty slow, especially compared to the other rates you
have listed there. Is that on purpose?

Also, I'm not sure what is the point of having the clocks names be
parameters there as well. It's constant across all the compatibles,
the only thing that isn't is the number of clocks and the module clock
rate. It's what you should have in there.

> +		}
> +};
> +
> +static const struct ce_variant ce_h5_variant = {
> +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> +		CE_ID_NOTSUPP,
> +	},
> +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> +	},
> +	.intreg = CE_ISR,
> +	.maxflow = 4,
> +	.ce_clks = {
> +		{ "ahb", 200000000 },
> +		{ "mod", 300000000 },
> +		}
> +};
> +
> +static const struct ce_variant ce_h6_variant = {
> +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> +		CE_ALG_RAES,
> +	},
> +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> +	},
> +	.model = CE_v2,

Can't that be derived from the version register and / or the
compatible? This seems to be redundant with each.

> +	.intreg = CE_ISR,
> +	.maxflow = 4,
> +	.ce_clks = {
> +		{ "ahb", 200000000 },
> +		{ "mod", 300000000 },
> +		{ "mbus", 400000000 },

That rate is going to be ignored as well.

> +		}
> +};
> +
> +static const struct ce_variant ce_a64_variant = {
> +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> +		CE_ID_NOTSUPP,
> +	},
> +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> +	},
> +	.intreg = CE_ISR,
> +	.maxflow = 4,
> +	.ce_clks = {
> +		{ "ahb", 200000000 },
> +		{ "mod", 300000000 },
> +		}
> +};

You should order your variants by alphabetical order.

> +static const struct ce_variant ce_r40_variant = {
> +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> +		CE_ID_NOTSUPP,
> +	},
> +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> +	},
> +	.intreg = CE_ISR,
> +	.maxflow = 4,
> +	.ce_clks = {
> +		{ "ahb", 200000000 },
> +		{ "mod", 300000000 },
> +		}
> +};
> +

...

> +int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
> +{
> +	return atomic_inc_return(&ce->flow) % ce->variant->maxflow;
> +}

I'm not sure what this is supposed to be doing, but that mod there
seems pretty dangerous.

...

> +static int sun8i_ce_probe(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	u32 v;
> +	int err, i, ce_method, id, irq;
> +	unsigned long cr;
> +	struct sun8i_ce_dev *ce;
> +
> +	if (!pdev->dev.of_node)
> +		return -ENODEV;

This is pretty much guaranteed already

> +	ce = devm_kzalloc(&pdev->dev, sizeof(*ce), GFP_KERNEL);
> +	if (!ce)
> +		return -ENOMEM;
> +
> +	ce->variant = of_device_get_match_data(&pdev->dev);
> +	if (!ce->variant) {
> +		dev_err(&pdev->dev, "Missing Crypto Engine variant\n");
> +		return -EINVAL;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	ce->base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(ce->base)) {
> +		err = PTR_ERR(ce->base);
> +		dev_err(&pdev->dev, "Cannot request MMIO err=%d\n", err);
> +		return err;

ioremap_resource already prints an error message on failure, so this
is redundant.

> +	}
> +
> +	for (i = 0; i < CE_MAX_CLOCKS; i++) {
> +		if (!ce->variant->ce_clks[i].name)
> +			continue;
> +		dev_info(&pdev->dev, "Get %s clock\n", ce->variant->ce_clks[i].name);

There's no reason to print this at the info level

> +		ce->ceclks[i] = devm_clk_get(&pdev->dev, ce->variant->ce_clks[i].name);
> +		if (IS_ERR(ce->ceclks[i])) {
> +			err = PTR_ERR(ce->ceclks[i]);
> +			dev_err(&pdev->dev, "Cannot get %s CE clock err=%d\n",
> +				ce->variant->ce_clks[i].name, err);
> +		}
> +		cr = clk_get_rate(ce->ceclks[i]);

So on error you'd call clk_get_rate on the clock still? That seems
pretty fragile, you should return there, it's a hard error.

> +		if (ce->variant->ce_clks[i].freq) {
> +			dev_info(&pdev->dev, "Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\n",
> +				 ce->variant->ce_clks[i].name,
> +				 ce->variant->ce_clks[i].freq,
> +				 ce->variant->ce_clks[i].freq / 1000000,
> +				 cr,
> +				 cr / 1000000);

Same remark about that message than the previous one.

> +			err = clk_set_rate(ce->ceclks[i], ce->variant->ce_clks[i].freq);
> +			if (err)
> +				dev_err(&pdev->dev, "Fail to set %s clk speed to %lu\n",
> +					ce->variant->ce_clks[i].name,
> +					ce->variant->ce_clks[i].freq);
> +		} else {
> +			dev_info(&pdev->dev, "%s run at %lu\n",
> +				 ce->variant->ce_clks[i].name, cr);

Ditto.

> +		}
> +		err = clk_prepare_enable(ce->ceclks[i]);

Do you really need this right now though?

> +		if (err) {
> +			dev_err(&pdev->dev, "Cannot prepare_enable %s\n",
> +				ce->variant->ce_clks[i].name);
> +			return err;
> +		}
> +	}
> +
> +	/* Get Non Secure IRQ */
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(ce->dev, "Cannot get NS IRQ\n");
> +		return irq;
> +	}
> +
> +	err = devm_request_irq(&pdev->dev, irq, ce_irq_handler, 0,
> +			       "sun8i-ce-ns", ce);
> +	if (err < 0) {
> +		dev_err(ce->dev, "Cannot request NS IRQ\n");
> +		return err;
> +	}
> +
> +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "ahb");
> +	if (IS_ERR(ce->reset)) {
> +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> +			return PTR_ERR(ce->reset);
> +		dev_info(&pdev->dev, "No reset control found\n");

It's not optional though.

> +		ce->reset = NULL;
> +	}
> +
> +	err = reset_control_deassert(ce->reset);
> +	if (err) {
> +		dev_err(&pdev->dev, "Cannot deassert reset control\n");
> +		goto error_clk;
> +	}

Again, you don't really need this at this moment. Using runtime_pm
would make more sense.

> +	v = readl(ce->base + CE_CTR);
> +	v >>= 16;
> +	v &= 0x07;

This should be in a define

> +	dev_info(&pdev->dev, "CE_NS Die ID %x\n", v);

And if that really makes sense to print it, the error message should
be made less cryptic.

> +
> +	ce->dev = &pdev->dev;
> +	platform_set_drvdata(pdev, ce);
> +
> +	mutex_init(&ce->mlock);
> +
> +	ce->chanlist = devm_kcalloc(ce->dev, ce->variant->maxflow,
> +				    sizeof(struct sun8i_ce_flow), GFP_KERNEL);
> +	if (!ce->chanlist) {
> +		err = -ENOMEM;
> +		goto error_flow;
> +	}
> +
> +	for (i = 0; i < ce->variant->maxflow; i++) {
> +		init_completion(&ce->chanlist[i].complete);
> +		mutex_init(&ce->chanlist[i].lock);
> +
> +		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
> +		if (!ce->chanlist[i].engine) {
> +			dev_err(ce->dev, "Cannot allocate engine\n");
> +			i--;
> +			goto error_engine;
> +		}
> +		err = crypto_engine_start(ce->chanlist[i].engine);
> +		if (err) {
> +			dev_err(ce->dev, "Cannot start engine\n");
> +			goto error_engine;
> +		}
> +		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
> +							sizeof(struct ce_task),
> +							&ce->chanlist[i].t_phy,
> +							GFP_KERNEL);
> +		if (!ce->chanlist[i].tl) {
> +			dev_err(ce->dev, "Cannot get DMA memory for task %d\n",
> +				i);
> +			err = -ENOMEM;
> +			goto error_engine;
> +		}
> +	}

All this initialization should be done before calling
request_irq. You're using some of those fields in your handler.

> +
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +	ce->dbgfs_dir = debugfs_create_dir("sun8i-ce", NULL);
> +	if (IS_ERR_OR_NULL(ce->dbgfs_dir)) {
> +		dev_err(ce->dev, "Fail to create debugfs dir");
> +		err = -ENOMEM;
> +		goto error_engine;
> +	}
> +	ce->dbgfs_stats = debugfs_create_file("stats", 0444,
> +					      ce->dbgfs_dir, ce,
> +					      &sun8i_ce_debugfs_fops);
> +	if (IS_ERR_OR_NULL(ce->dbgfs_stats)) {
> +		dev_err(ce->dev, "Fail to create debugfs stat");
> +		err = -ENOMEM;
> +		goto error_debugfs;
> +	}
> +#endif
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
> +			dev_err(ce->dev, "ERROR: tryed to register an unknown algo\n");
> +		}
> +	}
> +
> +	return 0;
> +error_alg:
> +	i--;
> +	for (; i >= 0; i--) {
> +		switch (ce_algs[i].type) {
> +		case CRYPTO_ALG_TYPE_SKCIPHER:
> +			if (ce_algs[i].ce)
> +				crypto_unregister_skcipher(&ce_algs[i].alg.skcipher);
> +			break;
> +		}
> +	}
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +error_debugfs:
> +	debugfs_remove_recursive(ce->dbgfs_dir);
> +#endif
> +	i = ce->variant->maxflow;
> +error_engine:
> +	while (i >= 0) {
> +		crypto_engine_exit(ce->chanlist[i].engine);
> +		if (ce->chanlist[i].tl)
> +			dma_free_coherent(ce->dev, sizeof(struct ce_task),
> +					  ce->chanlist[i].tl,
> +					  ce->chanlist[i].t_phy);
> +		i--;
> +	}
> +error_flow:
> +	reset_control_assert(ce->reset);
> +error_clk:
> +	for (i = 0; i < CE_MAX_CLOCKS; i++)
> +		clk_disable_unprepare(ce->ceclks[i]);
> +	return err;
> +}

So that function takes around 200-250 LoC, this is definitely too
much and should be split into multiple functions.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
