Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CB319D7AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgsHX3g66974Twwcg61AHtZ2YO+WqgYEAISgu0wa8u4=; b=bxnf1aqwfegCsY
	KSXksNEtzPboPeZm05P3kuDGK1R6E5Hd5nKE2Axo6ZWGGWU3vGkCjl+5gky2ynyz3f0w6rZB2RfUA
	+DuuBvc6fBYO/teLuID5BQoR3zE+S9MUBSqPQS3ozMY4xC8hMYhBMcdmqGx84COuO9PSzEhdcEwF7
	ZNJWVe0dMuYLLS0CCCG/PBam6/F025FBqsaHl8g5wMLpNTMNDVRjAjJI6qAOxplrXKJ0DvgSFQ3hI
	hinxotF2ZM4I4UT9edpsSG7mLj23hmj6xGuix8EaMqeCt37WFDSAHYyGbZ6V99H4B3fXTMZVzbsMl
	2O3euQnvwDNBW+/l0Rfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMTd-00013s-Qa; Fri, 03 Apr 2020 13:35:17 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMTO-00010E-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:35:03 +0000
Received: by mail-ed1-f66.google.com with SMTP id de14so9286394edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 06:35:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SHL8e7nL4/qUh9vws2n4KsOcApV4CgwG1tpyifMdKgI=;
 b=Ke/EV4uFOgGrk8a8ygOlcrxeUzOOsnp7BLNw5AOxOEI7CaJ+rtL0E2Cmv11h3+hPCw
 j54DPevdSuFwQtmPIVcIbuZ0oPJTQ9e8PnYyiLvbNOzj2Q9fQ6ggKUQPwao8viOIsyJ/
 Wt1NRzO2i3u6v4aV2cCAUJNzerGHkKsud9TmguAK+HAMwzsgNnGaUD34S0iC0dKqukiL
 SiWeINHKUGir75eaUI0XDzhBo4J45U/cRK+8pU3RfZBNH552ceP/Ru1+T4YeJRgqkctD
 O0xNuLF/XYuZg3QqnDEAV+wwL6Cw4SwsRnRUVo1zMvAFZ7WDXRpA+XOW6SsVQyge5SB9
 EWTQ==
X-Gm-Message-State: AGi0PuYPgdlT8SD3oQ23VmRpXSbaYrm2P79o+PLoVL+9npG7Iba1UOL0
 plnNh6PD+/jA6/FfgkX2CCgJRwAv
X-Google-Smtp-Source: APiQypKCOyi2XIrs/N1hDYUvQqvI+0UpEcP4/oumUA+xBaBS78CEyzsuqz1vPjIe44F7Nk4/dFXALg==
X-Received: by 2002:a05:6402:1caa:: with SMTP id
 cz10mr7824357edb.4.1585920900471; 
 Fri, 03 Apr 2020 06:35:00 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id u13sm1402362edi.82.2020.04.03.06.34.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 06:34:59 -0700 (PDT)
Date: Fri, 3 Apr 2020 15:34:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403133457.GA7561@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403111511.10598-1-hyunki00.koo@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_063502_060890_42FFD19D 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
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
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
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

I got more thoughts... where is the binding for it? It looked like
standard DT property but it is not described in device tree spec.

Also, where is the user (DTS) with it? I expect such changes go with the
user itself... otherwise, next cleanup it will go away.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
