Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294D5C2A39
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 01:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2AQhQrSLcZHdkxnQB2zoZlmgT24e5567voQurmM54A=; b=n4dIta4EC8Mv6x
	iP7uL05FzPMFC4IMwZq86HQk4OpdsE/jyUGDhZUkknNEJPcgU+TnltQE9lfYAFJnANRG6d7LYbsq3
	TXGkpBYdBevgToghs0znIs/XJrk0mSwoqoYFDElxy8aNn9ihbYcYdd5zbKK2OrxFMQpQeaaSv5qLp
	ruT8Ei99GfWk1Ea5PlqUgvYCDtx0cXKj+3ZeP98i002LDLONhCJzX/uubd5NTiBuwEGwGwljcHTQM
	KqhSnE9GbnXi/mOgsWAtWwCgwcxc26QJZGsSF9NnL4yOAISILaoCFCZ+CBzlWcdxPcvcgLeGfrvrq
	SJ7eChayDwHgyZK57u8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4mB-0005ob-AZ; Mon, 30 Sep 2019 23:08:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4m1-0005nW-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 23:08:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id u20so4497302plq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 16:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E983INdsI8HZd9F5u40UdgLm7nSL3Xu0oq9O20W1ovM=;
 b=kUxflo+b7fwRhsVnvWrqhLriEDr+8P3bt3ZJ7+7TvQ977IbX9ezpTONvrjMfgoPvXl
 ST5g15fZVfiSJ6iLENHd9jfIuDCdXmJCwXdhq/viVlmHDYqMSPMbkW6YEjDONXNd6HHn
 UxXDM8YcsNfrT51FZKj7KeEclbCoQfbxKFdafiP4R2/l1k6p5dCJMpNxuhqNd30A6wWS
 Reultuy1M8+f3cJXC676OgDEvVD3IXHxlo+0H88J+9hvHi1u+AJcbvgTHTFQS5DMDany
 VwzaScZqVP+mD7SnBLgoln4JOstO7ayxm2/T9j7fTRutj5+nxQ3f93v40pNzpNq4UjTp
 Vw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E983INdsI8HZd9F5u40UdgLm7nSL3Xu0oq9O20W1ovM=;
 b=smqWUG6XzsMdil8b55RU/HyRBqP+6Cgt0pT+FLiratBH1Ms7PoS9Tqv/PEKLzrwFub
 B5A7cuh/97wrGKrgAIXWHOTxXTGcS53ZvQSr1ZwCCP+mt/3zJjZp7SfE3A4SNsy0HaFv
 4Rjg9HxucXSWJszI773tTyLhZf1FB1h0BWj3jx3kySPdOVtlFyUsreuq0iMsE85iQdOB
 zYhrfVOk6dL4Wlw9juyOeB3QC1ToLTSGoQFFgyvC17IAaQ8k3ALo30jawJ5xYLT5kCNY
 16ISpC5e1a8LOcFXcHNcCO/Kincc16HId1STrrzioYZFj7utdz1t0U0FXgod43c0qgJU
 YW4w==
X-Gm-Message-State: APjAAAWkDM1TqC43B987BvBosqAPuVfhNO9edq/SuP2i5RQvs2uI4x6B
 Hqr4dVJlB/n6bSdkakwXnKM=
X-Google-Smtp-Source: APXvYqyNdIVMLjKtt7WybLk7W8rhaXw9OFx2WNxakfR9vLhuazCchaVvRrr1LHSnFn/Z4XT9tuC/FA==
X-Received: by 2002:a17:902:8d81:: with SMTP id
 v1mr3737145plo.124.1569884888852; 
 Mon, 30 Sep 2019 16:08:08 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 64sm15434442pfx.31.2019.09.30.16.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 16:08:08 -0700 (PDT)
Date: Mon, 30 Sep 2019 16:08:06 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] input: touchscreen: imx6ul_tsc: Use 'dev' instead of
 dereferencing it repeatedly
Message-ID: <20190930230806.GX237523@dtor-ws>
References: <1569315731-2387-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569315731-2387-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_160809_956235_9E6157AC 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com, mojha@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 05:02:11PM +0800, Anson Huang wrote:
> Add helper variable dev = &pdev->dev to simply the code.

