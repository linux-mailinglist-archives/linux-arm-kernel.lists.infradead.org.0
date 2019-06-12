Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F342CCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=510Zopq39lbOrstjVsXv/EzpU+AhomrPtjk1WP0I9Qo=; b=ggV8h2xdpiINF9
	V0qyHALM5o21PHseIqJMhGReSV8XsxH+41ciayBHiMaFkpzj1S1uHofVyPypKpdY4Vtvwxhxo3cyN
	AV3lnQeImF2zaSzBE9u4DmLdRld9PDl6SpmG5RQbMNr6ofy6n5HAnMrruo4idTbBlSuaIhvRSJtsA
	5lVZ01C37vCB+OJ+GLzJEWHQeNoeJ+BGRdl5rFZK40rL4XS+BAmV0/W+B4uygRLgh2ge0y5WrrD2S
	32O0Tc1odeK6QbZjD4pqIYXUhwlxfbI9JN6cPR6e8xxOg8x+pnqvnOwU0DzOxOGwS4Fw6o97qRlWY
	hziyHMLcenb4ZUr90bKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6YW-0000wF-2d; Wed, 12 Jun 2019 16:57:00 +0000
Received: from smtprelay0044.hostedemail.com ([216.40.44.44]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6YI-0000uY-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:56:48 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 186D02C33;
 Wed, 12 Jun 2019 16:56:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2904:2914:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:4605:5007:6119:7576:7875:8603:9592:10004:10848:11026:11232:11473:11658:11914:12043:12048:12296:12438:12555:12683:12740:12760:12895:12986:13439:13972:14181:14659:14721:21080:21433:21451:21627:30045:30054:30090:30091,
 0, RBL:error, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0,
 LFtime:28, LUA_SUMMARY:none
X-HE-Tag: elbow51_57385ec3ca363
X-Filterd-Recvd-Size: 5165
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Wed, 12 Jun 2019 16:56:39 +0000 (UTC)
Message-ID: <183d192c4f3d0a8032bda73953ac8d1719590570.camel@perches.com>
Subject: Re: [PATCH v2 3/6] serial: uartps: Fix multiple line dereference
From: Joe Perches <joe@perches.com>
To: Michal Simek <michal.simek@xilinx.com>, johan@kernel.org, 
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, monstr@monstr.eu
Date: Wed, 12 Jun 2019 09:56:32 -0700
In-Reply-To: <3a5b27987c5b4fc5ec7dc7f58485db63057edbfe.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
 <3a5b27987c5b4fc5ec7dc7f58485db63057edbfe.1560338079.git.michal.simek@xilinx.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_095646_588030_4A7DCD67 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 13:14 +0200, Michal Simek wrote:
> From: Nava kishore Manne <nava.manne@xilinx.com>
> 
> Trivial patch which fixes this checkpatch warning:
> WARNING: Avoid multiple line dereference - prefer 'port->state->xmit.tail'
> +				port->state->xmit.buf[port->state->xmit.
> +				tail], port->membase + CDNS_UART_FIFO);
> 
> Fixes: c8dbdc842d30 ("serial: xuartps: Rewrite the interrupt handling logic")
> Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
> Changes in v2:
> - Split patch from v1
> - Add Fixes tag
> 
>  drivers/tty/serial/xilinx_uartps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
> index c84db82bdaab..4cd20c036750 100644
> --- a/drivers/tty/serial/xilinx_uartps.c
> +++ b/drivers/tty/serial/xilinx_uartps.c
> @@ -319,8 +319,8 @@ static void cdns_uart_handle_tx(void *dev_id)
>  			 * register.
>  			 */
>  			writel(
> -				port->state->xmit.buf[port->state->xmit.
> -				tail], port->membase + CDNS_UART_FIFO);
> +				port->state->xmit.buf[port->state->xmit.tail],
> +					port->membase + CDNS_UART_FIFO);
>  
>  			port->icount.tx++;

Another way to rewrite this is to use a temporary for
port->state->xmit and also return early on empty to
avoid unnecessary indentation.

Using a temporary can also reduce object size a bit by
removing unnecessary dereferences: (defconfig x86-64)

$ size drivers/tty/serial/xilinx_uartps.o*
   text	   data	    bss	    dec	    hex	filename
  26578	   4632	    320	  31530	   7b2a	drivers/tty/serial/xilinx_uartps.o.new
  26642	   4632	    320	  31594	   7b6a	drivers/tty/serial/xilinx_uartps.o.old

i.e.:

---
 drivers/tty/serial/xilinx_uartps.c | 54 ++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 29 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 605354fd60b1..09b586aeeca3 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -305,40 +305,36 @@ static void cdns_uart_handle_rx(void *dev_id, unsigned int isrstatus)
 static void cdns_uart_handle_tx(void *dev_id)
 {
 	struct uart_port *port = (struct uart_port *)dev_id;
+	struct circ_buf *xmit = &port->state->xmit;
 	unsigned int numbytes;
 
-	if (uart_circ_empty(&port->state->xmit)) {
+	if (uart_circ_empty(xmit)) {
 		writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_IDR);
-	} else {
-		numbytes = port->fifosize;
-		while (numbytes && !uart_circ_empty(&port->state->xmit) &&
-		       !(readl(port->membase + CDNS_UART_SR) & CDNS_UART_SR_TXFULL)) {
-			/*
-			 * Get the data from the UART circular buffer
-			 * and write it to the cdns_uart's TX_FIFO
-			 * register.
-			 */
-			writel(
-				port->state->xmit.buf[port->state->xmit.
-				tail], port->membase + CDNS_UART_FIFO);
-
-			port->icount.tx++;
-
-			/*
-			 * Adjust the tail of the UART buffer and wrap
-			 * the buffer if it reaches limit.
-			 */
-			port->state->xmit.tail =
-				(port->state->xmit.tail + 1) &
-					(UART_XMIT_SIZE - 1);
-
-			numbytes--;
-		}
+		return;
+	}
+
+	numbytes = port->fifosize;
+	while (numbytes && !uart_circ_empty(xmit) &&
+	       !(readl(port->membase + CDNS_UART_SR) & CDNS_UART_SR_TXFULL)) {
+		/*
+		 * Get the data from the UART circular buffer and write it
+		 * to the cdns_uart's TX_FIFO register.
+		 */
+		writel(xmit->buf[xmit->tail], port->membase + CDNS_UART_FIFO);
+
+		port->icount.tx++;
+
+		/*
+		 * Adjust the tail of the UART buffer and wrap the buffer
+		 * if it reaches limit.
+		 */
+		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
 
-		if (uart_circ_chars_pending(
-				&port->state->xmit) < WAKEUP_CHARS)
-			uart_write_wakeup(port);
+		numbytes--;
 	}
+
+	if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
+		uart_write_wakeup(port);
 }
 
 /**
 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
