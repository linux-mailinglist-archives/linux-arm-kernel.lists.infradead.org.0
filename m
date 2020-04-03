Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E6B19D4EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdrNjGbXYwGTfl0U2BpZKyK2Ey2BE8nXyAJDfRbud8k=; b=Sxyli7qP/AUTaG
	9zk/aNf8+OS0dogt+zh79zDV9dzA9nXMWX9I0KJNl5aH09rMJWE0PU8DEjuxnESgpmBy7/Fuoq3Qj
	wkJn9aVg4euK7xxgwdAarMTk/GwGKfKtUzY1s1f/nYZpKTRRTuEveLHvXRQFcms4Dh5R8C6MLVNA1
	p4X8McWSmE13CfxTiwwDlqOtc8srqxlD6WHZ6Ox4JgREN6xRc2AgIqJO8X6pQf9Co+fcJFAbVgRpR
	pY1lpJFnBlB1qWLJhR0SlCaeZzOarYUJ5AiXEdVjLxGKp7iCikziIaVgV40zNix8PiJvWxltam1U+
	5kk5sUq85I4vHzZhnFtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJQO-0002l7-RE; Fri, 03 Apr 2020 10:19:44 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJQH-0002k0-57
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:19:39 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200403101933epoutp03d7c8b091b7fff1487cd17879cc49614d~CR-26uAro0841208412epoutp03U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 10:19:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200403101933epoutp03d7c8b091b7fff1487cd17879cc49614d~CR-26uAro0841208412epoutp03U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585909173;
 bh=eTptNHCPGOilNHW1sYrUCropOS7u8CusvrQXpKeUFgs=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=iXr9TqPDJ8xNUYBfJ94maFTQ6PE3J4cVkVrKb64SncgoPA17IRJtdzPVZJotetwTu
 6L2L27OO8udgmHvQXKvy9ro3PC0jL+hXvH6ZZWwYYoibKKD1yye7pjDlYFtCHABgjX
 ic4//vNPqKoQqJlPY6KCym594f7t4asHL0YAOcaU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200403101933epcas2p390c6ec32c7b8cb37ac0246c60be74f9f~CR-2qx-Ny1967219672epcas2p3f;
 Fri,  3 Apr 2020 10:19:33 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.190]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48twsH4sBBzMqYkZ; Fri,  3 Apr
 2020 10:19:31 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 BA.67.04598.3BD078E5; Fri,  3 Apr 2020 19:19:31 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200403101930epcas2p142837d679a3e7a9e3eb11c2c1ea9792c~CR-0ABDFf1040610406epcas2p1i;
 Fri,  3 Apr 2020 10:19:30 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200403101930epsmtrp19a630bfad8e9ed97b8e02389b2a2e239~CR-z8j0M01547015470epsmtrp1b;
 Fri,  3 Apr 2020 10:19:30 +0000 (GMT)
X-AuditID: b6c32a45-eb9ff700000011f6-5d-5e870db3eda5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 05.5B.04158.2BD078E5; Fri,  3 Apr 2020 19:19:30 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200403101930epsmtip2b09e3b4a12fd05e28b8e971f2148529f~CR-z0jih_1447814478epsmtip24;
 Fri,  3 Apr 2020 10:19:30 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200403075122.GA9358@kozik-lap>
