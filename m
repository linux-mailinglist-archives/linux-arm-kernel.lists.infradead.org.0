Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A6C1357A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gh0MLRELLqJJRmCpcSqEp8OL3OD2gBXLVHw83qyfbw=; b=j1mSJtxuQdOtV2
	PtswcvzumwrqANwaDxZPQK9tq64+7tRDD6eSGy2VM4+M9HUYRWXI6kr+mJ2ilRuBfz0sxqpGCp1QE
	1tdvOba/gTPRzeyAC7KLo2HijlWSlsDGU9+mukTyuYFhSkXHQJd4Y6mcwe+vdVX3/uuvx8y4aeKiv
	8F8DjDJYe2ci5jdy4u8Q1Eckxj4+CjwyZlXSmC5Fdc7Dw0hXgItvW9kmrO+TfnfKQ6JnCF0HKcl0W
	LjT58gvE5wtojulVkAmVAeic/r8+fuyj781+k2Up4m9zFk65ShwNWCwLbSi7UB7v4yA+GPYrCDjrf
	jwK2w7dkxzug7kKuGYwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVfx-0001Yv-1o; Thu, 09 Jan 2020 11:08:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVfn-00014m-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SzztYWTbiunX74NBuJ72EKUZqsEhO3b6F7xEF35LviA=; b=iE1AHF50bzSbeDbrpOtZ8V0FM
 ofRSXRsbv73bQQkZVI3nXbbv/8qNhiCgl53RQyo4bZKKx9k7EHVIsTRBc7/TKjNr/5y6hbee/QRbM
 AhTPKEwT4zanjDAqe9Zu0VAGTmC5F0cV2RJjZaftkTW9xbBGB+lHK7HTUhi/n/GPNT17B8Mli0vTa
 vIiRKfAM00YUxNGckKs7CuAXcLdVTc1eHwMQAH/0+UI46CM1VpnloVtcrNKQeRXfCbT+u1cThuJd9
 D5T325/73opZ2Jo2FvlZQMVjMbCxgGnZ8nVLQDplt5/ZtQP+1ya+tEHsLX/5I9cMH4xP0Q8o7Fzh4
 CaaEZdUSQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52606)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipVdX-0004a1-Em; Thu, 09 Jan 2020 11:05:59 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipVdV-0000RW-LY; Thu, 09 Jan 2020 11:05:57 +0000
Date: Thu, 9 Jan 2020 11:05:57 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH v2 3/6] i2c: at91: Send bus clear command if SCL is down
Message-ID: <20200109110557.GO25745@shell.armlinux.org.uk>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-4-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103094821.13185-4-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_030819_984936_73FAA33A 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 devicetree@vger.kernel.org, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 03, 2020 at 09:49:07AM +0000, Codrin.Ciubotariu@microchip.com wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SCL pin. We can generate a bus clear command, hoping that the slave
> might release the pins.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
> 
> Changes in v2:
>  - use CLEAR command only if SDA is down; update patch subject to
>    reflect this;

Given this change, shouldn't the commit message above be updated?

