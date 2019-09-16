Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C52B32F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 03:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOnWpUb8ogGY5duvm2B6jkqlxsnRygOKYzQJu7/+a6w=; b=WhKmwr14G6brmb
	oaEDI0IHmEeaHxLQWEUaNKFl+VuMawFlm6BxMSWqC+kc5tf/IDSoFC7ELSxf2ADx6BtXwZ1yuN/93
	kvh94WQZKFxoV8MLYv7Lo7RfiJNpoewB8ISzOZf2Lo8f9D5pJANeJELzfIApCta0hp3iyjFvFDWD0
	tEeCc8qTJEmAd/W7JR7GzmRDvxBsza89LTD2KSAtD2oaszlM6Bxd4LRGw/UhkRU/twlyrM9lRCSz5
	jEqBeYTv7BO0Z0rqMlqU3wLOZrl6STAVUHv7FqStqPaMMdXf3YTe7sBy2mF81buNgwxs/jzLtryOc
	vyThw0sUAECph9VyyuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9fp6-0002Mb-0q; Mon, 16 Sep 2019 01:29:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9fos-0002ME-Nz; Mon, 16 Sep 2019 01:28:48 +0000
X-UUID: 22e6e8bdcb04476491860682a7fcdf37-20190915
X-UUID: 22e6e8bdcb04476491860682a7fcdf37-20190915
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1934944397; Sun, 15 Sep 2019 17:28:43 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 18:28:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 09:28:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 09:28:41 +0800
Message-ID: <1568597321.26177.9.camel@mtksdaap41>
Subject: Re: [RFC PATCH V4 1/4] media: platform: mtk-isp: Add Mediatek
 sensor interface driver
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Louis Kuo <louis.kuo@mediatek.com>
Date: Mon, 16 Sep 2019 09:28:41 +0800
In-Reply-To: <20190915065004.20257-2-louis.kuo@mediatek.com>
References: <20190915065004.20257-1-louis.kuo@mediatek.com>
 <20190915065004.20257-2-louis.kuo@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_182846_787069_3B27861E 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Jerry-ch.Chen@mediatek.com, tfiga@chromium.org, keiichiw@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-09-15 at 14:50 +0800, Louis Kuo wrote:
> This patch adds Mediat:ek's sensor interface driver. Sensor interface
> driver
> is a MIPI-CSI2 host driver, namely, a HW camera interface controller.
> It support a widely adopted, simple, high-speed protocol primarily
> intended
> for point-to-point image and video transmission between cameras and host
> devices.

Please properly wrap the commit text and fix typo.


> 
> The mtk-isp directory will contain drivers for multiple IP blocks found in
> Mediatek ISP system. It will include ISP Pass 1 driver, sensor interface
> driver, DIP driver and face detection driver.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  drivers/media/platform/Makefile               |    2 +
>  drivers/media/platform/mtk-isp/Makefile       |    3 +
>  .../media/platform/mtk-isp/isp_50/Makefile    |    5 +
>  .../platform/mtk-isp/isp_50/seninf/Makefile   |    6 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf.c        | 1011 +++++++++++++++++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_def.h    |   59 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf_reg.h    |  853 ++++++++++++++
>  7 files changed, 1939 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_def.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_reg.h
> 
> diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
> index 7cbbd925124c..b0f4543f2f86 100644
> --- a/drivers/media/platform/Makefile
> +++ b/drivers/media/platform/Makefile
> @@ -73,6 +73,8 @@ obj-$(CONFIG_VIDEO_ROCKCHIP_RGA)	+= rockchip/rga/
>  
>  obj-y	+= omap/
>  
> +obj-y	+= mtk-isp/
> +
>  obj-$(CONFIG_VIDEO_AM437X_VPFE)		+= am437x/
>  
>  obj-$(CONFIG_VIDEO_XILINX)		+= xilinx/
> diff --git a/drivers/media/platform/mtk-isp/Makefile b/drivers/media/platform/mtk-isp/Makefile
> new file mode 100644
> index 000000000000..c17fb3fc3340
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-y += isp_50/
> diff --git a/drivers/media/platform/mtk-isp/isp_50/Makefile b/drivers/media/platform/mtk-isp/isp_50/Makefile
> new file mode 100644
> index 000000000000..8b4a792328e5
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +ifeq ($(CONFIG_MTK_SENINF),y)
> +obj-y += seninf/
> +endif


Please use 'obj-$(CONFIG_MTK_SENINF) += seninf/' instead.
In fact, as Sakari mention in previous review, you should just remove
the check.

You should address all comments in previous run, otherwise what's the
point for resend and the review?


> diff --git a/drivers/media/platform/mtk-isp/isp_50/seninf/Makefile b/drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
> new file mode 100644
> index 000000000000..bf193feb0ce9
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +MODULE		= mtk_seninf
> +LIB_FILES	= mtk_seninf
> +
> +obj-$(CONFIG_MTK_SENINF) += mtk_seninf.o
> diff --git a/drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c b/drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
> new file mode 100644
> index 000000000000..3253510cf7fd
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
> @@ -0,0 +1,1011 @@
> +// SPDX-License-Identifier: GPL-2.0


<...>

> +
> +static struct platform_driver seninf_pdrv = {
> +	.driver	= {
> +		.name	= "seninf",
> +		.pm  = &runtime_pm_ops,
> +		.of_match_table = of_match_ptr(mtk_seninf_of_match),
> +	},
> +	.probe	= seninf_probe,
> +	.remove	= seninf_remove,
> +};
> +
> +module_platform_driver(seninf_pdrv);
> +
> +MODULE_DESCRIPTION("MTK seninf driver");
> +MODULE_AUTHOR("Louis Kuo <louis.kuo@mediatek.com>");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("MTK:mtk_seninf");

You don't need MODULE_* since this can't be built as module now.

However, I think this should be able to build as module.

Joe.C



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
