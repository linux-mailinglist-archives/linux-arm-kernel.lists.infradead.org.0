Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4D61D2631
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l55rllhOyFb/oecQzWHOTM4zu7S+ItS137cBgPsJaw=; b=odGuLJeC9yWiTB
	qWP9TUXF3h4BUn9KExqLYSLz5/MtJ7gPZlCW3IeFghUD8b2oTgmD8ZPWnvmW5XlbFGjaJ4QUlFaV1
	Q6tDbrF+pCUkifFDA38QhlGRv5nUyC2s14+bV4cUsvXrLgPVicyimwjHxUfyHuJTP5iF4D/pANspx
	owd/sAPqzZJnqskRAKktjfBohoXNibRVr5KGT+W3X2g2HaybebrfaEUboWkXAPcxTn4+jvLdkkKlQ
	FTIbg0DzUpA4jOWjU9ZOGLlkHArERlHcXTZpl5/y+ud0ZohN0/1wtSaWXAJ/B7Fvfv8jqMfVfy29P
	mt1B5AYhHh0m8MhUd3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ5zL-00019u-0b; Thu, 14 May 2020 05:00:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ5zB-00019Z-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:00:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id b8so748032pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 22:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gRtb+ye+6N2jERJtNafzHVxmDwBVGiZa6FElJAmpzAg=;
 b=iTlKFnvLfFYMiRs/m3eZENaimKbVUuQZVgPWtxNuem+VijamM+3tXGhIT/7RFiZ1yb
 9hr9CA61VbhbBo3+o5Epa9c+28DXOGdsLDBWAuaJ7gYcFqfR9/zqGs47lEqwrE/wSRBZ
 04NAF0Z75+b+Y73uIRcl7N+gkdIXKuaLQX8PQhWal3RUGW+Ir/um6wqe3NanwiAk9jWA
 Phosz3081FLvsRMMOsZFP1Ne/gQiHo1dwSrMPAHKRdEK3ZeUdbsx7bPzSa/DoiLASZRa
 mgm/T2uJijxPTULXV0s3P0weaUSJIbptAliKmiiicCGPxvfM+eqja2dH639Xr9a1N/E6
 Wq6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gRtb+ye+6N2jERJtNafzHVxmDwBVGiZa6FElJAmpzAg=;
 b=qVTs9sVhPbuKBbaQNp6SFEj47wTErYoprTU3PBAEsRb7c+myyv9avvAujx+R+ZhIwW
 yWDfsvSZhjWAzMxK/rtJwkjJl+Z/xAzxzGfF79OAhWe89yDLtkuormq3Dnv6decbgzJ9
 pg0r890OnAMBcFlUpPSV+ARC04DGZB5IGMlFsHy7mNYWSrf29e2lwy4/nxAY4Y0Ahm2F
 awzb/rAX+jV9TcQbCwhT8fdW4TBMEDrL+J4BstcF/rqinuzi7ze3hOYyLE5vMNTgYfVz
 KSWpQtlNZFgOXakr9f1cQSNtbaBFhYlVfxf2rgHqGth0CkcVoEcjQVv1jEgbPBRT+5UU
 nfKQ==
X-Gm-Message-State: AOAM530nEuDLednETRuPVwMTPkmYF0coPtwcT1AH0ktElAphh5YSMw+v
 MMwXvtceT/FfCzl4gcaKkvUSng==
X-Google-Smtp-Source: ABdhPJyrnJxz1I6U4kp3zNWz12oevEgN0OyqU9jHUbD2BpMkoM8FG83os68vLDY7dUIJhvaavhyMxA==
X-Received: by 2002:a65:6799:: with SMTP id e25mr2609901pgr.9.1589432445068;
 Wed, 13 May 2020 22:00:45 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a15sm16664612pju.3.2020.05.13.22.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 22:00:44 -0700 (PDT)
Date: Wed, 13 May 2020 21:59:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 03/12] remoteproc: stm32: Decouple rproc from DT parsing
Message-ID: <20200514045914.GI16107@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-4-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-4-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220045_876932_7032BFA1 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 24 Apr 13:24 PDT 2020, Mathieu Poirier wrote:

> Remove the remote processor from the process of parsing the device tree
> since (1) there is no correlation between them and (2) to use the
> information that was gathered to make a decision on whether to
> synchronise with the M4 or not.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 25 ++++++++++++++-----------
>  1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 1ac90adba9b1..57a426ea620b 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -538,12 +538,11 @@ static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
>  	return err;
>  }
>  
> -static int stm32_rproc_parse_dt(struct platform_device *pdev)
> +static int stm32_rproc_parse_dt(struct platform_device *pdev,
> +				struct stm32_rproc *ddata, bool *auto_boot)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> -	struct rproc *rproc = platform_get_drvdata(pdev);
> -	struct stm32_rproc *ddata = rproc->priv;
>  	struct stm32_syscon tz;
>  	unsigned int tzen;
>  	int err, irq;
> @@ -589,7 +588,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
>  
>  	err = regmap_read(tz.map, tz.reg, &tzen);
>  	if (err) {
> -		dev_err(&rproc->dev, "failed to read tzen\n");
> +		dev_err(dev, "failed to read tzen\n");
>  		return err;
>  	}
>  	ddata->secured_soc = tzen & tz.mask;
> @@ -605,7 +604,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
>  	if (err)
>  		dev_info(dev, "failed to get pdds\n");
>  
> -	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
> +	*auto_boot = of_property_read_bool(np, "st,auto-boot");
>  
>  	return stm32_rproc_of_memory_translations(pdev, ddata);
>  }
> @@ -616,6 +615,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	struct stm32_rproc *ddata;
>  	struct device_node *np = dev->of_node;
>  	struct rproc *rproc;
> +	bool auto_boot = false;
>  	int ret;
>  
>  	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> @@ -626,9 +626,16 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (!rproc)
>  		return -ENOMEM;
>  
> +	ddata = rproc->priv;
> +
>  	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
> +
> +	ret = stm32_rproc_parse_dt(pdev, ddata, &auto_boot);
> +	if (ret)
> +		goto free_rproc;
> +
> +	rproc->auto_boot = auto_boot;
>  	rproc->has_iommu = false;
> -	ddata = rproc->priv;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
>  	if (!ddata->workqueue) {
>  		dev_err(dev, "cannot create workqueue\n");
> @@ -638,13 +645,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, rproc);
>  
> -	ret = stm32_rproc_parse_dt(pdev);
> -	if (ret)
> -		goto free_wkq;
> -
>  	ret = stm32_rproc_request_mbox(rproc);
>  	if (ret)
> -		goto free_rproc;
> +		goto free_wkq;
>  
>  	ret = rproc_add(rproc);
>  	if (ret)
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
