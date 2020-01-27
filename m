Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C143214A084
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwEzsqzziuG8dH+df9uTQxRTjzPD9WjHebFy9GkQYOk=; b=Zdm0fOZkCHf5u5
	oq9gJAqFEsh1m8g6R+ftBI8YR6+YyYgYUnOePOArd2cTIKvIgeUpgI+e1nRF/4tAyOMdkktvh8ToF
	kK5kwgsK/E+6Xcsn3dKwNdnRbuRbQw90GmCRn+Yj6p+2hEWZHaPn42XII1ZRP1DDNWGK2kkwzaO1S
	dlgrIfhaDgnxW3Qck2gfci05vIYGkMhJt+hlMYgxN9BC3DmA0IfhaXYaOTE8JnaL57Yq2JHAITzhZ
	YG5MnxJu+ySx4aBMhFgVH2qQiHtwL2xyh4tWdMtIagqsxk/Yoj2X01SbJDfrNvVE5uYcRvuZIKD0c
	jvWXSD60Esm5ss4Z28bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0YD-0005S0-PA; Mon, 27 Jan 2020 09:19:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0Xz-0005RR-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:19:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00R9E0br024940; Mon, 27 Jan 2020 10:18:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=qw5jXI9Fj+OOUBfj/yMYXXwP3AGDOIZ6klKp/MtIpko=;
 b=Jn/dx63prKcdtPhA443Cc2Nai1atA+WRk4SSE/5LqiXM0HTdMMmO2M4sc2bsokcwcYtf
 aQceA7WE8ExobVwGf/blYQsJIYN9QVQINzdYmlvgLNBqHa83D77pyzY99U09QwqJxDBe
 uVWDq+Foib7j7I5zHbWqUGysFvvoTBh6yI7Gl0H34D66LUadzB5vy6m2pJYJvdUiF455
 Le63EtkeeOMeAfCthOFC4J1g+3CjcpqZ+dLbn48G5EBZznEXLSEotxUsai2twkdHfJL1
 c49DvZAqBW8/AH2bP+mBvsfLq9ZhTwbg+eK9wiQ5IXOXBJu0acC0it7AXd4NxYKvFmNp Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc1303ev-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 10:18:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 616EC100034;
 Mon, 27 Jan 2020 10:18:58 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4B80221E5E7;
 Mon, 27 Jan 2020 10:18:58 +0100 (CET)
Received: from [10.48.1.171] (10.75.127.49) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jan
 2020 10:18:57 +0100
Subject: Re: [PATCH 1/5] i2c: i2c-stm32f7: disable/restore Fast Mode Plus bits
 in low power modes
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
 <1579795970-22319-2-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <4e92ad2d-d373-f009-7c79-63d7caafac45@st.com>
Date: Mon, 27 Jan 2020 10:18:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1579795970-22319-2-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_011907_944809_7E9E3EB8 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thanks

