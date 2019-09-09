Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE73AD9DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WV4fPLsjjKBGBdNoFhriNUPqyu+HsaRB87dneW9I1Y=; b=X9GYcAXWHNc109
	9F67KbtHofb8QodrioHn+Cb8Qb2JJBMseOHFwXBayEr0blHa/dRdOtsEhVgicLAtsITQysburGkPL
	7T4yuk3dMnPiSHPkXCGpcPL3xNJuz5pLcys+4XbiVm+rYxQwVsWoNkOFTHoI+KmZwuz7KPaMoP7Wl
	OVPoqvQhEC08EbRZDqUY7zLVT+hYq7QLvXclTKjf3o8w86vw75HEh6bYjtV3myFUrb3RUX9TCGFis
	NZRy/W/lNl3f/psH6V0vmmjD27uMNQ80TMLocYxRE/WD5bv6h3oZpdp9g9y9amfBvyUFyyPaY76yh
	h3tbwqt7T2qhF8iz6VPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ja2-0005ML-99; Mon, 09 Sep 2019 13:19:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JZY-0005Lm-2i
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:19:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id y135so19217wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TXDC+z0IyI2JFm3KYb5ZtvylBoF5a96Rw6KfLJrAyP4=;
 b=KehY9xntRXwcJqP/Qmh+gxSGQi7Bn1NkHIqhNorXOSTakScu5c2VQKjAEzf2TJJOMM
 4QlbZS6/65MTryXd9be7eYvYhrPIIdNsWp0ol+0ajrj9dk9lzbzIZXhx61b8D+YA8wtF
 +AiM41c65dLtMI+zuaa4g480Qsh4+Sn6VBJqz466je3kYhmmOVlJpqDXB6UOy76cvfx9
 7tB/hV7GBEEO7D/77NTFSGAKJIn37y8jO/2lhXuSxObrkBmA1QNSEDOjW2sx9mw1DffZ
 jJlEBRVZVACCzjT+/UDM8OUGNJuPK/jwSZTYV0P62ScyGaHey8+7OyB/wbickPCHLHp1
 OnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TXDC+z0IyI2JFm3KYb5ZtvylBoF5a96Rw6KfLJrAyP4=;
 b=XTnNUZotkLz8ZAaVRfMk0pLISCvgen3LNkrNz+IIf5XTy/aAunZs0kEGwCE4HMDrMU
 GgYDdReU+brqqeoE7OgXImZKPTIJ4LsevcqBZF+7nmoQZl0mpRjUCpuACWWVKYJnvUjd
 KHuHcCNp5v8zH6kMJnDMy/unuhrGkq427aBak6qxxQrY3+mk4AgKxDIHoq3oB/fDzwHq
 6QdWxf8eXqXAcUw4dTR6X2wuSQaw/zCHP5cEaY80cNz/nFFXuwIfTWDM/o35pz5KSvKE
 mcE+QrXvCzfuC6XjOeV6aGRkIBajwlpttNJQdMKE3ypP3fPmJDQDDgNlB7jqYhkdPbhZ
 v2Hw==
X-Gm-Message-State: APjAAAVurjQozaTO4Wox4z829RY7YJ6s1rPYKRy8u7izvXHVIfki0mVK
 khv3gFgMEgvDdIqhGQZFBz4=
X-Google-Smtp-Source: APXvYqxowR+NZIgG4EBvrXMOcbX0mYRDnV4oZ2c1kIoJTlybzYFFVU2XdxIh9yBZMsqWzqEQcCJstw==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr20291152wmj.25.1568035149799; 
 Mon, 09 Sep 2019 06:19:09 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r1sm14193636wro.13.2019.09.09.06.19.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 06:19:08 -0700 (PDT)
Date: Mon, 9 Sep 2019 15:19:06 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 2/9] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20190909131906.GA12882@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-3-clabbe.montjoie@gmail.com>
 <20190907081951.v2huvhm44jfprfop@flea> <20190907190408.GE2628@Red>
 <20190909113837.vrnqdfgzhsiymfpm@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909113837.vrnqdfgzhsiymfpm@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_061912_173215_2437A687 
