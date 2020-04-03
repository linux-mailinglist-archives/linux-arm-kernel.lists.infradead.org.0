Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3EB19D143
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/gAOeBY6ySYDPtpD2Yp2MH6Sm9i1ZThPMeJPcxrv2k=; b=sOIl/M62xS7L+2
	9/W+4961UxqGUPGIlawGdB+a7DHiZ0UOxsiiDUa5n3lz9MvgBppVdNSxhIZ7c9VRJ1aOF+VYVdwB7
	t89Qc/bGWjBqqVI1P8dsrA7gKc8tNVGI+thigxJbsQC2nJPOatHaeBfxN7D3Vl9PwtzAmLYBIHuHk
	d6r9K1TufwbzimV1RaBApJDlp75r1bFGwIHXtwQsVvmKBWf10cnlCO6byQPiLVVNK3Skbv8ljhQTc
	9Ir4KPZ0Qbg4emYMEJkkKmnSsEEkaYc9ytuuennTK2YwWnaGOifAZa1e6HZoZX6K+Fs6sgPz45VHK
	xNTTl3IL6taISUF4nstg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGn3-0000O2-Bv; Fri, 03 Apr 2020 07:30:57 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGms-0000Na-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 07:30:48 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200403073043epoutp03ac420c4a60ebdb20f3523de937c98b5a~CPsb6qq3u2904929049epoutp03U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 07:30:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200403073043epoutp03ac420c4a60ebdb20f3523de937c98b5a~CPsb6qq3u2904929049epoutp03U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585899043;
 bh=DYD+cCL/4Cgh5D8FjOIjDeAKodFAfeMcqzJD7XefJm0=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=ObgiPKWJtKka1pzoDPWzW54VsxFBpkEbDVCTe7kNfemUjajswHbHz9pCaCHeQ5qEI
 Qa7SzUgeFFSsHT5vlU1oU0xe7nMiSSL3pEy8kqKPQZMlQDRy2Z1hO0Is7mo/1BhqgX
 btCpdgl4sl32yEl75vdNNsDSyIXUGhokDKAPipT4=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200403073042epcas2p3976c9561fb127ea3676b1eede28a6f1d~CPsbmeSL41618216182epcas2p3L;
 Fri,  3 Apr 2020 07:30:42 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.181]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 48ts6S2hfrzMqYkt; Fri,  3 Apr
 2020 07:30:40 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 3E.2E.04704.F16E68E5; Fri,  3 Apr 2020 16:30:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200403073038epcas2p220d9fa198f117758f38c999132025839~CPsX38v_j2110321103epcas2p24;
 Fri,  3 Apr 2020 07:30:38 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200403073038epsmtrp18f10ef202c4f61ec3341b78aaf835e81~CPsXz887c2288322883epsmtrp1F;
 Fri,  3 Apr 2020 07:30:38 +0000 (GMT)
X-AuditID: b6c32a46-811ff70000001260-67-5e86e61fe7cb
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E1.6E.04158.E16E68E5; Fri,  3 Apr 2020 16:30:38 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200403073038epsmtip1c7fdb776081eb0604e9d4711f7398509~CPsXmJ7hi0833208332epsmtip1M;
 Fri,  3 Apr 2020 07:30:38 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200402135903.GA14861@kozik-lap>