On 1/23/20 5:12 PM, Alain Volmat wrote:
> Defer the initial enabling of the Fast Mode Plus bits after the
> stm32f7_i2c_setup_timing call in probe function in order to avoid
> enabling them if speed is downgraded.
> Clear & restore the Fast Mode Plus bits in the suspend/resume
> handlers of the driver.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 48 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 40 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index 844a22d64aa8..1a3b3fa582ff 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -303,6 +303,8 @@ struct stm32f7_i2c_msg {
>   * @dma: dma data
>   * @use_dma: boolean to know if dma is used in the current transfer
>   * @regmap: holds SYSCFG phandle for Fast Mode Plus bits
> + * @regmap_reg: register address for setting Fast Mode Plus bits
> + * @regmap_mask: mask for Fast Mode Plus bits in set register
>   * @wakeup_src: boolean to know if the device is a wakeup source
>   */
>  struct stm32f7_i2c_dev {
> @@ -326,6 +328,8 @@ struct stm32f7_i2c_dev {
>  	struct stm32_i2c_dma *dma;
>  	bool use_dma;
>  	struct regmap *regmap;
> +	u32 regmap_reg;
> +	u32 regmap_mask;
>  	bool wakeup_src;
>  };
>  
> @@ -1815,12 +1819,25 @@ static int stm32f7_i2c_unreg_slave(struct i2c_client *slave)
>  	return 0;
>  }
>  
> +static int stm32f7_i2c_write_fm_plus_bits(struct stm32f7_i2c_dev *i2c_dev,
> +					  bool enable)
> +{
> +	if (i2c_dev->speed != STM32_I2C_SPEED_FAST_PLUS ||
> +	    IS_ERR_OR_NULL(i2c_dev->regmap)) {
> +		/* Optional */
> +		return 0;
> +	}
> +
> +	return regmap_update_bits(i2c_dev->regmap, i2c_dev->regmap_reg,
> +				  i2c_dev->regmap_mask,
> +				  enable ? i2c_dev->regmap_mask : 0);
> +}
> +
>  static int stm32f7_i2c_setup_fm_plus_bits(struct platform_device *pdev,
>  					  struct stm32f7_i2c_dev *i2c_dev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
>  	int ret;
> -	u32 reg, mask;
>  
>  	i2c_dev->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg-fmp");
>  	if (IS_ERR(i2c_dev->regmap)) {
> @@ -1828,15 +1845,17 @@ static int stm32f7_i2c_setup_fm_plus_bits(struct platform_device *pdev,
>  		return 0;
>  	}
>  
> -	ret = of_property_read_u32_index(np, "st,syscfg-fmp", 1, &reg);
> +	ret = of_property_read_u32_index(np, "st,syscfg-fmp", 1,
> +					 &i2c_dev->regmap_reg);
>  	if (ret)
>  		return ret;
>  
> -	ret = of_property_read_u32_index(np, "st,syscfg-fmp", 2, &mask);
> +	ret = of_property_read_u32_index(np, "st,syscfg-fmp", 2,
> +					 &i2c_dev->regmap_mask);
>  	if (ret)
>  		return ret;
>  
> -	return regmap_update_bits(i2c_dev->regmap, reg, mask, mask);
> +	return 0;
>  }
>  
>  static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
> @@ -1914,9 +1933,6 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  				       &clk_rate);
>  	if (!ret && clk_rate >= 1000000) {
>  		i2c_dev->speed = STM32_I2C_SPEED_FAST_PLUS;
> -		ret = stm32f7_i2c_setup_fm_plus_bits(pdev, i2c_dev);
> -		if (ret)
> -			goto clk_free;
>  	} else if (!ret && clk_rate >= 400000) {
>  		i2c_dev->speed = STM32_I2C_SPEED_FAST;
>  	} else if (!ret && clk_rate >= 100000) {
> @@ -1976,6 +1992,15 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto clk_free;
>  
> +	if (i2c_dev->speed == STM32_I2C_SPEED_FAST_PLUS) {
> +		ret = stm32f7_i2c_setup_fm_plus_bits(pdev, i2c_dev);
> +		if (ret)
> +			goto clk_free;
> +		ret = stm32f7_i2c_write_fm_plus_bits(i2c_dev, 1);
> +		if (ret)
> +			goto clk_free;
> +	}
> +
>  	adap = &i2c_dev->adap;
>  	i2c_set_adapdata(adap, i2c_dev);
>  	snprintf(adap->name, sizeof(adap->name), "STM32F7 I2C(%pa)",
> @@ -2000,7 +2025,7 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  		if (ret != -EPROBE_DEFER)
>  			dev_err(&pdev->dev,
>  				"Failed to request dma error %i\n", ret);
> -		goto clk_free;
> +		goto fmp_clear;
>  	}
>  
>  	if (i2c_dev->wakeup_src) {
> @@ -2054,6 +2079,9 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  		i2c_dev->dma = NULL;
>  	}
>  
> +fmp_clear:
> +	stm32f7_i2c_write_fm_plus_bits(i2c_dev, 0);
> +
>  clk_free:
>  	clk_disable_unprepare(i2c_dev->clk);
>  
> @@ -2086,6 +2114,8 @@ static int stm32f7_i2c_remove(struct platform_device *pdev)
>  		i2c_dev->dma = NULL;
>  	}
>  
> +	stm32f7_i2c_write_fm_plus_bits(i2c_dev, 0);
> +
>  	clk_disable_unprepare(i2c_dev->clk);
>  
>  	return 0;
> @@ -2133,6 +2163,7 @@ stm32f7_i2c_regs_backup(struct stm32f7_i2c_dev *i2c_dev)
>  	backup_regs->oar2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_OAR2);
>  	backup_regs->pecr = readl_relaxed(i2c_dev->base + STM32F7_I2C_PECR);
>  	backup_regs->tmgr = readl_relaxed(i2c_dev->base + STM32F7_I2C_TIMINGR);
> +	stm32f7_i2c_write_fm_plus_bits(i2c_dev, 0);
>  
>  	pm_runtime_put_sync(i2c_dev->dev);
>  
> @@ -2165,6 +2196,7 @@ stm32f7_i2c_regs_restore(struct stm32f7_i2c_dev *i2c_dev)
>  	writel_relaxed(backup_regs->oar1, i2c_dev->base + STM32F7_I2C_OAR1);
>  	writel_relaxed(backup_regs->oar2, i2c_dev->base + STM32F7_I2C_OAR2);
>  	writel_relaxed(backup_regs->pecr, i2c_dev->base + STM32F7_I2C_PECR);
> +	stm32f7_i2c_write_fm_plus_bits(i2c_dev, 1);
>  
>  	pm_runtime_put_sync(i2c_dev->dev);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
