Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D252319D61B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARFy9tXzimRerXy/gj6g2/JomgJePzkkxN0FqxhPtis=; b=PgpoC6RRvFmsjj
	xacClg0VCCTgPW7oVToABcCKhSQ1j3tcRsE/tDbftKqobS762fauMf8GGkm2kH+Tr5iq9uTNkvlPS
	2jd7fXZryDvpoAmyV9oSM2V4PI8P//YcGaNdmr35TKc+ats7E6/Ze9AQtsKMq7Nmo94XZ5U5sIR0M
	svOPqsaSzVNxjhVWKKGcN/D4CgRbVY4Yue4wEyg80O0sl7e3LvcnBzWhTZ9tqHZ7piNLPNcswVTOn
	hue7zsGsAisrvIBdJNegFPPCca+eK4hieZyDns2FJkCabGa3WwQ2lwAZByFZhIHTOqmlAmtDg5LMt
	FQngnFKSQQ0dIHpAqLAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKt3-0005Pu-Do; Fri, 03 Apr 2020 11:53:25 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKsv-0005Pa-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:53:19 +0000
Received: by mail-ed1-f66.google.com with SMTP id de14so8945142edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 04:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AXPgUDPYtsCkXU4bu4n3Gex+EmAbQTrHV+nNERuDaY8=;
 b=OZFquw4cu+wozEE9kgUwIgHp92s1WYAs4nzkQblGr8fumt3bcV0YnTlSsL1bwDVHXc
 V1CNMQq/YhQ4M1+oRLxRUNDQKk71oRW6uE/Y5er1SQTf5fSUc0ROb3/PMVTNBwnU30xk
 5fdxlXuJINohUKjuGgLzPLBpPHFjCQcERaovOJfMumsJ+bFDjZ/FPUchXqLXMFe1zk9i
 41HYbtmq1KJ2/IzbcPyE0k6QJrJ/XVKrYIS4+DQP3kC64pXSHXvDnj0al7i4oWKaj1uQ
 Br8OHW2B7w56oEZMCA0YeeVBskTPd/uss7pAR2+ry62Vi6vfg9q1uclvXczz/H6pFTAq
 R5qA==
X-Gm-Message-State: AGi0PubmFx71a7PVTNWJ/pBizFDbykQbKRubcMuziOu/oWB3CBJtEPPk
 qQTMAj1HSKBbJMKe/74Fb3L0KNFy
X-Google-Smtp-Source: APiQypIAtTxjWosH6yzaI+vkbgpfdhDAXGjjX+fxKO1Z3224as7vj4W0FPvd5pEZp4J02BWZavzJgw==
X-Received: by 2002:a50:c945:: with SMTP id p5mr6997598edh.122.1585914796254; 
 Fri, 03 Apr 2020 04:53:16 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id p4sm1604187eju.57.2020.04.03.04.53.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 04:53:15 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:53:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403115313.GA29484@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403114237.GA3797881@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403114237.GA3797881@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_045318_019003_FF4DAAF6 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Hyunki Koo <hyunki00.koo@samsung.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 01:42:37PM +0200, Greg KH wrote:
> On Fri, Apr 03, 2020 at 08:15:10PM +0900, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > 
> > This is required for some newer SoCs.
> > 
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > ---
> > v2: 
> > line 954 : change rd_regl to rd_reg in for backward compatibility.
> > line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
> > v3:
> > line 2031: remove redundant init value  for ourport->port.iotype 
> > v4:
> > correct variable types and change misleading function name
> > ---
> >  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 64 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> > index 73f951d65b93..bdf1d4d12cb1 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
> >  #define portaddrl(port, reg) \
> >  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
> >  
> > -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> > +static u32 rd_reg(struct uart_port *port, u32 reg)
> > +{
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		return readb_relaxed(portaddr(port, reg));
> > +	case UPIO_MEM32:
> > +		return readl_relaxed(portaddr(port, reg));
> > +	default:
> > +		return 0;
> > +	}
> > +	return 0;
> > +}
> > +
> >  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
> >  
> > -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> > +static void wr_reg(struct uart_port *port, u32 reg, u32 val)
> > +{
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> > +
> >  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
> >  
> > +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> > +{
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> 
> why do you have a default for the read function, but not the write
> functions?

The default for read will never happen and it returns bogus value just
to satisfy the compiler. That's my understanding. What would you like to
do for writes()? Print error msg? No point, it should not happen because
of check in probe().

> 
> > +
> >  /* Byte-order aware bit setting/clearing functions. */
> >  
> >  static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
> > @@ -714,7 +749,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
> >  		fifocnt--;
> >  
> >  		uerstat = rd_regl(port, S3C2410_UERSTAT);
> > -		ch = rd_regb(port, S3C2410_URXH);
> > +		ch = rd_reg(port, S3C2410_URXH);
> >  
> >  		if (port->flags & UPF_CONS_FLOW) {
> >  			int txe = s3c24xx_serial_txempty_nofifo(port);
> > @@ -826,7 +861,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
> >  	}
> >  
> >  	if (port->x_char) {
> > -		wr_regb(port, S3C2410_UTXH, port->x_char);
> > +		wr_reg(port, S3C2410_UTXH, port->x_char);
> >  		port->icount.tx++;
> >  		port->x_char = 0;
> >  		goto out;
> > @@ -852,7 +887,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
> >  		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
> >  			break;
> >  
> > -		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > +		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> >  		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
> >  		port->icount.tx++;
> >  		count--;
> > @@ -916,7 +951,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
> >  /* no modem control lines */
> >  static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
> >  {
> > -	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
> > +	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
> >  
> >  	if (umstat & S3C2410_UMSTAT_CTS)
> >  		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
> > @@ -1974,7 +2009,7 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
> >  	struct device_node *np = pdev->dev.of_node;
> >  	struct s3c24xx_uart_port *ourport;
> >  	int index = probe_index;
> > -	int ret;
> > +	int ret, prop = 0;
> >  
> >  	if (np) {
> >  		ret = of_alias_get_id(np, "serial");
> > @@ -2000,10 +2035,27 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
> >  			dev_get_platdata(&pdev->dev) :
> >  			ourport->drv_data->def_cfg;
> >  
> > -	if (np)
> > +	if (np) {
> >  		of_property_read_u32(np,
> >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> >  
> > +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> > +			switch (prop) {
> > +			case 1:
> > +				ourport->port.iotype = UPIO_MEM;
> > +				break;
> > +			case 4:
> > +				ourport->port.iotype = UPIO_MEM32;
> > +				break;
> > +			default:
> > +				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
> > +						prop);
> > +				ret = -EINVAL;
> > +				break;
> > +			}
> > +		}
> > +	}
> 
> If the property is not there, the type will be uninitialized and no
> warning will be spit out, are you sure you want to do that?

The default value from initial ourport will be used, which is UPIO_MEM.
This way it is backward compatible.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
