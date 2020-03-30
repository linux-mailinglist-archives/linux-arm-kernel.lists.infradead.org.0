Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6EB1976C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 10:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkNyYGLzpNGZkGGvqnZZkKt7yQx861MV32WqhPZv65g=; b=Q5JyLahzZt2mlq
	veTbkGCJprCYOyDbDbnyYHNqO5SkyzfK91ZbfasoTLdZNRaffmvN7zPj4mlqUwTzdKdcVySpyRVFh
	6g6cRGjlzg+fjYf7l0wbxh9Yqi1XkYDxUivN27Oe00yue3iWYTEMQUxbRUqTLn93M+aND4GVsF8+l
	g/LAos3Mhtph4HPjRBX5FqEJmbAx+S65OQnAlbhPlQ0XV03y6agZuZ89Mg3qn6YiEmvDpnBOhTdd8
	LSAEZ+jVt2jcVXyMB+fGMEneGC+gIW4VL9ncGtL/m4Lek5kFFWGd1imHB5JnCMGcy9R5XtLlzWyky
	D4WIir54s/h9zWHYFUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpyt-0005c2-Pw; Mon, 30 Mar 2020 08:41:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpyk-0005bJ-Pt
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 08:41:08 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02U8bjN7025218; Mon, 30 Mar 2020 10:41:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=2zJH41YQKvQIOnb4qX0JkkMFfwGeAK8KHzh+mK7/f0U=;
 b=HMuaE34HokD0cr+FPEqvwDu8BBhtwbDRYaBYcLO5T9g9jIAk+OHAX2m52L47n5QEC7TY
 QgVg3IkfDlBvK6I2/feLWrmkJhwYrVxZ5nsdqHdORZFCFYEvqeV2ghPrcpLx/6Cph6Ym
 I4/nOQZsofSmp20oPUiFA3VOOW8JEj/lcG6huI+CAB0x3VtZU8SQgrr+Brm8EnUmmvlB
 sphMqQmuIUunO1+z2ihArln8k+7PavLjZqKQtuYBUsWWmsLyCDhAb7MFXYGgWvXdB7fV
 UNc4NW2MB1c5UhxreFsbYnAnAaoYQtx68XjqkMk4KLjbF+jmBJ8HEE8nXp5JMx0JnXYr Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301w80rfr2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Mar 2020 10:41:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F315210002A;
 Mon, 30 Mar 2020 10:41:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BAEB02A5528;
 Mon, 30 Mar 2020 10:41:01 +0200 (CEST)
Received: from [10.131.224.211] (10.75.127.47) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 30 Mar
 2020 10:41:00 +0200
Subject: Re: [PATCH] i2c: stm32: don't print an error on probe deferral
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>
References: <1584642136-15418-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <9f51c667-cb26-a087-b2a3-2cf2ddf09a87@st.com>
Date: Mon, 30 Mar 2020 10:40:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1584642136-15418-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-30_01:2020-03-27,
 2020-03-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_014107_202405_4941AAE3 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello !

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thanks

On 3/19/20 7:22 PM, Alain Volmat wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Do not print an error trace when deferring probe for some resource.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32.c   | 10 +++++++---
>  drivers/i2c/busses/i2c-stm32f4.c |  4 +++-
>  drivers/i2c/busses/i2c-stm32f7.c |  7 +++++--
>  3 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
> index 1da347e6a358..7be559858402 100644
> --- a/drivers/i2c/busses/i2c-stm32.c
> +++ b/drivers/i2c/busses/i2c-stm32.c
> @@ -25,8 +25,9 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	/* Request and configure I2C TX dma channel */
>  	dma->chan_tx = dma_request_chan(dev, "tx");
>  	if (IS_ERR(dma->chan_tx)) {
> -		dev_dbg(dev, "can't request DMA tx channel\n");
>  		ret = PTR_ERR(dma->chan_tx);
> +		if (ret != -EPROBE_DEFER)
> +			dev_dbg(dev, "can't request DMA tx channel\n");
>  		goto fail_al;
>  	}
>  
> @@ -44,8 +45,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	/* Request and configure I2C RX dma channel */
>  	dma->chan_rx = dma_request_chan(dev, "rx");
>  	if (IS_ERR(dma->chan_rx)) {
> -		dev_err(dev, "can't request DMA rx channel\n");
>  		ret = PTR_ERR(dma->chan_rx);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "can't request DMA rx channel\n");
> +
>  		goto fail_tx;
>  	}
>  
> @@ -73,7 +76,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	dma_release_channel(dma->chan_tx);
>  fail_al:
>  	devm_kfree(dev, dma);
> -	dev_info(dev, "can't use DMA\n");
> +	if (ret != -EPROBE_DEFER)
> +		dev_info(dev, "can't use DMA\n");
>  
>  	return ERR_PTR(ret);
>  }
> diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
> index ba600d77a3f8..1b8cad506ad7 100644
> --- a/drivers/i2c/busses/i2c-stm32f4.c
> +++ b/drivers/i2c/busses/i2c-stm32f4.c
> @@ -797,8 +797,10 @@ static int stm32f4_i2c_probe(struct platform_device *pdev)
>  
>  	rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>  	if (IS_ERR(rst)) {
> -		dev_err(&pdev->dev, "Error: Missing controller reset\n");
>  		ret = PTR_ERR(rst);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
> +
>  		goto clk_free;
>  	}
>  	reset_control_assert(rst);
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index 78d40a4cc282..ab95ed52a7dc 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1915,7 +1915,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  
>  	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(i2c_dev->clk)) {
> -		dev_err(&pdev->dev, "Error: Missing controller clock\n");
> +		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Failed to get controller clock\n");
>  		return PTR_ERR(i2c_dev->clk);
>  	}
>  
> @@ -1941,8 +1942,10 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  
>  	rst = devm_reset_control_get(&pdev->dev, NULL);
>  	if (IS_ERR(rst)) {
> -		dev_err(&pdev->dev, "Error: Missing controller reset\n");
>  		ret = PTR_ERR(rst);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
> +
>  		goto clk_free;
>  	}
>  	reset_control_assert(rst);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
