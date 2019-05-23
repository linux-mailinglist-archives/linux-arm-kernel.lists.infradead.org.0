Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFB627783
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvutj6CHli3xpfSX+PROuTUvrInBViURAPpP6NkyMB0=; b=jt3d2mU+cginrQ
	ie9ZDbKZ2tq3rcyv7dpxP6LQ60t+3w/llQA6SomQj9pCDVFKV6/xFMfv8//d9DjczN9m7/xkEmotS
	FWnHlaW7KB01vEac1/KGM3W2TaLr5HRswKz7Jisyw8Q91rJHHd56UAHHu2+zUnBvTFHrczGQLm+nk
	LfWBUvoGmDkR96lx7Cy5WlTW7y7VDK3V9vrjZ0W/Jkr3c1EIyS0ToPkXqfqCfsNOcDnfowh1pgxfd
	7eTEljPk9fCw8MGY2f4By9XlRl0euXeN16KKk3PCMv6X3eyVa9e1U+SQah5gFjvbGjvukGVvp+5/4
	2qnDOL20QNet/6ovfGjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiYs-0006Mt-AQ; Thu, 23 May 2019 07:54:50 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiYj-0006M5-NI
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:54:43 +0000
Received: from pendragon.ideasonboard.com (85-76-106-214-nat.elisa-mobile.fi
 [85.76.106.214])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C11DB337;
 Thu, 23 May 2019 09:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1558598078;
 bh=dU/mJ1aukZubatyFnvvf7TFqfO/hWUhosSC2Ax4I6rg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c0fRSrDVQQDjKQkW5BbtIenYInPYHiOMGE0fvkvSi9cmNTZYNt+WlJbvbgfFXfLWm
 e+MhxWEGgOzDhesMzRDeJSimKzhgqCwgqECUaDXjhjhxgKmlBNtm+w0MuzqfTZ6LoY
 8ujoW4QzA9UZA3Avahlbnru17EuceT6KDq4fxOqU=
