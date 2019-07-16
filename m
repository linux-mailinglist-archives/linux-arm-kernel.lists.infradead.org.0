Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A4F6AC39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pp6wA7IEUfvTxJ8mvAO/reignkWuJzg/ch0zd4Y5u6k=; b=rbMbiWFFzgsoZN
	eWpiQBhwDDa0HdJyVcOlGOrlzltCd6ZQqTVpgRte1eufdWV2yvnIemCPzhwyVL5pC2dupdehl53Oz
	pXOu4/W8C/90b51rWVxHGTNwC93i9y5FYnm6ePQPMJw+me6eORDPrG702lRX/aoPcECAvMJXfSY2o
	gexWkFyOZA4Cj65qm87C5zWuW+Q9aT8W9iuPxkcr1D7EvEi272Z7bKQq578seHUltlyx2ObzlKfIq
	2vpn+fYr9lweaVtYdWZ4dYfyv2qD0gMPsK7O7TgiAOyFHkFHzBYxDzeB2Z++2qbGeg7ospkGkGryo
	kV0nebvru4LyEweygXHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPlH-0005uT-2F; Tue, 16 Jul 2019 15:53:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPl1-0005t5-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:52:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so19188162wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QZlXIYch//vjsQS5IhxArL7mBgEBULuqsYOVzCul4YQ=;
 b=MMenY9J1ysV9zeyoY7fmHEWxKUgVUIP9S1SDxUuL99M1Gu7B3DyxRGC4BDFLm2OPqh
 XnitNO5zCT4YGt3nCOk4geb5WbERmpzckizcwsFbQ5TVMWYQ4nWD3tTlNjOD4OdDqz95
 xTNBpMhYQjVrHSI86ZS/NGB6BNm/1KvKKfrksCiMQ9SSjVPnkLcicD6wLdc1zfoYKJ3b
 A0XhdPBwjDBQehCwZW7GoA7whBYI0cj/RuDo2QGwlwCwI7wqYZxtPpAad0MZLtVMCNdZ
 C7TlRQhdwLC7do17AOdZHCiTofD11vARY7mOMvd2ElyAyVmIw65Ut+1t3OeZkL7HLJ2Y
 Lraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QZlXIYch//vjsQS5IhxArL7mBgEBULuqsYOVzCul4YQ=;
 b=b3+0NLqTttmf/2inkunXQe9AWwa3E0qKAor8CpC5OcVgsxjMK1pEIreCYIAzOWT2OH
 m31FIXGDqLpXjyevLUXJUt+bkNecvWhvhnErXqgQWc+z9imIOU3s2kDw8F5N3jH8O5Ka
 lzUo6pgyuHzpWSBA6JAZL3+CKhFXvdgtAnQGAHkzLgEQhyi7kq4YG8yvjq8Yn9lgKOyK
 5ueIOrji5pDI/EVr3q7a4uh58YRsnndMoOa0dylYThSjFDkGR3qZDeIPOkpyCsZkYHkr
 bJdcLd4JwKYoqT1Tg7eAboVgrsX9Nfioyoq7BGGuAMVKp/zLOeDnjq3QgZe4Wr6yffMi
 9wJQ==
X-Gm-Message-State: APjAAAWar3uyA1TJYOHzIOd/kC0QYU9nxIxdhbOvoHvobw6/7M0W2aom
 jNYNn4eKGMEJkbgaPZ+0GPI=
X-Google-Smtp-Source: APXvYqz8TQNkJU4OCFeEtOXMbiP0H9wTNLX33hKfJjGDRodNcdGB2pirJtv7K7oKGPBb/ZVLPzmN1A==
X-Received: by 2002:a1c:9dc5:: with SMTP id g188mr32043583wme.93.1563292365488; 
 Tue, 16 Jul 2019 08:52:45 -0700 (PDT)
Received: from localhost (smbhubinfra01.hotspot.hub-one.net. [213.174.99.146])
 by smtp.gmail.com with ESMTPSA id
 w24sm17520636wmc.30.2019.07.16.08.52.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 08:52:44 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:30:44 +0200
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mukesh Ojha <mojha@codeaurora.org>
Subject: Re: [PATCH 1/5] Input: fsl-imx25-tcq: Use
 devm_platform_ioremap_resource()
Message-ID: <20190716073044.GA1182@penguin>
References: <1554362243-2888-1-git-send-email-mojha@codeaurora.org>
 <1554362243-2888-2-git-send-email-mojha@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554362243-2888-2-git-send-email-mojha@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_085247_827441_A2B724C2 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-input@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 04, 2019 at 12:47:19PM +0530, Mukesh Ojha wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> Signed-off-by: Mukesh Ojha <mojha@codeaurora.org>

Applied, thank you.

> ---
>  drivers/input/touchscreen/fsl-imx25-tcq.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/fsl-imx25-tcq.c b/drivers/input/touchscreen/fsl-imx25-tcq.c
> index 1d6c8f4..b66df8a 100644
> --- a/drivers/input/touchscreen/fsl-imx25-tcq.c
> +++ b/drivers/input/touchscreen/fsl-imx25-tcq.c
> @@ -503,7 +503,6 @@ static int mx25_tcq_probe(struct platform_device *pdev)
>  	struct input_dev *idev;
>  	struct mx25_tcq_priv *priv;
>  	struct mx25_tsadc *tsadc = dev_get_drvdata(dev->parent);
> -	struct resource *res;
>  	void __iomem *mem;
>  	int error;
>  
> @@ -512,8 +511,7 @@ static int mx25_tcq_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  	priv->dev = dev;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mem = devm_ioremap_resource(dev, res);
> +	mem = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mem))
>  		return PTR_ERR(mem);
>  
> -- 
> Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center,
> Inc. is a member of the Code Aurora Forum, a Linux Foundation Collaborative Project
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
