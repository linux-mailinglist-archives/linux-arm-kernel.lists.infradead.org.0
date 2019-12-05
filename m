Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF27C114043
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 12:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=01gTsgsYVlFNX3QVXzDArqPk9H8jCEW2kSTmabAteto=; b=EVBwsG9tD8kQKMDqXeNAT83hp
	co4+BIGJP6YxqnTp3fHlCM+uX7mY+E38f4X5497J/2Hd3G4FsujIHgQrbO6EopncObxZuOFdl6Gf4
	gIftSuqyDrYAcUIJr+QFeMtBDAV+LfuolUzYvNIZ/HxN0VPu0/1FoGi+ilH7+ITq+eQ4QKody+XMs
	2vG/j0T9h/8IdYNCo/vZRkgZLVnopM5UPyCaKdFQ10YhgAiCpl0dcZv8scF34+wNPIwBKfMnFzBWo
	qJUeN3BCsCGsi05yC31uI94zsE1o47mQG9xxYdXQGE54f+Mf67DVjZKK6shNPPIfPfcRWsiJdUfRB
	wRKQS8bug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icpY9-00074z-2T; Thu, 05 Dec 2019 11:44:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icpXz-00073t-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 11:43:53 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1icpXv-0008MZ-RZ; Thu, 05 Dec 2019 12:43:47 +0100
Subject: Re: [v6] i2c: imx: support slave mode for imx I2C driver
To: Sascha Hauer <s.hauer@pengutronix.de>, Biwen Li <biwen.li@nxp.com>
References: <20191203114809.21226-1-biwen.li@nxp.com>
 <20191204100005.r56huywxa7h3c6zr@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
Date: Thu, 5 Dec 2019 12:43:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204100005.r56huywxa7h3c6zr@pengutronix.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_034351_747936_7542262E 
X-CRM114-Status: GOOD (  25.16  )
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
Cc: aisheng.dong@nxp.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de, shawnguo@kernel.org, xiaobo.xie@nxp.com, leoyang.li@nxp.com,
 xiaoning.wang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 jiafei.pan@nxp.com, laurentiu.tudor@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04.12.19 11:00, Sascha Hauer wrote:
> Hi,
> 
> The patch looks ok to me now, but I still do not like the #ifdeffery
> around CONFIG_I2C_SLAVE. With the patch I just sent (You are on Cc:)
> we could apply the following on your patch which makes it more readable
> and increases compile coverage.
> 
> Wolfram, Biwen, what do you think?


RCAR depends on slave:
config I2C_RCAR 

         tristate "Renesas R-Car I2C Controller" 

         depends on ARCH_RENESAS || COMPILE_TEST 

         select I2C_SLAVE
see:
drivers/i2c/busses/i2c-rcar.c

So, I would suggest to do the same in imx.

So far, I tested this patch on iMX6S. It works in one board (i2c-gpio + i2c-imx) and
two board (i2c-imx + i2c-imx) configuration.
Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>


> 
> Sascha
> 
> ---------------------------8<------------------------------
> 
>  From 52f7c2bf59db61d4b27b59ca6404136e3ed77310 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 4 Dec 2019 10:56:34 +0100
> Subject: [PATCH] fixup! i2c: imx: support slave mode for imx I2C driver
> 
> ---
>   drivers/i2c/busses/i2c-imx.c | 21 ++++++++++-----------
>   1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 40ccfca600bf..c5d9ae8226cd 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -203,9 +203,7 @@ struct imx_i2c_struct {
>   	struct pinctrl_state *pinctrl_pins_gpio;
>   
>   	struct imx_i2c_dma	*dma;
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
>   	struct i2c_client	*slave;
> -#endif
>   };
>   
>   static const struct imx_i2c_hwdata imx1_i2c_hwdata = {
> @@ -913,12 +911,10 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
>   
>   	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
>   
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
>   	if (i2c_imx->slave) {
>   		dev_err(&i2c_imx->adapter.dev, "Please not do operations of master mode in slave mode");
>   		return -EBUSY;
>   	}
> -#endif
>   
>   	result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
>   	if (result < 0)
> @@ -1068,7 +1064,6 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
>   		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
>   }
>   
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
>   static int i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
>   {
>   	int temp;
> @@ -1159,6 +1154,10 @@ static int i2c_imx_reg_slave(struct i2c_client *client)
>   {
>   	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
>   	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> +		return -EINVAL;
> +
>   	if (i2c_imx->slave)
>   		return -EBUSY;
>   
> @@ -1173,6 +1172,9 @@ static int i2c_imx_unreg_slave(struct i2c_client *client)
>   {
>   	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
>   
> +	if (!IS_ENABLED(CONFIG_I2C_SLAVE))
> +		return -EINVAL;
> +
>   	if (!i2c_imx->slave)
>   		return -EINVAL;
>   
> @@ -1188,15 +1190,12 @@ static int i2c_imx_unreg_slave(struct i2c_client *client)
>   
>   	return 0;
>   }
> -#endif
>   
>   static const struct i2c_algorithm i2c_imx_algo = {
>   	.master_xfer	= i2c_imx_xfer,
>   	.functionality	= i2c_imx_func,
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
>   	.reg_slave	= i2c_imx_reg_slave,
>   	.unreg_slave	= i2c_imx_unreg_slave,
> -#endif
>   };
>   
>   static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> @@ -1208,10 +1207,10 @@ static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
>   
>   	if (status & I2SR_IIF) {
>   		i2c_imx_clr_if_bit(status, i2c_imx);
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> -		if (i2c_imx->slave)
> +
> +		if (IS_ENABLED(CONFIG_I2C_SLAVE) && i2c_imx->slave)
>   			return i2c_imx_slave_isr(i2c_imx);
> -#endif
> +
>   		i2c_imx->i2csr = status;
>   		return i2c_imx_master_isr(i2c_imx);
>   	}
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
