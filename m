Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D0383A13
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MC4SrMEmeUno7FaWwDl9m/79JZdEEMXSePG5EJB6zUE=; b=bk0OVD+6i20WRy
	YZxxnHXlFHvXntZRQJXGiSLop0xfOnFDJgmmo9DR3d8JnYCukumTBvhkcElcCq200XxrwQNkRIRfs
	lDBIDkkAj6hKD7P3eUU/rbY6iNqHJq5DjIAporplFy+55WBtB2nC4ydq9SLElvY3+c97FOs6sc/DL
	oAGw2fm70emx9551WCiM/4GJ4EKMrSunJiXYLb0ziI2DO5Dv3Dy/iGZkARR//Dgl0BjEOmjUSqLtH
	J2egO23ei3fUbVdMJ9J2yYOws5l5gDnaC38IjRwV1rUt+6dNDA7QTD7/Sj27kQM94AJZwVePIOWnf
	ZyiqXFP4Yy1uynHVrphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5og-0007R8-HK; Tue, 06 Aug 2019 20:12:18 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5oI-0007QQ-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:11:55 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so47150786oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L9+cVJ1tHnXHLgWnIFc8trRPYs0ZvKQBrpOrQ/JACNw=;
 b=sIXKlKnGMf3/x5UdpiL2krma7wQpwGLW+fNiBVYGuAg+enmNapJrdHJOK3Oz6VrG4S
 uyrECxK7aeBd7o3/uEp8bWKsib3jCFom0hef5aSfRgnTGDHYO+nZABn6EpZoOfS//Di8
 K3J2QiIPIqO43WOsFkM/9MS+hFVl0vY7nLlRLOOOT38bOre68X6M4+VE7+iryhYTkoWH
 +iIcdRhzuCzCJXfZ2RI2EC7lMHdMYNFg0AFO6lRZgQWTJRQOF+px3mavO28/a1fqiwMl
 zIzP3jFzckC9iAiQ+eeHYXmFqjmRtbWUw99s2dPsWL3ujUbHxrOx7r/gJGbY7a2vzl0c
 vmCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L9+cVJ1tHnXHLgWnIFc8trRPYs0ZvKQBrpOrQ/JACNw=;
 b=uGT2WiEWPiH8+I0FAoUcFA/A58OyIx6ioskMHVIztFeYrT/Je5B8bpEVfVCsyi5jLo
 PtMA0e7oxyxdbMVYFDqqTMIKwOIAlixXlV5GYlgu1jO7HC2J6yeRBCLs8VC9JPni/R3K
 Xxe736YqTwQMgPx/XXYMMRyLa5080aEuT5kIi3vH3pLdBw1sRX0Rqt3b9BmO9XWGDrqw
 WnT2Ctkl0j/oaPKER6LA/XaABIkgGP+hX/Yi656PxFG7KnYrtVE81q37wEcfBkR7dNZA
 XjEXT3asZW5D3lwVsF+q/bCZ9HIWpqfhW2Y2c53G4By8VmbaP082CgaK08ePoIFkxOQ9
 eQ/g==
X-Gm-Message-State: APjAAAVu1mdP/iugzn7sE+f4CDaaEQewXR8Bk2p7DkBFOdpMfk4QbXrs
 KJ7mPwQuCa80xF7QSbERy/zi4mj7pgbOX3ylZao=
X-Google-Smtp-Source: APXvYqzgWKoM+BMJTliT2FhYuhnnw0Sff1jkVm8UFW2f3OncWRNYvDy3QFieh0lskdwjWmdDcfZrqUQTJBiO+gLmuHM=
X-Received: by 2002:a05:6638:c8:: with SMTP id w8mr6365741jao.52.1565122310484; 
 Tue, 06 Aug 2019 13:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-8-arnd@arndb.de>
