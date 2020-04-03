Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D573619D17B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjOdYRblLREj2CBBPh6Da0x0JJfHskmUsMGLEzkB/W0=; b=GwAZPaz3LRzDoM
	HA8B6G8miAqH7HTQ6SI490JiiNGRyyyJu0Q3C5Bc7naDzzLcgHL6KMyyOTUh2P/PYkNpVtfcLp1B0
	b7W9cap7JQPSfMRJFmrtMZHKJsMP24GzWA+oKhQ4+8d1bYi0bfnosAwbgL9R0pcH81fI3N6gBjIHz
	c0fw5m9PwpJpBu4Ys2TK0S8Bq20ub/t570lkWhyQVN5hWxExIhAjhUCLsRkmiBapaj+Vu35pmT+i3
	1ATdjMDIG7olL4hqW9xHPXIhBo5+EZu0L/k4g2SxL24pksxpqo2Q3AOP87YjhyNQCx0bEmYxFeVnz
	iAYBU+1YelmGOrQ/c3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKH71-00046O-LZ; Fri, 03 Apr 2020 07:51:35 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKH6u-00045a-4o
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 07:51:29 +0000
Received: by mail-ed1-f68.google.com with SMTP id i16so8157222edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 00:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FrbcHFj0dm8KrckD2b/yiBc/1g6Pf5o+uljHj8BaPN8=;
 b=hPt8xVr47HQWVbpcqMVTWcwtaN0tGCK3ZxyePnD2HuHgodWSv6L2TqdolrYFYWxClV
 NbUwVF8ok384e7Q72t1wJkRn3kTZnkRw8y+IrpcDP6NZz2bv/6LtVZFYI+eHLo8EwrnY
 bw2/CH0H/NRGC4RF2TRnIBBHrUNEWbn19dbDR6ZOyHJ7L2n36mqtUvlHBzYpq0WBRt59
 0RtlnSCp0WOg8F2HpYYkT89bBRg3y4+VxwLl+NMBoQaNK9fZ6PBoC6XMoHGgG+AtiGfd
 OqUMpmRYNG0342GWguPiYPdrrCZlImzFGaoGMB6e0OuCx7bOXU/CHT80SQZg2dlWXpkq
 IrYA==
X-Gm-Message-State: AGi0PuZ65EVL24i22K0PUJFKOam1O9PQxyCnsZLCwpwwp6ZClX4bXuru
 wUOUZdyeqyeGSBMqHcXctFo=
X-Google-Smtp-Source: APiQypIrcHJYRv1WIrgNA9AiIhYtOM0atxCY3hVtPi2Fwodq0nL/GJ/YWXSy5trX555E50tOg/puaA==
X-Received: by 2002:a17:906:64b:: with SMTP id
 t11mr6896556ejb.224.1585900285735; 
 Fri, 03 Apr 2020 00:51:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id l24sm1425106ejx.81.2020.04.03.00.51.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 00:51:24 -0700 (PDT)
Date: Fri, 3 Apr 2020 09:51:22 +0200
From: 'Krzysztof Kozlowski' <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403075122.GA9358@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200402110609epcas2p4a5ec1fb3a5eaa3b12c20cfc2060162f3@epcas2p4.samsung.com>
 <20200402110430.31156-1-hyunki00.koo@samsung.com>
 <20200402135903.GA14861@kozik-lap>
 <004c01d60989$c5923030$50b69090$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004c01d60989$c5923030$50b69090$@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_005128_187439_6125A932 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 04:30:38PM +0900, Hyunki Koo wrote:
