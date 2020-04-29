Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C121BDEC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoWhgSgIxoXXKBih5RZGoY9p5WvhYbX6HORMaypp6tY=; b=KRY+WINzF82Oeo
	onmECuxce4YEDXCOrCUQ9E0c4UdHIkJuTHjNG3LOzF1EJUg3bArLfZnsB0WwyPtw7EsGWcGLdD+Xy
	X5jeyfEBY3sombF5v+X0IrvSHz8udSw+DhZLr+1tFAt/gKJop3jyDX5Eko6MDaCih3G5Zk4YOr2n6
	ehCA53zkNXPgJNyLMXrXmW781sdchmDy6pgR2xUOFw32H3rXSVlZQZCCk+AVUzzpboPrggJFRfXA/
	YnM1EXI3EyHCjKX7zlZY2QvpseuzA5A+PlswkAaPVT+JNjpD21iEamqIrlMJPZrWVBAJiODzL69+p
	8isSGlLP2PfgHVOediQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmx0-0003oJ-0j; Wed, 29 Apr 2020 13:40:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmuf-0006ct-14
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:38:11 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TDWPpl025320; Wed, 29 Apr 2020 15:38:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=bJQux7EgibvvlrfXQNK8JzLDHncWGBXxPs2Cap42l5k=;
 b=hnHXCWVlL4f/N7JJoY4Bj+dFB4Tnl5MUR8GNAeC2Yx7MjRLk1LA035y9T++V/Z5g4Ebm
 SIGyGFj1ZReorYoVgJnDFZ5Zrybx51YYPoaqUkLBmAdeBewrXjJT0V2QFZ6mmUgFzOhW
 ivGWTRlF/AxVywtcS6pbrd838J5tEimkEC5SY8OY2YcHnnl0GvxE8Z+S+eU0JMPN/Ilf
 STkKFMugvElB1XNkFB3yYe3K12yit/PKMW2bknCb32CPLpa62+jewSaNIHF6ERM7tr2q
 emGDbtILgSczSBk8OGEXLLw8vKVen4EU9uLnt6rDPr4HnQEpsAwT3pMl4UWOby4bAuwp +g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq66mu6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 15:38:01 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B632010002A;
 Wed, 29 Apr 2020 15:38:00 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A153921F687;
 Wed, 29 Apr 2020 15:38:00 +0200 (CEST)
Received: from lmecxl0889.tpe.st.com (10.75.127.45) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 15:37:59 +0200
Subject: Re: [PATCH v2 03/12] remoteproc: stm32: Decouple rproc from DT parsing
To: Mathieu Poirier <mathieu.poirier@linaro.org>, <bjorn.andersson@linaro.org>,
 <ohad@wizery.com>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-4-mathieu.poirier@linaro.org>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <b68419a6-65a9-08d0-bed8-5f8195ae3d55@st.com>
Date: Wed, 29 Apr 2020 15:37:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424202505.29562-4-mathieu.poirier@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_05:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063809_611905_F3DDEA3A 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> Remove the remote processor from the process of parsing the device tree
> since (1) there is no correlation between them and (2) to use the
> information that was gathered to make a decision on whether to
> synchronise with the M4 or not.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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

Nitpicking: Seems that you don't need to initialize it. 
Perhaps you can simply suppress the local variable and directly use rproc->auto_boot.

else LGTM


Thanks,
Arnaud

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
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
