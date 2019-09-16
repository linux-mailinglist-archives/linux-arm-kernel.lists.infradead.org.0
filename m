Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5243B3C80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viJCftj6n0fGwX9pTVEFMw/K//nuogK6KborJgO+mn4=; b=AIRuPZU+CudrFB
	YN2nxyNISbf6TJ/v+ANdq1PjNbkT5rQom5EbxYYWg8PUoDNJI3eavUWy6Gvo8vEICcaE9U4No1Xuy
	u+6EyMyVvsoXIbaClBzaihCKBouwfUHGCyfT9HWnnfdKWxAlC2AFHFrVrqj6NC4LFwXDtI9geqxuG
	1aZdmk5E40E+eIRRJzPmzymke9JAPtC02WdLHhYd09uPORtFqMKv+Ov98IcFl5awmFwbgV/kPk3/b
	U+QWioTHpBbcnrIB2llITs074J3TQeCIyBGC9Y6D1kBDX1GzCvqziizFxhDf+ugoUTFITTaDSi/Pb
	WgjCFy3xgD4kPBiseRsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rvs-0008A0-0I; Mon, 16 Sep 2019 14:24:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rvf-00089h-1t
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:24:36 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i9rvN-0002y0-MR; Mon, 16 Sep 2019 16:24:17 +0200
Message-ID: <b5c905fadc332ae2ddb30f3f890ff8deff81de71.camel@pengutronix.de>
Subject: Re: [PATCH 3/4] serial: imx: adapt rx buffer and dma periods
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Mon, 16 Sep 2019 16:24:17 +0200
In-Reply-To: <20190911144943.21554-4-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190911144943.21554-4-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_072435_099363_00E119C8 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: festevam@gmail.com, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, vkoul@kernel.org, linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mi, 2019-09-11 at 16:49 +0200, Philipp Puschmann wrote:
> Using only 4 DMA periods for UART RX is very few if we have a high
> frequency of small transfers - like in our case using Bluetooth with many
> small packets via UART - causing many dma transfers but in each only
> filling a fraction of a single buffer. Such a case may lead to the
> situation that DMA RX transfer is triggered but no buffer is available.
> While we have addressed the dma handling already we still want to avoid
> UART RX FIFO overrun. So we decrease the size of the buffers and increase
> their number and the total buffer size.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>

Reasoning seems sound:

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  drivers/tty/serial/imx.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 57d6e6ba556e..cdc51569237c 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -1028,8 +1028,6 @@ static void imx_uart_timeout(struct timer_list *t)
>  	}
>  }
>  
> -#define RX_BUF_SIZE	(PAGE_SIZE)
> -
>  /*
>   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
>   *   [1] the RX DMA buffer is full.
> @@ -1112,7 +1110,8 @@ static void imx_uart_dma_rx_callback(void *data)
>  }
>  
>  /* RX DMA buffer periods */
> -#define RX_DMA_PERIODS 4
> +#define RX_DMA_PERIODS	16
> +#define RX_BUF_SIZE	(PAGE_SIZE / 4)
>  
>  static int imx_uart_start_rx_dma(struct imx_port *sport)
>  {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
