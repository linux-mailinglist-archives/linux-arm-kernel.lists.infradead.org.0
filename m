Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F5320E54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kdr8w/j7OiOVLFEfJUPHrP69cSW9sePImhT7+kLa/7c=; b=U73P+9X1Lsin+yUIyi6OXCpIA
	zJMusl04yF0TJAjISRDOfAUULgDe8LpPWIlxIoIENvaxxGLGbFfqd2Jy+SHlIQ1V8Gwme8FREu+ac
	6CLzzU+HI05l7bMQwemEhuqwWxgx5Dbtfbr7pLYlSvobn86mPxvu/A0Q/1iZmOp/zmijqWrBUAipX
	yEC8sp6K7SMv/V8OCtB7qmDURWqabbV8a3gCxYuHIJ7XeJtWCD3AGZLXRtujP+cEHsUqP2Dzr4h3S
	924ei2hobzhXJQtRvY7cepmjzQLwd3Jeh9ew63/EyzTQTJl/GJVqL5ZVW2U2p6p8AjnGLiQ3S6CLC
	OWd1IgN0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKht-00010V-Ns; Thu, 16 May 2019 18:02:17 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKhm-0000ti-3S; Thu, 16 May 2019 18:02:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 340FA19BF;
 Thu, 16 May 2019 11:02:09 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 692343F5AF;
 Thu, 16 May 2019 11:02:07 -0700 (PDT)
