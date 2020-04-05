Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B019EE4E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 23:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7jlfsm5w8VtkqUmRHi2ch+LBVABQ+W8qazN7i5OohE=; b=oXrrPC3Xgl/j8F
	SP8LqrP/U/7tCfcchE0zR0torrvi7mv4y3a2sa8mCZd4Vouw1kxcZ+2xh4ysGrcU/5AEB6vCTXHHk
	iWw+jMDoR+4P+wk5ZZKLn1RRMtBl4gmuGVSC2MlO2Qw6/aL8DI0RH5hZNg6ZqmMRtqCP3Lb0QNj/7
	1QXA+dIKQW6ILYEBkzyBRv/k1QVjFPrlv6B8KQ7986FprfaLudWQj/SfjbcK6lA1iuHBCvU8bOuNS
	XeLtbAr2VerUfQ8c6RU1S0NghTk9/m9SIkTNwG9347Ua+k2Tst1cYUJpjBmesHStFRuKGJbRONA8F
	bYO/8gandkmEcYIUkjdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLD1E-00045h-4g; Sun, 05 Apr 2020 21:41:28 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLD15-00044T-MF
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 21:41:21 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200405214113epoutp041891412a0b811de2bfbceea8cf95ccac~DCll7zbqC2344923449epoutp04-
 for <linux-arm-kernel@lists.infradead.org>;
 Sun,  5 Apr 2020 21:41:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200405214113epoutp041891412a0b811de2bfbceea8cf95ccac~DCll7zbqC2344923449epoutp04-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586122873;
 bh=buch2F0cuMmCWkkZuNUcYvZTm7WO7yNvG1+1XYHEp+o=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=UAJoGgpbI5lq8ZRE1owND6e1tXuP9k2dCRJYCsWsH+miJS+nFKyk2wOtmfzss+Xyz
 6cjs/d64NbItYYVAiggm0cUJklhI0uloIt4KUP+1YX3stRTa1ZniMyIIwcIAD4jwjK
 JGa4W1RSn0zX8vFkw7l5UA0xihbNjd4zQXel8cW4=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200405214112epcas2p37f4571a8c066168382d7f4baa5b10ece~DCllmsKkj1957819578epcas2p3Y;
 Sun,  5 Apr 2020 21:41:12 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.184]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48wRtt6FH9zMqYlh; Sun,  5 Apr
 2020 21:41:10 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.4F.04598.6705A8E5; Mon,  6 Apr 2020 06:41:10 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200405214110epcas2p267b641011ed40d0f99226349846c6997~DCljHSRCs1147711477epcas2p2_;
 Sun,  5 Apr 2020 21:41:10 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200405214110epsmtrp1fd0b78c1d038d868f9219d1ef4edd83e~DCljGnReb1185611856epsmtrp1b;
 Sun,  5 Apr 2020 21:41:10 +0000 (GMT)
X-AuditID: b6c32a45-eb9ff700000011f6-e3-5e8a507618e7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E9.53.04158.6705A8E5; Mon,  6 Apr 2020 06:41:10 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200405214110epsmtip195d11651e5ff5aa266337470f8f5c3a2~DCli-O18y1144411444epsmtip1P;
 Sun,  5 Apr 2020 21:41:10 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200403133457.GA7561@kozik-lap>
