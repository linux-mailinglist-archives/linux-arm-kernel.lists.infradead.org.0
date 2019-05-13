Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1BE1BBCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kos2rJL5VkYwmKkHUZrvz9ELFo9hFTVvKZ4DGFYdoEk=; b=Eq6gvBtPtr1JfJ
	dwZj0tFNLuAXUu8JjzXdqy8Yu37Rri/xBGsrHQLIauYTCxaNEi2VdahHS1SlgYLM0ajE20FWxn+0S
	SCnQJOdJnIbMOGjWeQjPY4zlVZuIgwMIMhXh0OLpxlkLZGYZlQc68XaJrMEArK7SEzsbk0q8QD2IK
	v4t2em73CemUoQMzBmTfeNl0wzF4QAnitZaiI5x9k4GysfrRFO9mYFezal73CnictWbLFbz3KqtZy
	MqsSJwDs5ojQPjXitz9E4ohBDNZg8OFCRTf+P74FLxCOVazhwF4KAcwe00fz7Xmm3h1y+eMw8h/cb
	DSNd2uHWyPaF3If32ACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEeP-0003fk-GW; Mon, 13 May 2019 17:22:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEeH-0003fK-H4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:22:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so7100396pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E86U/OIq74Doq/AcvzrkKbLtbu6NqHfBiDf8ceyGPzM=;
 b=ufpnXMjj3Ze0G4KfMCgpi48jxwKVpdK5ymTvdzOnrQWfrHx9VicBsLGwPpPbnrBJqr
 wQnBYCgyqTuaZrJhHhVSu5IWAo97gPKaN2+UNtXs8aYTnY1uCJfOljPi9ZHCTF2LioBY
 LBk2RKNsvc/yeb4A9w1CFQRe3sle5rCrOa9U7f/z07OBkPvEujmL4PZhl0mlcYQzz9sd
 HtZofTufNC7VQgq23OX4F/AOo3VGEW9abUpb4fM46HQ7u94VjMewnjpn6o/gc/cNMq1V
 Gtn7kgtYfQJ8HulmqiU25AvoU41m0z7ZYxM1WKPdrQbzbIS+Se5qDoHi83f8Me9ST3+J
 oHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E86U/OIq74Doq/AcvzrkKbLtbu6NqHfBiDf8ceyGPzM=;
 b=L2e6zihSTm3I+Uichu9vgsj1+yrBXdbnXRqIueEU/PzR74P3oHjA5hfA9hS93GJq9v
 ij08BSYkRKOSmamsJqT7QbRV+9Fmmw5x7m9m1+wAYjlWxSlQBMYLCMYB8qCnCIARebLe
 qVVzpLHa87i4Nc2bMVneDfjUR8jsTIOiI8Vx81cKsspysgKycIG0GXGdY6Z0wwz6Ul3u
 1j+dCH0GkPSO34NKuGONmAT0i3kcoE2IcnxzPm9gXTB8/41fECiF2CKb4bvkmvu4JJUK
 lQ69eOBh3G9tPohc9KWxXNqDqQym5g/A5da6xFx0o2KDtjbqQZw/HLpGSGDOvqxLRVXj
 KG4w==
X-Gm-Message-State: APjAAAXPDEc2h+9Z6rqzAoVbc96j/YkxpQFOCed0hsnJZ/NLS33yu5BP
 FepdcYytM4YFJrSq+1jFU8Sptg==
X-Google-Smtp-Source: APXvYqw8ofyCfK4wZzU5CyY1sc1HePTBiSZxBwF5gS+T8vTW3It9lCKsEOmy451skw99VYMwHECrQQ==
X-Received: by 2002:a62:4595:: with SMTP id n21mr35393430pfi.79.1557768120764; 
 Mon, 13 May 2019 10:22:00 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 10sm17383690pfh.14.2019.05.13.10.21.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:21:59 -0700 (PDT)
Date: Mon, 13 May 2019 11:21:57 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 22/30] coresight: Rearrange platform data probing
Message-ID: <20190513172157.GC16162@xps15>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
 <1557226378-10131-23-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557226378-10131-23-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102201_579525_E6268919 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:52:49AM +0100, Suzuki K Poulose wrote:
> We are about to introduce methods to clean up the platform data
> as we switch to tracking the device reference from "name" to "fwnode
> handles" for device connections. This requires us to drop the fwnode
> handle references when the data is no longer required - i.e, when
> the device probe fails or the device gets unregistered.
> 
> In order to consolidate the invocation of the cleanup, we delay the
> platform probing to the very last minute, possibly before invoking
> the coresight_register. Then, we leave the coresight core code to
> do the clean up. i.e, if the coresight_register fails, it takes
> care of freeing the data. Otherwise, coresight_unregister will
> do the necessary operations.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-catu.c       | 14 +++++++-------
>  drivers/hwtracing/coresight/coresight-etb10.c      | 10 +++++-----
>  drivers/hwtracing/coresight/coresight-etm3x.c      | 12 +++++++-----
>  drivers/hwtracing/coresight/coresight-etm4x.c      | 12 +++++++-----
>  drivers/hwtracing/coresight/coresight-funnel.c     | 12 +++++++-----
>  drivers/hwtracing/coresight/coresight-replicator.c | 12 +++++++-----
>  drivers/hwtracing/coresight/coresight-stm.c        | 11 +++++++----
>  drivers/hwtracing/coresight/coresight-tmc.c        | 16 ++++++++--------
>  drivers/hwtracing/coresight/coresight-tpiu.c       | 10 +++++-----
>  9 files changed, 60 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
> index 05c7304..1c1ad12 100644
> --- a/drivers/hwtracing/coresight/coresight-catu.c
> +++ b/drivers/hwtracing/coresight/coresight-catu.c
> @@ -505,13 +505,6 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
>  	struct device *dev = &adev->dev;
>  	void __iomem *base;
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata)) {
> -		ret = PTR_ERR(pdata);
> -		goto out;
> -	}
> -	dev->platform_data = pdata;
> -
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata) {
>  		ret = -ENOMEM;
> @@ -544,6 +537,13 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
>  	if (ret)
>  		goto out;
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto out;
> +	}
> +	dev->platform_data = pdata;
> +
>  	drvdata->base = base;
>  	catu_desc.pdata = pdata;
>  	catu_desc.dev = dev;
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 5e7ecc6..09df827 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -726,11 +726,6 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
>  	struct resource *res = &adev->res;
>  	struct coresight_desc desc = { 0 };
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	adev->dev.platform_data = pdata;
> -
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata)
>  		return -ENOMEM;
> @@ -765,6 +760,11 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
>  	/* This device is not associated with a session */
>  	drvdata->pid = -1;
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata))
> +		return PTR_ERR(pdata);
> +	adev->dev.platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_SINK;
>  	desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
>  	desc.ops = &etb_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index 101fb01..f2d4616 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -795,11 +795,6 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
>  	if (!drvdata)
>  		return -ENOMEM;
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -
> -	adev->dev.platform_data = pdata;
>  	drvdata->use_cp14 = fwnode_property_read_bool(dev->fwnode, "arm,cp14");
>  	dev_set_drvdata(dev, drvdata);
>  
> @@ -849,6 +844,13 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
>  	etm_init_trace_id(drvdata);
>  	etm_set_default(&drvdata->config);
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto err_arch_supported;
> +	}
> +	adev->dev.platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
>  	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_PROC;
>  	desc.ops = &etm_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 8adc148..1609da1 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1089,11 +1089,6 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  	if (!drvdata)
>  		return -ENOMEM;
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	adev->dev.platform_data = pdata;
> -
>  	dev_set_drvdata(dev, drvdata);
>  
>  	/* Validity for the resource is already checked by the AMBA core */
> @@ -1136,6 +1131,13 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  	etm4_init_trace_id(drvdata);
>  	etm4_set_default(&drvdata->config);
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto err_arch_supported;
> +	}
> +	adev->dev.platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
>  	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_PROC;
>  	desc.ops = &etm4_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index ded33f5..75fa2d3 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -188,11 +188,6 @@ static int funnel_probe(struct device *dev, struct resource *res)
>  	struct funnel_drvdata *drvdata;
>  	struct coresight_desc desc = { 0 };
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	dev->platform_data = pdata;
> -
>  	if (is_of_node(dev_fwnode(dev)) &&
>  	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
>  		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
> @@ -224,6 +219,13 @@ static int funnel_probe(struct device *dev, struct resource *res)
>  
>  	dev_set_drvdata(dev, drvdata);
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto out_disable_clk;
> +	}
> +	dev->platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_LINK;
>  	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
>  	desc.ops = &funnel_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index f28bafd..64dfde7 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -179,11 +179,6 @@ static int replicator_probe(struct device *dev, struct resource *res)
>  	struct coresight_desc desc = { 0 };
>  	void __iomem *base;
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	dev->platform_data = pdata;
> -
>  	if (is_of_node(dev_fwnode(dev)) &&
>  	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
>  		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
> @@ -215,6 +210,13 @@ static int replicator_probe(struct device *dev, struct resource *res)
>  
>  	dev_set_drvdata(dev, drvdata);
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto out_disable_clk;
> +	}
> +	dev->platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_LINK;
>  	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
>  	desc.ops = &replicator_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
> index 02031d9..03528f3 100644
> --- a/drivers/hwtracing/coresight/coresight-stm.c
> +++ b/drivers/hwtracing/coresight/coresight-stm.c
> @@ -810,10 +810,6 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
>  	size_t bitmap_size;
>  	struct coresight_desc desc = { 0 };
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	adev->dev.platform_data = pdata;
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata)
>  		return -ENOMEM;
> @@ -866,6 +862,13 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
>  		return -EPROBE_DEFER;
>  	}
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto stm_unregister;
> +	}
> +	adev->dev.platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
>  	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE;
>  	desc.ops = &stm_cs_ops;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 44a5719..212630e 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -398,13 +398,6 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  	struct resource *res = &adev->res;
>  	struct coresight_desc desc = { 0 };
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata)) {
> -		ret = PTR_ERR(pdata);
> -		goto out;
> -	}
> -	adev->dev.platform_data = pdata;
> -
>  	ret = -ENOMEM;
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata)
> @@ -434,7 +427,6 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  	else
>  		drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
>  
> -	desc.pdata = pdata;
>  	desc.dev = dev;
>  	desc.groups = coresight_tmc_groups;
>  	desc.name = dev_name(dev);
> @@ -467,6 +459,14 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  		goto out;
>  	}
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata)) {
> +		ret = PTR_ERR(pdata);
> +		goto out;
> +	}
> +	adev->dev.platform_data = pdata;
> +	desc.pdata = pdata;
> +
>  	drvdata->csdev = coresight_register(&desc);
>  	if (IS_ERR(drvdata->csdev)) {
>  		ret = PTR_ERR(drvdata->csdev);
> diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
> index d8a2e39..b699d61 100644
> --- a/drivers/hwtracing/coresight/coresight-tpiu.c
> +++ b/drivers/hwtracing/coresight/coresight-tpiu.c
> @@ -125,11 +125,6 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
>  	struct resource *res = &adev->res;
>  	struct coresight_desc desc = { 0 };
>  
> -	pdata = coresight_get_platform_data(dev);
> -	if (IS_ERR(pdata))
> -		return PTR_ERR(pdata);
> -	dev->platform_data = pdata;
> -
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata)
>  		return -ENOMEM;
> @@ -152,6 +147,11 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
>  	/* Disable tpiu to support older devices */
>  	tpiu_disable_hw(drvdata);
>  
> +	pdata = coresight_get_platform_data(dev);
> +	if (IS_ERR(pdata))
> +		return PTR_ERR(pdata);
> +	dev->platform_data = pdata;
> +
>  	desc.type = CORESIGHT_DEV_TYPE_SINK;
>  	desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_PORT;
>  	desc.ops = &tpiu_cs_ops;

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
