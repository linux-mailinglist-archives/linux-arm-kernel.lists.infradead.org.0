Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA39D13BC27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8JHxLddmk6JpnS5At26/5LeXWp5VMHDhwYWp0g4NXY=; b=tjCwxqXUQx6J8f
	AkAsRphjrjRKjLZ4iIawROLgf2vCh5a9ezCNWIGKdyrVo5iVuk+dhasgi7+xLvx86hROnYvE8zO30
	Znx4Lj6EKXp2NLJOM9iCyz9oKWdfc7Y5Qxa8eON+TFbiqCytuga016OdDHzuEu1wWRS+drEcVWrTm
	kajUWF/FXjL4Ui/PwPgn2xmTszGLb1UCPsId2cCi2U6GhAx68HjtxACmK4YgR2peFvIvxROAzHeq7
	3oKW6EHYc63n0RrUu8808tuP9gZxkzuSm4MCLePJJexNKw6u8qBxKa24gj4KzU7nyarkX3cq8vTcU
	bhc8EIPirtOFX/vaAqNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irekO-0000RK-8X; Wed, 15 Jan 2020 09:13:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irek6-0000QA-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:13:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00F97uiE022040; Wed, 15 Jan 2020 10:13:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ni4sk7BmfFV8dBipKNtMBnDIMCa/YeRtyCHWq5PbRVY=;
 b=nyqyk/3UYEGBTmtjj9ZyRvRRBgYzLcPz6UD5z6ZsZqucJM9tjqETmrh6h1jksBpRA2oR
 W9CxkzD2oOQPzbkd1NQOYT0FgX6x+Y6p81YX/BzY/DH+zNIgmj7wFMlwXGKiu37hsan+
 uS3L+HWaOu9kAop3iMliAUIVgxJ+hqWC7/ZSsR4IFWBSYf9tlIGNgwyjtxyiKoP23BCJ
 IJZ9bNZjZnN11oRnp+JHzsC0/kcbfX75Ul/OjfqtLx0B8V+9m8G1cw35zVQo6BoP4etH
 zaoWtuCgHFb/PysaluYxJ0XU9RtnI4VURiU5uzF+p85mEv2KFTaVbFoAMV/IxOx3zPvw 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf78saa4r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2020 10:13:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 34145100034;
 Wed, 15 Jan 2020 10:13:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1534F21CA94;
 Wed, 15 Jan 2020 10:13:21 +0100 (CET)
Received: from [10.48.1.171] (10.75.127.44) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 Jan
 2020 10:13:20 +0100
Subject: Re: [PATCH 4/6] i2c: i2c-stm32f7: add PM_SLEEP suspend/resume support
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
 <1578317314-17197-5-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <5f930987-2a15-3a82-654d-2db8fd528876@st.com>
Date: Wed, 15 Jan 2020 10:13:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1578317314-17197-5-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-15_01:2020-01-15,
 2020-01-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_011338_478056_CA268AA1 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Regards

