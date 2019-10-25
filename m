Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1634FE4EA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9MTEaPnURLtVbbRno3Ey8iQMlfsJvUYHPpMvWwtMSc=; b=TaVM3v0fEVx/5D
	eIu3sbNxxBa58dMg31qLOalDiAvokdNuzT9YHcasDl09W9oNiSLv3EIUNzW8OnsuWXeyjWMt5R9KK
	LA5HIGkJt6eCB46/GSWM6wmGc+d8e1K3SA1vhhYhDPU4XvgikT1YGTRXLq32trCKYn+1BgTBGzAAV
	F7DVi2HUYbuLih14GCJSxBycj7Xw40g7DS2cOZ6IYjd0aAnbx3YNwARhp3XwjiT/Yg6YQzap3OOvA
	5BJpcYX4Jr2PntZxyjE/I2jBUcxTVnB3mptYy+Q9LGitzTYM3MQQqMvK5csYcolaKGEJjQeZUt3US
	KaTlLieUczU9sJUuvpzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0Kb-0002h1-DA; Fri, 25 Oct 2019 14:12:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0KR-0002gC-4R
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:12:36 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9PE5ub0022030; Fri, 25 Oct 2019 16:12:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=xxw6sfSBb2ziAGzEHx/zRRrJwSGgjzjjHssHA3fCJJQ=;
 b=RLIcONLNhTxfGnumeDhL8EbUmMIKOhVIPwY7JvR89xewpCIDHP6zdOLiNn80Liq4rUNU
 gKZa9r4+tEKdoefOgXXNWhSy6CjVgvSit/IYvVzR5kZLKCHlNvixlxlgDwo8L07INtaF
 ZfZUfV5MK7eL6YHLlJY7oxd22gR205i5QcXKactpPnPrCtPoOX3YdnRPej4Pys7Vb/nT
 qcFNtbG2wfJoU0IdlUmzGhkr7U7vEcOgxkrHM3rGfPkP8Gz2y18zSAawK1zQ0p4YtgWk
 yT4vXtIaC7fgdKYpu+pCvOe2UEvWUAaW0MfZ2yhgkK5rqza82wX0XhM9TMLbpzWIoyza iA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vt9s4g6x5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 16:12:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3847D100034;
 Fri, 25 Oct 2019 16:12:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2A9982AB34A;
 Fri, 25 Oct 2019 16:12:33 +0200 (CEST)
Received: from [10.129.5.11] (10.75.127.45) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 25 Oct
 2019 16:12:25 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: report dma error during probe
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>
References: <1571921521-8502-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <fbb063f9-8f16-00ba-1a5b-deb58c711e26@st.com>
Date: Fri, 25 Oct 2019 16:12:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571921521-8502-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_08:2019-10-25,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_071235_484387_C8398987 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Looks good for me

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Regards

On 10/24/19 2:52 PM, Alain Volmat wrote:
> Distinguish between the case where dma information is not provided
> within the DT and the case of an error during the dma init.
> Exit the probe with error in case of an error during dma init.
> 
> Fixes: bb8822cbbc53 ("i2c: i2c-stm32: Add generic DMA API")
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32.c   | 16 ++++++++--------
>  drivers/i2c/busses/i2c-stm32f7.c |  9 +++++++++
>  2 files changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
> index 07d5dfce68d4..1da347e6a358 100644
> --- a/drivers/i2c/busses/i2c-stm32.c
> +++ b/drivers/i2c/busses/i2c-stm32.c
> @@ -20,13 +20,13 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  
>  	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
>  	if (!dma)
> -		return NULL;
> +		return ERR_PTR(-ENOMEM);
>  
>  	/* Request and configure I2C TX dma channel */
> -	dma->chan_tx = dma_request_slave_channel(dev, "tx");
> -	if (!dma->chan_tx) {
> +	dma->chan_tx = dma_request_chan(dev, "tx");
> +	if (IS_ERR(dma->chan_tx)) {
>  		dev_dbg(dev, "can't request DMA tx channel\n");
> -		ret = -EINVAL;
> +		ret = PTR_ERR(dma->chan_tx);
>  		goto fail_al;
>  	}
>  
> @@ -42,10 +42,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	}
>  
>  	/* Request and configure I2C RX dma channel */
> -	dma->chan_rx = dma_request_slave_channel(dev, "rx");
> -	if (!dma->chan_rx) {
> +	dma->chan_rx = dma_request_chan(dev, "rx");
> +	if (IS_ERR(dma->chan_rx)) {
>  		dev_err(dev, "can't request DMA rx channel\n");
> -		ret = -EINVAL;
> +		ret = PTR_ERR(dma->chan_rx);
>  		goto fail_tx;
>  	}
>  
> @@ -75,7 +75,7 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	devm_kfree(dev, dma);
>  	dev_info(dev, "can't use DMA\n");
>  
> -	return NULL;
> +	return ERR_PTR(ret);
>  }
>  
>  void stm32_i2c_dma_free(struct stm32_i2c_dma *dma)
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index d36cf08461f7..cc8ba8f49ae6 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1950,6 +1950,15 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  	i2c_dev->dma = stm32_i2c_dma_request(i2c_dev->dev, phy_addr,
>  					     STM32F7_I2C_TXDR,
>  					     STM32F7_I2C_RXDR);
> +	if (PTR_ERR(i2c_dev->dma) == -ENODEV)
> +		i2c_dev->dma = NULL;
> +	else if (IS_ERR(i2c_dev->dma)) {
> +		ret = PTR_ERR(i2c_dev->dma);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev,
> +				"Failed to request dma error %i\n", ret);
> +		goto clk_free;
> +	}
>  
>  	platform_set_drvdata(pdev, i2c_dev);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
