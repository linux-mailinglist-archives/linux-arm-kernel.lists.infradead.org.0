Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D253142851
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAAeMdtgs45Muj5LvTX5o2mvL1lv552hNIgbiPc3dmQ=; b=IxaLprTxHMiLxe
	EkKaog9sd04WEZLm/H25w324K9pe3NG2cFu/KHGrDIjEj8DlfMH0gNH2n4qlWa2iWxbZsh8OvtiMV
	LfRysHT4S2YO/sL1Ul9q7+4Da1bt4+Cp0X2/I1licu46MPt27+U3r9rHROISrnJrPaxSv2JLqcj2z
	RI7GHGoe1LXMMQwhPgzSzl2uheSJkzFK+QllQ3emJ/M+mE0W5rTkFvdMbGMWBe7d4HimypiSITg1J
	Rs7logZNTs27CyzHgiUZeFFCoBK5UfoKTBb5mD1a08juZgqmOZqfPaJ1UpHVbrPelsr91bQ5X9rZf
	xSpo7aMpIl/EUgthi5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUT4-0000hU-S6; Mon, 20 Jan 2020 10:39:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUSu-0000h3-He
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:39:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1itUSp-0007J1-Tw; Mon, 20 Jan 2020 11:39:23 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1itUSo-00042I-CA; Mon, 20 Jan 2020 11:39:22 +0100
Date: Mon, 20 Jan 2020 11:39:22 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] i2c: imx: implement master_xfer_atomic callback
Message-ID: <20200120103922.maeg4m546ujzc6fh@pengutronix.de>
References: <20200120093650.12911-1-m.felsch@pengutronix.de>
 <f1f81c3e75bc66d2885f1ddaca87a28f@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1f81c3e75bc66d2885f1ddaca87a28f@agner.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:36:26 up 66 days,  1:55, 59 users,  load average: 0.11, 0.15, 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_023928_902161_899DBEB8 
X-CRM114-Status: GOOD (  34.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux@rempel-privat.de,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Stefan Lengfeld <contact@stefanchrist.eu>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 20-01-20 11:03, Stefan Agner wrote:
> Hi Marco,
> 
> On 2020-01-20 10:36, Marco Felsch wrote:
> > From: Stefan Lengfeld <contact@stefanchrist.eu>
> > 
> > Rework the read and write code paths in the driver to support operation
> > in atomic contexts. To achieve this, the driver must not rely on IRQs
> > and not call schedule(), e.g. via a sleep routine, in these cases.
> > 
> > With this patch the driver supports normal operation, DMA transfers and
> > now the polling mode or also called sleep-free or IRQ-less operation. It
> > makes the code not simpler or easier to read, but atomic I2C transfers
> > are needed on some hardware configurations, e.g. to trigger reboots on
> > an external PMIC chip.
> 
> Thanks for picking this up!

:)

