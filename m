Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29BD4887B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTADMlU3DkCv4nQnAA7/4mux3UG6zdtFrW8Lt8+HXpY=; b=NEIpRde0Vi6SoO
	9pU299msL48earvfH33OmCiSsbrRaN1gE85Ho+3O/UpEfOl9UAqHI9LADo7tch3SMMQDp6GcyYemb
	wXTNuKmosTfqH6wL7Y49O2eNnTreJAKgVZHmEi3FRhLyn7nFbu6Hger8Cl/ft5cTJ4dlWPG3NLf8n
	g2VgD7UxPYrvPMYEZtDS8D5aU3TWI6CcM9YnrYx8urpRysPvzDsuJVi4ibsDzHm/xXeb+lNCWhQ72
	e5daUXhf+8u17lLqPMdIzfdje3YORwUggZcl+h0HFCL9iSYqepgCQTcB7eKiw0dvifmpQi9VxzQf0
	+oL+nLYqEUmE+PPX3DLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuH1-00032w-Cq; Mon, 17 Jun 2019 16:14:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuGe-0002y6-1G; Mon, 17 Jun 2019 16:14:05 +0000
Received: by mail-ed1-x543.google.com with SMTP id e3so16899502edr.10;
 Mon, 17 Jun 2019 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2nkyaA+ghoO4J8lTiZaadT7gkHaEm0zUOqwb908KY5s=;
 b=Otd608GylTQG4ZsOVCEjimijcZ22cEiJ++bqEY9V9pwNCdVXzubcSL2gF4jr+/vVQf
 LPe9FMy+HqmLYK7gYzroQbyn/pqi3LH4Kq/Z3kg6TGCWdhYQ6h77MShdd4Px7whbzAhM
 V0Tttpc0V1yC//iiACrfKFTlKDV/58dTx82fdgPZ9bve7TXewTDaWmcV8U8ZkXfYjqRO
 XU1bZP/HQMK2ZXezLLXxP34UyPpNJYtnlB3CsO1JE5MzD7lsxuY5b3mkqNvDbYPDonG/
 +mTQnLIxitBQWBkSYVM81yO45hqFot0u/nfEcLMy78ySJTltjeMfm0/sMiA65t9wzpFL
 ox0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=2nkyaA+ghoO4J8lTiZaadT7gkHaEm0zUOqwb908KY5s=;
 b=NyVBJDU+KFbCITuuC0JOfv7MVUbxULrduUJhJKO9ZtJ76kmxkRQFOi8iT9WhDbEFKG
 LcTGCtoLcWagIjWxJMublvlIBoRoIQzxPG0O6ADf1ljGIM//PcZDqYT8FShPvkZZDS15
 H5eb2eftZXe9nUMYqx9wnXeiO2Tk8Gcq7BLIQT8G9vJq7JhrmjMz8sYZMBZJNeSchi2/
 Dr3DWy19eVZKq2v+G8xSJ2jpEP0IBlZUZTRVNIRU0zd5w/UshjiLC+0bhHmZe4JnKe4w
 ufX97vw9UbJL4N3hLORz+o7qVjEXz5x4VGZbBQLL9RliRGzaXwg2Xhq7ryZSgsPAVcr3
 vmHg==
X-Gm-Message-State: APjAAAWVjjky5O8LKcipDzy/VOVy5M/VSeBNr0RmofCNVNVqvPqk9S0Z
 /XK6s2TSoTy1tzNuCEXWsKM=
X-Google-Smtp-Source: APXvYqy/dzw7FA8rbxjnk0N+Jpt5W58JXI0sUgcw6kLx6RSwc2N8ZGNeHx/wBUaBFXPyUvCZYLmiGw==
X-Received: by 2002:a17:906:6055:: with SMTP id
 p21mr21899471ejj.35.1560788038392; 
 Mon, 17 Jun 2019 09:13:58 -0700 (PDT)
Received: from ziggy.stardust ([37.223.140.27])
 by smtp.gmail.com with ESMTPSA id m31sm3917579edd.42.2019.06.17.09.13.56
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:13:57 -0700 (PDT)
Subject: Re: [PATCH v7 15/21] memory: mtk-smi: Invoke pm runtime_callback to
 enable clocks
