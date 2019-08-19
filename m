Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0025392365
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwMB+CRptns8RfliWvlFjsMhyBgPOVOjcdUYeqDTu9E=; b=rVSYSh+RcydPI0
	wwG8gxyWEJ1AKBpWCqts5pFVUn7Z8ktXzFXW0p4/vtQ0nFHK8L+QV0daNFw0OQdEZo7XZoA00Eilu
	qkzNT+IKV4lHSb3PfYOdiSxfaJYUA7GN5iTVGJFt8VXeNG8gJ8r/MhS/Oh+sK9OfQq9NxJkihiytz
	GCVMfz3uOs8xsYcwvY7dtt16BvBKq+TQ51mczlb3U4/VsrvpUu1nC6UZM2flbluhtf+xXzVUFnzyS
	xIMsE/kmhiaJe13MenWWTPH1/afccLbBEt+uxqvaIbLziPnx5Y9TSc458M/igQ1VbYCC8Uue9pE7Y
	yiwFRTIyaOwndWTl8DPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgjv-0008K9-C2; Mon, 19 Aug 2019 12:26:23 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgjo-0008Ji-Cv
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:26:17 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 9022425B820;
 Mon, 19 Aug 2019 22:26:13 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 6DAA39406ED; Mon, 19 Aug 2019 14:26:11 +0200 (CEST)
Date: Mon, 19 Aug 2019 14:26:11 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 2/3] serial: mxs-auart: Don't check for
 mctrl_gpio_to_gpiod() returning error
Message-ID: <20190819122608.b3qpho5dtrfbvngd@verge.net.au>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-3-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814092924.13857-3-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_052616_593599_E9838BCA 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-serial@vger.kernel.org, Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-renesas-soc@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 11:29:23AM +0200, Geert Uytterhoeven wrote:
> Since commit 1d267ea6539f2663 ("serial: mctrl-gpio: simplify init
> routine"), mctrl_gpio_init() returns failure if the assignment to any
> member of the gpio array results in an error pointer.
> Since commit c359522194593815 ("serial: mctrl_gpio: Avoid probe failures
> in case of missing gpiolib"), mctrl_gpio_to_gpiod() returns NULL in the
> !CONFIG_GPIOLIB case.
> Hence there is no longer a need to check for mctrl_gpio_to_gpiod()
> returning an error value.  A simple NULL check is sufficient.
> 
> This follows the spirit of commit 445df7ff3fd1a0a9 ("serial: mctrl-gpio:
> drop usages of IS_ERR_OR_NULL") in the mctrl-gpio core.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
>  drivers/tty/serial/mxs-auart.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/tty/serial/mxs-auart.c b/drivers/tty/serial/mxs-auart.c
> index 4c188f4079b3ea68..e3452597068292f9 100644
> --- a/drivers/tty/serial/mxs-auart.c
> +++ b/drivers/tty/serial/mxs-auart.c
> @@ -969,10 +969,8 @@ static int mxs_auart_dma_init(struct mxs_auart_port *s)
>  
>  }
>  
> -#define RTS_AT_AUART()	IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(s->gpios,	\
> -							UART_GPIO_RTS))
> -#define CTS_AT_AUART()	IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(s->gpios,	\
> -							UART_GPIO_CTS))
> +#define RTS_AT_AUART()	!mctrl_gpio_to_gpiod(s->gpios, UART_GPIO_RTS)
> +#define CTS_AT_AUART()	!mctrl_gpio_to_gpiod(s->gpios, UART_GPIO_CTS)
>  static void mxs_auart_settermios(struct uart_port *u,
>  				 struct ktermios *termios,
>  				 struct ktermios *old)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