Subject: RE: [PATCH v2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Fri, 3 Apr 2020 16:30:38 +0900
Message-ID: <004c01d60989$c5923030$50b69090$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QJJhiU1AnstEDsBfb5gt6bXl1ew
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzHfe+550c4e5zwWTNuj9iKcz+46zmTGNqZWMMfGPKsnlXcrz3P
 Xclm2nDFJG1mXKF2jdBcO8YVMvlRzIo1JlKjH+vHxk2W+iM83XOm/16fz/f93ufH90Nh6ltE
 HJXrcPOCg7MxxHTlvacJSdpF/d79+qHRRexxf4Bgz9eFFWxpzzDGtrXVkWyw5z3OtjdUEOzF
 tkYF+9pfQq6jrMGbpwjr48u1pPVO9TFr4O47pXUkuDAd32Nbk8NzWbyg4R2ZzqxcR3Yys2VH
 xoYMk1lv0BosbBKjcXB2PpnZmJauTc21Sa0wmjzO5pFS6ZwoMrq1awSnx81rcpyiO5nhXVk2
 l8HgWiFydtHjyF6R6bSvNuj1RpOkPGDL+dzbjbsKLYeLBz7ihahmyWkUQwG9CnoCb7HTaDql
 pkMIfOEWXA5+IAhVdEaDUQQNl3z4P0tH8/nowyMEzVfKkBwMIiipGImoCFoL7f5exSTHSnzn
 w3VyUoTRYwgaR1sjohhaBxfqaiOiOfR28LW2YJOspOMhVP8wwiraAqGxLqXMs+Hlpd4IY/Qy
 uFY1jMktaWC87xouF0uFd1XtUU0slJ/yRqYDepiABx2vCdmwEYr+NCOZ58BQ811S5jgYLPVG
 +Rg0estI2XwGwXi4L7qAleDrL5LMlFQhAQINukkEejE8+xitOwuKn06QcloFxV61bFwKt0cH
 FDIvgNq+BvIcYnxTJvNNmcw3ZQLf/1qVSHkTzeNdoj2bF40u49TvDqLIoSamhlB1a1oToinE
 zFRNe3Jyvxrn8sQCexMCCmNiVesvSilVFldwhBecGYLHxotNyCQtvgyLm5vplM7e4c4wmIxm
 s95iYk1mI8vMVwVndOxV09mcmz/E8y5e+OdTUDFxhch99JOibVnCztWvLP72CTsWeFGu3erW
 UcvrZ93YJKb8Hgtvh0TDr8W6/FL1wufCuH9JzWAQvx1Sr+vqNu/bc+Kr+0Hj+80fhPsFRTFn
 K4usZXsnTG/qwstH4jus9dO2ddaU5/9sScn9RlZ9J656dbsDn5937ipJOX7wa77nxpfKIUYp
 5nCGREwQub91XA25vgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWy7bCSnK7cs7Y4g/9nlS2aF69ns5iy4QOT
 Rf/j18wW589vYLfY9Pgaq8XlXXPYLGac38dkcWZxL7sDh8emVZ1sHvvnrmH32Lyk3mP9lqss
 Hp83yQWwRnHZpKTmZJalFunbJXBlvJhyhL3gkHnFxX/8DYzvlLsYOTkkBEwkbh6fwtrFyMUh
 JLCbUeLTgW0sEAkZiQkvljBD2MIS91uOQBU9Z5Q486ePHSTBJqArcXnxEyYQWwTI3nxjOTtI
 EbPAP0aJ5rd3mCE6njBKXPxyA2wsp4C+xLQNa8A6hAUCJCbP38kGYrMIqEjs2LkHbB2vgKXE
 jh/3WCBsQYmTM5+A2cwC2hJPbz6Fs5ctfA11noLEz6fLWCGucJO4uvAyVI2IxOzONuYJjMKz
 kIyahWTULCSjZiFpWcDIsopRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIziytLR2MJ44
 EX+IUYCDUYmHl+Fga5wQa2JZcWXuIUYJDmYlEV7HGUAh3pTEyqrUovz4otKc1OJDjNIcLEri
 vPL5xyKFBNITS1KzU1MLUotgskwcnFINjIpXXrcGPHDYONnw9Jc1Xj1RLspH5pZnz3J4/on5
 cgnDdpd91b+bZ86eJPn19fXSdMVZX2t03xi++mwpvWvWel7m4GuGRzpP2dsITp14tF7wH49I
 s3eKUtHH3yd3Gncca6w1/PXm0dndOxuWK3/pjnavXT9LpVDv5d7Fm5c4GSnMrU0yd4gLuKvE
 UpyRaKjFXFScCADt4/hOqAIAAA==
X-CMS-MailID: 20200403073038epcas2p220d9fa198f117758f38c999132025839
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200402110609epcas2p4a5ec1fb3a5eaa3b12c20cfc2060162f3
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200402110609epcas2p4a5ec1fb3a5eaa3b12c20cfc2060162f3@epcas2p4.samsung.com>
 <20200402110430.31156-1-hyunki00.koo@samsung.com>
 <20200402135903.GA14861@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_003047_150131_BC829530 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-serial@vger.kernel.org, 'Jiri
 Slaby' <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 10:59:29PM +0900, Krzysztof Kozlowski
> On Thu, Apr 02, 2020 at 08:04:29PM +0900, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> >
> > This is required for some newer SoCs.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > ---
> >  drivers/tty/serial/samsung_tty.c | 78
> > +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 66 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/tty/serial/samsung_tty.c
> > b/drivers/tty/serial/samsung_tty.c
> > index 73f951d65b93..826d8c5846a6 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {  #define
> > portaddrl(port, reg) \
> >  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
> >
> > -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> > +static unsigned int rd_reg(struct uart_port *port, int reg) {
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
> > -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port,
> > reg))
> > +static void wr_reg(struct uart_port *port, int reg, int val) {
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
> >  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port,
> > reg))
> >
> > +static void write_buf(struct uart_port *port, int reg, int val) {
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> > +
> >  /* Byte-order aware bit setting/clearing functions. */
> >
> >  static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
> > @@ -714,7 +749,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct
> s3c24xx_uart_port *ourport)
> >  		fifocnt--;
> >
> >  		uerstat = rd_regl(port, S3C2410_UERSTAT);
> > -		ch = rd_regb(port, S3C2410_URXH);
> > +		ch = rd_reg(port, S3C2410_URXH);
> >
> >  		if (port->flags & UPF_CONS_FLOW) {
> >  			int txe = s3c24xx_serial_txempty_nofifo(port);
> > @@ -826,7 +861,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int
> irq, void *id)
> >  	}
> >
> >  	if (port->x_char) {
> > -		wr_regb(port, S3C2410_UTXH, port->x_char);
> > +		wr_reg(port, S3C2410_UTXH, port->x_char);
> >  		port->icount.tx++;
> >  		port->x_char = 0;
> >  		goto out;
> > @@ -852,7 +887,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int
> irq, void *id)
> >  		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info-
> >tx_fifofull)
> >  			break;
> >
> > -		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > +		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> >  		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
> >  		port->icount.tx++;
> >  		count--;
> > @@ -916,7 +951,7 @@ static unsigned int
> s3c24xx_serial_tx_empty(struct
> > uart_port *port)
> >  /* no modem control lines */
> >  static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
> > {
> > -	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
> > +	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
> >
> >  	if (umstat & S3C2410_UMSTAT_CTS)
> >  		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS; @@ -
> 1974,7 +2009,7 @@
> > static int s3c24xx_serial_probe(struct platform_device *pdev)
> >  	struct device_node *np = pdev->dev.of_node;
> >  	struct s3c24xx_uart_port *ourport;
> >  	int index = probe_index;
> > -	int ret;
> > +	int ret, prop = 0;
> >
> >  	if (np) {
> >  		ret = of_alias_get_id(np, "serial"); @@ -2000,10
> +2035,29 @@ static
> > int s3c24xx_serial_probe(struct platform_device *pdev)
> >  			dev_get_platdata(&pdev->dev) :
> >  			ourport->drv_data->def_cfg;
> >
> > -	if (np)
> > +	if (np) {
> >  		of_property_read_u32(np,
> >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> >
> > +		if (of_property_read_u32(np, "reg-io-width", &prop) ==
> 0) {
> > +			switch (prop) {
> > +			case 1:
> > +				ourport->port.iotype = UPIO_MEM;
> > +				break;
> > +			case 4:
> > +				ourport->port.iotype = UPIO_MEM32;
> > +				break;
> > +			default:
> > +				dev_warn(&pdev->dev, "unsupported
> reg-io-width (%d)\n",
> > +						prop);
> > +				ret = -EINVAL;
> > +				break;
> > +			}
> > +		} else {
> > +			ourport->port.iotype = UPIO_MEM;
> > +		}
> > +	}
> 
> I think this still breaks all non-DT platforms (e.g. s3c).
> 
> Best regards,
> Krzysztof

Thank you for your comment.
I  hope ourport->port.iotype  is initialized by below table for non-DT platforms

1662 static struct s3c24xx_uart_port                                         
1663 s3c24xx_serial_ports[CONFIG_SERIAL_SAMSUNG_UARTS] = {                   
1664         [0] = {                                                         
1665                 .port = {                                               
1666                         .lock           = __PORT_LOCK_UNLOCKED(0),      
1667                         .iotype         = UPIO_MEM,                     
1668                         .uartclk        = 0,                            
1669                         .fifosize       = 16,                           
1670                         .ops            = &s3c24xx_serial_ops,          
1671                         .flags          = UPF_BOOT_AUTOCONF,            
1672                         .line           = 0,                            
1673                 }                                                       
1674         },                                                              
1675         [1] = {                                                         
1676                 .port = {                                               
1677                         .lock           = __PORT_LOCK_UNLOCKED(1),      
1678                         .iotype         = UPIO_MEM,                     
1679                         .uartclk        = 0,                            
1680                         .fifosize       = 16,                           
1681                         .ops            = &s3c24xx_serial_ops,          
1682                         .flags          = UPF_BOOT_AUTOCONF,            
1683                         .line           = 1,                            
1684                 }                                                       
1685         },


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
