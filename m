Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236CB4D3A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygdWrmaB8NI1P8/IIG8gS4uXbgRjFjtetr2pFG4hYKs=; b=NqdQrdJGPInure
	R1CizcmQrVpOxKs0VDFJKHWXEMMJ1RSUD85lmQrNeKVMYklQk+fBPXw0JDbQIr6RRyTiSJ8QxOXJy
	xMfnMZSLqydLxnrbepgwq20IY0ka6423ufYuylHfrPRb3a+oqk2JcSVUI31hBV+CmYyP3EsCqslPl
	/cE/eW3Inv/zPDzsw7s9s5RhVo7MVVCPJUgClg3HiceFPN2gPtYFgBQgbe/a4DV6V+ONt36pQfpl8
	omym5AMhViEspmmRh+7S1vPAm+cp1Fgc7wU00A6ixJ+4lKp6oeb1Xh3ul3NOSxPfIkIS17cdBF825
	1W6wUQWbFGJUz21qwyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzpe-0005Xm-Du; Thu, 20 Jun 2019 16:22:38 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgk-00059J-L0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:13:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="311712291"
Received: from waelreed-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.63.228])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2019 09:13:22 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 3345721D88; Thu, 20 Jun 2019 19:13:19 +0300 (EEST)
Date: Thu, 20 Jun 2019 19:13:18 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues Fruchet <hugues.fruchet@st.com>
Subject: Re: [PATCH v2 2/3] media: stm32-dcmi: add media controller support
Message-ID: <20190620161318.zfcdp3jb5erwhjo6@kekkonen.localdomain>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-3-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560242912-17138-3-git-send-email-hugues.fruchet@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091326_732848_BD116376 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Yannick Fertre <yannick.fertre@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugues,

On Tue, Jun 11, 2019 at 10:48:31AM +0200, Hugues Fruchet wrote:
> Add media controller support to dcmi.
> 
> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
> ---
>  drivers/media/platform/Kconfig            |  2 +-
>  drivers/media/platform/stm32/stm32-dcmi.c | 83 +++++++++++++++++++++++--------
>  2 files changed, 63 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
> index 8a19654..de7e21f 100644
> --- a/drivers/media/platform/Kconfig
> +++ b/drivers/media/platform/Kconfig
> @@ -121,7 +121,7 @@ config VIDEO_S3C_CAMIF
>  
>  config VIDEO_STM32_DCMI
>  	tristate "STM32 Digital Camera Memory Interface (DCMI) support"
> -	depends on VIDEO_V4L2 && OF
> +	depends on VIDEO_V4L2 && OF && MEDIA_CONTROLLER

Ok, if the intent is to require MC from now on, then I think you could
simply rely on media_entity_remote_pad() in finding the image source.

