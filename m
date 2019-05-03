Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEED1366D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6ceeSZourDOFMv6Rf5IEIto0ySXCMz0OkqTKS9eSlA=; b=kJHUeGjRz7F7Y6
	287gstDR7KXxra+oXshuQsidSwxns/h+CKiRuWanjpCYVzZqJVJu3l3zOJFZiJ8It7cA6FKJbgw76
	8XKTqJmxuj2h73lLmnDKrxHDv0NhXwwGbmfWKCdZD+CH+Dv2kEq4tBa1aRDRUFvVYV6Mw5nRb4ggK
	levD4nUMcQUlTLvQMknRtrMB67h9yaah9zJUefsxnbSxpjKb/Yz1luFBAuS61GvWu+NGFtC0DQV02
	YwwqxJoLSpPl/pylhEvImUuuQfsrOJ/8dU6RePYeOpWn7pSOuVrgspWwbVGNu6NlgFFk+Xb8mWqog
	/ugPFtJevOl7Suzhks8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMi55-0001bc-BQ; Fri, 03 May 2019 23:59:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMi4x-0001ar-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:59:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id 85so3465412pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 16:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DdddGI6DDT7dsMKCDs7wmk1NY1s6eqW3FG1qa627pfU=;
 b=ntfThZULWIMDKZD8/FI97Sy8goP7TxfL2GUgz3WMEJBa0EVSmZx/8tH/d63kkoZxp9
 pvJKiWDe6rZpTQbrAEkRc4RFkcGH3ypR093twH8LFUYQMXLQ1rbGDjNx/18Xl+asTYoh
 KyjuYxFOpRkhA5+WOrLQ6BxRQOnOWDkcd2PAw7ZmYJm4DPS4xaomXRr5DxrrDMMfAZK+
 QJwXmiXTSRyoNAxAD3hX7okYG80IyhTOC2+bGrsgmNn8pVHcNzQ2pPyicuH4Wkcp8v2v
 CZW/v7A9o8PCP1E+eRw5IFAcgxS7WrXEhhBtV8NIQ5M8uUzGRap+9o+95KExRYmBhEGa
 2G2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DdddGI6DDT7dsMKCDs7wmk1NY1s6eqW3FG1qa627pfU=;
 b=qanTmcStYXeJklFAJ1p3j2+0eWdAAc+WLK43qnsygkpw/CReyM5LXBvwANQgZvEBAW
 OYasDoDCQbQbZPQNS7FOSQ4WcuTCZTzg8N1J36rzgYe/PiSfl2RkjfO4aHvz4g4dBrUG
 cQZ5DGp5nJeEaucq55oveAI83LSEXlDOI68tjPqCTS93Lx45WVUxR31qzJutGpSEzX4C
 sS71MUiVD19I9XeyUmgMymm66K573nWuzJBu9zrzREXULLd9qeCamCbj7GH2bprqT9f9
 d0/HVbJYz3GqIS3ZlRUeJwL4fKX4FM415tE8R+kltY6c7YQRzUMuvHGeniFxxYnJjy1c
 598A==
X-Gm-Message-State: APjAAAVrmroe67DlYlUqg/QRSPFIhjzULbDH0NVwmKB0HlrXlvLqf3tK
 hvpsy2Ir52Yob2oD479Pi0E=
X-Google-Smtp-Source: APXvYqywxmvzEg/abOIYBaWKkRkJeaD7WfUZmeBvshORCc5bVqRKb1vw7fMBaC+PVFCTiTq2WBkBxw==
X-Received: by 2002:a65:6541:: with SMTP id a1mr13854624pgw.233.1556927938712; 
 Fri, 03 May 2019 16:58:58 -0700 (PDT)
Received: from pc ([123.201.65.103])
 by smtp.gmail.com with ESMTPSA id j32sm3703933pgi.73.2019.05.03.16.58.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:58:57 -0700 (PDT)
