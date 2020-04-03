Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D719D5F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk68nWOssCDm0kCA+kqXJSzyP/g1+9akRGnF8VA0Ngo=; b=XbMRLspaLKI9a/
	IZ/ecgkM/8OI5D9aowZTFFHDewHJ2xdt2m30xRIYwGIjXatE+M0PZ7sgXunUmDNkVW9DQypc5rOWL
	8gBzXfpHB3zHfKwdVvCtaJfGKasTWBZiPBmBJ5Xl+JFNjE6JI22PgdCbi5Fk6KxWhP8QGXSk2iEDR
	RVAQuEaPpU/8Z/hkbKhoAFHvjpLoIdm+CR35thmngP+lzGJtI+waIfe5M0d6XTKXwacTP40BrO4vW
	4D+3JdS3wtV/OFsy0Afned2oLdaKGstdpM6WsSJwWl/CiKhiRDmU/YPvo3JpA+uzwKofZEsX8Ix1n
	jCl6pOvtK8OawBCOSXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKil-0006mZ-LF; Fri, 03 Apr 2020 11:42:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKie-0006mG-QJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:42:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9A622073B;
 Fri,  3 Apr 2020 11:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585914160;
 bh=vwyBfcfoE8c+jmDCUlnZhC9wdVq+2QNcXgSjhNl4m2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XGS1zNXUHy3En8Ri07Vc802COOZOtrSOkjVjAWObt4pBzrj6yGLK+RtjXtpI8XLbK
 bXQcn2p/mUbYqzoecI8Bg0IfwRwL59Uc6kCgze1L9O0FKlHmdvOio630jHy/OpXifT
 4GpoAdf57d+GE2+xdmEdtNBuTVi/hxLBz0FgyLLo=
Date: Fri, 3 Apr 2020 13:42:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403114237.GA3797881@kroah.com>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403111511.10598-1-hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_044240_892883_67909B11 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 krzk@kernel.org, Kukjin Kim <kgene@kernel.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 08:15:10PM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
> v2: 
> line 954 : change rd_regl to rd_reg in for backward compatibility.
> line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
> v3:
> line 2031: remove redundant init value  for ourport->port.iotype 
> v4:
> correct variable types and change misleading function name
> ---
>  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 64 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 73f951d65b93..bdf1d4d12cb1 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
>  #define portaddrl(port, reg) \
>  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
>  
> -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> +static u32 rd_reg(struct uart_port *port, u32 reg)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		return readb_relaxed(portaddr(port, reg));
> +	case UPIO_MEM32:
> +		return readl_relaxed(portaddr(port, reg));
> +	default:
> +		return 0;
> +	}
> +	return 0;
> +}
> +
>  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
>  
> -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
> +static void wr_reg(struct uart_port *port, u32 reg, u32 val)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		writeb_relaxed(val, portaddr(port, reg));
> +		break;
> +	case UPIO_MEM32:
> +		writel_relaxed(val, portaddr(port, reg));
> +		break;
> +	}
> +}
> +
>  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
>  
> +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> +{
> +	switch (port->iotype) {
> +	case UPIO_MEM:
> +		writeb(val, portaddr(port, reg));
> +		break;
> +	case UPIO_MEM32:
> +		writel(val, portaddr(port, reg));
> +		break;
> +	}
> +}

why do you have a default for the read function, but not the write
functions?


> +
>  /* Byte-order aware bit setting/clearing functions. */
>  
>  static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
> @@ -714,7 +749,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
>  		fifocnt--;
>  
>  		uerstat = rd_regl(port, S3C2410_UERSTAT);
> -		ch = rd_regb(port, S3C2410_URXH);
> +		ch = rd_reg(port, S3C2410_URXH);
>  
>  		if (port->flags & UPF_CONS_FLOW) {
>  			int txe = s3c24xx_serial_txempty_nofifo(port);
> @@ -826,7 +861,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
>  	}
>  
>  	if (port->x_char) {
> -		wr_regb(port, S3C2410_UTXH, port->x_char);
> +		wr_reg(port, S3C2410_UTXH, port->x_char);
>  		port->icount.tx++;
>  		port->x_char = 0;
>  		goto out;
> @@ -852,7 +887,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
>  		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
>  			break;
>  
> -		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> +		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
>  		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
>  		port->icount.tx++;
>  		count--;
> @@ -916,7 +951,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
>  /* no modem control lines */
>  static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
>  {
> -	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
> +	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
>  
>  	if (umstat & S3C2410_UMSTAT_CTS)
>  		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
> @@ -1974,7 +2009,7 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	struct s3c24xx_uart_port *ourport;
>  	int index = probe_index;
> -	int ret;
> +	int ret, prop = 0;
>  
>  	if (np) {
>  		ret = of_alias_get_id(np, "serial");
> @@ -2000,10 +2035,27 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
>  			dev_get_platdata(&pdev->dev) :
>  			ourport->drv_data->def_cfg;
>  
> -	if (np)
> +	if (np) {
>  		of_property_read_u32(np,
>  			"samsung,uart-fifosize", &ourport->port.fifosize);
>  
> +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> +			switch (prop) {
> +			case 1:
> +				ourport->port.iotype = UPIO_MEM;
> +				break;
> +			case 4:
> +				ourport->port.iotype = UPIO_MEM32;
> +				break;
> +			default:
> +				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
> +						prop);
> +				ret = -EINVAL;
> +				break;
> +			}
> +		}
> +	}

If the property is not there, the type will be uninitialized and no
warning will be spit out, are you sure you want to do that?

Can you break this into 2 patches, one that changes the names of the
macros and the calls to them, and the second that adds the new
functionality?  That way it's easier to review/read.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
