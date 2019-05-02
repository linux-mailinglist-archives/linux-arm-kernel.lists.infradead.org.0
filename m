Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49C11AAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJHjlpgRLvdfFtl8xEoZsdD6heh5DAFNejGxnizz5Jw=; b=a7RygHgZvsdm4K
	qnUNLYGnqx+QqFk4mMlBxtHldpae72Gr+TfG+AVY/ksFkW+XkY5AuSWuOWBNf+JgmELV46ZNQKtCE
	maVXh9vTRnZcC04sA8FkcffY/XsbaoXApI3l6Ta7VpXeD+FjCcFLVRGWhnz+8/d5P11GYU3XdEOe1
	a2nOJTQF1mCUAVj7zygScRDOnRK591o1+vNdk1OWKvjMZnnb9tvydO3wUMXpTPPI+m2WSBXK5rnf6
	cmhFIM4ddUg1ZYeplO7YO6Q/lsiwkIN1dn6JpTTYB6JhmdM1jnEvEZ1lh6ARXaOtoAQOdHFz4+KQa
	AeOf1GfedU2/qAHsZxgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCHn-0004cR-RM; Thu, 02 May 2019 14:02:07 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCHf-0004aD-CB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:02:01 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,421,1549954800"; d="scan'208";a="31761172"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 02 May 2019 07:01:54 -0700
Received: from localhost (10.10.76.4) by chn-sv-exch07.mchp-main.com
 (10.10.76.108) with Microsoft SMTP Server id 14.3.352.0; Thu, 2 May 2019
 07:01:53 -0700
Date: Thu, 2 May 2019 16:01:16 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Raag Jadav <raagjadav@gmail.com>
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Message-ID: <20190502140116.rim72idpgvq4h4vc@M43218.corp.atmel.com>
Mail-Followup-To: Raag Jadav <raagjadav@gmail.com>,
 linux-kernel@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
 <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
 <20190429223332.GA3908@pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429223332.GA3908@pc>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070159_529468_515747B9 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:03:32AM +0530, Raag Jadav wrote:
> External E-Mail
> 
> 
> On Mon, Apr 29, 2019 at 11:00:05AM +0200, Ludovic Desroches wrote:
> > Hello Raag,
> > 
> > On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
> > > External E-Mail
> > > 
> > > 
> > > Performing i2c write operation while SDA or SCL line is held
> > > or grounded by slave device, we go into infinite at91_twi_write_next_byte
> > > loop with TXRDY interrupt spam.
> > 
> > Sorry but I am not sure to have the full picture, the controller is in
> > slave or master mode?
> > 
> > SVREAD is only used in slave mode. When SVREAD is set, it means that a read
> > access is performed and your issue concerns the write operation.
> > 
> > Regards
> > 
> > Ludovic
> 
> Yes, even though the datasheet suggests that SVREAD is irrelevant in master mode,
> TXRDY and SVREAD are the only ones being set in status register upon reproducing the issue.
> Couldn't think of a better way to handle such strange behaviour.
> Any suggestions would be appreciated.

I have the confirmation that you can't rely on the SVREAD flag when in
master mode. This flag should always have the same value.

I am trying to understand what could lead to your situation. Can you
give me more details. What kind of device it is? What does lead to this
situation? Does it happen randomly or not?

Regards

Ludovic

> 
> Cheers,
> Raag
> 
> > 
> > > 
> > > Signed-off-by: Raag Jadav <raagjadav@gmail.com>
> > > ---
> > >  drivers/i2c/busses/i2c-at91.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> > > index 3f3e8b3..b2f5fdb 100644
> > > --- a/drivers/i2c/busses/i2c-at91.c
> > > +++ b/drivers/i2c/busses/i2c-at91.c
> > > @@ -72,6 +72,7 @@
> > >  #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
> > >  #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
> > >  #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
> > > +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
> > >  #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
> > >  #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
> > >  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
> > > @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
> > >  		at91_disable_twi_interrupts(dev);
> > >  		complete(&dev->cmd_complete);
> > >  	} else if (irqstatus & AT91_TWI_TXRDY) {
> > > -		at91_twi_write_next_byte(dev);
> > > +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
> > > +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> > > +		else
> > > +			at91_twi_write_next_byte(dev);
> > >  	}
> > >  
> > >  	/* catch error flags */
> > > -- 
> > > 2.7.4
> > > 
> > > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