Do we get any code savings from this?

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/input/touchscreen/imx6ul_tsc.c | 37 +++++++++++++++++-----------------
>  1 file changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/imx6ul_tsc.c b/drivers/input/touchscreen/imx6ul_tsc.c
> index 9ed2588..4555aa9 100644
> --- a/drivers/input/touchscreen/imx6ul_tsc.c
> +++ b/drivers/input/touchscreen/imx6ul_tsc.c
> @@ -361,7 +361,8 @@ static void imx6ul_tsc_close(struct input_dev *input_dev)
>  
>  static int imx6ul_tsc_probe(struct platform_device *pdev)
>  {
> -	struct device_node *np = pdev->dev.of_node;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
>  	struct imx6ul_tsc *tsc;
>  	struct input_dev *input_dev;
>  	int err;
> @@ -369,11 +370,11 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  	int adc_irq;
>  	u32 average_samples;
>  
> -	tsc = devm_kzalloc(&pdev->dev, sizeof(*tsc), GFP_KERNEL);
> +	tsc = devm_kzalloc(dev, sizeof(*tsc), GFP_KERNEL);
>  	if (!tsc)
>  		return -ENOMEM;
>  
> -	input_dev = devm_input_allocate_device(&pdev->dev);
> +	input_dev = devm_input_allocate_device(dev);
>  	if (!input_dev)
>  		return -ENOMEM;
>  
> @@ -389,14 +390,14 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  
>  	input_set_drvdata(input_dev, tsc);
>  
> -	tsc->dev = &pdev->dev;
> +	tsc->dev = dev;
>  	tsc->input = input_dev;
>  	init_completion(&tsc->completion);
>  
> -	tsc->xnur_gpio = devm_gpiod_get(&pdev->dev, "xnur", GPIOD_IN);
> +	tsc->xnur_gpio = devm_gpiod_get(dev, "xnur", GPIOD_IN);
>  	if (IS_ERR(tsc->xnur_gpio)) {
>  		err = PTR_ERR(tsc->xnur_gpio);
> -		dev_err(&pdev->dev,
> +		dev_err(dev,
>  			"failed to request GPIO tsc_X- (xnur): %d\n", err);
>  		return err;
>  	}
> @@ -404,28 +405,28 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  	tsc->tsc_regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(tsc->tsc_regs)) {
>  		err = PTR_ERR(tsc->tsc_regs);
> -		dev_err(&pdev->dev, "failed to remap tsc memory: %d\n", err);
> +		dev_err(dev, "failed to remap tsc memory: %d\n", err);
>  		return err;
>  	}
>  
>  	tsc->adc_regs = devm_platform_ioremap_resource(pdev, 1);
>  	if (IS_ERR(tsc->adc_regs)) {
>  		err = PTR_ERR(tsc->adc_regs);
> -		dev_err(&pdev->dev, "failed to remap adc memory: %d\n", err);
> +		dev_err(dev, "failed to remap adc memory: %d\n", err);
>  		return err;
>  	}
>  
> -	tsc->tsc_clk = devm_clk_get(&pdev->dev, "tsc");
> +	tsc->tsc_clk = devm_clk_get(dev, "tsc");
>  	if (IS_ERR(tsc->tsc_clk)) {
>  		err = PTR_ERR(tsc->tsc_clk);
> -		dev_err(&pdev->dev, "failed getting tsc clock: %d\n", err);
> +		dev_err(dev, "failed getting tsc clock: %d\n", err);
>  		return err;
>  	}
>  
> -	tsc->adc_clk = devm_clk_get(&pdev->dev, "adc");
> +	tsc->adc_clk = devm_clk_get(dev, "adc");
>  	if (IS_ERR(tsc->adc_clk)) {
>  		err = PTR_ERR(tsc->adc_clk);
> -		dev_err(&pdev->dev, "failed getting adc clock: %d\n", err);
> +		dev_err(dev, "failed getting adc clock: %d\n", err);
>  		return err;
>  	}
>  
> @@ -439,18 +440,18 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  
>  	err = devm_request_threaded_irq(tsc->dev, tsc_irq,
>  					NULL, tsc_irq_fn, IRQF_ONESHOT,
> -					dev_name(&pdev->dev), tsc);
> +					dev_name(dev), tsc);
>  	if (err) {
> -		dev_err(&pdev->dev,
> +		dev_err(dev,
>  			"failed requesting tsc irq %d: %d\n",
>  			tsc_irq, err);
>  		return err;
>  	}
>  
>  	err = devm_request_irq(tsc->dev, adc_irq, adc_irq_fn, 0,
> -				dev_name(&pdev->dev), tsc);
> +				dev_name(dev), tsc);
>  	if (err) {
> -		dev_err(&pdev->dev,
> +		dev_err(dev,
>  			"failed requesting adc irq %d: %d\n",
>  			adc_irq, err);
>  		return err;
> @@ -484,7 +485,7 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  		tsc->average_select = ilog2(average_samples) - 2;
>  		break;
>  	default:
> -		dev_err(&pdev->dev,
> +		dev_err(dev,
>  			"touchscreen-average-samples (%u) must be 1, 4, 8, 16 or 32\n",
>  			average_samples);
>  		return -EINVAL;
> @@ -492,7 +493,7 @@ static int imx6ul_tsc_probe(struct platform_device *pdev)
>  
>  	err = input_register_device(tsc->input);
>  	if (err) {
> -		dev_err(&pdev->dev,
> +		dev_err(dev,
>  			"failed to register input device: %d\n", err);
>  		return err;
>  	}
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