>  	depends on ARCH_STM32 || COMPILE_TEST
>  	select VIDEOBUF2_DMA_CONTIG
>  	select V4L2_FWNODE
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index 7a4d559..3a69783 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -170,6 +170,9 @@ struct stm32_dcmi {
>  
>  	/* Ensure DMA operations atomicity */
>  	struct mutex			dma_lock;
> +
> +	struct media_device		mdev;
> +	struct media_pad		vid_cap_pad;
>  };
>  
>  static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
> @@ -1545,21 +1548,12 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
>  		dev_err(dcmi->dev, "Could not get sensor bounds\n");
>  		return ret;
>  	}
> -
>  	ret = dcmi_set_default_fmt(dcmi);
>  	if (ret) {
>  		dev_err(dcmi->dev, "Could not set default format\n");
>  		return ret;
>  	}
>  
> -	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
> -	if (ret) {
> -		dev_err(dcmi->dev, "Failed to register video device\n");
> -		return ret;
> -	}
> -
> -	dev_dbg(dcmi->dev, "Device registered as %s\n",
> -		video_device_node_name(dcmi->vdev));
>  	return 0;
>  }
>  
> @@ -1648,6 +1642,12 @@ static int dcmi_graph_init(struct stm32_dcmi *dcmi)
>  	return 0;
>  }
>  
> +static void dcmi_graph_deinit(struct stm32_dcmi *dcmi)
> +{
> +	v4l2_async_notifier_unregister(&dcmi->notifier);
> +	v4l2_async_notifier_cleanup(&dcmi->notifier);

I'd just leave the calls where they are now. This doesn't improve
readability of the code, rather the opposite.

> +}
> +
>  static int dcmi_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
> @@ -1752,10 +1752,27 @@ static int dcmi_probe(struct platform_device *pdev)
>  
>  	q = &dcmi->queue;
>  
> +	dcmi->v4l2_dev.mdev = &dcmi->mdev;
> +
> +	/* Initialize media device */
> +	strscpy(dcmi->mdev.model, DRV_NAME, sizeof(dcmi->mdev.model));
> +	snprintf(dcmi->mdev.bus_info, sizeof(dcmi->mdev.bus_info),
> +		 "platform:%s", DRV_NAME);
> +	dcmi->mdev.dev = &pdev->dev;
> +	media_device_init(&dcmi->mdev);
> +
> +	/* Register the media device */
> +	ret = media_device_register(&dcmi->mdev);
> +	if (ret) {
> +		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
> +			ret);
> +		goto err_media_device_cleanup;
> +	}
> +
>  	/* Initialize the top-level structure */
>  	ret = v4l2_device_register(&pdev->dev, &dcmi->v4l2_dev);
>  	if (ret)
> -		goto err_dma_release;
> +		goto err_media_device_unregister;
>  
>  	dcmi->vdev = video_device_alloc();
>  	if (!dcmi->vdev) {
> @@ -1775,6 +1792,25 @@ static int dcmi_probe(struct platform_device *pdev)
>  				  V4L2_CAP_READWRITE;
>  	video_set_drvdata(dcmi->vdev, dcmi);
>  
> +	/* Media entity pads */
> +	dcmi->vid_cap_pad.flags = MEDIA_PAD_FL_SINK;
> +	ret = media_entity_pads_init(&dcmi->vdev->entity,
> +				     1, &dcmi->vid_cap_pad);
> +	if (ret) {
> +		dev_err(dcmi->dev, "Failed to init media entity pad\n");
> +		goto err_device_unregister;
> +	}
> +	dcmi->vdev->entity.flags |= MEDIA_ENT_FL_DEFAULT;
> +
> +	ret = video_register_device(dcmi->vdev, VFL_TYPE_GRABBER, -1);
> +	if (ret) {
> +		dev_err(dcmi->dev, "Failed to register video device\n");
> +		goto err_media_entity_cleanup;
> +	}
> +
> +	dev_dbg(dcmi->dev, "Device registered as %s\n",
> +		video_device_node_name(dcmi->vdev));
> +
>  	/* Buffer queue */
>  	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
>  	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
> @@ -1790,18 +1826,18 @@ static int dcmi_probe(struct platform_device *pdev)
>  	ret = vb2_queue_init(q);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "Failed to initialize vb2 queue\n");
> -		goto err_device_release;
> +		goto err_media_entity_cleanup;
>  	}
>  
>  	ret = dcmi_graph_init(dcmi);
>  	if (ret < 0)
> -		goto err_device_release;
> +		goto err_media_entity_cleanup;
>  
>  	/* Reset device */
>  	ret = reset_control_assert(dcmi->rstc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to assert the reset line\n");
> -		goto err_cleanup;
> +		goto err_graph_deinit;
>  	}
>  
>  	usleep_range(3000, 5000);
> @@ -1809,7 +1845,7 @@ static int dcmi_probe(struct platform_device *pdev)
>  	ret = reset_control_deassert(dcmi->rstc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to deassert the reset line\n");
> -		goto err_cleanup;
> +		goto err_graph_deinit;
>  	}
>  
>  	dev_info(&pdev->dev, "Probe done\n");
> @@ -1820,13 +1856,16 @@ static int dcmi_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> -err_cleanup:
> -	v4l2_async_notifier_cleanup(&dcmi->notifier);
> -err_device_release:
> -	video_device_release(dcmi->vdev);
> +err_graph_deinit:
> +	dcmi_graph_deinit(dcmi);
> +err_media_entity_cleanup:
> +	media_entity_cleanup(&dcmi->vdev->entity);
>  err_device_unregister:
>  	v4l2_device_unregister(&dcmi->v4l2_dev);
> -err_dma_release:
> +err_media_device_unregister:
> +	media_device_unregister(&dcmi->mdev);
> +err_media_device_cleanup:
> +	media_device_cleanup(&dcmi->mdev);
>  	dma_release_channel(dcmi->dma_chan);
>  
>  	return ret;
> @@ -1838,9 +1877,11 @@ static int dcmi_remove(struct platform_device *pdev)
>  
>  	pm_runtime_disable(&pdev->dev);
>  
> -	v4l2_async_notifier_unregister(&dcmi->notifier);
> -	v4l2_async_notifier_cleanup(&dcmi->notifier);
> +	dcmi_graph_deinit(dcmi);
> +	media_entity_cleanup(&dcmi->vdev->entity);
>  	v4l2_device_unregister(&dcmi->v4l2_dev);
> +	media_device_unregister(&dcmi->mdev);

Please unregister the media device first before unregistering anything else
it depends on (i.e. async notifier or the entity).

> +	media_device_cleanup(&dcmi->mdev);
>  
>  	dma_release_channel(dcmi->dma_chan);
>  

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