Date: Sat, 4 May 2019 05:28:51 +0530
From: Raag Jadav <raagjadav@gmail.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Message-ID: <20190503235851.GA4242@pc>
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
 <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
 <20190429223332.GA3908@pc>
 <20190502140116.rim72idpgvq4h4vc@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502140116.rim72idpgvq4h4vc@M43218.corp.atmel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165859_893025_2802DF17 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raagjadav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:01:16PM +0200, Ludovic Desroches wrote:
> On Tue, Apr 30, 2019 at 04:03:32AM +0530, Raag Jadav wrote:
> > External E-Mail
> > 
> > 
> > On Mon, Apr 29, 2019 at 11:00:05AM +0200, Ludovic Desroches wrote:
> > > Hello Raag,
> > > 
> > > On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
> > > > External E-Mail
> > > > 
> > > > 
> > > > Performing i2c write operation while SDA or SCL line is held
> > > > or grounded by slave device, we go into infinite at91_twi_write_next_byte
> > > > loop with TXRDY interrupt spam.
> > > 
> > > Sorry but I am not sure to have the full picture, the controller is in
> > > slave or master mode?
> > > 
> > > SVREAD is only used in slave mode. When SVREAD is set, it means that a read
> > > access is performed and your issue concerns the write operation.
> > > 
> > > Regards
> > > 
> > > Ludovic
> > 
> > Yes, even though the datasheet suggests that SVREAD is irrelevant in master mode,
> > TXRDY and SVREAD are the only ones being set in status register upon reproducing the issue.
> > Couldn't think of a better way to handle such strange behaviour.
> > Any suggestions would be appreciated.
> 
> I have the confirmation that you can't rely on the SVREAD flag when in
> master mode. This flag should always have the same value.
> 
> I am trying to understand what could lead to your situation. Can you
> give me more details. What kind of device it is? What does lead to this
> situation? Does it happen randomly or not?

One of the sama5d2 based board I worked on, was having trouble complete its boot
because of a faulty i2c device, which was randomly holding down the SDA line
on i2c write operation, not allowing the controller to complete its transmission,
causing a massive TXRDY interrupt spam, ultimately hanging the processor.

Another strange observation was that SVREAD was being set in the status register
along with TXRDY, every time I reproduced the issue.
You can reproduce it by simply grounding the SDA line and performing i2c write
on the bus.

Note that NACK, LOCK or TXCOMP are never set as the transmission never completes.
I'm not sure why slave bits are being set in master mode,
but it's been working reliably for me.

This patch doesn't recover the SDA line. It just prevents the processor from
getting hanged in case of i2c bus lockup.

Cheers,
Raag

> 
> Regards
> 
> Ludovic
> 
> > 
> > Cheers,
> > Raag
> > 
> > > 
> > > > 
> > > > Signed-off-by: Raag Jadav <raagjadav@gmail.com>
> > > > ---
> > > >  drivers/i2c/busses/i2c-at91.c | 6 +++++-
> > > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> > > > index 3f3e8b3..b2f5fdb 100644
> > > > --- a/drivers/i2c/busses/i2c-at91.c
> > > > +++ b/drivers/i2c/busses/i2c-at91.c
> > > > @@ -72,6 +72,7 @@
> > > >  #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
> > > >  #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
> > > >  #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
> > > > +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
> > > >  #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
> > > >  #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
> > > >  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
> > > > @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
> > > >  		at91_disable_twi_interrupts(dev);
> > > >  		complete(&dev->cmd_complete);
> > > >  	} else if (irqstatus & AT91_TWI_TXRDY) {
> > > > -		at91_twi_write_next_byte(dev);
> > > > +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
> > > > +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> > > > +		else
> > > > +			at91_twi_write_next_byte(dev);
> > > >  	}
> > > >  
> > > >  	/* catch error flags */
> > > > -- 
> > > > 2.7.4
> > > > 
> > > > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