X-CRM114-Status: GOOD (  40.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Sep 09, 2019 at 01:38:37PM +0200, Maxime Ripard wrote:
> On Sat, Sep 07, 2019 at 09:04:08PM +0200, Corentin Labbe wrote:
> > > Also, I'm not sure what is the point of having the clocks names be
> > > parameters there as well. It's constant across all the compatibles,
> > > the only thing that isn't is the number of clocks and the module clock
> > > rate. It's what you should have in there.
> >
> > Since the datasheet give some max frequency, I think I will add a
> > max_freq and add a check to verify if the clock is in the right
> > range
> 
> It's a bit pointless. What are you going to do if it's not correct?
> What are you trying to fix / report with this?

I thinked to print a warning.
If someone want to play with overclocking for example, the driver should said that probably some result could be invalid.

> 
> > > > +		}
> > > > +};
> > > > +
> > > > +static const struct ce_variant ce_h5_variant = {
> > > > +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> > > > +		CE_ID_NOTSUPP,
> > > > +	},
> > > > +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> > > > +	},
> > > > +	.intreg = CE_ISR,
> > > > +	.maxflow = 4,
> > > > +	.ce_clks = {
> > > > +		{ "ahb", 200000000 },
> > > > +		{ "mod", 300000000 },
> > > > +		}
> > > > +};
> > > > +
> > > > +static const struct ce_variant ce_h6_variant = {
> > > > +	.alg_cipher = { CE_ID_NOTSUPP, CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
> > > > +		CE_ALG_RAES,
> > > > +	},
> > > > +	.op_mode = { CE_ID_NOTSUPP, CE_OP_ECB, CE_OP_CBC
> > > > +	},
> > > > +	.model = CE_v2,
> > >
> > > Can't that be derived from the version register and / or the
> > > compatible? This seems to be redundant with each.
> >
> > I could use the compatible, but I want to avoid a string comparison
> > on each request.
> 
> Well, this is specifically what this structure is for then, right? So
> instead of having the model, just add the information that you want
> there.
> 

ok, I will change to a "bool all_size_in_bytes"

> > > > +int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
> > > > +{
> > > > +	return atomic_inc_return(&ce->flow) % ce->variant->maxflow;
> > > > +}
> > >
> > > I'm not sure what this is supposed to be doing, but that mod there
> > > seems pretty dangerous.
> > >
> > > ...
> >
> > This mod do a round robin on each channel.
> > I dont see why it is dangerous.
> 
> Well, you're using the atomic API here which is most commonly used for
> refcounting, while you're using a mod.
> 
> Plus, while the increment is atomic, the modulo isn't, so you can end
> up in a case where you would be preempted between the
> atomic_inc_return and the mod, which is dangerous.
> 
> Again, I'm not sure what this function is doing (which is also a
> problem in itself). I guess you should just make it clearer what it
> does, and then we can discuss it properly.

Each request need to be assigned to a channel.
Each channel are identified by a number from 1 to 4.

So this function return the channel to use, 1 then 2 then 3 then 4 then 1...
Note that this is uncritical. If, due to anything, two request are assigned to the same channel, nothing will break.

> 
> > > > +			err = clk_set_rate(ce->ceclks[i], ce->variant->ce_clks[i].freq);
> > > > +			if (err)
> > > > +				dev_err(&pdev->dev, "Fail to set %s clk speed to %lu\n",
> > > > +					ce->variant->ce_clks[i].name,
> > > > +					ce->variant->ce_clks[i].freq);
> > > > +		} else {
> > > > +			dev_info(&pdev->dev, "%s run at %lu\n",
> > > > +				 ce->variant->ce_clks[i].name, cr);
> > >
> > > Ditto.
> > >
> > > > +		}
> > > > +		err = clk_prepare_enable(ce->ceclks[i]);
> > >
> > > Do you really need this right now though?
> >
> > Not sure to understand, why I shouldnt do it now ?
> > Does it is related to your pm_runtime remark below ?
> >
> > My feeling was to submit the driver without PM and convert it after.
> 
> runtime_pm would be pretty cheap to add though judging by what you're
> doing there.
> 

I will try to add runtime_pm