Subject: Re: [PATCH v2] gnss: get serial speed from subdrivers
To: Loys Ollivier <lollivier@baylibre.com>, Johan Hovold <johan@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <1558024626-19395-1-git-send-email-lollivier@baylibre.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <69b5e90c-c1c3-9f2e-57a8-64741182a96e@arm.com>
Date: Thu, 16 May 2019 19:02:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558024626-19395-1-git-send-email-lollivier@baylibre.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_110210_155780_D9B6511B 
X-CRM114-Status: GOOD (  27.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: baylibre-upstreaming@groups.io, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Colin Ian King <colin.king@canonical.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019 17:37, Loys Ollivier wrote:
> The default serial speed was hardcoded in the code.
> Rename current-speed to default-speed.
> Add a function parameter that lets the subdrivers specify their
> default speed.
> If not specified fallback to the device-tree default-speed.
> 
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
> Hello,
> 
> This patch moves the currently hardcoded, default serial speed
> to the subdrivers.
> If the default speed is not specified by the subdriver then it is read
> from the device tree.
> 
> Changes since v1[0]
> - Use u32 data types instead of uint
> 
> [0]: https://lore.kernel.org/lkml/1557322788-10403-1-git-send-email-lollivier@baylibre.com/
> 
> Cheers,
> Loys
> 
>   drivers/gnss/mtk.c    |  7 ++++++-
>   drivers/gnss/serial.c | 21 +++++++++++++--------
>   drivers/gnss/serial.h |  3 ++-
>   drivers/gnss/ubx.c    |  3 ++-
>   4 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gnss/mtk.c b/drivers/gnss/mtk.c
> index d1fc55560daf..1d35bcb52072 100644
> --- a/drivers/gnss/mtk.c
> +++ b/drivers/gnss/mtk.c
> @@ -16,6 +16,10 @@
>   
>   #include "serial.h"
>   
> +static uint serial_speed = 9600; /* Serial speed (baud rate) */
> +module_param(serial_speed, uint, 0644);
> +MODULE_PARM_DESC(serial_speed, "Serial baud rate (bit/s), (default = 9600)");
> +
>   struct mtk_data {
>   	struct regulator *vbackup;
>   	struct regulator *vcc;
> @@ -69,7 +73,8 @@ static int mtk_probe(struct serdev_device *serdev)
>   	struct mtk_data *data;
>   	int ret;
>   
> -	gserial = gnss_serial_allocate(serdev, sizeof(*data));
> +	gserial = gnss_serial_allocate(serdev, sizeof(*data),
> +				       (u32)serial_speed);
>   	if (IS_ERR(gserial)) {
>   		ret = PTR_ERR(gserial);
>   		return ret;
> diff --git a/drivers/gnss/serial.c b/drivers/gnss/serial.c
> index def64b36d994..3be799702291 100644
> --- a/drivers/gnss/serial.c
> +++ b/drivers/gnss/serial.c
> @@ -103,17 +103,13 @@ static int gnss_serial_set_power(struct gnss_serial *gserial,
>   	return gserial->ops->set_power(gserial, state);
>   }
>   
> -/*
> - * FIXME: need to provide subdriver defaults or separate dt parsing from
> - * allocation.
> - */
>   static int gnss_serial_parse_dt(struct serdev_device *serdev)
>   {
>   	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
>   	struct device_node *node = serdev->dev.of_node;
> -	u32 speed = 4800;
> +	u32 speed;
>   
> -	of_property_read_u32(node, "current-speed", &speed);
> +	of_property_read_u32(node, "default-speed", &speed);
>   
>   	gserial->speed = speed;

Hmm, maybe it's a bit too convoluted for the compiler to warn about, but 
if a "default-speed" property is not present, gserial->speed will now be 
assigned an uninitialised value. I don't know what the intent is neither 
the driver nor the DT provides a value, but you'll either need to bring 
back the fallback initialisation above or propagate errors from 
of_property_read_u32().

Robin.

>   
> @@ -121,7 +117,8 @@ static int gnss_serial_parse_dt(struct serdev_device *serdev)
>   }
>   
>   struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
> -						size_t data_size)
> +					 size_t data_size,
> +					 u32 serial_speed)
>   {
>   	struct gnss_serial *gserial;
>   	struct gnss_device *gdev;
> @@ -146,10 +143,18 @@ struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
>   	serdev_device_set_drvdata(serdev, gserial);
>   	serdev_device_set_client_ops(serdev, &gnss_serial_serdev_ops);
>   
> -	ret = gnss_serial_parse_dt(serdev);
> +	/* Serial speed provided by subdriver takes precedence over dt*/
> +	if (!serial_speed)
> +		ret = gnss_serial_parse_dt(serdev);
> +	else
> +		gserial->speed = serial_speed;
> +
>   	if (ret)
>   		goto err_put_device;
>   
> +	if (!gserial->speed)
> +		return -EINVAL;
> +
>   	return gserial;
>   
>   err_put_device:
> diff --git a/drivers/gnss/serial.h b/drivers/gnss/serial.h
> index 980ffdc86c2a..17df61e399e6 100644
> --- a/drivers/gnss/serial.h
> +++ b/drivers/gnss/serial.h
> @@ -33,7 +33,8 @@ struct gnss_serial_ops {
>   extern const struct dev_pm_ops gnss_serial_pm_ops;
>   
>   struct gnss_serial *gnss_serial_allocate(struct serdev_device *gserial,
> -						size_t data_size);
> +					 size_t data_size,
> +					 u32 serial_speed);
>   void gnss_serial_free(struct gnss_serial *gserial);
>   
>   int gnss_serial_register(struct gnss_serial *gserial);
> diff --git a/drivers/gnss/ubx.c b/drivers/gnss/ubx.c
> index 7b05bc40532e..52ae6e4987e0 100644
> --- a/drivers/gnss/ubx.c
> +++ b/drivers/gnss/ubx.c
> @@ -68,8 +68,9 @@ static int ubx_probe(struct serdev_device *serdev)
>   	struct gnss_serial *gserial;
>   	struct ubx_data *data;
>   	int ret;
> +	u32 speed = 4800;
>   
> -	gserial = gnss_serial_allocate(serdev, sizeof(*data));
> +	gserial = gnss_serial_allocate(serdev, sizeof(*data), speed);
>   	if (IS_ERR(gserial)) {
>   		ret = PTR_ERR(gserial);
>   		return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