>  - CLEAR command is no longer used for sama5d2, only sam9x60;
> 
>  drivers/i2c/busses/i2c-at91-core.c   |  9 ++++++++
>  drivers/i2c/busses/i2c-at91-master.c | 32 +++++++++++++++++++++++-----
>  drivers/i2c/busses/i2c-at91.h        |  7 +++++-
>  3 files changed, 42 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index e13af4874976..128eafc05adb 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -71,6 +71,7 @@ static struct at91_twi_pdata at91rm9200_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9261_config = {
> @@ -82,6 +83,7 @@ static struct at91_twi_pdata at91sam9261_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9260_config = {
> @@ -93,6 +95,7 @@ static struct at91_twi_pdata at91sam9260_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g20_config = {
> @@ -104,6 +107,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata at91sam9g10_config = {
> @@ -115,6 +119,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static const struct platform_device_id at91_twi_devtypes[] = {
> @@ -148,6 +153,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
>  	.has_dig_filtr = false,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata sama5d4_config = {
> @@ -159,6 +165,7 @@ static struct at91_twi_pdata sama5d4_config = {
>  	.has_dig_filtr = true,
>  	.has_adv_dig_filtr = false,
>  	.has_ana_filtr = false,
> +	.has_clear_cmd = false,
>  };
>  
>  static struct at91_twi_pdata sama5d2_config = {
> @@ -170,6 +177,7 @@ static struct at91_twi_pdata sama5d2_config = {
>  	.has_dig_filtr = true,
>  	.has_adv_dig_filtr = true,
>  	.has_ana_filtr = true,
> +	.has_clear_cmd = false,	/* due to errata, CLEAR cmd is not working */
>  };
>  
>  static struct at91_twi_pdata sam9x60_config = {
> @@ -181,6 +189,7 @@ static struct at91_twi_pdata sam9x60_config = {
>  	.has_dig_filtr = true,
>  	.has_adv_dig_filtr = true,
>  	.has_ana_filtr = true,
> +	.has_clear_cmd = true,
>  };
>  
>  static const struct of_device_id atmel_twi_dt_ids[] = {
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index c55e8ff35201..8c4f20317847 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -480,7 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>  	unsigned long time_left;
>  	bool has_unre_flag = dev->pdata->has_unre_flag;
>  	bool has_alt_cmd = dev->pdata->has_alt_cmd;
> -	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> +	bool has_clear_cmd = dev->pdata->has_clear_cmd;
>  
>  	/*
>  	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
> @@ -641,10 +641,32 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>  			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>  	}
>  
> -	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
> -		dev_dbg(dev->dev,
> -			"SDA is down; clear bus using gpio\n");
> -		i2c_recover_bus(&dev->adapter);
> +	/*
> +	 * some faulty I2C slave devices might hold SDA down;
> +	 * we can send a bus clear command, hoping that the pins will be
> +	 * released
> +	 */
> +	if (has_clear_cmd) {
> +		if (!(dev->transfer_status & AT91_TWI_SDA)) {
> +			dev_dbg(dev->dev,
> +				"SDA is down; sending bus clear command\n");
> +			if (dev->use_alt_cmd) {
> +				unsigned int acr;
> +
> +				acr = at91_twi_read(dev, AT91_TWI_ACR);
> +				acr &= ~AT91_TWI_ACR_DATAL_MASK;
> +				at91_twi_write(dev, AT91_TWI_ACR, acr);
> +			}
> +			at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
> +		}
> +	} else {
> +		struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> +
> +		if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
> +			dev_dbg(dev->dev,
> +				"SDA is down; clear bus using gpio\n");
> +			i2c_recover_bus(&dev->adapter);
> +		}
>  	}
>  
>  	return ret;
> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
> index eb335b71e775..80f77d523346 100644
> --- a/drivers/i2c/busses/i2c-at91.h
> +++ b/drivers/i2c/busses/i2c-at91.h
> @@ -36,6 +36,7 @@
>  #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
>  #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
>  #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
> +#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
>  #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
>  #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
>  #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
> @@ -69,6 +70,8 @@
>  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>  #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
>  #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
> +#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
> +#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
>  
>  #define	AT91_TWI_INT_MASK \
>  	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
> @@ -81,7 +84,8 @@
>  #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
>  
>  #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
> -#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
> +#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
> +#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
>  #define	AT91_TWI_ACR_DIR	BIT(8)
>  
>  #define AT91_TWI_FILTR		0x0044
> @@ -118,6 +122,7 @@ struct at91_twi_pdata {
>  	bool has_dig_filtr;
>  	bool has_adv_dig_filtr;
>  	bool has_ana_filtr;
> +	bool has_clear_cmd;
>  	struct at_dma_slave dma_slave;
>  };
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