> > > > +		if (err) {
> > > > +			dev_err(&pdev->dev, "Cannot prepare_enable %s\n",
> > > > +				ce->variant->ce_clks[i].name);
> > > > +			return err;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	/* Get Non Secure IRQ */
> > > > +	irq = platform_get_irq(pdev, 0);
> > > > +	if (irq < 0) {
> > > > +		dev_err(ce->dev, "Cannot get NS IRQ\n");
> > > > +		return irq;
> > > > +	}
> > > > +
> > > > +	err = devm_request_irq(&pdev->dev, irq, ce_irq_handler, 0,
> > > > +			       "sun8i-ce-ns", ce);
> > > > +	if (err < 0) {
> > > > +		dev_err(ce->dev, "Cannot request NS IRQ\n");
> > > > +		return err;
> > > > +	}
> > > > +
> > > > +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "ahb");
> > > > +	if (IS_ERR(ce->reset)) {
> > > > +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> > > > +			return PTR_ERR(ce->reset);
> > > > +		dev_info(&pdev->dev, "No reset control found\n");
> > >
> > > It's not optional though.
> >
> > I dont understand why.
> 
> On all the SoCs, you need that reset line to be deasserted, otherwise
> the IP (and therefore the driver) will be non-functional. It's not an
> option to run without it.

Currently all the SoC have a reset, but nothing prevent a new SoC with CE without reset.
Anyway, I will made the reset mandatory for the moment.

> 
> > > > +		ce->reset = NULL;
> > > > +	}
> > > > +
> > > > +	err = reset_control_deassert(ce->reset);
> > > > +	if (err) {
> > > > +		dev_err(&pdev->dev, "Cannot deassert reset control\n");
> > > > +		goto error_clk;
> > > > +	}
> > >
> > > Again, you don't really need this at this moment. Using runtime_pm
> > > would make more sense.
> > >
> > > > +	v = readl(ce->base + CE_CTR);
> > > > +	v >>= 16;
> > > > +	v &= 0x07;
> > >
> > > This should be in a define
> > >
> >
> > Will fix.
> >
> > > > +	dev_info(&pdev->dev, "CE_NS Die ID %x\n", v);
> > >
> > > And if that really makes sense to print it, the error message should
> > > be made less cryptic.
> > >
> >
> > Will fix.
> >
> > > > +
> > > > +	ce->dev = &pdev->dev;
> > > > +	platform_set_drvdata(pdev, ce);
> > > > +
> > > > +	mutex_init(&ce->mlock);
> > > > +
> > > > +	ce->chanlist = devm_kcalloc(ce->dev, ce->variant->maxflow,
> > > > +				    sizeof(struct sun8i_ce_flow), GFP_KERNEL);
> > > > +	if (!ce->chanlist) {
> > > > +		err = -ENOMEM;
> > > > +		goto error_flow;
> > > > +	}
> > > > +
> > > > +	for (i = 0; i < ce->variant->maxflow; i++) {
> > > > +		init_completion(&ce->chanlist[i].complete);
> > > > +		mutex_init(&ce->chanlist[i].lock);
> > > > +
> > > > +		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
> > > > +		if (!ce->chanlist[i].engine) {
> > > > +			dev_err(ce->dev, "Cannot allocate engine\n");
> > > > +			i--;
> > > > +			goto error_engine;
> > > > +		}
> > > > +		err = crypto_engine_start(ce->chanlist[i].engine);
> > > > +		if (err) {
> > > > +			dev_err(ce->dev, "Cannot start engine\n");
> > > > +			goto error_engine;
> > > > +		}
> > > > +		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
> > > > +							sizeof(struct ce_task),
> > > > +							&ce->chanlist[i].t_phy,
> > > > +							GFP_KERNEL);
> > > > +		if (!ce->chanlist[i].tl) {
> > > > +			dev_err(ce->dev, "Cannot get DMA memory for task %d\n",
> > > > +				i);
> > > > +			err = -ENOMEM;
> > > > +			goto error_engine;
> > > > +		}
> > > > +	}
> > >
> > > All this initialization should be done before calling
> > > request_irq. You're using some of those fields in your handler.
> >
> > No interrupt could fire, since algorithms are still not registred.
> 
> That's not true. Spurious interrupts are a thing, the engine could
> have been left in a weird state by the bootloader / kexec / reboot
> with some pending interrupts, etc.
> 
> You have registered that handler already, you should expect it to be
> called at any point in time.
> 

Ok will fix.

Thanks for your review.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