Subject: RE: [PATCH v2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Fri, 3 Apr 2020 19:19:30 +0900
Message-ID: <005501d609a1$5cbbbb40$163331c0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QJJhiU1AnstEDsBfb5gtwEN9w2NAuyyasumt/H/gA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGO7vb3dVa3KbVy/paNzM0tF1rdi2NQotREVJUEOG66EFH+2p3
 itofCtb8KCsrwZaBZRRJpKmZjdLUwD7EGWZoQWVqZIOyIlOhj7tdI//7nfd9Ht73OedQhLqG
 1FAmqxM7rLyZIYPlTR0RXFSDqjBFN/E0jCuoriW583VjMu70kI/gvN46JVc/9FLB9XoqSa7C
 2yLjuqpLlZspQ31NMWlovXRTaWi4mmeobeyTG77XL01WHDDHZ2A+DTu02JpqSzNZ0xOYHXuM
 iUZ9rI6NYuO49YzWyltwApO0Mzlqm8ksrsJos3hzplhK5gWBWbMp3mHLdGJthk1wJjDYnma2
 s6w9WuAtQqY1PTrVZtnA6nQxelF5yJxxrKeftH9ls0vybxD56O3KEhREAb0OvvW9IEtQMKWm
 mxGc+vGGkA7fEPz4+R75VWp6HMEXz5F/Dq9rYtrxAMEJb5FCOowiOOcrDjhIOgp6q4dlfg4V
 uaH/utIvIugJBC3j3Qp/I4iOhtI/dwKiEHo3uLsfE36W02Hw/GNdgFV0HNTcf09KPA+eXBiW
 +5mgV8O1yz5CWkkLkyPXFNKwfeBtHpNJmlC4WOwK5AHaR0JBa5NSMiRBVblXLnEIfOpsnK5r
 YPS0a5rzoMVVppTMJxFMjo0opMZacH8oFGNS4oQIqPWs8SPQK+DRq+nd5kJRxy+lVFZBkUst
 GcPh1vhHmcSL4eaIR3kGMe4ZydwzkrlnJHD/n1WF5DVoAbYLlnQsxNjZma9djwL/NHJrM6ro
 3tmOaAoxc1Sz2o6nqBV8lpBjaUdAEUyoakuFWFKl8Tm52GEzOjLNWGhHevHiywjN/FSb+Out
 TiOrj4mN1cXpOX1sDMcsVDXMHjioptN5Jz6MsR07/vlkVJAmHy3n7BEDYVdSw4YIbkXh9rPO
 FOPRVUvqZrdqsoe6bo/iqd5zPcOVo5bXbNJq3PSuPbika8Gq5Y/bHq4rKEyO85Uz+YOn8Oe8
 5qDzuZd8S+f0/5m4uzl63r1Fvz2NsMtUxm+ZWrZXCF+035O9sUo2uPJZZ2PinhDacuaAehAb
 TA/CGbmQwbORhEPg/wK2ZbDjvQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsWy7bCSvO4m3vY4g03b1C2aF69ns5iy4QOT
 Rf/j18wW589vYLfY9Pgaq8XlXXPYLGac38dkcWZxL7sDh8emVZ1sHvvnrmH32Lyk3mP9lqss
 Hp83yQWwRnHZpKTmZJalFunbJXBl9M+4wVhwx6DiytIj7A2MR1S6GDk5JARMJM63/WDrYuTi
 EBLYzSgxcVEXG0RCRmLCiyXMELawxP2WI6wQRc8ZJVb07GYCSbAJ6EpcXvwEzBYBsjffWM4O
 UsQs8I9RovHnZKixW5gkdpxdCTaWU0BPovf/VrAOYYEAicnzd4LFWQRUJC6+2AC2jlfAUmLV
 nkdsELagxMmZT1hAbGYBbYmnN5/C2csWvoY6T0Hi59NlrBBXhEmc3/GBCaJGRGJ2ZxvzBEbh
 WUhGzUIyahaSUbOQtCxgZFnFKJlaUJybnltsWGCUl1quV5yYW1yal66XnJ+7iREcW1paOxhP
 nIg/xCjAwajEw8twsDVOiDWxrLgy9xCjBAezkgiv4wygEG9KYmVValF+fFFpTmrxIUZpDhYl
 cV75/GORQgLpiSWp2ampBalFMFkmDk6pBkaDJeefXjrnanjez2l3j42e9Pbj6o0CCkEcvnP0
 TLleKPd87g12Xio8q/DPnmXbD/6d8CNkcu7MDvXnfutkrTYsvyue0uuUVdzy69Q5q9L2f/aH
 3d8+M4lbxOt44ORHlQi3z26Cfxt3LpJ+cvh2gEpa+If07OfL3+wSVdh5Wa1unQ63VrubUr0S
 S3FGoqEWc1FxIgB5MaCvqQIAAA==
X-CMS-MailID: 20200403101930epcas2p142837d679a3e7a9e3eb11c2c1ea9792c
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
 <004c01d60989$c5923030$50b69090$@samsung.com>
 <20200403075122.GA9358@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_031937_553478_A8012C4E 
X-CRM114-Status: GOOD (  20.81  )
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

On Thu, Apr 02, 2020 at 4:51:29PM +0900, Krzysztof Kozlowski
> On Fri, Apr 03, 2020 at 04:30:38PM +0900, Hyunki Koo wrote:
> > On Thu, Apr 02, 2020 at 10:59:29PM +0900, Krzysztof Kozlowski
> > > On Thu, Apr 02, 2020 at 08:04:29PM +0900, Hyunki Koo wrote:
> > > > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > > >
> > > > This is required for some newer SoCs.
> > > >
> > > > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > > > ---
> > > >  drivers/tty/serial/samsung_tty.c | 78
> > > > +++++++++++++++++++++++++++++++++-------
> > > >  1 file changed, 66 insertions(+), 12 deletions(-)
> > > >
> > > > diff --git a/drivers/tty/serial/samsung_tty.c
> > > > b/drivers/tty/serial/samsung_tty.c
> > > > index 73f951d65b93..826d8c5846a6 100644
> > > > --- a/drivers/tty/serial/samsung_tty.c
> > > > +++ b/drivers/tty/serial/samsung_tty.c
> > > > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {  #define
> > > > portaddrl(port, reg) \
> > > >  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
> > > >
> > > > -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> > > > +static unsigned int rd_reg(struct uart_port *port, int reg) {
> > > > +	switch (port->iotype) {
> > > > +	case UPIO_MEM:
> > > > +		return readb_relaxed(portaddr(port, reg));
> > > > +	case UPIO_MEM32:
> > > > +		return readl_relaxed(portaddr(port, reg));
> > > > +	default:
> > > > +		return 0;
> > > > +	}
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
> > > >
> > > > -#define wr_regb(port, reg, val) writeb_relaxed(val,
> > > > portaddr(port,
> > > > reg))
> > > > +static void wr_reg(struct uart_port *port, int reg, int val) {
> > > > +	switch (port->iotype) {
> > > > +	case UPIO_MEM:
> > > > +		writeb_relaxed(val, portaddr(port, reg));
> > > > +		break;
> > > > +	case UPIO_MEM32:
> > > > +		writel_relaxed(val, portaddr(port, reg));
> > > > +		break;
> > > > +	}
> > > > +}
> > > > +
> > > >  #define wr_regl(port, reg, val) writel_relaxed(val,
> > > > portaddr(port,
> > > > reg))
> > > >
> > > > +static void write_buf(struct uart_port *port, int reg, int val) {
> > > > +	switch (port->iotype) {
> > > > +	case UPIO_MEM:
> > > > +		writeb(val, portaddr(port, reg));
> > > > +		break;
> > > > +	case UPIO_MEM32:
> > > > +		writel(val, portaddr(port, reg));
> > > > +		break;
> > > > +	}
> > > > +}
> > > > +
> > > >  /* Byte-order aware bit setting/clearing functions. */
> > > >
> > > >  static inline void s3c24xx_set_bit(struct uart_port *port, int
> > > > idx, @@ -714,7 +749,7 @@ static void
> > > > s3c24xx_serial_rx_drain_fifo(struct
> > > s3c24xx_uart_port *ourport)
> > > >  		fifocnt--;
> > > >
> > > >  		uerstat = rd_regl(port, S3C2410_UERSTAT);
> > > > -		ch = rd_regb(port, S3C2410_URXH);
> > > > +		ch = rd_reg(port, S3C2410_URXH);
> > > >
> > > >  		if (port->flags & UPF_CONS_FLOW) {
> > > >  			int txe = s3c24xx_serial_txempty_nofifo(port);
> > > > @@ -826,7 +861,7 @@ static irqreturn_t
> s3c24xx_serial_tx_chars(int
> > > irq, void *id)
> > > >  	}
> > > >
> > > >  	if (port->x_char) {
> > > > -		wr_regb(port, S3C2410_UTXH, port->x_char);
> > > > +		wr_reg(port, S3C2410_UTXH, port->x_char);
> > > >  		port->icount.tx++;
> > > >  		port->x_char = 0;
> > > >  		goto out;
> > > > @@ -852,7 +887,7 @@ static irqreturn_t
> s3c24xx_serial_tx_chars(int
> > > irq, void *id)
> > > >  		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info-
> > > >tx_fifofull)
> > > >  			break;
> > > >
> > > > -		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > > > +		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
> > > >  		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
> > > >  		port->icount.tx++;
> > > >  		count--;
> > > > @@ -916,7 +951,7 @@ static unsigned int
> > > s3c24xx_serial_tx_empty(struct
> > > > uart_port *port)
> > > >  /* no modem control lines */
> > > >  static unsigned int s3c24xx_serial_get_mctrl(struct uart_port
> > > > *port) {
> > > > -	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
> > > > +	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
> > > >
> > > >  	if (umstat & S3C2410_UMSTAT_CTS)
> > > >  		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS; @@ -
> > > 1974,7 +2009,7 @@
> > > > static int s3c24xx_serial_probe(struct platform_device *pdev)
> > > >  	struct device_node *np = pdev->dev.of_node;
> > > >  	struct s3c24xx_uart_port *ourport;
> > > >  	int index = probe_index;
> > > > -	int ret;
> > > > +	int ret, prop = 0;
> > > >
> > > >  	if (np) {
> > > >  		ret = of_alias_get_id(np, "serial"); @@ -2000,10
> > > +2035,29 @@ static
> > > > int s3c24xx_serial_probe(struct platform_device *pdev)
> > > >  			dev_get_platdata(&pdev->dev) :
> > > >  			ourport->drv_data->def_cfg;
> > > >
> > > > -	if (np)
> > > > +	if (np) {
> > > >  		of_property_read_u32(np,
> > > >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> > > >
> > > > +		if (of_property_read_u32(np, "reg-io-width", &prop) ==
> > > 0) {
> > > > +			switch (prop) {
> > > > +			case 1:
> > > > +				ourport->port.iotype = UPIO_MEM;
> > > > +				break;
> > > > +			case 4:
> > > > +				ourport->port.iotype = UPIO_MEM32;
> > > > +				break;
> > > > +			default:
> > > > +				dev_warn(&pdev->dev, "unsupported
> > > reg-io-width (%d)\n",
> > > > +						prop);
> > > > +				ret = -EINVAL;
> > > > +				break;
> > > > +			}
> > > > +		} else {
> > > > +			ourport->port.iotype = UPIO_MEM;
> > > > +		}
> > > > +	}
> > >
> > > I think this still breaks all non-DT platforms (e.g. s3c).
> > >
> > > Best regards,
> > > Krzysztof
> >
> > Thank you for your comment.
> > I  hope ourport->port.iotype  is initialized by below table for non-DT
> > platforms
> 
> Indeed, you're right. In this case, this else() you added is not needed.
> The default value for non-DT and existing DT platforms will be the same
> (UPIO_MEM).
> 
> Best regards,
> Krzysztof

Thank you  for your comment.
I will remove  this line also in v3
+		} else {
+			ourport->port.iotype = UPIO_MEM;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
