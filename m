Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25412149C2C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 18:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqSUZGAD9N2nCNriwKhop3mKxP2p34/HsJh5KDTeaSA=; b=XPbbiVvozENhxW
	H0eV2ahbcMgf8ulcqAQnGu6hwzZee9QA0yhMboh0iNhwUr0arnyvsYXykPoCuqK4yUNVfYmDov0Nr
	04rC81hDqT0mFxJZbYbBlwmDjGfNX5jO4Ow1I+tNW35wFkaEV7tFFhk91E6ZWSQvgnszs/gCQmoCR
	atdzd4gke6cdCIWiyl56Ue5BmxAA+GSt/p6ycW0HSTEclVOHGaVuadD7SsvaqwMnG5od++DKSUIph
	PoAomaGYePHqfA84XPtz9aWXfJKh9UO8zHKqj8+NGrShIcHKrGJPjikM15B2yRv7MTgSPsC6ES79n
	Ef58/l3yL4VsxVMpd+ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivm68-0000xI-Hh; Sun, 26 Jan 2020 17:53:24 +0000
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivm5w-0000wq-Ol
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 17:53:14 +0000
Received: from [2001:4dd4:d47c:0:a288:b4ff:fee5:f5cc] (helo=porty)
 by stcim with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <contact@stefanchrist.eu>)
 id 1ivm5m-0006yu-6v; Sun, 26 Jan 2020 18:53:02 +0100
Date: Sun, 26 Jan 2020 18:53:01 +0100
From: Stefan Lengfeld <contact@stefanchrist.eu>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: implement master_xfer_atomic callback
Message-ID: <20200126175301.upbrn5bx46wangbc@porty>
References: <20200120093650.12911-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120093650.12911-1-m.felsch@pengutronix.de>
X-PGP-Key: https://stefanchrist.eu/personal/Stefan_Lengfeld_0xE44A23B289092311.asc
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_095312_962139_977E4658 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, stefan@agner.ch, linux@rempel-privat.de,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On Mon, Jan 20, 2020 at 10:36:50AM +0100, Marco Felsch wrote:
> From: Stefan Lengfeld <contact@stefanchrist.eu>
> 
> Rework the read and write code paths in the driver to support operation
> in atomic contexts. To achieve this, the driver must not rely on IRQs
> and not call schedule(), e.g. via a sleep routine, in these cases.
> 
> With this patch the driver supports normal operation, DMA transfers and
> now the polling mode or also called sleep-free or IRQ-less operation. It
> makes the code not simpler or easier to read, but atomic I2C transfers
> are needed on some hardware configurations, e.g. to trigger reboots on
> an external PMIC chip.
> 
> Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
> [m.felsch@pengutronix.de: integrate https://patchwork.ozlabs.org/patch/1085943/ review feedback]

nitpick(personal taste): This line can be wrapped to make the commit
message more readable in the output of 'git log'.

> [m.felsch@pengutronix.de: adapt commit message]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>

Tested-by: Stefan Lengfeld <contact@stefanchrist.eu>

on a phyCORE-i.MX6 Quad with baseboard phyBOARD-Mira.

> ---
> Hi,
> 
> I picked Stefan Lengfeld RFC patch [1] and added Stefan Agner's review
> feedback [1]. Checkpatch complains about a few 80 char violations. I
> kept those to gain readability.
> 
> Regards,
>   Marco
> 
> [1] https://patchwork.ozlabs.org/patch/1085943/
> 
> Changes:
> - general: adapt commit message
> - general: fix some 80char line issues
> - general: s/if(!atomic)/if(atomic)/

+1 avoiding negations are good for readability.

> - i2c_imx_trx_complete: use readb_poll_timeout_atomic()
> - i2c_imx_trx_complete: adapt poll_timeout and add poll_timeout calc comment
> - i2c_imx_start: simplify irq disable
> - i2c_imx_xfer_common: don't allow bus recovery within atomic context
> - i2c_imx_probe: drop pm_runtime_irq_safe usage and instead:
>   * i2c_imx_xfer_common: move rpm calls into i2c_imx_xfer
>   * i2c_imx_xfer_common: add clk_enable/disable for i2c_imx_xfer_atomic

Ack and thanks.

If you like, you can take over the authorship of this patch, because you
improved it substantially. To take the fame and the blame ;-) Otherwise
I'm also still fine being the author.

One additionally nitpick below.