> On Thu, Apr 02, 2020 at 10:59:29PM +0900, Krzysztof Kozlowski
> > On Thu, Apr 02, 2020 at 08:04:29PM +0900, Hyunki Koo wrote:
> > > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > >
> > > This is required for some newer SoCs.
> > >
> > > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > > ---
> > >  drivers/tty/serial/samsung_tty.c | 78
> > > +++++++++++++++++++++++++++++++++-------
> > >  1 file changed, 66 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/tty/serial/samsung_tty.c
> > > b/drivers/tty/serial/samsung_tty.c
> > > index 73f951d65b93..826d8c5846a6 100644
> > > --- a/drivers/tty/serial/samsung_tty.c
> > > +++ b/drivers/tty/serial/samsung_tty.c
> > > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {  #define
> > > portaddrl(port, reg) \
> > >  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
> > >
> > > -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> > > +static unsigned int rd_reg(struct uart_port *port, int reg) {
> > > +	switch (port->iotype) {
> > > +	case UPIO_MEM:
> > > +		return readb_relaxed(portaddr(port, reg));
> > > +	case UPIO_MEM32:
> > > +		return readl_relaxed(portaddr(port, reg));
> > > +	default:
> > > +		return 0;
> > > +	}
> > > +	return 0;
> > > +}
> > > +
> > >  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
> > >
> > > -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port,
> > > reg))
> > > +static void wr_reg(struct uart_port *port, int reg, int val) {
> > > +	switch (port->iotype) {
> > > +	case UPIO_MEM:
> > > +		writeb_relaxed(val, portaddr(port, reg));
> > > +		break;
> > > +	case UPIO_MEM32:
> > > +		writel_relaxed(val, portaddr(port, reg));
> > > +		break;
> > > +	}
> > > +}
> > > +
> > >  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port,
> > > reg))
> > >
> > > +static void write_buf(struct uart_port *port, int reg, int val) {
> > > +	switch (port->iotype) {
> > > +	case UPIO_MEM:
> > > +		writeb(val, portaddr(port, reg));
> > > +		break;
> > > +	case UPIO_MEM32:
> > > +		writel(val, portaddr(port, reg));
> > > +		break;
> > > +	}
> > > +}
> > > +
> > >  /* Byte-order aware bit setting/clearing functions. */
> > >
> > >  static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
> > > @@ -714,7 +749,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct
> > s3c24xx_uart_port *ourport)
> > >  		fifocnt--;
> > >
> > >  		uerstat = rd_regl(port, S3C2410_UERSTAT);
> > > -		ch = rd_regb(port, S3C2410_URXH);
> > > +		ch = rd_reg(port, S3C2410_URXH);
> > >
> > >  		if (port->flags & UPF_CONS_FLOW) {
> > >  			int txe = s3c24xx_serial_txempty_nofifo(port);
> > > @@ -826,7 +861,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int
> > irq, void *id)
> > >  	}
> > >
> > >  	if (port->x_char) {
> > > -		wr_regb(port, S3C2410_UTXH, port->x_char);
> > > +		wr_reg(port, S3C2410_UTXH, port->x_char);
> > >  		port->icount.tx++;
> > >  		port->x_char = 0;
> > >  		goto out;
> > > @@ -852,7 +887,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int
> > irq, void *id)
> > >  		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info-
> > >tx_fifofull)
> > >  			break;
> > >
> > > -		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > > +		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > >  		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
> > >  		port->icount.tx++;
> > >  		count--;
> > > @@ -916,7 +951,7 @@ static unsigned int
> > s3c24xx_serial_tx_empty(struct
> > > uart_port *port)
> > >  /* no modem control lines */
> > >  static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
> > > {
> > > -	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
> > > +	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
> > >
> > >  	if (umstat & S3C2410_UMSTAT_CTS)
> > >  		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS; @@ -
> > 1974,7 +2009,7 @@
> > > static int s3c24xx_serial_probe(struct platform_device *pdev)
> > >  	struct device_node *np = pdev->dev.of_node;
> > >  	struct s3c24xx_uart_port *ourport;
> > >  	int index = probe_index;
> > > -	int ret;
> > > +	int ret, prop = 0;
> > >
> > >  	if (np) {
> > >  		ret = of_alias_get_id(np, "serial"); @@ -2000,10
> > +2035,29 @@ static
> > > int s3c24xx_serial_probe(struct platform_device *pdev)
> > >  			dev_get_platdata(&pdev->dev) :
> > >  			ourport->drv_data->def_cfg;
> > >
> > > -	if (np)
> > > +	if (np) {
> > >  		of_property_read_u32(np,
> > >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> > >
> > > +		if (of_property_read_u32(np, "reg-io-width", &prop) ==
> > 0) {
> > > +			switch (prop) {
> > > +			case 1:
> > > +				ourport->port.iotype = UPIO_MEM;
> > > +				break;
> > > +			case 4:
> > > +				ourport->port.iotype = UPIO_MEM32;
> > > +				break;
> > > +			default:
> > > +				dev_warn(&pdev->dev, "unsupported
> > reg-io-width (%d)\n",
> > > +						prop);
> > > +				ret = -EINVAL;
> > > +				break;
> > > +			}
> > > +		} else {
> > > +			ourport->port.iotype = UPIO_MEM;
> > > +		}
> > > +	}
> > 
> > I think this still breaks all non-DT platforms (e.g. s3c).
> > 
> > Best regards,
> > Krzysztof
> 
> Thank you for your comment.
> I  hope ourport->port.iotype  is initialized by below table for non-DT platforms

Indeed, you're right. In this case, this else() you added is not needed.
The default value for non-DT and existing DT platforms will be the same
(UPIO_MEM).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
