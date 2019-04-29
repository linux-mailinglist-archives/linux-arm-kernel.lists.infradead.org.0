Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1184CDE92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Mn9TVTqUoScaueOs3f+m2HI7UnBxkkynXWFiun1SFQ=; b=GR5zBAuH19I+MQ
	nAzltluoKL+bqPk4/RfACzHCdK+3clO2PnwtSbC6t9rdb/vswZhSRE5AFMtjNoGEbEYrm8z1imAgc
	dZAynpMtPB+poOuu68mZM7IOU3w2QSVPKLjaNZUmdwsRKMWsstWEsIppFnO60Wv4zErYXstzQDAlh
	Ry9KUyqGaHDkAQsXFW0c76Nv6YpwfyiIt6e1XJyhXlxaxwXgO17D+txhJOYQb6zlJvWJAgDTbKgn5
	6MNgpJWYO2AtZ70QllqLCvCVqJVLP1hLlhB3RHM3rVTi0t7nTAwtU2iTW21B8zi6/hO6Lh5W5zj1Z
	sx+kbRr9OfR6OBkdwVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL29f-0002dd-Ty; Mon, 29 Apr 2019 09:00:55 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL29S-0002ZV-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:00:45 +0000
X-IronPort-AV: E=Sophos;i="5.60,409,1549954800"; d="scan'208";a="30867583"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 29 Apr 2019 02:00:40 -0700
Received: from localhost (10.10.76.4) by chn-sv-exch02.mchp-main.com
 (10.10.76.38) with Microsoft SMTP Server id 14.3.352.0; Mon, 29 Apr 2019
 02:00:39 -0700
Date: Mon, 29 Apr 2019 11:00:05 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Raag Jadav <raagjadav@gmail.com>
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Message-ID: <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
Mail-Followup-To: Raag Jadav <raagjadav@gmail.com>,
 linux-i2c@vger.kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_020042_124699_4997A6FE 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Raag,

On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
> External E-Mail
> 
> 
> Performing i2c write operation while SDA or SCL line is held
> or grounded by slave device, we go into infinite at91_twi_write_next_byte
> loop with TXRDY interrupt spam.

Sorry but I am not sure to have the full picture, the controller is in
slave or master mode?

SVREAD is only used in slave mode. When SVREAD is set, it means that a read
access is performed and your issue concerns the write operation.

Regards

Ludovic

> 
> Signed-off-by: Raag Jadav <raagjadav@gmail.com>
> ---
>  drivers/i2c/busses/i2c-at91.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index 3f3e8b3..b2f5fdb 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -72,6 +72,7 @@
>  #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
>  #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
>  #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
> +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
>  #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
>  #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
>  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
> @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
>  		at91_disable_twi_interrupts(dev);
>  		complete(&dev->cmd_complete);
>  	} else if (irqstatus & AT91_TWI_TXRDY) {
> -		at91_twi_write_next_byte(dev);
> +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
> +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> +		else
> +			at91_twi_write_next_byte(dev);
>  	}
>  
>  	/* catch error flags */
> -- 
> 2.7.4
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
