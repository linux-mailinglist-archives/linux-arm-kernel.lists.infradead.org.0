Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6A9D6045
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1GOCCGyngZMjLe0WiwlEDXd0oYegpjCHLDnUB3IsWnU=; b=oZWFL+XJJ6I8SVz1dar7tGNk5
	5r0pbeBb858aAMgUwichcHt/11VVDc258NMkzJLIZM8bvwoTOwa4NoHK5m6iP/So9zbKOdoTkqpf6
	d6Q8G/CReZ/NGFKJR9M276Of0MP2D7kpwlBIppJ4q1NZifk4gdbjXpTKpOWqPBkXqDkJEkMmyUSJw
	r8x53Doat3w5a6CbLIl8tag+awRdubFKrDM+7y3/hV/K9XkUnpVo9iOy9V5vzYAnZWdUzQqIlcF7D
	ZttktnRHE9fZDGqgjS+0iLYQlWLH7ARVDd941jMdWiawr/8Rf4jtqR4AtVYpudWJjs8RZQZIiIL8T
	MOl3kQSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxf3-0006OO-Jc; Mon, 14 Oct 2019 10:33:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxer-0006NG-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:32:59 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1iJxen-0001vG-H5; Mon, 14 Oct 2019 12:32:53 +0200
Subject: Re: [RESEND v2] i2c: imx: support slave mode for imx I2C driver
To: Biwen Li <biwen.li@nxp.com>, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 wsa@the-dreams.de, leoyang.li@nxp.com, aisheng.dong@nxp.com,
 xiaoning.wang@nxp.com
References: <20191009101802.19309-1-biwen.li@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <113865e9-e846-1079-6f58-7fddb245398c@pengutronix.de>
Date: Mon, 14 Oct 2019 12:32:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009101802.19309-1-biwen.li@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_033257_629488_E24BE06E 
X-CRM114-Status: GOOD (  24.59  )
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
Cc: xiaobo.xie@nxp.com, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 jiafei.pan@nxp.com, linux-arm-kernel@lists.infradead.org,
 laurentiu.tudor@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm trying to test you patch on i.MX6S RIoTBoard. So far I fail to get it working with 
following setup:
1. register i2c-gpio
2. connect i2c-gpio SCL to i2c-imx SCL pin and i2c-gpio SDA to i2c-imx SDA pin
3. run this command to register i2c slave eeprom on i2c-imx:
echo slave-24c02 0x1064 > /sys/bus/i2c/devices/i2c-3/new_device
4. run "i2cdetect 4" on i2c-gpio to detect eeprom on i2c-imx slave.

So far, nothing was detected and even irq counter of i2c-imx didn't increased.

Do I'm missing some thing? Please, help me to test you patch.

And, please, do not forget to include me in the next patch round, if you wont to get your 
patches mainline.

This devicetree i used for testing:
#include "imx6dl-riotboard.dts"

/ {
         i2c_gpio: i2c-gpio {
                 compatible = "i2c-gpio";
                 #address-cells = <1>;
                 #size-cells = <0>;
                 pinctrl-names = "default";
                 pinctrl-0 = <&pinctrl_i2c_gpio>;
                 gpios = <
                         &gpio4 27 GPIO_ACTIVE_HIGH /* SDA */
                         &gpio4 26 GPIO_ACTIVE_HIGH /* SCL */
                 >;
                 clock-frequency = <10000>;
                 status = "okay";
         };
};

&iomuxc {
         pinctrl-names = "default";

         imx6-riotboard {
                 pinctrl_i2c_gpio: i2c-gpiogrp {
                         fsl,pins = <
                                 MX6QDL_PAD_DISP0_DAT6__GPIO4_IO27 0x4001b8b1
                                 MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26 0x4001b8b1
                         >;
                 };
         };
};

&i2c4 {
                 clock-frequency = <10000>;

};


Regards,
Oleksij

On 09.10.19 12:18, Biwen Li wrote:
> The patch supports slave mode for imx I2C driver
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v2:
> 	- remove MACRO CONFIG_I2C_SLAVE
> 
>   drivers/i2c/busses/i2c-imx.c | 180 ++++++++++++++++++++++++++++++++---
>   1 file changed, 166 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index a3b61336fe55..d9858bc63656 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -203,6 +203,7 @@ struct imx_i2c_struct {
>   	struct pinctrl_state *pinctrl_pins_gpio;
>   
>   	struct imx_i2c_dma	*dma;
> +	struct i2c_client	*slave;
>   };
>   
>   static const struct imx_i2c_hwdata imx1_i2c_hwdata = {
> @@ -588,23 +589,38 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
>   	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
>   }
>   
> -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> +/* Clear interrupt flag bit */
> +static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
>   {
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
>   
> -	return IRQ_NONE;
> +/* Clear arbitration lost bit */
> +static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	status &= ~I2SR_IAL;
> +	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
> +}
> +
> +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	/* Save status register */
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	i2c_imx->i2csr = status | I2SR_IIF;
> +
> +	wake_up(&i2c_imx->queue);
> +
> +	return IRQ_HANDLED;
>   }
>   
>   static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
> @@ -1048,11 +1064,147 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
>   		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
>   }
>   
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
> +	temp = i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN;
> +	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> +
> +	/* Reset status register */
> +	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> +			  IMX_I2C_I2SR);
> +
> +	/* Enable module and enable interrupt from i2c module */
> +	temp = i2c_imx->hwdata->i2cr_ien_opcode | I2CR_IIEN;
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
> +			/* Slave transmit */
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
> +			imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +		}
> +	} else if (!(ctl & I2CR_MTX)) { /* Receive mode */
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
> +	} else if (!(status & I2SR_RXAK)) {	/* Transmit mode received ACK */
> +		ctl |= I2CR_MTX;
> +		imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +		i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_READ_PROCESSED, &value);
> +
> +		imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> +	} else { /* Transmit mode received NAK */
> +		ctl &= ~I2CR_MTX;
> +		imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +		imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +	}
> +	return IRQ_HANDLED;
> +}
> +
> +static int i2c_imx_reg_slave(struct i2c_client *client)
> +{
> +	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> +
> +	if (i2c_imx->slave)
> +		return -EBUSY;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> +	i2c_imx->slave = client;
> +
> +	i2c_imx_slave_init(i2c_imx);
> +
> +	return 0;
> +}
> +
> +static int i2c_imx_unreg_slave(struct i2c_client *client)
> +{
> +	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
> +
> +	if (!i2c_imx->slave)
> +		return -EINVAL;
> +
> +	i2c_imx->slave = NULL;
> +
> +	return 0;
> +}
> +
>   static const struct i2c_algorithm i2c_imx_algo = {
>   	.master_xfer	= i2c_imx_xfer,
>   	.functionality	= i2c_imx_func,
> +	.reg_slave	= i2c_imx_reg_slave,
> +	.unreg_slave	= i2c_imx_unreg_slave,
>   };
>   
> +static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> +{
> +	struct imx_i2c_struct *i2c_imx = dev_id;
> +	unsigned int status, ctl;
> +	irqreturn_t irq_status = IRQ_NONE;
> +
> +	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> +
> +	if (status & I2SR_IIF) {
> +		i2c_imx_clr_if_bit(i2c_imx);
> +		if (ctl & I2CR_MSTA)
> +			irq_status = i2c_imx_master_isr(i2c_imx);
> +		else
> +			irq_status = i2c_imx_slave_isr(i2c_imx);
> +	}
> +
> +	return irq_status;
> +}
> +
>   static int i2c_imx_probe(struct platform_device *pdev)
>   {
>   	struct imx_i2c_struct *i2c_imx;
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
