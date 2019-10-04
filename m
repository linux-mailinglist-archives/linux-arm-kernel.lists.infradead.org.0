Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49840CC208
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+M+oaHTb8ToelFyz+hvjdeEgUKMaXt2qe2WA4/w18g=; b=VZ6w8dg7QcsZ1Z
	3xAMMq4U/zOytzcnu5iCrxdpm8KS9x3kIQQ3uH0UHTvWmzBBUBs0qUK9KBoG0NTSowaAAoY/c09uT
	p2KsVWteFAjYXXMcL/rJkud5+0Q1+Fl1+MGbcRJCsWd56m73d6Kapq1LpLJivgIjEikb1Zqeb1J+K
	ey2bNU34Od0WgDn9RoocPFKUpWY03bDa/CzxDlh4lKW0w/jqIOX3PwZc6IBYMGArrGI6CGelnGjWu
	ZjicR7bdcoodTSD4rRyWXIwJPC5TcdWO95JKopaY+eQtL9AGBgMe8e2bK6KGwL+FE4pWOIQcqL+1K
	o9Bgfg5W2yY4D1gqhNKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRko-0004wI-KC; Fri, 04 Oct 2019 17:52:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRkg-0004vb-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:52:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so8262773wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 10:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sFYbP+lwubqARXBpAaF4zcAm2S+7R8TyH0tAYLHpuSw=;
 b=SmxHhPtiS4HE+frxFMiA5OGhOlwdwsxbR3iaBCD2kV6eT9DtYjlFHI8Fi5D6clbRwh
 Nxh1rKkKxEruG3/W0r0y879a64kVB8lNpcfdt8BI6FT26/dmmvz4ufqdpX6vAqNtGGu7
 LrOVIYHjz/dUiik26uG1DX1uvj4RtRSO0G7DljiKkIO9FmGSxNg7GjhRpWixtgVPvEB8
 Z4gy9XNWnT83rVMNFxFplTis5Roe/e+4hn+nkfeie/7AY6W/7zlPuqRMjiVJ1/j4JHgW
 woYqWZk+VtzsVXuB8m82bKW7R2n8T1A0dGRkIR1p13bYn7Prt5sis7E4sfx/QQdSTbHY
 AUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sFYbP+lwubqARXBpAaF4zcAm2S+7R8TyH0tAYLHpuSw=;
 b=LoPBFE3egW/CyUFl9qtUd8pcZ8LHwo+1E+h5XU1sNVzCAQSgWDgJyLAb2odyi/G1Jh
 y9Mhy86wGG+TBit1xnSmnfQVfnFvWsdfJZj4KTODyr68GHLdaWu3OlASvWAk1V6N+2yU
 gMVNozDGNBO2ESx0H9zud8Ox14Q7hU0CF8QOA93vfWNScNA4rqH5ENAfWncaO2mCFiKX
 Yb2OKmLEFBvxCTYZTpUSYxHIndEFNDcKcRj1BF0YpSz9CwYjDYysd40HGR4G8j5MDd2G
 LTeJtt+gyoQgm90g8UzeEO5EEYavS6WQEeKaJNuiJLNBvA8lojlRjXINidKCXDAp2Ojb
 Mt3Q==
X-Gm-Message-State: APjAAAXr5LK9KP95FKLQjR+VmkGKeNVF0c3UgVdIH1teOLGeCX226tWG
 +Re9Dfkbm3ntoGqABP3sh4LOkwxL
X-Google-Smtp-Source: APXvYqxKktEBgCwY1UMUOGZ6XIxTAYM3I6bm5m3tonPbhiuAyeIqRpA6wiGOA/Vmhw7etSBN48lcaA==
X-Received: by 2002:adf:c7cf:: with SMTP id y15mr12982295wrg.54.1570211543488; 
 Fri, 04 Oct 2019 10:52:23 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 59sm9181066wrc.23.2019.10.04.10.52.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 10:52:22 -0700 (PDT)
