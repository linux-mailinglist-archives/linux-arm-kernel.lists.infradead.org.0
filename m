Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3606D920B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6Lu8o6Vq06jUEfL4bZwiElXMMUnhw9iktAnBNAQIyM=; b=L3rsISQ1NUS155
	r3DANHRe3y+MJg/6LV869G6q8VIq97qTbzlQkcoTX7yV0fK8QDdk3Neu19Cw+8WECW1uIrUiDteE1
	c+zoMOVB0izJCZNyQgRTHDdU5aCbfO76nzbgqtXw+mJf3KcljWFlDTKQKHjMN68lv5nR/SQboMNSA
	5x1yl3g2GaVwsFHCW1xYeVcQX7ShBGBqcXLaYVemE2eV9qa4npkvtX6ny1jkUTxE2MoKIS+x7J3a5
	+6586tQ1EkqWOAZpzBJVCW7Ff2+3ZFLxcWX5TLN5n39OusOTCNhyizY7+ePz1D6vYSfsqvE2YHN4P
	sXfxseIyF4ggfaDEb+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeM9-0003s6-0h; Mon, 19 Aug 2019 09:53:41 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeKP-0003rU-Ux
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:51:55 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 123D625AF0E;
 Mon, 19 Aug 2019 19:51:49 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D24679406ED; Mon, 19 Aug 2019 11:51:46 +0200 (CEST)
Date: Mon, 19 Aug 2019 11:51:46 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 3/3] serial: sh-sci: Don't check for
 mctrl_gpio_to_gpiod() returning error
Message-ID: <20190819095146.2g4sd732sqesnbs2@verge.net.au>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-4-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814092924.13857-4-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025154_269495_00E40CFB 
X-CRM114-Status: GOOD (  16.70  )
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

On Wed, Aug 14, 2019 at 11:29:24AM +0200, Geert Uytterhoeven wrote:
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
>  drivers/tty/serial/sh-sci.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
> index 7f565fcbf1ca4c5e..4e754a4850e6db63 100644
> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -2099,12 +2099,12 @@ static unsigned int sci_get_mctrl(struct uart_port *port)
>  	if (s->autorts) {
>  		if (sci_get_cts(port))
>  			mctrl |= TIOCM_CTS;
> -	} else if (IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(gpios, UART_GPIO_CTS))) {
> +	} else if (!mctrl_gpio_to_gpiod(gpios, UART_GPIO_CTS)) {
>  		mctrl |= TIOCM_CTS;
>  	}
> -	if (IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(gpios, UART_GPIO_DSR)))
> +	if (!mctrl_gpio_to_gpiod(gpios, UART_GPIO_DSR))
>  		mctrl |= TIOCM_DSR;
> -	if (IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(gpios, UART_GPIO_DCD)))
> +	if (!mctrl_gpio_to_gpiod(gpios, UART_GPIO_DCD))
>  		mctrl |= TIOCM_CAR;
>  
>  	return mctrl;
> @@ -3285,10 +3285,8 @@ static int sci_probe_single(struct platform_device *dev,
>  		return PTR_ERR(sciport->gpios);
>  
>  	if (sciport->has_rtscts) {
> -		if (!IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(sciport->gpios,
> -							UART_GPIO_CTS)) ||
> -		    !IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(sciport->gpios,
> -							UART_GPIO_RTS))) {
> +		if (mctrl_gpio_to_gpiod(sciport->gpios, UART_GPIO_CTS) ||
> +		    mctrl_gpio_to_gpiod(sciport->gpios, UART_GPIO_RTS)) {
>  			dev_err(&dev->dev, "Conflicting RTS/CTS config\n");
>  			return -EINVAL;
>  		}
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
