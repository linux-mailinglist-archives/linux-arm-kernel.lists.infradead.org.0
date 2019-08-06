Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D507383A1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOBAfxHoXdYiDyUuBJNufa7f8TKo/9JQgKIz+T+2RUo=; b=H+YsMYcSWlBtlX
	Njwz3tJVO8MkkC1eaQ+TFFsFbW1qmZSquTb5tfe7fIsUFvbUpR1FvAyvaD+UL6Wtd+SjsaXzearbs
	oIodDlSL1rKdZW7Qw6HZ+TjRIopCMX98KL5T/pfrZ+EJQbBv1hw1Yk2UlnWcnYzIGaDKezbNTfm7B
	Ewa7EiNOrrIiC+6viHL86z9FoAZB4KKpdnYMv6DGTwxHf1JJhR/bngES32m4OdLMt0wjeyBA9ojhC
	SmlhTEAM64BU3uK3UhT7k/dUNoIfQTFVAYcJ4BkIEvrkpbrwLuyd4BLh9fAaUZwPUpwyacOI3jcOx
	izY53YwS6dMZ+zZD55uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5ph-0007hr-AK; Tue, 06 Aug 2019 20:13:21 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5pS-0007h3-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:13:07 +0000
Received: by mail-ot1-x343.google.com with SMTP id r6so95697215oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lMxZ0x37GnyZR6snyKLwN4Z+9SDuCLa+7zGM3bgCPsE=;
 b=uNhHnqHWxcUMjj/DObO9qobJZuWy3455TBAFqXuRBPRMYC5UOcehqvZgzujVQQ4tO7
 iDYaYUxpX3n0Mk6A0VuEi2MFvBpyGPkiicuFcaiBnkyAPwdFiIPP6T38CwGYN0rNYukJ
 fBODZFn5Oz2nqDIu++qJzEiRM6bpn5EyKgEsSS5lD09B271GHk3KNUYGKOyjtqAOWD1E
 p5Z/YfvgTNzyKHA7stW8/f5WGpf4d8iMSt4BlUyR9C5ezdn55uVRgKPYsPQdPzFgM4VT
 cRlCvxxZWCluzM8Embbcxk15JKo7CMf3oSK45KhhnTFQqDEsfnNjRAwlkx136AVhMz2g
 oGvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lMxZ0x37GnyZR6snyKLwN4Z+9SDuCLa+7zGM3bgCPsE=;
 b=miCYWsZChdzfTmA39O0uwvxojk6z811bjqTML6frno/upNX0YqvvqoxSEPg5dhcDLI
 KcXMgSQ31fLdwa1FJBs/GowBah+WVQw1BfRp8Nufd4jhFxfQeCwhdQyd69XK3BHRmqIY
 RmRzVgVRQcOTK58ceCKP9RWjmqoSGx+zZ5e4Ga3n8Yfsa5t3U297M+kh0hhl8muI/e5n
 oxmcRCApjvD7z+XqMSXz1cbKIxZEUTELDaIGkIMyYbC7hAagUvpnIX2m2nPFFbvoVvpG
 wkCGgX8MIzaPhLJ+9J27qtMn2pSW0K1OjtqbiiveKCx33qi2lZsy8JhpIWEUVoVV1lIh
 LuJQ==
X-Gm-Message-State: APjAAAWiUv4zyr75VM7hvNeotcJreiBMHWbSoMPuJkM1bgiwGoXG2biL
 /rV38p2XhUCtVSF31pX1qBMUGfIueqpaLHiPIJU=
X-Google-Smtp-Source: APXvYqxE7llsKhmMY5eBOo9Bp8SGwlO4IBzoSrd0PaMEtEgmygcJVEfPo61PKt0g7SmEEd0kK6W2y78Ewt3nTwN8ZyI=
X-Received: by 2002:a05:6602:144:: with SMTP id
 v4mr5426163iot.202.1565122385732; 
 Tue, 06 Aug 2019 13:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-8-arnd@arndb.de>
In-Reply-To: <20190731195713.3150463-8-arnd@arndb.de>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Tue, 6 Aug 2019 16:12:54 -0400
Message-ID: <CA+rxa6pZ7RLAOR1AQqdcNWxvk8dyoMR586n0d2e_b8SHU-jyWA@mail.gmail.com>
Subject: Re: [PATCH 07/14] net: lpc-enet: move phy setup into platform code
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_131306_400787_B1A224FA 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

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
