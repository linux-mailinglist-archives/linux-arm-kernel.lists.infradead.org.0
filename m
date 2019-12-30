Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E56612D35B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 19:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ud3Q8+wNXNazVG3wX8fgpJNAr++1iDhM2i19eUmt/zg=; b=GghqvXWLnQWzkp
	/goLpMZFHpnHVCu5u/4LODHbBlncGOsTVENK4LgUwGM/XXMvKxuYyDAecCTBpN4l3MHsCoYTkWdMU
	riYY+L7hOQNgk8LK6nkJ9BwS5ytbDdoMayOV/5OAzeWeCSF2toUyvnxsSkabbXPeFuizHbyUcogcB
	YTp+oOzNRVOgqSrS77QD5Kur7vKMOpV0bliNubPaD7W2/kMDdgrVAZtvRRHCOu4HOxUD5aD8sePcI
	iamGuXpK3votJnXhM0yOPXdnrr6RXKg7VkGjnuriAPOKcBDIk46sPofCNUDPvVrT0IEFAcJEinm4W
	xImzq3IUwMg34DVUkw/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzjS-0001d7-0m; Mon, 30 Dec 2019 18:25:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzjH-0001cd-5b; Mon, 30 Dec 2019 18:25:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 045A128DFAB
Message-ID: <c6514f8e8bf49913e3cb907ba91c0a47de39e68c.camel@collabora.com>
Subject: Re: [PATCH v12 01/11] media: staging: phy-rockchip-dphy: add
 Rockchip MIPI Synopsys DPHY driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, 
 linux-rockchip@lists.infradead.org
Date: Mon, 30 Dec 2019 15:25:10 -0300
In-Reply-To: <20191227200116.2612137-2-helen.koike@collabora.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-2-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_102523_472594_9874C552 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 robh+dt@kernel.org, hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, mchehab@kernel.org,
 andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

Thanks for taking care of this.

On Fri, 2019-12-27 at 17:01 -0300, Helen Koike wrote:
> From: Ezequiel Garcia <ezequiel@collabora.com>
> 
> Add driver for Rockchip MIPI Synopsys DPHY driver
> 
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> Changes in v12:
> - several cleanups
> - remove "rx" from function names, as this driver only supports rx
> 
> Changes in v11:
> - fix checkpatch errors
> 
> Changes in v10: None
> Changes in v9:
> - Move to staging
> - replace memcpy by a directly assignment
> - remove unecessary ret variable in rockchip_dphy_init
> - s/0x1/1
> - s/0x0/0
> - coding style changes
> - dphy_reg variable sizes
> - variables from int to unsigned int
> - rename functions to start with rk_
> - rename dphy0 to rx
> - fix hardcoded lane0 usage
> - disable rx on power off
> - general cleanups of unused variables
> 
> Changes in v8:
> - Remove boiler plate license text
> 
> Changes in v7:
> - Migrate dphy specific code from
> drivers/media/platform/rockchip/isp1/mipi_dphy_sy.c
> to drivers/phy/rockchip/phy-rockchip-dphy.c
> - Drop support for rk3288
> - Drop support for dphy txrx
> - code styling and checkpatch fixes
> 
>  drivers/staging/media/Kconfig                 |   2 +
>  drivers/staging/media/Makefile                |   1 +
>  .../staging/media/phy-rockchip-dphy/Kconfig   |  11 +
>  .../staging/media/phy-rockchip-dphy/Makefile  |   2 +
>  drivers/staging/media/phy-rockchip-dphy/TODO  |   6 +
>  .../phy-rockchip-dphy/phy-rockchip-dphy.c     | 396 ++++++++++++++++++
>  6 files changed, 418 insertions(+)
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
> 
> diff --git a/drivers/staging/media/Kconfig b/drivers/staging/media/Kconfig
> index 642adc4c24d2..a47484473883 100644
> --- a/drivers/staging/media/Kconfig
> +++ b/drivers/staging/media/Kconfig
> @@ -38,4 +38,6 @@ source "drivers/staging/media/ipu3/Kconfig"
>  
>  source "drivers/staging/media/soc_camera/Kconfig"
>  
> +source "drivers/staging/media/phy-rockchip-dphy/Kconfig"
> +
>  endif
> diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makefile
> index 2f1711a8aeed..b0eae3906208 100644
> --- a/drivers/staging/media/Makefile
> +++ b/drivers/staging/media/Makefile
> @@ -8,3 +8,4 @@ obj-$(CONFIG_TEGRA_VDE)		+= tegra-vde/
>  obj-$(CONFIG_VIDEO_HANTRO)	+= hantro/
>  obj-$(CONFIG_VIDEO_IPU3_IMGU)	+= ipu3/
>  obj-$(CONFIG_SOC_CAMERA)	+= soc_camera/
> +obj-$(CONFIG_PHY_ROCKCHIP_DPHY)		+= phy-rockchip-dphy/
> diff --git a/drivers/staging/media/phy-rockchip-dphy/Kconfig b/drivers/staging/media/phy-rockchip-dphy/Kconfig
> new file mode 100644
> index 000000000000..7378bd75fa7c
> --- /dev/null

Seems I overlooked the Kconfig file for this driver,
sorry about that!

> +++ b/drivers/staging/media/phy-rockchip-dphy/Kconfig
> @@ -0,0 +1,11 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for Rockchip platforms
> +#
> +config PHY_ROCKCHIP_DPHY
> +	tristate "Rockchip MIPI Synopsys DPHY driver"
> +	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> +	select GENERIC_PHY_MIPI_DPHY
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the Rockchip MIPI Synopsys DPHY.

Following a more user-friendly convention, this should read
more like:

"""
Enable this to support the Rockchip MIPI Synopsys DPHY
associated to the Rockchip ISP module present in RK3399 SoCs.

To compile this driver as a module, choose M here: the module
will be called phy-rockchip-dphy. 
"""

And I believe the same improvement should be applied to the
ISP driver Kconfig help.

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
