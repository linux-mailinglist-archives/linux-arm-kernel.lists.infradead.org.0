Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5180B13DE47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yLDYs4bRQ0QdSINk139EUUCVLxmj3UmCu6ogtt4VGYw=; b=kEG0mgfiBxYsoeP6oxl8t5bm1
	k4RcJblcd0Aj/BOJYuP22sbJ2OfnNtloffQhCgDzGwoWv49HRq7PzNucpjJGw2H62THENI/2PeIGB
	ZpTzKoyzACe23DYcSrIAAfdFHwPpkgRpH8Nb74XZhWsYvinA4yEJc4KIc0Lwh5dRJZ446EfbqqknT
	43ZRsq9REmFtA90Q4oUuf/6qr0Gkx+RfQeOFsc+Wb8uLXjWGEMfKtF45HTDHv6JvkzZVClxK8TqeB
	NcmSkx++X/9UDAqkpcy1g55R/Wp/Jgu8lm29Rp6yrCV6ng08Go/RfaO2yCcwbvu0mVJsdjt8zD+57
	bRVUl8kXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6k5-00028F-Jz; Thu, 16 Jan 2020 15:07:29 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6ju-00027C-Hj
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:07:23 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e11so1715279pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vjxcdMtJ7Oexv+w5Dwu8AKI8PT0pyBlB7MnZKY70u2g=;
 b=l4SxvugDg0fLlOIXOafZ1g4C5s2UV1MESOmBy0guCzBET0HgG/OBkvxLgb66OjpiIa
 SzS3TyXQE3eC2bqIa1MoE+zD7NPSlm6R38D+oSwG6nWSyJ7lzb46WFcCX4hnAwIpjiHp
 6iLQFPvz4qMB8DZjaKjhAV+CHsd4M4RpBmioqgI2ZB7mtWlcxa/JQfLCjtNFbfdxbA8/
 9M/1H/TcyUkH2xObNpLiwbxO3icJIP0XAb6YFCZM8cfzyk7WTGEFd06wsHZsI8TRh9T+
 hXEPfcyMfACwuVFI00wwn38TNAowkb8DcW16gP/VLAUAaRWEYmq61ZVs1yh5r3veuhUJ
 9XRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vjxcdMtJ7Oexv+w5Dwu8AKI8PT0pyBlB7MnZKY70u2g=;
 b=YKYza2eeU1Qs0B+XgGLebAu8qofIcgNnFv+kIVglSdCggYb7XWGK0ilOgl/NnIu8kl
 F8MkJRgFX2VhFFzw6oHyW3vEM8E4y9LzRWu9Dh5QMl67Svbc2l/7utVBp77XjKMkgYMy
 ZKalRnL6edAwwkSU086EIq2YcM44zXW8LyCBx8yUSKNjjsh6pVzVRgVhUHkmXDivlhJz
 j+o4WWoE6UomByEsBrDcXRZs/Ce7cyi3zYdzBmMlemogExSRRqf+eUjVAdV/zE3F7pPY
 JWENl8fWLnV0xGKoYXfyF6SQzWAFhHDwtMSx7sOW41R5pe9GhSyEhrjLyGRF1hx5/wZs
 inZg==
X-Gm-Message-State: APjAAAXtBU7oA/kM8DmD/50+1KeWgEW8ZiVUej7OQfdyyEbHL2sCj2M6
 /hi4Pb4VbYojrByrZINOiFQ=
X-Google-Smtp-Source: APXvYqzFr7XTWY65mFhGJamleS49FRXRWBoQFLo5MgZafwRm4viQsiyF+KrXj0p/XcfgFMlPWIjoQQ==
X-Received: by 2002:a17:902:6b4b:: with SMTP id
 g11mr37834417plt.26.1579187237843; 
 Thu, 16 Jan 2020 07:07:17 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 c68sm26272677pfc.156.2020.01.16.07.07.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 07:07:17 -0800 (PST)
Subject: Re: [PATCH 7/9] watchdog: of_xilinx_wdt: Add Versal support
To: Srinivas Neeli <srinivas.neeli@xilinx.com>, michal.simek@xilinx.com,
 shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
 <1579181217-31127-8-git-send-email-srinivas.neeli@xilinx.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <55d1e8d6-abed-6d6a-614a-435e84e64f05@roeck-us.net>
Date: Thu, 16 Jan 2020 07:07:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1579181217-31127-8-git-send-email-srinivas.neeli@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_070718_591719_F975F71F 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/20 5:26 AM, Srinivas Neeli wrote:
> From: Srinivas Goud <srinivas.goud@xilinx.com>
> 
> Versal watchdog driver uses generic watchdog mode.
> Generic watchdog contains closed and open window of equal timeout.
> Generic watchdog will generate reset signal if it is not explicitly
> refreshed in second window.
> 

