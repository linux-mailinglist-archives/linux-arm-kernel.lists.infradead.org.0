Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD377E440
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buAQj7n+jrqdbwvj96yKMnP4h+3lAW7YrvEzAQlzvHs=; b=E6jh6/RPvg4KQr
	DLdc2Gv4a23eQV2M7Q4Q2Zj39aFIDM/DYrNvrSBv6V4uk4HgBOqm6iI8SwB1qLVeWigDlWeboOsdp
	PCMIS+bZ/mfhryk2yEuI/Gz3JDAagG1diQItZ5MYxWyxIPTXe8d6aw678LoNPbcadQew52I3UJO1i
	+i9luNhYh1/clc3/d/8z8QX1sEmlispS2qhjtSnvCDLeD6nZjrL74nzRu/z5vijKesvNp4M1sRNd0
	oyxE8uoG/ezNcivtsIi8uawc1kLTNHeE5eVK7qkjsAvHSE7CnLCxFz6lCGB3IOuYH5+ocRxOxt19X
	DEHdzEApr6gL6EpSQW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHlU-0004iq-Te; Thu, 01 Aug 2019 20:33:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHlN-0004i6-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:33:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1htHlI-0003TO-CA; Thu, 01 Aug 2019 22:33:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1htHlE-0001p3-TM; Thu, 01 Aug 2019 22:33:16 +0200
Date: Thu, 1 Aug 2019 22:33:16 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 1/3] serial: mctrl_gpio: Avoid probe failures in case
 of missing gpiolib
Message-ID: <20190801203316.7ntlv6hequmddfxu@pengutronix.de>
References: <20190801184505.17239-1-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801184505.17239-1-frieder.schrempf@kontron.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_133325_310312_CC1C77B9 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 06:45:21PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> =

> If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() and
> mctrl_gpio_init_noauto() will currently return an error pointer with
> -ENOSYS. As the mctrl GPIOs are usually optional, drivers need to
> check for this condition to allow continue probing.
> =

> To avoid the need for this check in each driver, we return NULL
> instead, as all the mctrl_gpio_*() functions are skipped anyway.
> We also adapt mctrl_gpio_to_gpiod() to be in line with this change.
> =

> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

nitpick: put your S-o-b last.

> ---
> Changes in v2
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> * Move the sh_sci changes to a separate patch
> * Add a patch for the 8250 driver
> * Add Fabio's R-b tag
> ---
>  drivers/tty/serial/serial_mctrl_gpio.c | 3 +++
>  drivers/tty/serial/serial_mctrl_gpio.h | 6 +++---
>  2 files changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/tty/serial/serial_mctrl_gpio.c b/drivers/tty/serial/=
serial_mctrl_gpio.c
> index 2b400189be91..54c43e02e375 100644
> --- a/drivers/tty/serial/serial_mctrl_gpio.c
> +++ b/drivers/tty/serial/serial_mctrl_gpio.c
> @@ -61,6 +61,9 @@ EXPORT_SYMBOL_GPL(mctrl_gpio_set);
>  struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
>  				      enum mctrl_gpio_idx gidx)
>  {
> +	if (gpios =3D=3D NULL)
> +		return NULL;
> +

I wonder why you need this. If GPIOLIB is off this code isn't active and
with GPIOLIB calling mctrl_gpio_to_gpiod with a gpios =3D=3D NULL is a bug
that IMHO should not be silently ignored.

Am I missing something (again)?

>  	return gpios->gpio[gidx];
>  }

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