> > 
> > Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
> > [m.felsch@pengutronix.de: integrate
> > https://patchwork.ozlabs.org/patch/1085943/ review feedback]
> > [m.felsch@pengutronix.de: adapt commit message]
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> > Hi,
> > 
> > I picked Stefan Lengfeld RFC patch [1] and added Stefan Agner's review
> > feedback [1]. Checkpatch complains about a few 80 char violations. I
> > kept those to gain readability.
> > 
> > Regards,
> >   Marco
> > 
> > [1] https://patchwork.ozlabs.org/patch/1085943/
> > 
> > Changes:
> > - general: adapt commit message
> > - general: fix some 80char line issues
> > - general: s/if(!atomic)/if(atomic)/
> > - i2c_imx_trx_complete: use readb_poll_timeout_atomic()
> > - i2c_imx_trx_complete: adapt poll_timeout and add poll_timeout calc comment
> > - i2c_imx_start: simplify irq disable
> > - i2c_imx_xfer_common: don't allow bus recovery within atomic context
> > - i2c_imx_probe: drop pm_runtime_irq_safe usage and instead:
> >   * i2c_imx_xfer_common: move rpm calls into i2c_imx_xfer
> >   * i2c_imx_xfer_common: add clk_enable/disable for i2c_imx_xfer_atomic
> > ---
> >  drivers/i2c/busses/i2c-imx.c | 146 +++++++++++++++++++++++++----------
> >  1 file changed, 105 insertions(+), 41 deletions(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> > index a3b61336fe55..79d5b37fd8a1 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -34,6 +34,7 @@
> >  #include <linux/init.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/io.h>
> > +#include <linux/iopoll.h>
> >  #include <linux/kernel.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > @@ -414,7 +415,7 @@ static void i2c_imx_dma_free(struct imx_i2c_struct *i2c_imx)
> >  	dma->chan_using = NULL;
> >  }
> >  
> > -static int i2c_imx_bus_busy(struct imx_i2c_struct *i2c_imx, int for_busy)
> > +static int i2c_imx_bus_busy(struct imx_i2c_struct *i2c_imx, int
> > for_busy, bool atomic)
> >  {
> >  	unsigned long orig_jiffies = jiffies;
> >  	unsigned int temp;
> > @@ -444,15 +445,37 @@ static int i2c_imx_bus_busy(struct
> > imx_i2c_struct *i2c_imx, int for_busy)
> >  				"<%s> I2C bus is busy\n", __func__);
> >  			return -ETIMEDOUT;
> >  		}
> > -		schedule();
> > +		if (atomic)
> > +			udelay(100);
> > +		else
> > +			schedule();
> >  	}
> >  
> >  	return 0;
> >  }
> >  
> > -static int i2c_imx_trx_complete(struct imx_i2c_struct *i2c_imx)
> > +static int i2c_imx_trx_complete(struct imx_i2c_struct *i2c_imx, bool atomic)
> >  {
> > -	wait_event_timeout(i2c_imx->queue, i2c_imx->i2csr & I2SR_IIF, HZ / 10);
> > +	if (atomic) {
> > +		void __iomem *addr = i2c_imx->base + (IMX_I2C_I2SR <<
> > i2c_imx->hwdata->regshift);
> > +		unsigned int regval;
> > +
> > +		/*
> > +		 * The formula for the poll timeout is documented in the RM
> > +		 * Rev.5 on page 1878:
> > +		 *     T_min = 10/F_scl
> > +		 * Set the value hard as it is done for the non-atomic use-case.
> > +		 * Use 10 kHz for the calculation since this is the minimum
> > +		 * allowed SMBus frequency. Also add an offset of 100us since it
> > +		 * turned out that the I2SR_IIF bit isn't set correctly within
> > +		 * the minimum timeout in polling mode.
> > +		 */
> > +		readb_poll_timeout_atomic(addr, regval, regval & I2SR_IIF, 5, 1000 + 100);
> > +		i2c_imx->i2csr = regval;
> > +		imx_i2c_write_reg(0, i2c_imx, IMX_I2C_I2SR);
> > +	} else {
> > +		wait_event_timeout(i2c_imx->queue, i2c_imx->i2csr & I2SR_IIF, HZ / 10);
> > +	}
> >  
> >  	if (unlikely(!(i2c_imx->i2csr & I2SR_IIF))) {
> >  		dev_dbg(&i2c_imx->adapter.dev, "<%s> Timeout\n", __func__);
> > @@ -530,7 +553,7 @@ static int i2c_imx_clk_notifier_call(struct
> > notifier_block *nb,
> >  	return NOTIFY_OK;
> >  }
> >  
> > -static int i2c_imx_start(struct imx_i2c_struct *i2c_imx)
> > +static int i2c_imx_start(struct imx_i2c_struct *i2c_imx, bool atomic)
> >  {
> >  	unsigned int temp = 0;
> >  	int result;
> > @@ -543,23 +566,29 @@ static int i2c_imx_start(struct imx_i2c_struct *i2c_imx)
> >  	imx_i2c_write_reg(i2c_imx->hwdata->i2cr_ien_opcode, i2c_imx, IMX_I2C_I2CR);
> >  
> >  	/* Wait controller to be stable */
> > -	usleep_range(50, 150);
> > +	if (atomic)
> > +		udelay(50);
> > +	else
> > +		usleep_range(50, 150);
> >  
> >  	/* Start I2C transaction */
> >  	temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> >  	temp |= I2CR_MSTA;
> >  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > -	result = i2c_imx_bus_busy(i2c_imx, 1);
> > +	result = i2c_imx_bus_busy(i2c_imx, 1, atomic);
> >  	if (result)
> >  		return result;
> >  
> >  	temp |= I2CR_IIEN | I2CR_MTX | I2CR_TXAK;
> > +	if (atomic)
> > +		temp &= ~I2CR_IIEN; /* Disable interrupt */
> > +
> 
> Wouldn't it make more sense if we reverse the logic here, e.g. only
> enable interrupt if (!atomic).

Hm.. I don't have any preferences both are okay for me.
I will change this if it is a show stopper for the others as well.

Regards,
  Marco

> Otherwise looks good to me!
> 
> Reviewed-by: Stefan Agner <stefan@agner.ch>
> 
> --
> Stefan
> 
> >  	temp &= ~I2CR_DMAEN;
> >  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> >  	return result;
> >  }
> >  
> > -static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> > +static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx, bool atomic)
> >  {
> >  	unsigned int temp = 0;
> >  
> > @@ -581,7 +610,7 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
> >  	}
> >  
> >  	if (!i2c_imx->stopped)
> > -		i2c_imx_bus_busy(i2c_imx, 0);
> > +		i2c_imx_bus_busy(i2c_imx, 0, atomic);
> >  
> >  	/* Disable I2C controller */
> >  	temp = i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
> > @@ -662,7 +691,7 @@ static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
> >  	/* The last data byte must be transferred by the CPU. */
> >  	imx_i2c_write_reg(msgs->buf[msgs->len-1],
> >  				i2c_imx, IMX_I2C_I2DR);
> > -	result = i2c_imx_trx_complete(i2c_imx);
> > +	result = i2c_imx_trx_complete(i2c_imx, false);
> >  	if (result)
> >  		return result;
> >  
> > @@ -721,7 +750,7 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
> >  
> >  	msgs->buf[msgs->len-2] = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> >  	/* read n byte data */
> > -	result = i2c_imx_trx_complete(i2c_imx);
> > +	result = i2c_imx_trx_complete(i2c_imx, false);
> >  	if (result)
> >  		return result;
> >  
> > @@ -734,7 +763,7 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
> >  		temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> >  		temp &= ~(I2CR_MSTA | I2CR_MTX);
> >  		imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > -		i2c_imx_bus_busy(i2c_imx, 0);
> > +		i2c_imx_bus_busy(i2c_imx, 0, false);
> >  	} else {
> >  		/*
> >  		 * For i2c master receiver repeat restart operation like:
> > @@ -752,7 +781,8 @@ static int i2c_imx_dma_read(struct imx_i2c_struct *i2c_imx,
> >  	return 0;
> >  }
> >  
> > -static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs)
> > +static int i2c_imx_write(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs,
> > +			 bool atomic)
> >  {
> >  	int i, result;
> >  
> > @@ -761,7 +791,7 @@ static int i2c_imx_write(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs)
> >  
> >  	/* write slave address */
> >  	imx_i2c_write_reg(i2c_8bit_addr_from_msg(msgs), i2c_imx, IMX_I2C_I2DR);
> > -	result = i2c_imx_trx_complete(i2c_imx);
> > +	result = i2c_imx_trx_complete(i2c_imx, atomic);
> >  	if (result)
> >  		return result;
> >  	result = i2c_imx_acked(i2c_imx);
> > @@ -775,7 +805,7 @@ static int i2c_imx_write(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs)
> >  			"<%s> write byte: B%d=0x%X\n",
> >  			__func__, i, msgs->buf[i]);
> >  		imx_i2c_write_reg(msgs->buf[i], i2c_imx, IMX_I2C_I2DR);
> > -		result = i2c_imx_trx_complete(i2c_imx);
> > +		result = i2c_imx_trx_complete(i2c_imx, atomic);
> >  		if (result)
> >  			return result;
> >  		result = i2c_imx_acked(i2c_imx);
> > @@ -785,7 +815,8 @@ static int i2c_imx_write(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs)
> >  	return 0;
> >  }
> >  
> > -static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct
> > i2c_msg *msgs, bool is_lastmsg)
> > +static int i2c_imx_read(struct imx_i2c_struct *i2c_imx, struct i2c_msg *msgs,
> > +			bool is_lastmsg, bool atomic)
> >  {
> >  	int i, result;
> >  	unsigned int temp;
> > @@ -798,7 +829,7 @@ static int i2c_imx_read(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs, bo
> >  
> >  	/* write slave address */
> >  	imx_i2c_write_reg(i2c_8bit_addr_from_msg(msgs), i2c_imx, IMX_I2C_I2DR);
> > -	result = i2c_imx_trx_complete(i2c_imx);
> > +	result = i2c_imx_trx_complete(i2c_imx, atomic);
> >  	if (result)
> >  		return result;
> >  	result = i2c_imx_acked(i2c_imx);
> > @@ -831,7 +862,7 @@ static int i2c_imx_read(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs, bo
> >  	for (i = 0; i < msgs->len; i++) {
> >  		u8 len = 0;
> >  
> > -		result = i2c_imx_trx_complete(i2c_imx);
> > +		result = i2c_imx_trx_complete(i2c_imx, atomic);
> >  		if (result)
> >  			return result;
> >  		/*
> > @@ -859,7 +890,7 @@ static int i2c_imx_read(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs, bo
> >  				temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> >  				temp &= ~(I2CR_MSTA | I2CR_MTX);
> >  				imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > -				i2c_imx_bus_busy(i2c_imx, 0);
> > +				i2c_imx_bus_busy(i2c_imx, 0, atomic);
> >  			} else {
> >  				/*
> >  				 * For i2c master receiver repeat restart operation like:
> > @@ -890,8 +921,8 @@ static int i2c_imx_read(struct imx_i2c_struct
> > *i2c_imx, struct i2c_msg *msgs, bo
> >  	return 0;
> >  }
> >  
> > -static int i2c_imx_xfer(struct i2c_adapter *adapter,
> > -						struct i2c_msg *msgs, int num)
> > +static int i2c_imx_xfer_common(struct i2c_adapter *adapter,
> > +			       struct i2c_msg *msgs, int num, bool atomic)
> >  {
> >  	unsigned int i, temp;
> >  	int result;
> > @@ -900,16 +931,16 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >  
> >  	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> >  
> > -	result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> > -	if (result < 0)
> > -		goto out;
> > -
> >  	/* Start I2C transfer */
> > -	result = i2c_imx_start(i2c_imx);
> > +	result = i2c_imx_start(i2c_imx, atomic);
> >  	if (result) {
> > -		if (i2c_imx->adapter.bus_recovery_info) {
> > +		/*
> > +		 * Bus recovery uses gpiod_get_value_cansleep() which is not
> > +		 * allowed within atomic context.
> > +		 */
> > +		if (!atomic && i2c_imx->adapter.bus_recovery_info) {
> >  			i2c_recover_bus(&i2c_imx->adapter);
> > -			result = i2c_imx_start(i2c_imx);
> > +			result = i2c_imx_start(i2c_imx, atomic);
> >  		}
> >  	}
> >  
> > @@ -927,7 +958,7 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >  			temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> >  			temp |= I2CR_RSTA;
> >  			imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> > -			result = i2c_imx_bus_busy(i2c_imx, 1);
> > +			result = i2c_imx_bus_busy(i2c_imx, 1, atomic);
> >  			if (result)
> >  				goto fail0;
> >  		}
> > @@ -951,13 +982,14 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >  			(temp & I2SR_SRW ? 1 : 0), (temp & I2SR_IIF ? 1 : 0),
> >  			(temp & I2SR_RXAK ? 1 : 0));
> >  #endif
> > -		if (msgs[i].flags & I2C_M_RD)
> > -			result = i2c_imx_read(i2c_imx, &msgs[i], is_lastmsg);
> > -		else {
> > -			if (i2c_imx->dma && msgs[i].len >= DMA_THRESHOLD)
> > +		if (msgs[i].flags & I2C_M_RD) {
> > +			result = i2c_imx_read(i2c_imx, &msgs[i], is_lastmsg, atomic);
> > +		} else {
> > +			if (!atomic &&
> > +			    i2c_imx->dma && msgs[i].len >= DMA_THRESHOLD)
> >  				result = i2c_imx_dma_write(i2c_imx, &msgs[i]);
> >  			else
> > -				result = i2c_imx_write(i2c_imx, &msgs[i]);
> > +				result = i2c_imx_write(i2c_imx, &msgs[i], atomic);
> >  		}
> >  		if (result)
> >  			goto fail0;
> > @@ -965,18 +997,49 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
> >  
> >  fail0:
> >  	/* Stop I2C transfer */
> > -	i2c_imx_stop(i2c_imx);
> > -
> > -	pm_runtime_mark_last_busy(i2c_imx->adapter.dev.parent);
> > -	pm_runtime_put_autosuspend(i2c_imx->adapter.dev.parent);
> > +	i2c_imx_stop(i2c_imx, atomic);
> >  
> > -out:
> >  	dev_dbg(&i2c_imx->adapter.dev, "<%s> exit with: %s: %d\n", __func__,
> >  		(result < 0) ? "error" : "success msg",
> >  			(result < 0) ? result : num);
> >  	return (result < 0) ? result : num;
> >  }
> >  
> > +static int i2c_imx_xfer(struct i2c_adapter *adapter,
> > +			struct i2c_msg *msgs, int num)
> > +{
> > +	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(adapter);
> > +	int result;
> > +
> > +	result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
> > +	if (result < 0)
> > +		return result;
> > +
> > +	result = i2c_imx_xfer_common(adapter, msgs, num, false);
> > +
> > +	pm_runtime_mark_last_busy(i2c_imx->adapter.dev.parent);
> > +	pm_runtime_put_autosuspend(i2c_imx->adapter.dev.parent);
> > +
> > +	return result;
> > +}
> > +
> > +static int i2c_imx_xfer_atomic(struct i2c_adapter *adapter,
> > +			       struct i2c_msg *msgs, int num)
> > +{
> > +	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(adapter);
> > +	int result;
> > +
> > +	result = clk_enable(i2c_imx->clk);
> > +	if (result)
> > +		return result;
> > +
> > +	result = i2c_imx_xfer_common(adapter, msgs, num, true);
> > +
> > +	clk_disable(i2c_imx->clk);
> > +
> > +	return result;
> > +}
> > +
> >  static void i2c_imx_prepare_recovery(struct i2c_adapter *adap)
> >  {
> >  	struct imx_i2c_struct *i2c_imx;
> > @@ -1049,8 +1112,9 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
> >  }
> >  
> >  static const struct i2c_algorithm i2c_imx_algo = {
> > -	.master_xfer	= i2c_imx_xfer,
> > -	.functionality	= i2c_imx_func,
> > +	.master_xfer = i2c_imx_xfer,
> > +	.master_xfer_atomic = i2c_imx_xfer_atomic,
> > +	.functionality = i2c_imx_func,
> >  };
> >  
> >  static int i2c_imx_probe(struct platform_device *pdev)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