Date: Fri, 4 Oct 2019 19:52:18 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191004175218.GA11208@Red>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-3-clabbe.montjoie@gmail.com>
 <20191002103506.zdoyhhzmroa6smwl@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002103506.zdoyhhzmroa6smwl@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_105226_137593_2E0D3384 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 12:35:06PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Tue, Oct 01, 2019 at 08:41:32PM +0200, Corentin Labbe wrote:
> > +	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
> > +	if (ce->variant->model == CE_v2)
> > +		cet->t_dlen = areq->cryptlen;
> 
> It's entirely redundant withe the compatible.
> 
> How about using something like has_t_dlen or whatever name you find
> best in the variant structure?
> 

Hello

I will fix that, I started with has_t_dlen_in_bytes

> > +static int sun8i_ce_probe(struct platform_device *pdev)
> > +{
> > +	struct resource *res;
> > +	u32 v;
> > +	int err, i, ce_method, id, irq;
> > +	unsigned long cr;
> > +	struct sun8i_ce_dev *ce;
> > +
> > +	ce = devm_kzalloc(&pdev->dev, sizeof(*ce), GFP_KERNEL);
> > +	if (!ce)
> > +		return -ENOMEM;
> > +
> > +	ce->dev = &pdev->dev;
> > +	platform_set_drvdata(pdev, ce);
> > +
> > +	ce->variant = of_device_get_match_data(&pdev->dev);
> > +	if (!ce->variant) {
> > +		dev_err(&pdev->dev, "Missing Crypto Engine variant\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	ce->base = devm_ioremap_resource(&pdev->dev, res);
> > +	if (IS_ERR(ce->base))
> > +		return PTR_ERR(ce->base);
> > +
> > +	for (i = 0; i < CE_MAX_CLOCKS; i++) {
> > +		if (!ce->variant->ce_clks[i].name)
> > +			continue;
> > +		ce->ceclks[i] = devm_clk_get(&pdev->dev, ce->variant->ce_clks[i].name);
> > +		if (IS_ERR(ce->ceclks[i])) {
> > +			err = PTR_ERR(ce->ceclks[i]);
> > +			dev_err(&pdev->dev, "Cannot get %s CE clock err=%d\n",
> > +				ce->variant->ce_clks[i].name, err);
> > +			return err;
> > +		}
> > +		cr = clk_get_rate(ce->ceclks[i]);
> > +		if (!cr)
> > +			return -EINVAL;
> > +		if (ce->variant->ce_clks[i].freq > 0 &&
> > +		    cr != ce->variant->ce_clks[i].freq) {
> > +			dev_info(&pdev->dev, "Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\n",
> > +				 ce->variant->ce_clks[i].name,
> > +				 ce->variant->ce_clks[i].freq,
> > +				 ce->variant->ce_clks[i].freq / 1000000,
> > +				 cr, cr / 1000000);
> > +			err = clk_set_rate(ce->ceclks[i], ce->variant->ce_clks[i].freq);
> > +			if (err)
> > +				dev_err(&pdev->dev, "Fail to set %s clk speed to %lu hz\n",
> > +					ce->variant->ce_clks[i].name,
> > +					ce->variant->ce_clks[i].freq);
> > +		}
> > +		if (ce->variant->ce_clks[i].max_freq > 0 &&
> > +		    cr > ce->variant->ce_clks[i].max_freq)
> > +			dev_warn(&pdev->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
> > +				 ce->variant->ce_clks[i].name, cr,
> > +				 ce->variant->ce_clks[i].max_freq);
> > +	}
> > +
> > +	/* Get Non Secure IRQ */
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq < 0) {
> > +		dev_err(ce->dev, "Cannot get CryptoEngine Non-secure IRQ\n");
> > +		return irq;
> > +	}
> > +
> > +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "bus");
> > +	if (IS_ERR(ce->reset)) {
> > +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> > +			return PTR_ERR(ce->reset);
> > +		dev_err(&pdev->dev, "No reset control found\n");
> > +		return PTR_ERR(ce->reset);
> > +	}
> > +
> > +	mutex_init(&ce->mlock);
> > +
> > +	err = allocate_chanlist(ce);
> > +	if (err)
> > +		return err;
> > +
> > +	err = sun8i_ce_pm_init(ce);
> > +	if (err)
> > +		goto error_pm;
> > +
> > +	err = devm_request_irq(&pdev->dev, irq, ce_irq_handler, 0,
> > +			       "sun8i-ce-ns", ce);
> > +	if (err) {
> > +		dev_err(ce->dev, "Cannot request CryptoEngine Non-secure IRQ (err=%d)\n", err);
> > +		goto error_irq;
> > +	}
> > +
> > +	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
> > +		ce_algs[i].ce = ce;
> > +		switch (ce_algs[i].type) {
> > +		case CRYPTO_ALG_TYPE_SKCIPHER:
> > +			id = ce_algs[i].ce_algo_id;
> > +			ce_method = ce->variant->alg_cipher[id];
> > +			if (ce_method == CE_ID_NOTSUPP) {
> > +				dev_info(ce->dev,
> > +					 "DEBUG: Algo of %s not supported\n",
> > +					 ce_algs[i].alg.skcipher.base.cra_name);
> > +				ce_algs[i].ce = NULL;
> > +				break;
> > +			}
> > +			id = ce_algs[i].ce_blockmode;
> > +			ce_method = ce->variant->op_mode[id];
> > +			if (ce_method == CE_ID_NOTSUPP) {
> > +				dev_info(ce->dev, "DEBUG: Blockmode of %s not supported\n",
> > +					 ce_algs[i].alg.skcipher.base.cra_name);
> > +				ce_algs[i].ce = NULL;
> > +				break;
> > +			}
> > +			dev_info(ce->dev, "DEBUG: Register %s\n",
> > +				 ce_algs[i].alg.skcipher.base.cra_name);
> > +			err = crypto_register_skcipher(&ce_algs[i].alg.skcipher);
> > +			if (err) {
> > +				dev_err(ce->dev, "Fail to register %s\n",
> > +					ce_algs[i].alg.skcipher.base.cra_name);
> > +				ce_algs[i].ce = NULL;
> > +				goto error_alg;
> > +			}
> > +			break;
> > +		default:
> > +			ce_algs[i].ce = NULL;
> > +			dev_err(ce->dev, "ERROR: tryed to register an unknown algo\n");
> > +		}
> > +	}
> > +
> > +	err = pm_runtime_get_sync(ce->dev);
> > +	if (err < 0)
> > +		goto error_alg;
> > +
> > +	v = readl(ce->base + CE_CTR);
> > +	v >>= CE_DIE_ID_SHIFT;
> > +	v &= CE_DIE_ID_MASK;
> > +	dev_info(&pdev->dev, "CryptoEngine Die ID %x\n", v);
> > +
> > +	pm_runtime_put_sync(ce->dev);
> > +
> > +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> > +	/* Ignore error of debugfs */
> > +	ce->dbgfs_dir = debugfs_create_dir("sun8i-ce", NULL);
> > +	ce->dbgfs_stats = debugfs_create_file("stats", 0444,
> > +					      ce->dbgfs_dir, ce,
> > +					      &sun8i_ce_debugfs_fops);
> > +#endif
> > +	return 0;
> > +error_alg:
> > +	unregister_algs(ce);
> > +	i = MAXFLOW;
> > +error_irq:
> > +	sun8i_ce_pm_exit(ce);
> > +error_pm:
> > +	free_chanlist(ce, i);
> > +	return err;
> > +}
> 
> It's still pretty long. Can you move the clocks, algo initialisation
> (and debugfs maybe?) to a function of their own?
> 

It is much cleaner with clock and algo init in functions, thanks!

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