To: Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-16-git-send-email-yong.wu@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <719e0d71-a9e1-4cb2-0efb-0cdddc65e036@gmail.com>
Date: Mon, 17 Jun 2019 18:13:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560169080-27134-16-git-send-email-yong.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091400_150907_ED396D6C 
X-CRM114-Status: GOOD (  27.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/06/2019 14:17, Yong Wu wrote:
> This patch only move the clk_prepare_enable and config_port into the
> runtime suspend/resume callback. It doesn't change the code content
> and sequence.
> 
> This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
> (SMI_BUS_SEL need to be restored after smi-common resume every time.)
> Also it gives a chance to get rid of mtk_smi_larb_get/put which could
> be a next topic.
> 
> CC: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>  drivers/memory/mtk-smi.c | 113 ++++++++++++++++++++++++++++++-----------------
>  1 file changed, 72 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index a430721..9790801 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -86,17 +86,13 @@ struct mtk_smi_larb { /* larb: local arbiter */
>  	u32				*mmu;
>  };
>  
> -static int mtk_smi_enable(const struct mtk_smi *smi)
> +static int mtk_smi_clk_enable(const struct mtk_smi *smi)
>  {
>  	int ret;
>  
> -	ret = pm_runtime_get_sync(smi->dev);
> -	if (ret < 0)
> -		return ret;
> -
>  	ret = clk_prepare_enable(smi->clk_apb);
>  	if (ret)
> -		goto err_put_pm;
> +		return ret;
>  
>  	ret = clk_prepare_enable(smi->clk_smi);
>  	if (ret)
> @@ -118,59 +114,28 @@ static int mtk_smi_enable(const struct mtk_smi *smi)
>  	clk_disable_unprepare(smi->clk_smi);
>  err_disable_apb:
>  	clk_disable_unprepare(smi->clk_apb);
> -err_put_pm:
> -	pm_runtime_put_sync(smi->dev);
>  	return ret;
>  }
>  
> -static void mtk_smi_disable(const struct mtk_smi *smi)
> +static void mtk_smi_clk_disable(const struct mtk_smi *smi)
>  {
>  	clk_disable_unprepare(smi->clk_gals1);
>  	clk_disable_unprepare(smi->clk_gals0);
>  	clk_disable_unprepare(smi->clk_smi);
>  	clk_disable_unprepare(smi->clk_apb);
> -	pm_runtime_put_sync(smi->dev);
>  }
>  
>  int mtk_smi_larb_get(struct device *larbdev)
>  {
> -	struct mtk_smi_larb *larb = dev_get_drvdata(larbdev);
> -	const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
> -	struct mtk_smi *common = dev_get_drvdata(larb->smi_common_dev);
> -	int ret;
> +	int ret = pm_runtime_get_sync(larbdev);
>  
> -	/* Enable the smi-common's power and clocks */
> -	ret = mtk_smi_enable(common);
> -	if (ret)
> -		return ret;
> -
> -	/* Enable the larb's power and clocks */
> -	ret = mtk_smi_enable(&larb->smi);
> -	if (ret) {
> -		mtk_smi_disable(common);
> -		return ret;
> -	}
> -
> -	/* Configure the iommu info for this larb */
> -	larb_gen->config_port(larbdev);
> -
> -	return 0;
> +	return (ret < 0) ? ret : 0;
>  }
>  EXPORT_SYMBOL_GPL(mtk_smi_larb_get);
>  
>  void mtk_smi_larb_put(struct device *larbdev)
>  {
> -	struct mtk_smi_larb *larb = dev_get_drvdata(larbdev);
> -	struct mtk_smi *common = dev_get_drvdata(larb->smi_common_dev);
> -
> -	/*
> -	 * Don't de-configure the iommu info for this larb since there may be
> -	 * several modules in this larb.
> -	 * The iommu info will be reset after power off.
> -	 */
> -
> -	mtk_smi_disable(&larb->smi);
> -	mtk_smi_disable(common);
> +	pm_runtime_put_sync(larbdev);
>  }
>  EXPORT_SYMBOL_GPL(mtk_smi_larb_put);
>  
> @@ -385,12 +350,52 @@ static int mtk_smi_larb_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused mtk_smi_larb_resume(struct device *dev)
> +{
> +	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
> +	const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
> +	int ret;
> +
> +	/* Power on smi-common. */
> +	ret = pm_runtime_get_sync(larb->smi_common_dev);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to pm get for smi-common(%d).\n", ret);
> +		return ret;
> +	}
> +
> +	ret = mtk_smi_clk_enable(&larb->smi);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable clock(%d).\n", ret);
> +		pm_runtime_put_sync(larb->smi_common_dev);
> +		return ret;
> +	}
> +
> +	/* Configure the basic setting for this larb */
> +	larb_gen->config_port(dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
> +{
> +	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
> +
> +	mtk_smi_clk_disable(&larb->smi);
> +	pm_runtime_put_sync(larb->smi_common_dev);
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops smi_larb_pm_ops = {
> +	SET_RUNTIME_PM_OPS(mtk_smi_larb_suspend, mtk_smi_larb_resume, NULL)
> +};
> +
>  static struct platform_driver mtk_smi_larb_driver = {
>  	.probe	= mtk_smi_larb_probe,
>  	.remove	= mtk_smi_larb_remove,
>  	.driver	= {
>  		.name = "mtk-smi-larb",
>  		.of_match_table = mtk_smi_larb_of_ids,
> +		.pm             = &smi_larb_pm_ops,
>  	}
>  };
>  
> @@ -489,12 +494,38 @@ static int mtk_smi_common_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused mtk_smi_common_resume(struct device *dev)
> +{
> +	struct mtk_smi *common = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = mtk_smi_clk_enable(common);
> +	if (ret) {
> +		dev_err(common->dev, "Failed to enable clock(%d).\n", ret);
> +		return ret;
> +	}
> +	return 0;
> +}
> +
> +static int __maybe_unused mtk_smi_common_suspend(struct device *dev)
> +{
> +	struct mtk_smi *common = dev_get_drvdata(dev);
> +
> +	mtk_smi_clk_disable(common);
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops smi_common_pm_ops = {
> +	SET_RUNTIME_PM_OPS(mtk_smi_common_suspend, mtk_smi_common_resume, NULL)
> +};
> +
>  static struct platform_driver mtk_smi_common_driver = {
>  	.probe	= mtk_smi_common_probe,
>  	.remove = mtk_smi_common_remove,
>  	.driver	= {
>  		.name = "mtk-smi-common",
>  		.of_match_table = mtk_smi_common_of_ids,
> +		.pm             = &smi_common_pm_ops,
>  	}
>  };
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