WHy don't you just implement a separate driver for this watchdog ?
It seems to be completely different. I don't immediately see the
benefit of having a single driver. If there is one, please explain
in detail.

Thanks,
Guenter

> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> ---
>   drivers/watchdog/of_xilinx_wdt.c | 150 ++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 149 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
> index 3b93b60f1a00..d2c389d9eaa7 100644
> --- a/drivers/watchdog/of_xilinx_wdt.c
> +++ b/drivers/watchdog/of_xilinx_wdt.c
> @@ -2,7 +2,7 @@
>   /*
>    * Watchdog Device Driver for Xilinx axi/xps_timebase_wdt
>    *
> - * (C) Copyright 2013 - 2014 Xilinx, Inc.
> + * (C) Copyright 2013 - 2020 Xilinx, Inc.
>    * (C) Copyright 2011 (Alejandro Cabrera <aldaya@gmail.com>)
>    */
>   
> @@ -18,10 +18,19 @@
>   #include <linux/of_device.h>
>   #include <linux/of_address.h>
>   
> +#define XWT_WWDT_MIN_TIMEOUT		1
> +#define XWT_WWDT_MAX_TIMEOUT		80
> +
>   /* Register offsets for the Wdt device */
>   #define XWT_TWCSR0_OFFSET   0x0 /* Control/Status Register0 */
>   #define XWT_TWCSR1_OFFSET   0x4 /* Control/Status Register1 */
>   #define XWT_TBR_OFFSET      0x8 /* Timebase Register Offset */
> +#define XWT_WWREF_OFFSET	0x1000 /* Refresh Register */
> +#define XWT_WWCSR_OFFSET	0x2000 /* Control/Status Register */
> +#define XWT_WWOFF_OFFSET	0x2008 /* Offset Register */
> +#define XWT_WWCMP0_OFFSET	0x2010 /* Compare Value Register0 */
> +#define XWT_WWCMP1_OFFSET	0x2014 /* Compare Value Register1 */
> +#define XWT_WWWRST_OFFSET	0x2FD0 /* Warm Reset Register */
>   
>   /* Control/Status Register Masks  */
>   #define XWT_CSR0_WRS_MASK	BIT(3) /* Reset status */
> @@ -31,6 +40,15 @@
>   /* Control/Status Register 0/1 bits  */
>   #define XWT_CSRX_EWDT2_MASK	BIT(0) /* Enable bit 2 */
>   
> +/* Refresh Register Masks */
> +#define XWT_WWREF_GWRR_MASK	BIT(0) /* Refresh and start new period */
> +
> +/* Generic Control/Status Register Masks  */
> +#define XWT_WWCSR_GWEN_MASK	BIT(0) /* Enable Bit */
> +
> +/* Warm Reset Register Masks */
> +#define XWT_WWRST_GWWRR_MASK	BIT(0) /* Warm Reset Register */
> +
>   /* SelfTest constants */
>   #define XWT_MAX_SELFTEST_LOOP_COUNT 0x00010000
>   #define XWT_TIMER_FAILED            0xFFFFFFFF
> @@ -41,9 +59,11 @@
>    * enum xwdt_ip_type - WDT IP type.
>    *
>    * @XWDT_WDT: Soft wdt ip.
> + * @XWDT_WWDT: Window wdt ip.
>    */
>   enum xwdt_ip_type {
>   	XWDT_WDT = 0,
> +	XWDT_WWDT,
>   };
>   
>   struct xwdt_devtype_data {
> @@ -145,6 +165,126 @@ static const struct watchdog_ops xilinx_wdt_ops = {
>   	.ping = xilinx_wdt_keepalive,
>   };
>   
> +static int xilinx_wwdt_start(struct watchdog_device *wdd)
> +{
> +	int ret;
> +	u32 control_status_reg;
> +	u64 count;
> +	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
> +	struct watchdog_device *xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
> +
> +	unsigned long clock_f = clk_get_rate(xdev->clk);
> +
> +	/* Calculate timeout count */
> +	count = wdd->timeout * clock_f;
> +	ret  = clk_enable(xdev->clk);
> +	if (ret) {
> +		dev_err(wdd->parent, "Failed to enable clock\n");
> +		return ret;
> +	}
> +
> +	spin_lock(&xdev->spinlock);
> +
> +	/*
> +	 * Timeout count is half as there are two windows
> +	 * first window overflow is ignored (interrupt),
> +	 * reset is only generated at second window overflow
> +	 */
> +	count = count >> 1;
> +
> +	/* Disable the generic watchdog timer */
> +	control_status_reg = ioread32(xdev->base + XWT_WWCSR_OFFSET);
> +	control_status_reg &= ~(XWT_WWCSR_GWEN_MASK);
> +	iowrite32(control_status_reg, xdev->base + XWT_WWCSR_OFFSET);
> +
> +	/* Set compare and offset registers for generic watchdog timeout */
> +	iowrite32((u32)count, xdev->base + XWT_WWCMP0_OFFSET);
> +	iowrite32((u32)0, xdev->base + XWT_WWCMP1_OFFSET);
> +	iowrite32((u32)count, xdev->base + XWT_WWOFF_OFFSET);
> +
> +	/* Enable the generic watchdog timer */
> +	control_status_reg = ioread32(xdev->base + XWT_WWCSR_OFFSET);
> +	control_status_reg |= (XWT_WWCSR_GWEN_MASK);
> +	iowrite32(control_status_reg, xdev->base + XWT_WWCSR_OFFSET);
> +
> +	spin_unlock(&xdev->spinlock);
> +
> +	dev_dbg(xilinx_wdt_wdd->parent, "Watchdog Started!\n");
> +
> +	return 0;
> +}
> +
> +static int xilinx_wwdt_stop(struct watchdog_device *wdd)
> +{
> +	u32 control_status_reg;
> +	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
> +	struct watchdog_device *xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
> +
> +	spin_lock(&xdev->spinlock);
> +
> +	/* Disable the generic watchdog timer */
> +	control_status_reg = ioread32(xdev->base + XWT_WWCSR_OFFSET);
> +	control_status_reg &= ~(XWT_WWCSR_GWEN_MASK);
> +	iowrite32(control_status_reg, xdev->base + XWT_WWCSR_OFFSET);
> +
> +	spin_unlock(&xdev->spinlock);
> +
> +	clk_disable(xdev->clk);
> +
> +	dev_dbg(xilinx_wdt_wdd->parent, "Watchdog Stopped!\n");
> +
> +	return 0;
> +}
> +
> +static int xilinx_wwdt_keepalive(struct watchdog_device *wdd)
> +{
> +	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
> +
> +	spin_lock(&xdev->spinlock);
> +
> +	iowrite32(XWT_WWREF_GWRR_MASK, xdev->base + XWT_WWREF_OFFSET);
> +
> +	spin_unlock(&xdev->spinlock);
> +
> +	return 0;
> +}
> +
> +static int xilinx_wwdt_set_timeout(struct watchdog_device *wdd,
> +				   unsigned int new_time)
> +{
> +	struct xwdt_device *xdev = watchdog_get_drvdata(wdd);
> +	struct watchdog_device *xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
> +
> +	if (new_time < XWT_WWDT_MIN_TIMEOUT ||
> +	    new_time > XWT_WWDT_MAX_TIMEOUT) {
> +		dev_warn(xilinx_wdt_wdd->parent,
> +			 "timeout value must be %d<=x<=%d, using %d\n",
> +				XWT_WWDT_MIN_TIMEOUT,
> +				XWT_WWDT_MAX_TIMEOUT, new_time);
> +		return -EINVAL;
> +	}
> +
> +	wdd->timeout = new_time;
> +
> +	return xilinx_wwdt_start(wdd);
> +}
> +
> +static const struct watchdog_info xilinx_wwdt_ident = {
> +	.options =  WDIOF_MAGICCLOSE |
> +		WDIOF_KEEPALIVEPING |
> +		WDIOF_SETTIMEOUT,
> +	.firmware_version =	1,
> +	.identity = "xlnx_wwdt watchdog",
> +};
> +
> +static const struct watchdog_ops xilinx_wwdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = xilinx_wwdt_start,
> +	.stop = xilinx_wwdt_stop,
> +	.ping = xilinx_wwdt_keepalive,
> +	.set_timeout = xilinx_wwdt_set_timeout,
> +};
> +
>   static u32 xwdt_selftest(struct xwdt_device *xdev)
>   {
>   	int i;
> @@ -181,11 +321,19 @@ static const struct xwdt_devtype_data xwdt_wdt_data = {
>   	.xwdt_ops = &xilinx_wdt_ops,
>   };
>   
> +static const struct xwdt_devtype_data xwdt_wwdt_data = {
> +	.wdttype = XWDT_WWDT,
> +	.xwdt_info = &xilinx_wwdt_ident,
> +	.xwdt_ops = &xilinx_wwdt_ops,
> +};
> +
>   static const struct of_device_id xwdt_of_match[] = {
>   	{ .compatible = "xlnx,xps-timebase-wdt-1.00.a",
>   		.data = &xwdt_wdt_data },
>   	{ .compatible = "xlnx,xps-timebase-wdt-1.01.a",
>   		.data = &xwdt_wdt_data },
> +	{ .compatible = "xlnx,versal-wwdt-1.0",
> +		.data = &xwdt_wwdt_data },
>   	{},
>   };
>   MODULE_DEVICE_TABLE(of, xwdt_of_match);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