Subject: RE: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Mon, 6 Apr 2020 06:41:09 +0900
Message-ID: <000101d60b92$eb97c050$c2c740f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QHXsprVAbJLbnoB7ziKYabh8Myw
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmqW5ZQFecwcunRhbNi9ezWUzZ8IHJ
 ov/xa2aL8+c3sFtsenyN1eLyrjlsFjPO72OyOLO4l92Bw2PTqk42j/1z17B7bF5S77F+y1UW
 j8+b5AJYo3JsMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU8hJzU22VXHwCdN0y
 c4BOUVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUGBoW6BUn5haX5qXrJefnWhka
 GBiZAlUm5GTMWDqVueCZXsX9HScYGxhXq3YxcnJICJhIdM/fyt7FyMUhJLCDUWLy4yZGCOcT
 o8S/MyuZIZxvjBJPGl6yw7S8aTkHldjLKHH5dxcThPOSUWL23SvMIFVsAroSlxc/YQKxRYDs
 zTeWgy1hFvjBKLHv2zlWkASngJ7Ev13HWUBsYYEgidlT/oA1sAioSKzccghsHa+ApcTG1+9Y
 IWxBiZMzn4DVMwtoSyxb+JoZ4iQFiZ9Pl7FCLHOT2PV5OVSNiMTszjawUyUEnrNJ3Pn8jw2i
 wUVizsz5UM3CEq+Ob4H6TUriZX8blF0vsa9tIjtEcw+jxM8PT1khEsYSs561A4OJA2iDpsT6
 XfogpoSAssSRW1B7+SQ6Dv9lhwjzSnS0CUE0qkms+/aCCcKWkVjzdBf7BEalWUg+m4Xks1lI
 PpiFsGsBI8sqRrHUguLc9NRiowJD5OjexAhOqFquOxhnnPM5xCjAwajEw7viRmecEGtiWXFl
 7iFGCQ5mJRFeqV6gEG9KYmVValF+fFFpTmrxIUZTYMBPZJYSTc4HJvu8knhDUyMzMwNLUwtT
 MyMLJXHezdw3Y4QE0hNLUrNTUwtSi2D6mDg4pRoYXffU2a6dO23z1TkGp3vq3fxPFTcJOuzx
 5ZzqKbtNNfbk1DpFTZWnEVfrv84JvmKm+DbgeV66009NH/k2G7UK08kd2k7PLkWcF3QR1N+3
 JkhFUF7EJcip7kCt3/UT86YscZj27+tEqQUzPq18IWY9pffHpvAZqlMfvkv4mztpqo+sHHfC
 7rLvSizFGYmGWsxFxYkAiLXvnb4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsWy7bCSnG5ZQFecwbGLHBbNi9ezWUzZ8IHJ
 ov/xa2aL8+c3sFtsenyN1eLyrjlsFjPO72OyOLO4l92Bw2PTqk42j/1z17B7bF5S77F+y1UW
 j8+b5AJYo7hsUlJzMstSi/TtErgy1m3ZzlhwRrfi7cNrrA2ME1W6GDk5JARMJN60nGPuYuTi
 EBLYzSjx/9xGVoiEjMSEF0uYIWxhifstR1ghip4zSsw+c5EJJMEmoCtxefETMFsEyN58Yzk7
 SBGzwD9Giea3d6DGPmaUmHjsKgtIFaeAnsS/XcfBbGGBAIlFK46CrWARUJFYueUQO4jNK2Ap
 sfH1O1YIW1Di5MwnYPXMAtoST28+hbOXLXwNdZ6CxM+ny1ghrnCT2PV5OVSNiMTszjbmCYzC
 s5CMmoVk1Cwko2YhaVnAyLKKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM4trS0djCe
 OBF/iFGAg1GJh3fFjc44IdbEsuLK3EOMEhzMSiK8Ur1AId6UxMqq1KL8+KLSnNTiQ4zSHCxK
 4rzy+ccihQTSE0tSs1NTC1KLYLJMHJxSDYxMW0+zBuU1LZzpxlHYJ6wfN6HgWXLmmZytMiyJ
 eUfmON7m/vUjmu/n6p4Owx3ZdxVuTnEIEdHX+Dq/7LNPTI21r8DF9jLBDfuSJ2j6mzLymcR8
 /b9vpvrlyui4p8uF4ionZxjkPM4+KDvzSXCb+ZrVNdn307wjvKeJas6dz9T1xX7SCR7TKiWW
 4oxEQy3mouJEAGaTGiGpAgAA
X-CMS-MailID: 20200405214110epcas2p267b641011ed40d0f99226349846c6997
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403133457.GA7561@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_144119_969616_0E776A9F 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Fri, Apr 03, 2020 at 10:35:10PM +0900, Krzysztof Kozlowski wrote:
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
> >  drivers/tty/serial/samsung_tty.c | 76
> > +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 64 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/tty/serial/samsung_tty.c
> > b/drivers/tty/serial/samsung_tty.c
> > index 73f951d65b93..bdf1d4d12cb1 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {  #define
> > portaddrl(port, reg) \
> >  	((unsigned long *)(unsigned long)((port)->membase + (reg)))
> >
> > -#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
> > +static u32 rd_reg(struct uart_port *port, u32 reg) {
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
> > +static void wr_reg(struct uart_port *port, u32 reg, u32 val) {
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
> +2035,27 @@ static
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
> 
> I got more thoughts... where is the binding for it? It looked like standard
> DT property but it is not described in device tree spec.
> 
> Also, where is the user (DTS) with it? I expect such changes go with the
> user itself... otherwise, next cleanup it will go away.
> 
> Best regards,
> Krzysztof

Do you think this kind of change is needed?
Do I have to make as a series patches with previous patch?

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 9d2ce347875b..a57b1233c691 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -29,6 +29,14 @@ properties:
   reg:
     maxItems: 1
 
+  reg-io-width:
+    description: |
+      The size (in bytes) of the IO accesses that should be performed
+      on the device.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [ 1, 4 ]
+


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
