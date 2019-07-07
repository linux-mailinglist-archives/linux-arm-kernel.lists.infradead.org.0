Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CF4614E4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 14:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk4zjxQs825v08GsGmWGToftWtIauTy/kmdV11dd9R4=; b=mvDZvCrqK55vZI
	WquZfXNV8zuQ6O+rATC7GR3UHveex9lD2Ze37yRxPwL8Mv9R79G6lsQUptUslE0iY5+VAzwJjVVZI
	7Qqmh7UjfaMnf3f5zT1jZm+D8acd3sJcYvxkMK187aV9VM3iR0CFms+t9MWBGBFefaLKZNLqHPc3/
	HYCyzGZ2Sd1ck9icw0Fllw4vnRISWAzfaBxrfSy/s9LRWGbxWCqh22xtc3YSWc2C++5+OKJRzrn+O
	i6T3NHAEsjoyEHIJAstpy0IdIrRn2db65HpjVYK0gX3UyEyYax7+Xf+SkrkwO9c+TqANVCR9j/WVD
	pB0VHGgd2BuPfd5rKWog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk61d-0006rQ-SU; Sun, 07 Jul 2019 12:12:13 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk61F-0006mp-SM
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 12:11:51 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9A1FE5D50037484CFA55;
 Sun,  7 Jul 2019 20:11:30 +0800 (CST)
Received: from localhost (10.45.56.64) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Sun, 7 Jul 2019
 20:11:26 +0800
Date: Sun, 7 Jul 2019 13:11:23 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [Patch v2 05/10] iio: using dev_get_drvdata directly
Message-ID: <20190707131031.00000f0a@huawei.com>
In-Reply-To: <20190704023613.4643-1-huangfq.daxian@gmail.com>
References: <20190704023613.4643-1-huangfq.daxian@gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.45.56.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_051150_186770_82B825C3 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Eugen Hristev <eugen.hristev@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 10:36:13 +0800
Fuqian Huang <huangfq.daxian@gmail.com> wrote:

> Several drivers cast a struct device pointer to a struct
> platform_device pointer only to then call platform_get_drvdata().
> To improve readability, these constructs can be simplified
> by using dev_get_drvdata() directly.
> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
Hi.

I applied a version from Kefeng Wang a while back.  It'll be queued
up for the merge window that is about to open.

Thanks,

Jonathan

> ---
> Changes in v2:
>   - Make the commit message more clearly.
> 
>  drivers/iio/adc/at91-sama5d2_adc.c | 12 ++++--------
>  drivers/iio/adc/at91_adc.c         |  4 ++--
>  2 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index d384cf0250ff..a2837a0e7cba 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -1578,8 +1578,7 @@ static void at91_adc_hw_init(struct at91_adc_state *st)
>  static ssize_t at91_adc_get_fifo_state(struct device *dev,
>  				       struct device_attribute *attr, char *buf)
>  {
> -	struct iio_dev *indio_dev =
> -			platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
>  	return scnprintf(buf, PAGE_SIZE, "%d\n", !!st->dma_st.dma_chan);
> @@ -1588,8 +1587,7 @@ static ssize_t at91_adc_get_fifo_state(struct device *dev,
>  static ssize_t at91_adc_get_watermark(struct device *dev,
>  				      struct device_attribute *attr, char *buf)
>  {
> -	struct iio_dev *indio_dev =
> -			platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
>  	return scnprintf(buf, PAGE_SIZE, "%d\n", st->dma_st.watermark);
> @@ -1841,8 +1839,7 @@ static int at91_adc_remove(struct platform_device *pdev)
>  
>  static __maybe_unused int at91_adc_suspend(struct device *dev)
>  {
> -	struct iio_dev *indio_dev =
> -			platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
>  	/*
> @@ -1862,8 +1859,7 @@ static __maybe_unused int at91_adc_suspend(struct device *dev)
>  
>  static __maybe_unused int at91_adc_resume(struct device *dev)
>  {
> -	struct iio_dev *indio_dev =
> -			platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  	int ret;
>  
> diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> index d23709ed9049..32f1c4a33b20 100644
> --- a/drivers/iio/adc/at91_adc.c
> +++ b/drivers/iio/adc/at91_adc.c
> @@ -1359,7 +1359,7 @@ static int at91_adc_remove(struct platform_device *pdev)
>  #ifdef CONFIG_PM_SLEEP
>  static int at91_adc_suspend(struct device *dev)
>  {
> -	struct iio_dev *idev = platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *idev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(idev);
>  
>  	pinctrl_pm_select_sleep_state(dev);
> @@ -1370,7 +1370,7 @@ static int at91_adc_suspend(struct device *dev)
>  
>  static int at91_adc_resume(struct device *dev)
>  {
> -	struct iio_dev *idev = platform_get_drvdata(to_platform_device(dev));
> +	struct iio_dev *idev = dev_get_drvdata(dev);
>  	struct at91_adc_state *st = iio_priv(idev);
>  
>  	clk_prepare_enable(st->clk);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
