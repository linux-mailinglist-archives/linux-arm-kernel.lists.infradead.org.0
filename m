Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A0042CFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BT0+rp4JixtoDvxeU7jRYI7HnB6bNRmKB379FLfj5KI=; b=PoR0oWjK0IVlma
	eyhSA40pZ1Ft1/Lwdth1gx+4VVU+hZASS/5i828S1MbGIiqQWs5BtqIvMsQJKEhkVPXy/KgHGZ60U
	7CjSil5RVawnkjYpyHx8KX6GlLMZ8bMs1xHqDuvQgmK2zIEBOM3R2QrjBQWFpCVrpO0r6nQQTYuzA
	3GpbNFHvwmF817FQtAd63Xwch6UGLg/lX36Z2QSxBWXJfmAYvQQ6CU+Nmr+P1A0qaWk89HMhU9cHP
	znxtN7xGAEgNUs2Unu+Hh5eiyZUg6//r+2U0z2q6NlZWgqJW+3FzQqIkvCoYWjKnsFWYJ23Soc+dK
	Rnvpdjd2D8pBOLZcuwcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6it-0005ay-C4; Wed, 12 Jun 2019 17:07:43 +0000
Received: from smtprelay0168.hostedemail.com ([216.40.44.168]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6if-0005a3-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:07:31 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 1C359C1DC85;
 Wed, 12 Jun 2019 17:07:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2729:2828:2896:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:4225:4321:5007:7576:7875:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12438:12555:12679:12740:12760:12895:13439:14181:14659:14721:21080:21451:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: road25_23dc3a3c72a17
X-Filterd-Recvd-Size: 3267
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 12 Jun 2019 17:07:26 +0000 (UTC)
Message-ID: <fc69912c14ead80f371e2136d43db4af1f4b72aa.camel@perches.com>
Subject: Re: [PATCH v2 5/6] serial: uartps: Do not add a trailing semicolon
 to macro
From: Joe Perches <joe@perches.com>
To: Michal Simek <michal.simek@xilinx.com>, johan@kernel.org, 
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, monstr@monstr.eu
Date: Wed, 12 Jun 2019 10:07:25 -0700
In-Reply-To: <5d938d34c3c4710577df898dbf4b70c74d2e6730.1560338079.git.michal.simek@xilinx.com>
References: <cover.1560338079.git.michal.simek@xilinx.com>
 <5d938d34c3c4710577df898dbf4b70c74d2e6730.1560338079.git.michal.simek@xilinx.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_100730_150914_A0F63E05 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.168 listed in list.dnswl.org]
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
> This patch fixes this checkpatch warning:
> WARNING: macros should not use a trailing semicolon
> +#define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
> +		clk_rate_change_nb);
> diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
[]
> @@ -199,7 +199,7 @@ struct cdns_platform_data {
>  	u32 quirks;
>  };
>  #define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
> -		clk_rate_change_nb);
> +		clk_rate_change_nb)
>  
>  /**
>   * cdns_uart_handle_rx - Handle the received bytes along with Rx errors.

trivia:

Perhaps this is easier for humans to read with the macro
on two lines like:

#define to_cdns_uart(_nb) \
	container_of(_nb, struct cdns_uart, clk_rate_change_nb)

or just ignore the 80 column limit

#define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, clk_rate_change_nb)

or because the macro is only used in one place,
just get rid of it and use container_of directly.
---
 drivers/tty/serial/xilinx_uartps.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 605354fd60b1..ca5cec2b83ce 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -195,11 +195,10 @@ struct cdns_uart {
 	u32			quirks;
 	bool cts_override;
 };
+
 struct cdns_platform_data {
 	u32 quirks;
 };
-#define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
-		clk_rate_change_nb);
 
 /**
  * cdns_uart_handle_rx - Handle the received bytes along with Rx errors.
@@ -489,8 +488,9 @@ static int cdns_uart_clk_notifier_cb(struct notifier_block *nb,
 	int locked = 0;
 	struct clk_notifier_data *ndata = data;
 	unsigned long flags = 0;
-	struct cdns_uart *cdns_uart = to_cdns_uart(nb);
+	struct cdns_uart *cdns_uart;
 
+	cdns_uart = container_of(nb, struct cdns_uart, clk_rate_change_nb);
 	port = cdns_uart->port;
 	if (port->suspended)
 		return NOTIFY_OK;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
