Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EA94C974
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9826D+e4wlzQK8qxE9OdQpLz/6ky5HXRWZTf/qMNUs=; b=bNpU6+wOwuYtXn
	kkaNHiBVyX42/pOImyWjCrUUc99rkubVGcT9IBAD1vkflUFwB3x3D5BY1JfmdbIQQ9Rlmf0Uo87Ll
	p1hwU7nph8h+EJoZ6Eh8MMz8jDQclrXxwVIj1W6BBu4JEDPavaVU0qIM2XcCgp6D1HvwuvoFr6S09
	77zpoAOrhbxNvmpM9lXYnSgkWH8vfRX4hJIS0lCYUSlliN43uWukD8vSg02FHMaWe3KDMZaBWYtqE
	CHh4a2XpUt64wPMBayYObAP0YWevDbiLYyGgs/AMonj9BUvqigi3QXAQ85rl8adnTsCCXL1QDONUM
	EZm8at2PmZXJGMlApKuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsQM-0005dL-7c; Thu, 20 Jun 2019 08:28:02 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsQ9-0005cZ-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:27:51 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 226F420000F;
 Thu, 20 Jun 2019 08:27:36 +0000 (UTC)
Date: Thu, 20 Jun 2019 10:27:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 3/5] i2c: at91: add support for digital filtering
Message-ID: <20190620082736.GS23549@piout.net>
References: <1561014676-22446-1-git-send-email-eugen.hristev@microchip.com>
 <1561014676-22446-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561014676-22446-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_012749_898768_84239A60 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/06/2019 07:16:13+0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add new platform data support for digital filtering for i2c.
> The sama5d4, sama5d2 and sam9x60 support this feature.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  drivers/i2c/busses/i2c-at91-core.c   | 9 +++++++++
>  drivers/i2c/busses/i2c-at91-master.c | 6 ++++++
>  drivers/i2c/busses/i2c-at91.h        | 4 ++++
>  3 files changed, 19 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index a663a7a..62610af 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -68,6 +68,7 @@ static struct at91_twi_pdata at91rm9200_config = {
>  	.has_unre_flag = true,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,

As false is the default value, may we should avoid setting it
explicitly to keep the file size manageable.

>  };
>  
>  static struct at91_twi_pdata at91sam9261_config = {
> @@ -76,6 +77,7 @@ static struct at91_twi_pdata at91sam9261_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9260_config = {
> @@ -84,6 +86,7 @@ static struct at91_twi_pdata at91sam9260_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g20_config = {
> @@ -92,6 +95,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g10_config = {
> @@ -100,6 +104,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,
>  };
>  
>  static const struct platform_device_id at91_twi_devtypes[] = {
> @@ -130,6 +135,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = false,
> +	.has_dig_filtr = false,
>  };
>  
>  static struct at91_twi_pdata sama5d4_config = {
> @@ -138,6 +144,7 @@ static struct at91_twi_pdata sama5d4_config = {
>  	.has_unre_flag = false,
>  	.has_alt_cmd = false,
>  	.has_hold_field = true,
> +	.has_dig_filtr = true,
>  };
>  
>  static struct at91_twi_pdata sama5d2_config = {
> @@ -146,6 +153,7 @@ static struct at91_twi_pdata sama5d2_config = {
>  	.has_unre_flag = true,
>  	.has_alt_cmd = true,
>  	.has_hold_field = true,
> +	.has_dig_filtr = true,
>  };
>  
>  static struct at91_twi_pdata sam9x60_config = {
> @@ -154,6 +162,7 @@ static struct at91_twi_pdata sam9x60_config = {
>  	.has_unre_flag = true,
>  	.has_alt_cmd = true,
>  	.has_hold_field = true,
> +	.has_dig_filtr = true,
>  };
>  
>  static const struct of_device_id atmel_twi_dt_ids[] = {
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index e87232f..366e90f 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -31,12 +31,18 @@
>  
>  void at91_init_twi_bus_master(struct at91_twi_dev *dev)
>  {
> +	struct at91_twi_pdata *pdata = dev->pdata;
> +
>  	/* FIFO should be enabled immediately after the software reset */
>  	if (dev->fifo_size)
>  		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_FIFOEN);
>  	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSEN);
>  	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
>  	at91_twi_write(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
> +
> +	/* enable digital filter */
> +	if (pdata->has_dig_filtr)
> +		at91_twi_write(dev, AT91_TWI_FILTR, AT91_TWI_FILTR_FILT);

You are enabling all those filtering features by default which mean that
if we ever need to handle them using DT, the property will be a
disabling one instead of a more logical enabling one.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