In-Reply-To: <20190731195713.3150463-8-arnd@arndb.de>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Tue, 6 Aug 2019 16:11:38 -0400
Message-ID: <CA+rxa6pcw7une0YUyMd1ZxUpcAqRRqZHcEUXxTYuscmpDUsCuQ@mail.gmail.com>
Subject: Re: [PATCH 07/14] net: lpc-enet: move phy setup into platform code
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_131154_120882_73EF6AEF 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Networking <netdev@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 4:01 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Setting the phy mode requires touching a platform specific
> register, which prevents us from building the driver without
> its header files.
>
> Move it into a separate function in arch/arm/mach/lpc32xx
> to hide the core registers from the network driver.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-lpc32xx/common.c       | 12 ++++++++++++
>  drivers/net/ethernet/nxp/lpc_eth.c   | 12 +-----------
>  include/linux/soc/nxp/lpc32xx-misc.h |  5 +++++
>  3 files changed, 18 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm/mach-lpc32xx/common.c b/arch/arm/mach-lpc32xx/common.c
> index f648324d5fb4..a475339333c1 100644
> --- a/arch/arm/mach-lpc32xx/common.c
> +++ b/arch/arm/mach-lpc32xx/common.c
> @@ -63,6 +63,18 @@ u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
>  }
>  EXPORT_SYMBOL_GPL(lpc32xx_return_iram);
>
> +void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
> +{
> +       u32 tmp = __raw_readl(LPC32XX_CLKPWR_MACCLK_CTRL);
> +       tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
> +       if (mode == PHY_INTERFACE_MODE_MII)
> +               tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
> +       else
> +               tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
> +       __raw_writel(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
> +}
> +EXPORT_SYMBOL_GPL(lpc32xx_set_phy_interface_mode);
> +
>  static struct map_desc lpc32xx_io_desc[] __initdata = {
>         {
>                 .virtual        = (unsigned long)IO_ADDRESS(LPC32XX_AHB0_START),
> diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
> index bcdd0adcfb0c..0893b77c385d 100644
> --- a/drivers/net/ethernet/nxp/lpc_eth.c
> +++ b/drivers/net/ethernet/nxp/lpc_eth.c
> @@ -20,9 +20,6 @@
>  #include <linux/spinlock.h>
>  #include <linux/soc/nxp/lpc32xx-misc.h>
>
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> -
>  #define MODNAME "lpc-eth"
>  #define DRV_VERSION "1.00"
>
> @@ -1237,16 +1234,9 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
>         dma_addr_t dma_handle;
>         struct resource *res;
>         int irq, ret;
> -       u32 tmp;
>
>         /* Setup network interface for RMII or MII mode */
> -       tmp = __raw_readl(LPC32XX_CLKPWR_MACCLK_CTRL);
> -       tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
> -       if (lpc_phy_interface_mode(dev) == PHY_INTERFACE_MODE_MII)
> -               tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
> -       else
> -               tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
> -       __raw_writel(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
> +       lpc32xx_set_phy_interface_mode(lpc_phy_interface_mode(dev));
>
>         /* Get platform resources */
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> diff --git a/include/linux/soc/nxp/lpc32xx-misc.h b/include/linux/soc/nxp/lpc32xx-misc.h
> index f232e1a1bcdc..af4f82f6cf3b 100644
> --- a/include/linux/soc/nxp/lpc32xx-misc.h
> +++ b/include/linux/soc/nxp/lpc32xx-misc.h
> @@ -9,9 +9,11 @@
>  #define __SOC_LPC32XX_MISC_H
>
>  #include <linux/types.h>
> +#include <linux/phy.h>
>
>  #ifdef CONFIG_ARCH_LPC32XX
>  extern u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr);
> +extern void lpc32xx_set_phy_interface_mode(phy_interface_t mode);
>  #else
>  static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
>  {
> @@ -19,6 +21,9 @@ static inline u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaadd
>         *dmaaddr = 0;
>         return 0;
>  }
> +static inline void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
> +{
> +}
>  #endif
>
>  #endif  /* __SOC_LPC32XX_MISC_H */
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