Date: Thu, 23 May 2019 10:54:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 3/6] drm/bridge: extract some Analogix I2C DP common code
Message-ID: <20190523075417.GB5971@pendragon.ideasonboard.com>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065352.8FD7668B05@newverein.lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523065352.8FD7668B05@newverein.lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_005442_061653_F52E51BF 
X-CRM114-Status: GOOD (  27.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Torsten,

Thank you for the patch.

On Thu, May 23, 2019 at 08:53:52AM +0200, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> 
> Some code can be shared within different DP bridges by Analogix.
> 
> Extract them to a new module.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
>  drivers/gpu/drm/bridge/analogix/Kconfig            |   4 +
>  drivers/gpu/drm/bridge/analogix/Makefile           |   2 +
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 146 +-----------------
>  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    | 169 +++++++++++++++++++++
>  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    |   2 +
>  5 files changed, 178 insertions(+), 145 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> index c4d343a2f04d..ed2d05c12546 100644
> --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_ANALOGIX_ANX78XX
>  	tristate "Analogix ANX78XX bridge"
> +	select DRM_ANALOGIX_DP_I2C
>  	select DRM_KMS_HELPER
>  	select REGMAP_I2C
>  	help
> @@ -11,3 +12,6 @@ config DRM_ANALOGIX_ANX78XX
>  config DRM_ANALOGIX_DP
>  	tristate
>  	depends on DRM
> +
> +config DRM_ANALOGIX_DP_I2C
> +	tristate
> diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
> index ce1687e60975..2d523b67487d 100644
> --- a/drivers/gpu/drm/bridge/analogix/Makefile
> +++ b/drivers/gpu/drm/bridge/analogix/Makefile
> @@ -1,4 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
> +analogix_dp_i2c-objs := analogix-i2c-dptx.o
>  obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
>  obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
> +obj-$(CONFIG_DRM_ANALOGIX_DP_I2C) += analogix_dp_i2c.o

Do we need a separate module for this, or could it be included in
analogix_dp ?

> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> index f8433c93f463..bf8291d0ddd0 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> @@ -45,8 +45,6 @@
>  #define I2C_IDX_RX_P1		4
>  
>  #define XTAL_CLK		270 /* 27M */
> -#define AUX_CH_BUFFER_SIZE	16
> -#define AUX_WAIT_TIMEOUT_MS	15
>  
>  static const u8 anx78xx_i2c_addresses[] = {
>  	[I2C_IDX_TX_P0] = TX_P0,
> @@ -109,153 +107,11 @@ static int anx78xx_clear_bits(struct regmap *map, u8 reg, u8 mask)
>  	return regmap_update_bits(map, reg, mask, 0);
>  }
>  
> -static bool anx78xx_aux_op_finished(struct anx78xx *anx78xx)
> -{
> -	unsigned int value;
> -	int err;
> -
> -	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
> -			  &value);
> -	if (err < 0)
> -		return false;
> -
> -	return (value & SP_AUX_EN) == 0;
> -}
> -
> -static int anx78xx_aux_wait(struct anx78xx *anx78xx)
> -{
> -	unsigned long timeout;
> -	unsigned int status;
> -	int err;
> -
> -	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
> -
> -	while (!anx78xx_aux_op_finished(anx78xx)) {
> -		if (time_after(jiffies, timeout)) {
> -			if (!anx78xx_aux_op_finished(anx78xx)) {
> -				DRM_ERROR("Timed out waiting AUX to finish\n");
> -				return -ETIMEDOUT;
> -			}
> -
> -			break;
> -		}
> -
> -		usleep_range(1000, 2000);
> -	}
> -
> -	/* Read the AUX channel access status */
> -	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
> -			  &status);
> -	if (err < 0) {
> -		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
> -		return err;
> -	}
> -
> -	if (status & SP_AUX_STATUS) {
> -		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
> -			  status);
> -		return -ETIMEDOUT;
> -	}
> -
> -	return 0;
> -}
> -
> -static int anx78xx_aux_address(struct anx78xx *anx78xx, unsigned int addr)
> -{
> -	int err;
> -
> -	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_7_0_REG,
> -			   addr & 0xff);
> -	if (err)
> -		return err;
> -
> -	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_15_8_REG,
> -			   (addr & 0xff00) >> 8);
> -	if (err)
> -		return err;
> -
> -	/*
> -	 * DP AUX CH Address Register #2, only update bits[3:0]
> -	 * [7:4] RESERVED
> -	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
> -	 */
> -	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
> -				 SP_AUX_ADDR_19_16_REG,
> -				 SP_AUX_ADDR_19_16_MASK,
> -				 (addr & 0xf0000) >> 16);
> -
> -	if (err)
> -		return err;
> -
> -	return 0;
> -}
> -
>  static ssize_t anx78xx_aux_transfer(struct drm_dp_aux *aux,
>  				    struct drm_dp_aux_msg *msg)
>  {
>  	struct anx78xx *anx78xx = container_of(aux, struct anx78xx, aux);
> -	u8 ctrl1 = msg->request;
> -	u8 ctrl2 = SP_AUX_EN;
> -	u8 *buffer = msg->buffer;
> -	int err;
> -
> -	/* The DP AUX transmit and receive buffer has 16 bytes. */
> -	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
> -		return -E2BIG;
> -
> -	/* Zero-sized messages specify address-only transactions. */
> -	if (msg->size < 1)
> -		ctrl2 |= SP_ADDR_ONLY;
> -	else	/* For non-zero-sized set the length field. */
> -		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
> -
> -	if ((msg->request & DP_AUX_I2C_READ) == 0) {
> -		/* When WRITE | MOT write values to data buffer */
> -		err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P0],
> -					SP_DP_BUF_DATA0_REG, buffer,
> -					msg->size);
> -		if (err)
> -			return err;
> -	}
> -
> -	/* Write address and request */
> -	err = anx78xx_aux_address(anx78xx, msg->address);
> -	if (err)
> -		return err;
> -
> -	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL1_REG,
> -			   ctrl1);
> -	if (err)
> -		return err;
> -
> -	/* Start transaction */
> -	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
> -				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY |
> -				 SP_AUX_EN, ctrl2);
> -	if (err)
> -		return err;
> -
> -	err = anx78xx_aux_wait(anx78xx);
> -	if (err)
> -		return err;
> -
> -	msg->reply = DP_AUX_I2C_REPLY_ACK;
> -
> -	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
> -		/* Read values from data buffer */
> -		err = regmap_bulk_read(anx78xx->map[I2C_IDX_TX_P0],
> -				       SP_DP_BUF_DATA0_REG, buffer,
> -				       msg->size);
> -		if (err)
> -			return err;
> -	}
> -
> -	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
> -				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
> -	if (err)
> -		return err;
> -
> -	return msg->size;
> +	return anx_aux_transfer(anx78xx->map[I2C_IDX_TX_P0], msg);
>  }
>  
>  static int anx78xx_set_hpd(struct anx78xx *anx78xx)
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> new file mode 100644
> index 000000000000..9cb30962032e
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright(c) 2017 Icenowy Zheng <icenowy@aosc.io>
> + *
> + * Based on analogix-anx78xx.c, which is:
> + *   Copyright(c) 2016, Analogix Semiconductor. All rights reserved.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +#include <drm/drm.h>
> +#include <drm/drmP.h>
> +#include <drm/drm_dp_helper.h>
> +
> +#include "analogix-i2c-dptx.h"
> +
> +#define AUX_WAIT_TIMEOUT_MS	15
> +#define AUX_CH_BUFFER_SIZE	16
> +
> +static int anx_clear_bits(struct regmap *map, u8 reg, u8 mask)
> +{
> +	return regmap_update_bits(map, reg, mask, 0);
> +}
> +
> +static bool anx_aux_op_finished(struct regmap *map_dptx)
> +{
> +	unsigned int value;
> +	int err;
> +
> +	err = regmap_read(map_dptx, SP_DP_AUX_CH_CTRL2_REG, &value);
> +	if (err < 0)
> +		return false;
> +
> +	return (value & SP_AUX_EN) == 0;
> +}
> +
> +static int anx_aux_wait(struct regmap *map_dptx)
> +{
> +	unsigned long timeout;
> +	unsigned int status;
> +	int err;
> +
> +	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
> +
> +	while (!anx_aux_op_finished(map_dptx)) {
> +		if (time_after(jiffies, timeout)) {
> +			if (!anx_aux_op_finished(map_dptx)) {
> +				DRM_ERROR("Timed out waiting AUX to finish\n");
> +				return -ETIMEDOUT;
> +			}
> +
> +			break;
> +		}
> +
> +		usleep_range(1000, 2000);
> +	}
> +
> +	/* Read the AUX channel access status */
> +	err = regmap_read(map_dptx, SP_AUX_CH_STATUS_REG, &status);
> +	if (err < 0) {
> +		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
> +		return err;
> +	}
> +
> +	if (status & SP_AUX_STATUS) {
> +		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
> +			  status);
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int anx_aux_address(struct regmap *map_dptx, unsigned int addr)
> +{
> +	int err;
> +
> +	err = regmap_write(map_dptx, SP_AUX_ADDR_7_0_REG, addr & 0xff);
> +	if (err)
> +		return err;
> +
> +	err = regmap_write(map_dptx, SP_AUX_ADDR_15_8_REG,
> +			   (addr & 0xff00) >> 8);
> +	if (err)
> +		return err;
> +
> +	/*
> +	 * DP AUX CH Address Register #2, only update bits[3:0]
> +	 * [7:4] RESERVED
> +	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
> +	 */
> +	err = regmap_update_bits(map_dptx, SP_AUX_ADDR_19_16_REG,
> +				 SP_AUX_ADDR_19_16_MASK,
> +				 (addr & 0xf0000) >> 16);
> +
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
> +
> +ssize_t anx_aux_transfer(struct regmap *map_dptx, struct drm_dp_aux_msg *msg)
> +{
> +	u8 ctrl1 = msg->request;
> +	u8 ctrl2 = SP_AUX_EN;
> +	u8 *buffer = msg->buffer;
> +	int err;
> +
> +	/* The DP AUX transmit and receive buffer has 16 bytes. */
> +	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
> +		return -E2BIG;
> +
> +	/* Zero-sized messages specify address-only transactions. */
> +	if (msg->size < 1)
> +		ctrl2 |= SP_ADDR_ONLY;
> +	else	/* For non-zero-sized set the length field. */
> +		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
> +
> +	if ((msg->request & DP_AUX_I2C_READ) == 0) {
> +		/* When WRITE | MOT write values to data buffer */
> +		err = regmap_bulk_write(map_dptx,
> +					SP_DP_BUF_DATA0_REG, buffer,
> +					msg->size);
> +		if (err)
> +			return err;
> +	}
> +
> +	/* Write address and request */
> +	err = anx_aux_address(map_dptx, msg->address);
> +	if (err)
> +		return err;
> +
> +	err = regmap_write(map_dptx, SP_DP_AUX_CH_CTRL1_REG, ctrl1);
> +	if (err)
> +		return err;
> +
> +	/* Start transaction */
> +	err = regmap_update_bits(map_dptx, SP_DP_AUX_CH_CTRL2_REG,
> +				 SP_ADDR_ONLY | SP_AUX_EN, ctrl2);
> +	if (err)
> +		return err;
> +
> +	err = anx_aux_wait(map_dptx);
> +	if (err)
> +		return err;
> +
> +	msg->reply = DP_AUX_I2C_REPLY_ACK;
> +
> +	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
> +		/* Read values from data buffer */
> +		err = regmap_bulk_read(map_dptx,
> +				       SP_DP_BUF_DATA0_REG, buffer,
> +				       msg->size);
> +		if (err)
> +			return err;
> +	}
> +
> +	err = anx_clear_bits(map_dptx, SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
> +	if (err)
> +		return err;
> +
> +	return msg->size;
> +}
> +EXPORT_SYMBOL(anx_aux_transfer);

As the code license is GPL and the analogic DP core core is exported
with EXPORT_SYMBOL_GPL, should it be the case here too ?

> +
> +MODULE_DESCRIPTION("Analogix DisplayPort Transmitter common code");
> +MODULE_AUTHOR("Icenowy Zheng <icenowy@aosc.io>");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
> index bc0831b127bf..c2ca854613a0 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
> @@ -245,4 +245,6 @@
>  /* DP AUX Buffer Data Registers */
>  #define SP_DP_BUF_DATA0_REG		0xf0
>  
> +ssize_t anx_aux_transfer(struct regmap *map_dptx, struct drm_dp_aux_msg *msg);

The name is a bit generic, should it be anx_dp_aux_transfer() ?

> +
>  #endif

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
