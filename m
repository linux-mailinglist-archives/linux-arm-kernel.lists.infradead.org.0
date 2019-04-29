Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA52ECD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q0e48D3icYBfzPhsY7oMRD77dptO+H8DPtMGGhLB1M=; b=ran5HktJsaBN18
	kopGoPX1lmR8Bit5jc2iBoCNlgqyP7havD5naS9kpdeKpJ7UM/RFjq2vzcFt//gJ0xYM3eZb9iXyM
	La+4Li+I9N4NKPMBQcWGazmRAi1Z9DAwimSn8T/SnJn2sFpMaqto4vAcKnfVJBv1S9X75Jom9KNsj
	grcwgqYraPDWGps/xjsFW8lNoOSow3JLPkNn2oWA6lQkCs5XnLTf/VaAy8cyWKy2oXfpnJahez7Q4
	tXZH7UWFaslpPx0v9srpkIniHhlrVxWabYYJh7PI3ApYyZjHgrVmusESQzokc/DJF1OXu0wxYLnFY
	XmOodWQKC76Ohxz0WAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEqJ-00072z-Sx; Mon, 29 Apr 2019 22:33:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEqC-00072D-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 22:33:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so5858633pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 15:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hL5lSSld0IWgxzNWY+bqrGKso5WccHGfqU5/pwos1Ts=;
 b=sAzxFF00P47bPDHQeN4SDrTy3myFJgatoUS4PlumX1u/gcawnsFZRjiPNJxdGf+BPL
 tA811xDyDIHr+uixedWIjFoqh/Nfl/aI3aIp9RLM1zrNF4cWZuEduJ6pyiIR2OYouS0Z
 KVPc0IBWNZzUfjP4PAp3OuH5vGEPGWIAMy9WTlU+LLVuAzFQBPn9XYj79sJxMc/4E6xs
 j31m7v/bY6g9fQLCUirgdolBreFo5oXqL2ocBLcXSLCmoDZY2YLP3X0Dv4xqdhQY+D+T
 F9OY5k+zNbpycd9JCcBcyfUAA4tsPQT/5lzilccYpWFSS8PEjq3qmDabdtWtudoDF1yA
 s4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hL5lSSld0IWgxzNWY+bqrGKso5WccHGfqU5/pwos1Ts=;
 b=mBPG3uwPikVuNHQ8OMH66Rq1IYIr1y+xgSIo5r3KLri0cS29Dz7zwBP219Su/9jB+b
 cZffhe+7Dle7dWmRMbW+yTQwRyN9KSNgAN6y+MJDIHsHd5HIVsju+eQ1ZWT7DXvtYD+Z
 7C2kI1yhrZ+ig+aQtVsbmp8w4j5Weo71IKtYwaYXQcfn2douJXu715SL5Swvsmn3raNj
 THMsJhQnX8phPi8pMW+/dyoHgrRpbVWnQ4/utHYViOu9tbRplWOZlX/Azi7+aVZFQdpx
 PEgwzV2MEBTa7aNrhmvtK8vfK+bO5ezODubOLB3WWmqaeQB08KlKY008Bc4w7S88LkHa
 SHIA==
X-Gm-Message-State: APjAAAWK7fOFc55nqqLxDWaWxvDqWhEnadqGEv2yRSXIEDnVXIR/hLse
 Rg+bw1vAUJqA8HvUej3jC8w=
X-Google-Smtp-Source: APXvYqyr8866HGbkrmQwWIE2ZBU4+4HYiqTbjqjMLHtUz0q7+GMQWueEYFZvyprsEcTKlBuS17IAUg==
X-Received: by 2002:a63:c702:: with SMTP id n2mr23366927pgg.255.1556577219738; 
 Mon, 29 Apr 2019 15:33:39 -0700 (PDT)
Received: from pc ([219.91.196.46])
 by smtp.gmail.com with ESMTPSA id d10sm10194424pgi.6.2019.04.29.15.33.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 15:33:38 -0700 (PDT)
Date: Tue, 30 Apr 2019 04:03:32 +0530
From: Raag Jadav <raagjadav@gmail.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Message-ID: <20190429223332.GA3908@pc>
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
 <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_153340_807236_5B348E56 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raagjadav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Apr 29, 2019 at 11:00:05AM +0200, Ludovic Desroches wrote:
> Hello Raag,
> 
> On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
> > External E-Mail
> > 
> > 
> > Performing i2c write operation while SDA or SCL line is held
> > or grounded by slave device, we go into infinite at91_twi_write_next_byte
> > loop with TXRDY interrupt spam.
> 
> Sorry but I am not sure to have the full picture, the controller is in
> slave or master mode?
> 
> SVREAD is only used in slave mode. When SVREAD is set, it means that a read
> access is performed and your issue concerns the write operation.
> 
> Regards
> 
> Ludovic

Yes, even though the datasheet suggests that SVREAD is irrelevant in master mode,
TXRDY and SVREAD are the only ones being set in status register upon reproducing the issue.
Couldn't think of a better way to handle such strange behaviour.
Any suggestions would be appreciated.

Cheers,
Raag

> 
> > 
> > Signed-off-by: Raag Jadav <raagjadav@gmail.com>
> > ---
> >  drivers/i2c/busses/i2c-at91.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> > index 3f3e8b3..b2f5fdb 100644
> > --- a/drivers/i2c/busses/i2c-at91.c
> > +++ b/drivers/i2c/busses/i2c-at91.c
> > @@ -72,6 +72,7 @@
> >  #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
> >  #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
> >  #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
> > +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
> >  #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
> >  #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
> >  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
> > @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
> >  		at91_disable_twi_interrupts(dev);
> >  		complete(&dev->cmd_complete);
> >  	} else if (irqstatus & AT91_TWI_TXRDY) {
> > -		at91_twi_write_next_byte(dev);
> > +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
> > +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> > +		else
> > +			at91_twi_write_next_byte(dev);
> >  	}
> >  
> >  	/* catch error flags */
> > -- 
> > 2.7.4
> > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