On 1/6/20 2:28 PM, Alain Volmat wrote:
> Backup/restore I2C registers as part of the suspend/resume
> handlers. The device is marked as suspended to ensure that
> transfers are rejected during the suspended period.
> 
> Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 117 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 113 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index b2634afe066d..5c3e8ac6ad92 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -169,6 +169,24 @@
>  #define STM32F7_AUTOSUSPEND_DELAY		(HZ / 100)
>  
>  /**
> + * struct stm32f7_i2c_regs - i2c f7 registers backup
> + * @cr1: Control register 1
> + * @cr2: Control register 2
> + * @oar1: Own address 1 register
> + * @oar2: Own address 2 register
> + * @pecr: PEC register
> + * @tmgr: Timing register
> + */
> +struct stm32f7_i2c_regs {
> +	u32 cr1;
> +	u32 cr2;
> +	u32 oar1;
> +	u32 oar2;
> +	u32 pecr;
> +	u32 tmgr;
> +};
> +
> +/**
>   * struct stm32f7_i2c_spec - private i2c specification timing
>   * @rate: I2C bus speed (Hz)
>   * @rate_min: 80% of I2C bus speed (Hz)
> @@ -276,6 +294,7 @@ struct stm32f7_i2c_msg {
>   * @timing: I2C computed timings
>   * @slave: list of slave devices registered on the I2C bus
>   * @slave_running: slave device currently used
> + * @backup_regs: backup of i2c controller registers (for suspend/resume)
>   * @slave_dir: transfer direction for the current slave device
>   * @master_mode: boolean to know in which mode the I2C is running (master or
>   * slave)
> @@ -298,6 +317,7 @@ struct stm32f7_i2c_dev {
>  	struct stm32f7_i2c_timings timing;
>  	struct i2c_client *slave[STM32F7_I2C_MAX_SLAVE];
>  	struct i2c_client *slave_running;
> +	struct stm32f7_i2c_regs backup_regs;
>  	u32 slave_dir;
>  	bool master_mode;
>  	struct stm32_i2c_dma *dma;
> @@ -2027,8 +2047,7 @@ static int stm32f7_i2c_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -#ifdef CONFIG_PM
> -static int stm32f7_i2c_runtime_suspend(struct device *dev)
> +static int __maybe_unused stm32f7_i2c_runtime_suspend(struct device *dev)
>  {
>  	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
>  
> @@ -2038,7 +2057,7 @@ static int stm32f7_i2c_runtime_suspend(struct device *dev)
>  	return 0;
>  }
>  
> -static int stm32f7_i2c_runtime_resume(struct device *dev)
> +static int __maybe_unused stm32f7_i2c_runtime_resume(struct device *dev)
>  {
>  	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
>  	int ret;
> @@ -2053,11 +2072,101 @@ static int stm32f7_i2c_runtime_resume(struct device *dev)
>  
>  	return 0;
>  }
> -#endif
> +
> +static int __maybe_unused
> +stm32f7_i2c_regs_backup(struct stm32f7_i2c_dev *i2c_dev)
> +{
> +	int ret;
> +	struct stm32f7_i2c_regs *backup_regs = &i2c_dev->backup_regs;
> +
> +	ret = pm_runtime_get_sync(i2c_dev->dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	backup_regs->cr1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR1);
> +	backup_regs->cr2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR2);
> +	backup_regs->oar1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_OAR1);
> +	backup_regs->oar2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_OAR2);
> +	backup_regs->pecr = readl_relaxed(i2c_dev->base + STM32F7_I2C_PECR);
> +	backup_regs->tmgr = readl_relaxed(i2c_dev->base + STM32F7_I2C_TIMINGR);
> +
> +	pm_runtime_put_sync(i2c_dev->dev);
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused
> +stm32f7_i2c_regs_restore(struct stm32f7_i2c_dev *i2c_dev)
> +{
> +	u32 cr1;
> +	int ret;
> +	struct stm32f7_i2c_regs *backup_regs = &i2c_dev->backup_regs;
> +
> +	ret = pm_runtime_get_sync(i2c_dev->dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	cr1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR1);
> +	if (cr1 & STM32F7_I2C_CR1_PE)
> +		stm32f7_i2c_clr_bits(i2c_dev->base + STM32F7_I2C_CR1,
> +				     STM32F7_I2C_CR1_PE);
> +
> +	writel_relaxed(backup_regs->tmgr, i2c_dev->base + STM32F7_I2C_TIMINGR);
> +	writel_relaxed(backup_regs->cr1 & ~STM32F7_I2C_CR1_PE,
> +		       i2c_dev->base + STM32F7_I2C_CR1);
> +	if (backup_regs->cr1 & STM32F7_I2C_CR1_PE)
> +		stm32f7_i2c_set_bits(i2c_dev->base + STM32F7_I2C_CR1,
> +				     STM32F7_I2C_CR1_PE);
> +	writel_relaxed(backup_regs->cr2, i2c_dev->base + STM32F7_I2C_CR2);
> +	writel_relaxed(backup_regs->oar1, i2c_dev->base + STM32F7_I2C_OAR1);
> +	writel_relaxed(backup_regs->oar2, i2c_dev->base + STM32F7_I2C_OAR2);
> +	writel_relaxed(backup_regs->pecr, i2c_dev->base + STM32F7_I2C_PECR);
> +
> +	pm_runtime_put_sync(i2c_dev->dev);
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused stm32f7_i2c_suspend(struct device *dev)
> +{
> +	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
> +	int ret;
> +
> +	i2c_mark_adapter_suspended(&i2c_dev->adap);
> +	ret = stm32f7_i2c_regs_backup(i2c_dev);
> +	if (ret < 0) {
> +		i2c_mark_adapter_resumed(&i2c_dev->adap);
> +		return ret;
> +	}
> +
> +	pinctrl_pm_select_sleep_state(dev);
> +	pm_runtime_force_suspend(dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused stm32f7_i2c_resume(struct device *dev)
> +{
> +	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = pm_runtime_force_resume(dev);
> +	if (ret < 0)
> +		return ret;
> +	pinctrl_pm_select_default_state(dev);
> +
> +	ret = stm32f7_i2c_regs_restore(i2c_dev);
> +	if (ret < 0)
> +		return ret;
> +	i2c_mark_adapter_resumed(&i2c_dev->adap);
> +
> +	return 0;
> +}
>  
>  static const struct dev_pm_ops stm32f7_i2c_pm_ops = {
>  	SET_RUNTIME_PM_OPS(stm32f7_i2c_runtime_suspend,
>  			   stm32f7_i2c_runtime_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(stm32f7_i2c_suspend, stm32f7_i2c_resume)
>  };
>  
>  static const struct of_device_id stm32f7_i2c_match[] = {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
