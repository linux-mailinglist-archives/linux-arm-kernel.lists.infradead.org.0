Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4007DC6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I71yTNIX2uJ3BT40Er824Rx8Ss1YGfQOy7ueTjvTL9U=; b=HQt8NVaF0EtOOt
	4RNxHNXRZSVh13zrrKQbkdfxvV2QcxLfC1BMCUAFVId7iZqhRYBUBjU9BQi5AafgUBcoTLCSP1NE8
	kztYdhoMFpNAR94zjmrmWzhj7eOe/mDyGGm1VdlClJYMu4FKn0/AKX/+r9i4fDM8aUZqnEAkSCwcZ
	AlJ/BjsWkzIIcLW+3i5ylSD/qSlqH4eAAHhsneMHFkSP1RPvb2xNwK/mu2scENV4uBuCClkXvc/pf
	ppn4Gkb2BPoXiN4zmXj0pVr21eeTagVvHWyU1YfKRK3KOUof8xdWePDfxdaemhInR6G0OlI40nJNK
	7cHV2b3PSWSOcSpNNWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAzg-0002iE-Po; Thu, 01 Aug 2019 13:19:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAzX-0002hs-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:19:36 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so69353008ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RC6wKO1Isy8ssplnFFBZCldnnaBxZKmxUbojPji9Nn8=;
 b=KUu2NGVrF3CsroBiTb6xu1ZVx93LkXrT1peKf0dykpEFlk4TXLXA7TsWvS53RT4lTo
 K4juM7BZMtb6SDbbYkdwqh1AgseBQOTuTLGUQqm1vROI5EC+TR9avlR+2A/5WE/Qx8Qb
 XWc6+IL5OyWftImZreXB9VDAxlRk4GhtGSuE3eShxQ5CmYP7YV9SFJpsposFOODrqH/M
 XMddEgfFPqbmw+rwydtEpbADNt+2pztRm/8V4eNqKyDwtpRXa1tsw0GhJtxeCoHvevVw
 4YUexJXuE2KX2Dta84W+JPUzjl0DL9dlC4VnMLXsFy/fq4RrYFWAzwMLTM+5t4+IXl/5
 9EYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RC6wKO1Isy8ssplnFFBZCldnnaBxZKmxUbojPji9Nn8=;
 b=SSk2SPkUoB03kaNyySr1FDQ0G+w/CwcZ+kzPktyuzqqec2xMg7IA0EdMVEyQCwYOR6
 JhiaXkT5snnCELz123tRGOGrHgBOJUC9UqpcGluUD2SqdEUmt+Qou2CeZHNaHjdrK9zk
 lZqaHaOYwnOLMUMNX1FD+R/7KbHAZxohDDgX0oWDx+Si8PiHfVNrBsF/mt5QjXnS4J6g
 II268O05zGTf94103O+kt2qvjx5x8+6y20bPzIYdyfDkjm5sNv36bFmNW2y4UJPyKpdv
 23UDsMqzdUPXtFVkTM5lIm+sVNJ/qoTEW+8VpclLgBokcfu0c+S8MEKKW98qVuZ+7fFA
 5CiQ==
X-Gm-Message-State: APjAAAUG80IcPK+e2l88VrHDilB7emZq0nrkF4P2UFxYibMq4COM+nv/
 I/WdEYG/SPWN4kiQdUy5MY73/EDH47qMRFXLQUQ=
X-Google-Smtp-Source: APXvYqxUbh1cL9LgQJwJqmT3uKcr+dkk4jgpEBFMs3ohuwPYtfrWNXPxJw2IeNHF6fA+Gt5UlsJw2+1zolwkPA+X8KM=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr68535653ljf.10.1564665573273; 
 Thu, 01 Aug 2019 06:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190801124446.15703-1-frieder.schrempf@kontron.de>
In-Reply-To: <20190801124446.15703-1-frieder.schrempf@kontron.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 1 Aug 2019 10:19:45 -0300
Message-ID: <CAOMZO5BPRNDQG_6PunUTxK7P=NF1DqjxvM+xEVMzX+rGd=h9hA@mail.gmail.com>
Subject: Re: [PATCH] serial: mctrl_gpio: Avoid probe failures in case of
 missing gpiolib
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_061935_385372_77D1E855 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Schrempf,

On Thu, Aug 1, 2019 at 9:47 AM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> If CONFIG_GPIOLIB is not enabled, mctrl_gpio_init() and
> mctrl_gpio_init_noauto() will currently return an error pointer with
> -ENOSYS. As the mctrl GPIOs are usually optional, drivers need to
> check for this condition to allow continue probing.
>
> To avoid the need for this check in each driver, we return NULL
> instead, as all the mctrl_gpio_*() functions are skipped anyway.
> We also adapt mctrl_gpio_to_gpiod() to be in line with this change.
>
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Looks good to me:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Also adding Geert on Cc as the patch touches sh-sci.

Thanks


> ---
>  drivers/tty/serial/serial_mctrl_gpio.c | 3 +++
>  drivers/tty/serial/serial_mctrl_gpio.h | 6 +++---
>  drivers/tty/serial/sh-sci.c            | 2 +-
>  3 files changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/tty/serial/serial_mctrl_gpio.c b/drivers/tty/serial/serial_mctrl_gpio.c
> index 2b400189be91..54c43e02e375 100644
> --- a/drivers/tty/serial/serial_mctrl_gpio.c
> +++ b/drivers/tty/serial/serial_mctrl_gpio.c
> @@ -61,6 +61,9 @@ EXPORT_SYMBOL_GPL(mctrl_gpio_set);
>  struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
>                                       enum mctrl_gpio_idx gidx)
>  {
> +       if (gpios == NULL)
> +               return NULL;
> +
>         return gpios->gpio[gidx];
>  }
>  EXPORT_SYMBOL_GPL(mctrl_gpio_to_gpiod);
> diff --git a/drivers/tty/serial/serial_mctrl_gpio.h b/drivers/tty/serial/serial_mctrl_gpio.h
> index b7d3cca48ede..1b2ff503b2c2 100644
> --- a/drivers/tty/serial/serial_mctrl_gpio.h
> +++ b/drivers/tty/serial/serial_mctrl_gpio.h
> @@ -114,19 +114,19 @@ static inline
>  struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
>                                       enum mctrl_gpio_idx gidx)
>  {
> -       return ERR_PTR(-ENOSYS);
> +       return NULL;
>  }
>
>  static inline
>  struct mctrl_gpios *mctrl_gpio_init(struct uart_port *port, unsigned int idx)
>  {
> -       return ERR_PTR(-ENOSYS);
> +       return NULL;
>  }
>
>  static inline
>  struct mctrl_gpios *mctrl_gpio_init_noauto(struct device *dev, unsigned int idx)
>  {
> -       return ERR_PTR(-ENOSYS);
> +       return NULL;
>  }
>
>  static inline
> diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
> index d18c680aa64b..249325b65ee0 100644
> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -3287,7 +3287,7 @@ static int sci_probe_single(struct platform_device *dev,
>                 return ret;
>
>         sciport->gpios = mctrl_gpio_init(&sciport->port, 0);
> -       if (IS_ERR(sciport->gpios) && PTR_ERR(sciport->gpios) != -ENOSYS)
> +       if (IS_ERR(sciport->gpios))
>                 return PTR_ERR(sciport->gpios);
>
>         if (sciport->has_rtscts) {
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
