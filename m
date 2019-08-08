Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26B88642E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nj25vAROEkZQtl66YaFnW72V3BmnRp6FiJ5HU86PxC0=; b=JYq6MRdnPLgQJh
	oYgSYOdFQ+v/MW2a+crEb5Ca2EdiKQMhgPgQ94juyP64BnZT9QejhmyXSb8yeVks/WPzaqvUxXnzJ
	bpg/kZyQRSd8BzKrhmlhGccWV/Pk1qcKKKx9r5xQ4PoF/WPhHOWmvOBUAPICJsd7o5wmGviBL16cS
	dBH7wsIaLL0oLfgl+wwYykR3PJ/g7OxWcD6XN8VBGm9fa9ACc75J1BrB7BbHLuu0PtOJjOMOufdwS
	QSqBXEiO5HZEk/Hu/5nvnrymXEk6VOfPE1MZcVaDmfbn/BwnFa+UOeCUJ5uHmMPRI7sJAzoveAg7l
	R3s7hmdMPGlVETBcUUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjFU-0002Jy-Mb; Thu, 08 Aug 2019 14:18:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjFK-0002JC-1R
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:18:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hvjFE-0001VL-FP; Thu, 08 Aug 2019 16:18:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hvjF8-0005Fs-S5; Thu, 08 Aug 2019 16:18:14 +0200
Date: Thu, 8 Aug 2019 16:18:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: i2c: imx: support slave mode for imx I2C driver
Message-ID: <20190808141814.wr4hlmbaek6p7dy2@pengutronix.de>
References: <20190808035343.34120-1-biwen.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808035343.34120-1-biwen.li@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:40:58 up 31 days, 19:51, 60 users,  load average: 0.46, 0.27, 0.21
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_071826_252817_55778EB5 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wsa@the-dreams.de, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de, laurentiu.tudor@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Aug 08, 2019 at 11:53:43AM +0800, Biwen Li wrote:
> The patch supports slave mode for imx I2C driver
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
>  drivers/i2c/busses/i2c-imx.c | 199 ++++++++++++++++++++++++++++++++---
>  1 file changed, 185 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index b1b8b938d7f4..f7583a9fa56f 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -202,6 +202,9 @@ struct imx_i2c_struct {
>  	struct pinctrl_state *pinctrl_pins_gpio;
>  
>  	struct imx_i2c_dma	*dma;
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +	struct i2c_client		*slave;
> +#endif /* CONFIG_I2C_SLAVE */

Other drivers just do a "select I2C_SLAVE" in Kconfig to get rid of
these #ifs. We should do the same.

>  };
>  
>  static const struct imx_i2c_hwdata imx1_i2c_hwdata = {
> @@ -583,23 +586,40 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
>  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
>  }
>  
> -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> +/* Clear interrupt flag bit */
> +static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
>  {
> -	struct imx_i2c_struct *i2c_imx = dev_id;
> -	unsigned int temp;
> +	unsigned int status;
>  
> -	temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> -	if (temp & I2SR_IIF) {
> -		/* save status register */
> -		i2c_imx->i2csr = temp;
> -		temp &= ~I2SR_IIF;
> -		temp |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> -		imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2SR);
> -		wake_up(&i2c_imx->queue);
> -		return IRQ_HANDLED;
> -	}
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	status &= ~I2SR_IIF;
> +	status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> +	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
> +}
> +
> +/* Clear arbitration lost bit */
> +static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	status &= ~I2SR_IAL;
> +	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
> +}
>  
> -	return IRQ_NONE;
> +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>: master interrupt\n", __func__);

Generally this driver has way too many dev_dbg spread around in hot
pathes already. IMO adding more doesn't make the output more useful.

> +
> +	/* Save status register */
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	i2c_imx->i2csr = status | I2SR_IIF;
> +
> +	wake_up(&i2c_imx->queue);
> +
> +	return IRQ_HANDLED;
>  }
>  
>  static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
> @@ -1043,11 +1063,162 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
>  		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
>  }
>  
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +static void i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int temp;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> +
> +	/* Set slave addr. */
> +	imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx, IMX_I2C_IADR);
> +
> +	/* Disable i2c module */
> +	temp = i2c_imx->hwdata->i2cr_ien_opcode
> +			^ I2CR_IEN;

unnecessary line break.

> +	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> +
> +	/* Reset status register */
> +	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> +			  IMX_I2C_I2SR);
> +
> +	/* Enable module and enable interrupt from i2c module */
> +	temp = i2c_imx->hwdata->i2cr_ien_opcode
> +			| I2CR_IIEN;

ditto.

> +	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> +
> +	/* Wait controller to be stable */
> +	usleep_range(50, 150);
> +}
> +
> +static irqreturn_t i2c_imx_slave_isr(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status, ctl;
> +	u8 value;
> +
> +	if (!i2c_imx->slave) {
> +		dev_err(&i2c_imx->adapter.dev, "cannot deal with slave irq,i2c_imx->slave is null");
> +		return IRQ_NONE;
> +	}
> +
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> +	if (status & I2SR_IAL) { /* Arbitration lost */
> +		i2c_imx_clr_al_bit(i2c_imx);
> +	} else if (status & I2SR_IAAS) { /* Addressed as a slave */
> +		if (status & I2SR_SRW) { /* Master wants to read from us*/
> +			dev_dbg(&i2c_imx->adapter.dev, "read requested");
> +			i2c_slave_event(i2c_imx->slave, I2C_SLAVE_READ_REQUESTED, &value);
> +
> +			/* Slave transimt */

s/transimt/transmit/

> +			ctl |= I2CR_MTX;
> +			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +			/* Send data */
> +			imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> +		} else { /* Master wants to write to us */
> +			dev_dbg(&i2c_imx->adapter.dev, "write requested");
> +			i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_REQUESTED, &value);
> +
> +			/* Slave receive */
> +			ctl &= ~I2CR_MTX;
> +			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +			/* Dummy read */
> +			value = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);

value is unused, no need to assign a value to it.

> +		}
> +	} else {
> +		if (!(ctl & I2CR_MTX)) { /* Receive mode */

Since you have an 'else' path please convert this to positive logic.
This makes it easier to read.

> +			if (status & I2SR_IBB) { /* No STOP signal detected */
> +				ctl &= ~I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +				value = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +				i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_RECEIVED, &value);
> +			} else { /* STOP signal is detected */
> +				dev_dbg(&i2c_imx->adapter.dev,
> +					"STOP signal detected");
> +				i2c_slave_event(i2c_imx->slave, I2C_SLAVE_STOP, &value);
> +			}
> +		} else { /* Transmit mode */
> +			if (!(status & I2SR_RXAK)) {	/* Received ACK */

Same here.

> +				ctl |= I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +				i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_READ_PROCESSED, &value);
> +
> +				imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> +			} else { /* Received NAK */
> +				ctl &= ~I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +				value = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);

Also value unused.

> +			}
> +		}
> +	}
> +	return IRQ_HANDLED;
> +}
> +
> +static int i2c_imx_reg_slave(struct i2c_client *client)
> +{
> +	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> +
> +	if (i2c_imx->slave)
> +		return -EINVAL;

Better -EBUSY?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
