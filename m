Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAC94CD5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 14:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDTpTr6UbJAZsKHVhhKGNybijnMHNnBZXFouI5+3TKE=; b=VmDRRkc6Gtbjn9
	wN8q58sFq0/GeigOq/87bZZ8qGTZpR/OAN+I5Sq7g+kEI+/iT/W68imW5iS43mEIvDdn5/B4Epc3h
	hg0OI1VHDQLKIV6SUV++uIlry7xdhj5Kwpz3CYGH0NAK5kJHBAksY3Ae9DsmH9KV3SjFNeJZiaCjy
	vC1KQHd/98VCXakfWAt+VJppWWq+/9/EoK2d9/zM3w5R9Ufl1ri0kv9h/CYtUSB0xELWmw3UQ4msn
	XA1bq9mwuZc+I/VsyD1DPkJLw5uwHS0H3vuKIINMLFG9vugfQCmIbx5Dbz3GiXV/JEsrvAEmK6b10
	tJEKd8dcgA6aXaIkbPOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvlg-0000G5-N3; Thu, 20 Jun 2019 12:02:16 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvlR-0000ES-WF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 12:02:04 +0000
Received: from [IPv6:2001:983:e9a7:1:4588:eede:a2a7:f8e]
 ([IPv6:2001:983:e9a7:1:4588:eede:a2a7:f8e])
 by smtp-cloud9.xs4all.net with ESMTPA
 id dvlAhagzHSfvXdvlDhuoEV; Thu, 20 Jun 2019 14:01:51 +0200
Subject: Re: [PATCH v2 2/3] media: stm32-dcmi: add media controller support
To: Hugues Fruchet <hugues.fruchet@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-3-git-send-email-hugues.fruchet@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0ad39c36-5636-b2a6-8098-a1b38e7f907d@xs4all.nl>
Date: Thu, 20 Jun 2019 14:01:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560242912-17138-3-git-send-email-hugues.fruchet@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMuT9MZWw84m+HPjf2ZLoTRPZNu9nSJQqRP6UsbmQN1wtPOfW18byDclmW0QkYHEHCjF2jzyDX4GaELr2qSrZrOPBfViS9Ku8P/kF8nTI19cec2L63UG
 8AFN6Pm9VncG6Gv52lcLG5fcYUgwbpX6cBmwZKCpOY/rkbOVL0uBm+AZu/5orWCk/hoPBBq1rAHciNoQSOuHT1yANhm1CzN+lLiaKXQ/b8ryZsHpZaONz2Fm
 6GUN5ImcoEm0PVl3RT6xA6uU4k7/Jp/xb1SMUe4tcHTDR082Df1R11Lwld2Uw5AweNX6+TI5ODrFI9kscmG8VCwmc7g+a7DhLWgWX+EuR6Q5L7jcFZd4Gbf2
 3cJuEqoHXq1g93hDrRuTZCk/oa5VTtZzqRt/i/srUKGjEnoPiAcSGArj9KT6RAvH3XxAbqIK/2FOeadu9LmgZ4RTCKEK020RqEkY3xYTyIahk6t0ac3xwlBm
 1H4wqYmNTrG4sqN6GcLGMNEELHLWWXrtWJXuGzpQz3F2y4Nra4AOeKlE2F6D7ztmiBaordsvC7dRPms6F5BEGD6HAfgYUIiVHSAJ4DYxry0h5sP6o1AzFAh3
 nGxattgWPtyb57pT2tR4W46UTOhHLpcFz66c8DN77iu1vgzRcuzJJXUfsuRwHc334NI6O2GsFdY2PqhZRPRumqobYpVEsFRZMWVQvdIMlRJVuRvw1wdNZpaf
 PoD5pEAFlW0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_050202_203789_0B7B7894 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/11/19 10:48 AM, Hugues Fruchet wrote:
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

Why was this moved to probe()? Off-hand I see no reason for that.

Regards,

	Hans

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
> +	media_device_cleanup(&dcmi->mdev);
>  
>  	dma_release_channel(dcmi->dma_chan);
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
