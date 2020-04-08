Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA481A26C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 18:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xObwVV63J5rHNDTiQkXXdcY6ZJV4fRB//WHM8cR99yk=; b=maIhbyCpAJA6cj
	i7zg7Anrox3HOwnOSn9Sf0QhYumUfWh+iXluf44jXpRbxc5m8fQHoI+KEhXoMlVBFnbvfOLFZ5fHB
	KSE/kVxTEAyVgsy1C3NrY0dZYyGZqYg9QRuVpIu2jQ4UIoHbfExJH3VBCG4jerfiJMZcHY1bXNDFw
	WZkvm2tP4UsiEV/2oKZnk1+2rM5uPBRoOUqgZo5sdRtdU70ZaOQH8jJxlUWUXczGcxkqTo+N6okwE
	9wWikRqQW4Lsht6EP+HGvTe1+NRetUhNv5y5agNz1oCzI6FXyls+h8qdbklj/NJyZopsZkCd+b/6H
	OxTlqLw4QfcASvT3gCjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMDFZ-0005nN-S4; Wed, 08 Apr 2020 16:08:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMDFS-0005n0-Vg; Wed, 08 Apr 2020 16:08:20 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D52D2522;
 Wed,  8 Apr 2020 18:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586362097;
 bh=AJzfCUM1HjeczLj5Whnp3MrdeZwLtEyNuz8qCxUuqww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MgwmrRdgrr9cVDRNCd23nmAvQGIUJgYrfc0CpnOKiNwMZKu8bCzBTX/A/K/rSyvfh
 +DR/f48BgmMyzWwKDuGlFi/nP/3kXKHtaCXhFiz8vFIL2oP0xbNpCWDwNEnRoluhRM
 +Zw2ycYZWgIbFN9H8VF4O6Fb/MV4OkIpGGq+GssA=
Date: Wed, 8 Apr 2020 19:08:06 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
Message-ID: <20200408160806.GJ4881@pendragon.ideasonboard.com>
References: <20200408155325.2077345-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408155325.2077345-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_090819_166301_2B48C7AD 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

Thank you for the patch.

On Wed, Apr 08, 2020 at 05:52:44PM +0200, Arnd Bergmann wrote:
> When compile-testing with CONFIG_OF disabled, we get a warning
> about an unused variable, and about inconsistent Kconfig dependencies:
> 
> WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
>   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
>   Selected by [m]:
>   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> 
> drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
>   457 |  struct device_node *node = pdev->dev.of_node;
> 
> Simply open-coding the pointer dereference in the only place
> the variable is used avoids the warning in all configurations,
> so we can allow compile-testing as well.
> 
> Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
>  drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> index bd0147624de1..dd5d4d741bdd 100644
> --- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> +++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> @@ -2,7 +2,7 @@
>  
>  config PHY_ROCKCHIP_DPHY_RX0
>  	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
> -	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> +	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
>  	select GENERIC_PHY_MIPI_DPHY
>  	select GENERIC_PHY
>  	help
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index b1b3c058e957..5e7e797aad71 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -454,7 +454,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  
>  static int rkisp1_probe(struct platform_device *pdev)
>  {
> -	struct device_node *node = pdev->dev.of_node;
>  	const struct rkisp1_match_data *clk_data;
>  	const struct of_device_id *match;
>  	struct device *dev = &pdev->dev;
> @@ -463,7 +462,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	unsigned int i;
>  	int ret, irq;
>  
> -	match = of_match_node(rkisp1_of_match, node);
> +	match = of_match_node(rkisp1_of_match, pdev->dev.of_node);
>  	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
>  	if (!rkisp1)
>  		return -ENOMEM;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
