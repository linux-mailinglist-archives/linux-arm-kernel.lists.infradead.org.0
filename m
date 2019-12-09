Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B925116AB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rnrsmabe/ZurbjVnY5ao8VUckxLAKJoa/blYlkrpE8g=; b=gNJ6ASziSwXyVV
	S/aIbF0NDN1dbE+rDwWgyviUtRMzZCAerqmXArM0SqCUEE2vKTDvrKqfcRYg2bAhjdylVWrL4Bjkd
	kmV/i9BrzV/8eYkhWWwU6Q9sEcVc0nvwKCjt0rErBHOLaY6xLsnNIyCuADgL6TynqfpmB/fyshFy1
	zeYmU37+M9q2TZq2P6e/LYtCbqUTOq2H7psJ3h0cWc+jnEdfbu/iiJB5ReN5CmUgwUwXup3uA7T8x
	AnZX/VxT5j7ptiBeEC57Jdlt6lgnCPkEmMkxeL49vq9KNOUJMKVypwTOPjAigZZiHZ9PUxftPX0LZ
	w89pXJTxUjlSeSjwyNQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieG50-0004vl-FX; Mon, 09 Dec 2019 10:15:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieG4o-0004tB-No; Mon, 09 Dec 2019 10:15:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id C67AD28EDB5
Subject: Re: [resend PATCH v6 12/12] drm/mediatek: Add support for mmsys
 through a pdev
To: matthias.bgg@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-13-matthias.bgg@kernel.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <96c850e0-9b12-a943-4e99-9aca7ce8ca8b@collabora.com>
Date: Mon, 9 Dec 2019 11:15:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191207224740.24536-13-matthias.bgg@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_021539_048887_D8BA1DB5 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Just one nit below and LGTM

On 7/12/19 23:47, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The MMSYS subsystem includes clocks and drm components.
> This patch adds an initailization path through a platform device
> for the clock part, so that both drivers get probed from the same
> device tree compatible.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 210455e9f46c..5ada74d8d0c9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -186,6 +186,7 @@ static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
>  	.ext_path = mt2701_mtk_ddp_ext,
>  	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
>  	.shadow_register = true,
> +	.clk_drv_name = "clk-mt2701-mm",
>  };
>  
>  static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
> @@ -195,6 +196,7 @@ static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
>  	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
>  	.third_path = mt2712_mtk_ddp_third,
>  	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
> +	.clk_drv_name = "clk-mt2712-mm",
>  };
>  
>  static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
> @@ -202,6 +204,7 @@ static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
>  	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
>  	.ext_path = mt8173_mtk_ddp_ext,
>  	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
> +	.clk_drv_name = "clk-mt8173-mm",
>  };
>  
>  static int mtk_drm_kms_init(struct drm_device *drm)
> @@ -499,6 +502,24 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	INIT_WORK(&private->commit.work, mtk_atomic_work);
>  	private->data = of_device_get_match_data(dev);
>  
> +	/*
> +	 * MMSYS includes apart from components management a block providing
> +	 * clocks for the subsystem. We probe this clock driver via a platform
> +	 * device.
> +	 */
> +	if (private->data->clk_drv_name) {
> +		private->clk_dev = platform_device_register_data(dev,
> +						private->data->clk_drv_name, -1,
> +						NULL, 0);

Replace -1 for PLATFORM_DEVID_NONE

> +
> +		if (IS_ERR(private->clk_dev)) {
> +			dev_err(dev, "failed to register %s platform device\n",
> +				private->data->clk_drv_name);
> +
> +			return PTR_ERR(private->clk_dev);
> +		}
> +	}
> +
>  	private->config_regs = syscon_node_to_regmap(dev->of_node);
>  	if (IS_ERR(private->config_regs))
>  		return PTR_ERR(private->config_regs);
> @@ -605,6 +626,9 @@ static int mtk_drm_remove(struct platform_device *pdev)
>  	for (i = 0; i < DDP_COMPONENT_ID_MAX; i++)
>  		of_node_put(private->comp_node[i]);
>  
> +	if (private->clk_dev)
> +		platform_device_unregister(private->clk_dev);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 63a121577dcb..8fe9136adc38 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -29,11 +29,13 @@ struct mtk_mmsys_driver_data {
>  	unsigned int third_len;
>  
>  	bool shadow_register;
> +	const char *clk_drv_name;
>  };
>  
>  struct mtk_drm_private {
>  	struct drm_device *drm;
>  	struct device *dma_dev;
> +	struct platform_device *clk_dev;
>  
>  	unsigned int num_pipes;
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