> ---
>  drivers/i2c/busses/i2c-imx.c | 146 +++++++++++++++++++++++++----------
>  1 file changed, 105 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index a3b61336fe55..79d5b37fd8a1 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -34,6 +34,7 @@
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -414,7 +415,7 @@ static void i2c_imx_dma_free(struct imx_i2c_struct *i2c_imx)
>  	dma->chan_using = NULL;
>  }
>  
> -static int i2c_imx_bus_busy(struct imx_i2c_struct *i2c_imx, int for_busy)
> +static int i2c_imx_bus_busy(struct imx_i2c_struct *i2c_imx, int for_busy, bool atomic)
>  {
>  	unsigned long orig_jiffies = jiffies;
>  	unsigned int temp;
> @@ -444,15 +445,37 @@ static int i2c_imx_bus_busy(struct imx_i2c_struct *i2c_imx, int for_busy)
>  				"<%s> I2C bus is busy\n", __func__);
>  			return -ETIMEDOUT;
>  		}
> -		schedule();
> +		if (atomic)
> +			udelay(100);
> +		else
> +			schedule();
>  	}
>  
>  	return 0;
>  }
>  
> -static int i2c_imx_trx_complete(struct imx_i2c_struct *i2c_imx)
> +static int i2c_imx_trx_complete(struct imx_i2c_struct *i2c_imx, bool atomic)
>  {
> -	wait_event_timeout(i2c_imx->queue, i2c_imx->i2csr & I2SR_IIF, HZ / 10);
> +	if (atomic) {
> +		void __iomem *addr = i2c_imx->base + (IMX_I2C_I2SR << i2c_imx->hwdata->regshift);
> +		unsigned int regval;
> +
> +		/*
> +		 * The formula for the poll timeout is documented in the RM
> +		 * Rev.5 on page 1878:
> +		 *     T_min = 10/F_scl
> +		 * Set the value hard as it is done for the non-atomic use-case.
> +		 * Use 10 kHz for the calculation since this is the minimum
> +		 * allowed SMBus frequency. Also add an offset of 100us since it
> +		 * turned out that the I2SR_IIF bit isn't set correctly within
> +		 * the minimum timeout in polling mode.
> +		 */
> +		readb_poll_timeout_atomic(addr, regval, regval & I2SR_IIF, 5, 1000 + 100);

Nice.

> +		i2c_imx->i2csr = regval;
> +		imx_i2c_write_reg(0, i2c_imx, IMX_I2C_I2SR);
> +	} else {
> +		wait_event_timeout(i2c_imx->queue, i2c_imx->i2csr & I2SR_IIF, HZ / 10);
> +	}
>  
>  	if (unlikely(!(i2c_imx->i2csr & I2SR_IIF))) {
>  		dev_dbg(&i2c_imx->adapter.dev, "<%s> Timeout\n", __func__);
> @@ -530,7 +553,7 @@ static int i2c_imx_clk_notifier_call(struct notifier_block *nb,
>  	return NOTIFY_OK;
>  }
>  
> -static int i2c_imx_start(struct imx_i2c_struct *i2c_imx)
> +static int i2c_imx_start(struct imx_i2c_struct *i2c_imx, bool atomic)
>  {
>  	unsigned int temp = 0;
>  	int result;
> @@ -543,23 +566,29 @@ static int i2c_imx_start(struct imx_i2c_struct *i2c_imx)
>  	imx_i2c_write_reg(i2c_imx->hwdata->i2cr_ien_opcode, i2c_imx, IMX_I2C_I2CR);
>  
>  	/* Wait controller to be stable */
> -	usleep_range(50, 150);
> +	if (atomic)
> +		udelay(50);
> +	else
> +		usleep_range(50, 150);
>  
>  	/* Start I2C transaction */
>  	temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
>  	temp |= I2CR_MSTA;
>  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> -	result = i2c_imx_bus_busy(i2c_imx, 1);
> +	result = i2c_imx_bus_busy(i2c_imx, 1, atomic);
>  	if (result)
>  		return result;
>  
>  	temp |= I2CR_IIEN | I2CR_MTX | I2CR_TXAK;
> +	if (atomic)
> +		temp &= ~I2CR_IIEN; /* Disable interrupt */
> +
>  	temp &= ~I2CR_DMAEN;
>  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
>  	return result;
>  }
>  
> -static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> +static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx, bool atomic)
>  {
>  	unsigned int temp = 0;
>  
> @@ -581,7 +610,7 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
>  	}
>  
>  	if (!i2c_imx->stopped)
> -		i2c_imx_bus_busy(i2c_imx, 0);
> +		i2c_imx_bus_busy(i2c_imx, 0, atomic);
>  
>  	/* Disable I2C controller */
>  	temp = i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
> @@ -662,7 +691,7 @@ static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
>  	/* The last data byte must be transferred by the CPU. */
>  	imx_i2c_write_reg(msgs->buf[msgs->len-1],
>  				i2c_imx, IMX_I2C_I2DR);
> -	result = i2c_imx_trx_complete(i2c_imx);
> +	result = i2c_imx_trx_complete(i2c_imx, false);
>  	if (result)
>  		return result;
>  
> @@ -721,7 +750,7 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
>  
>  	msgs->buf[msgs->len-2] = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
>  	/* read n byte data */
> -	result = i2c_imx_trx_complete(i2c_imx);
> +	result = i2c_imx_trx_complete(i2c_imx, false);
>  	if (result)
>  		return result;
>  
> @@ -734,7 +763,7 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
>  		temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
>  		temp &= ~(I2CR_MSTA | I2CR_MTX);
>  		imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> -		i2c_imx_bus_busy(i2c_imx, 0);
> +		i2c_imx_bus_busy(i2c_imx, 0, false);
>  	} else {
>  		/*
>  		 * For i2c master receiver repeat restart operation like:
> @@ -752,7 +781,8 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
>  	return 0;
>  }
>  
> -static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs)
> +static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs,
> +			 bool atomic)
>  {
>  	int i, result;
>  
> @@ -761,7 +791,7 @@ static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs)
>  
>  	/* write slave address */
>  	imx_i2c_write_reg(i2c_8bit_addr_from_msg(msgs), i2c_imx, IMX_I2C_I2DR);
> -	result = i2c_imx_trx_complete(i2c_imx);
> +	result = i2c_imx_trx_complete(i2c_imx, atomic);
>  	if (result)
>  		return result;
>  	result = i2c_imx_acked(i2c_imx);
> @@ -775,7 +805,7 @@ static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs)
>  			"<%s> write byte: B%d=0x%X\n",
>  			__func__, i, msgs->buf[i]);
>  		imx_i2c_write_reg(msgs->buf[i], i2c_imx, IMX_I2C_I2DR);
> -		result = i2c_imx_trx_complete(i2c_imx);
> +		result = i2c_imx_trx_complete(i2c_imx, atomic);
>  		if (result)
>  			return result;
>  		result = i2c_imx_acked(i2c_imx);
> @@ -785,7 +815,8 @@ static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs)
>  	return 0;
>  }
>  
> -static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs, bool is_lastmsg)
> +static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs,
> +			bool is_lastmsg, bool atomic)
>  {
>  	int i, result;
>  	unsigned int temp;
> @@ -798,7 +829,7 @@ static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs, bo
>  
>  	/* write slave address */
>  	imx_i2c_write_reg(i2c_8bit_addr_from_msg(msgs), i2c_imx, IMX_I2C_I2DR);
> -	result = i2c_imx_trx_complete(i2c_imx);
> +	result = i2c_imx_trx_complete(i2c_imx, atomic);
>  	if (result)
>  		return result;
>  	result = i2c_imx_acked(i2c_imx);
> @@ -831,7 +862,7 @@ static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs, bo
>  	for (i = 0; i < msgs->len; i++) {
>  		u8 len = 0;
>  
> -		result = i2c_imx_trx_complete(i2c_imx);
> +		result = i2c_imx_trx_complete(i2c_imx, atomic);
>  		if (result)
>  			return result;
>  		/*
> @@ -859,7 +890,7 @@ static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs, bo
>  				temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
>  				temp &= ~(I2CR_MSTA | I2CR_MTX);
>  				imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> -				i2c_imx_bus_busy(i2c_imx, 0);
> +				i2c_imx_bus_busy(i2c_imx, 0, atomic);
>  			} else {
>  				/*
>  				 * For i2c master receiver repeat restart operation like:
> @@ -890,8 +921,8 @@ static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs, bo
>  	return 0;
>  }
>  
> -static int i2c_imx_xfer(struct i2c_adapter *adapter,
> -						struct i2c_msg *msgs, int num)
> +static int i2c_imx_xfer_common(struct i2c_adapter *adapter,
> +			       struct i2c_msg *msgs, int num, bool atomic)

nitpick(cleanup): The function argument 'struct i2c_adapter *adapter'
can be replaced with 'struct imx_i2c_struct *i2c_imx'. The adapter
pointer is already 'dereferenced' in the calling functions

	i2c_imx_xfer() and
	i2c_imx_xfer_atomic()

This avoids the second call 'i2c_get_adapdata(adapter)' some lines
below.

Kind regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
