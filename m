Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1E4D286
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcvlnWyEc3q/USzCG6CM3PYLdfJ+JLYK11t4a4uNeSA=; b=VrgSxjvZfGRWC+
	MW5cAn3FOLtHS0qjOzt7KEAOgfKHTeMB+tWzTUaGEJuw8o6us5Ds4UrxFpeYhsMXBIl9CKU2/0i4h
	cz+a6hyFb0+fKgptOsYhpdplGF9VF/b7A/9PXKSWwHKmEETyBjDpKyQqqjt5J0Mx1/Y7FAosndU6b
	gUAeOuqopBhR+mA+IbgWEG9BmIPMqEhNKuKjcu3gNA0Bh1NTYhk7goCsnD3KBTyXnMl8c8tye8FUG
	hfUEaRRUIKUiNPZq8Y4PfKKitdl5jWV4uhHmUl2m0YZqt4lhzyCUi3XImPJRNxomb2VbZU+C11Xyl
	rsBlKU4pODs6XFQgr0hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzOe-0005OT-9W; Thu, 20 Jun 2019 15:54:44 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzOJ-0005M8-Qb
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:54:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 08:54:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183111321"
Received: from waelreed-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.63.228])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 08:54:18 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 690A121D88; Thu, 20 Jun 2019 18:54:15 +0300 (EEST)
Date: Thu, 20 Jun 2019 18:54:15 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues Fruchet <hugues.fruchet@st.com>
Subject: Re: [PATCH v2 3/3] media: stm32-dcmi: add support of several
 sub-devices
Message-ID: <20190620155414.rei4mtinpczznpnk@kekkonen.localdomain>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-4-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560242912-17138-4-git-send-email-hugues.fruchet@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_085423_910174_52A989AB 
X-CRM114-Status: GOOD (  30.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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

Thank you for the update.

On Tue, Jun 11, 2019 at 10:48:32AM +0200, Hugues Fruchet wrote:
> Add support of several sub-devices within pipeline instead
> of a single one.
> This allows to support a CSI-2 camera sensor connected
> through a CSI-2 to parallel bridge.
> 
> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
> ---
>  drivers/media/platform/stm32/stm32-dcmi.c | 207 +++++++++++++++++++++++++++---
>  1 file changed, 189 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index 3a69783..144912f 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -173,6 +173,7 @@ struct stm32_dcmi {
>  
>  	struct media_device		mdev;
>  	struct media_pad		vid_cap_pad;
> +	struct media_pipeline		pipeline;
>  };
>  
>  static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
> @@ -584,6 +585,135 @@ static void dcmi_buf_queue(struct vb2_buffer *vb)
>  	spin_unlock_irq(&dcmi->irqlock);
>  }
>  
> +static struct media_entity *dcmi_find_sensor(struct stm32_dcmi *dcmi)

You generally should be only concerned with the next entity connected to the
one you're in control of, not the rest of the pipeline.

> +{
> +	struct media_entity *entity = &dcmi->vdev->entity;
> +	struct v4l2_subdev *subdev;
> +	struct media_pad *pad;
> +
> +	/* Walk searching for entity having no sink */
> +	while (1) {
> +		pad = &entity->pads[0];
> +
> +		subdev = media_entity_to_v4l2_subdev(entity);
> +
> +		if (!(pad->flags & MEDIA_PAD_FL_SINK))
> +			break;
> +
> +		pad = media_entity_remote_pad(pad);
> +		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> +			break;
> +
> +		entity = pad->entity;
> +	}
> +
> +	return entity;
> +}
> +
> +static int dcmi_pipeline_s_fmt(struct stm32_dcmi *dcmi,
> +			       struct v4l2_subdev_pad_config *pad_cfg,
> +			       struct v4l2_subdev_format *format)
> +{
> +	struct media_entity *entity = &dcmi->sensor->entity;
> +	struct v4l2_subdev *subdev;
> +	struct media_pad *sink_pad = NULL;
> +	struct media_pad *src_pad = NULL;
> +	struct media_pad *pad = NULL;
> +	struct v4l2_subdev_format fmt = *format;
> +	bool found = false;
> +	int ret;
> +
> +	/*
> +	 * Starting from sensor subdevice, walk within
> +	 * pipeline and set format on each subdevice
> +	 */
> +	while (1) {
> +		unsigned int i;
> +
> +		/* Search if current entity has a source pad */
> +		for (i = 0; i < entity->num_pads; i++) {
> +			pad = &entity->pads[i];
> +			if (pad->flags & MEDIA_PAD_FL_SOURCE) {
> +				src_pad = pad;
> +				found = true;
> +				break;
> +			}
> +		}
> +		if (!found)
> +			break;
> +
> +		subdev = media_entity_to_v4l2_subdev(entity);
> +
> +		/* Propagate format on sink pad if any, otherwise source pad */
> +		if (sink_pad)
> +			pad = sink_pad;
> +
> +		dev_dbg(dcmi->dev, "%s[%d] pad format set to 0x%x %ux%u\n",
> +			subdev->name, pad->index, format->format.code,
> +			format->format.width, format->format.height);
> +
> +		fmt.pad = pad->index;
> +		ret = v4l2_subdev_call(subdev, pad, set_fmt, pad_cfg, &fmt);

Generally speaking, on MC-centric devices, the user space needs to
configure the pipeline. The driver's responsibility is to validate it
(through the link_validate media entity and subdev pad ops). I.e. set_fmt
is only used through the subdev nodes.

> +		if (ret < 0)
> +			return ret;
> +
> +		/* Walk to next entity */
> +		sink_pad = media_entity_remote_pad(src_pad);
> +		if (!sink_pad || !is_media_entity_v4l2_subdev(sink_pad->entity))
> +			break;
> +
> +		entity = sink_pad->entity;
> +	}
> +	*format = fmt;
> +
> +	return 0;
> +}
> +
> +static int dcmi_pipeline_s_stream(struct stm32_dcmi *dcmi, int state)
> +{
> +	struct media_entity *entity = &dcmi->vdev->entity;
> +	struct v4l2_subdev *subdev;
> +	struct media_pad *pad;
> +	int ret;
> +
> +	/* Start/stop all entities within pipeline */
> +	while (1) {
> +		pad = &entity->pads[0];
> +		if (!(pad->flags & MEDIA_PAD_FL_SINK))
> +			break;
> +
> +		pad = media_entity_remote_pad(pad);
> +		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> +			break;
> +
> +		entity = pad->entity;
> +		subdev = media_entity_to_v4l2_subdev(entity);
> +
> +		ret = v4l2_subdev_call(subdev, video, s_stream, state);

Please only call this on the next upstream sub-device. See e.g. the
ipu3-cio2 or omap3isp driver for an example.

> +		if (ret < 0 && ret != -ENOIOCTLCMD) {
> +			dev_err(dcmi->dev, "%s: %s failed to %s streaming (%d)\n",
> +				__func__, subdev->name,
> +				state ? "start" : "stop", ret);
> +			return ret;
> +		}
> +
> +		dev_dbg(dcmi->dev, "%s is %s\n",
> +			subdev->name, state ? "started" : "stopped");
> +	}
> +
> +	return 0;
> +}
> +
> +static int dcmi_pipeline_start(struct stm32_dcmi *dcmi)
> +{
> +	return dcmi_pipeline_s_stream(dcmi, 1);
> +}
> +
> +static void dcmi_pipeline_stop(struct stm32_dcmi *dcmi)
> +{
> +	dcmi_pipeline_s_stream(dcmi, 0);
> +}
> +
>  static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  {
>  	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
> @@ -598,14 +728,17 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  		goto err_release_buffers;
>  	}
>  
> -	/* Enable stream on the sub device */
> -	ret = v4l2_subdev_call(dcmi->sensor, video, s_stream, 1);
> -	if (ret && ret != -ENOIOCTLCMD) {
> -		dev_err(dcmi->dev, "%s: Failed to start streaming, subdev streamon error",
> -			__func__);
> +	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
> +	if (ret < 0) {
> +		dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
> +			__func__, ret);
>  		goto err_pm_put;
>  	}
>  
> +	ret = dcmi_pipeline_start(dcmi);
> +	if (ret)
> +		goto err_media_pipeline_stop;
> +
>  	spin_lock_irq(&dcmi->irqlock);
>  
>  	/* Set bus width */
> @@ -677,7 +810,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  	if (ret) {
>  		dev_err(dcmi->dev, "%s: Start streaming failed, cannot start capture\n",
>  			__func__);
> -		goto err_subdev_streamoff;
> +		goto err_pipeline_stop;
>  	}
>  
>  	/* Enable interruptions */
> @@ -688,8 +821,11 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>  
>  	return 0;
>  
> -err_subdev_streamoff:
> -	v4l2_subdev_call(dcmi->sensor, video, s_stream, 0);
> +err_pipeline_stop:
> +	dcmi_pipeline_stop(dcmi);
> +
> +err_media_pipeline_stop:
> +	media_pipeline_stop(&dcmi->vdev->entity);
>  
>  err_pm_put:
>  	pm_runtime_put(dcmi->dev);
> @@ -714,13 +850,10 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
>  {
>  	struct stm32_dcmi *dcmi = vb2_get_drv_priv(vq);
>  	struct dcmi_buf *buf, *node;
> -	int ret;
>  
> -	/* Disable stream on the sub device */
> -	ret = v4l2_subdev_call(dcmi->sensor, video, s_stream, 0);
> -	if (ret && ret != -ENOIOCTLCMD)
> -		dev_err(dcmi->dev, "%s: Failed to stop streaming, subdev streamoff error (%d)\n",
> -			__func__, ret);
> +	dcmi_pipeline_stop(dcmi);
> +
> +	media_pipeline_stop(&dcmi->vdev->entity);
>  
>  	spin_lock_irq(&dcmi->irqlock);
>  
> @@ -938,8 +1071,7 @@ static int dcmi_set_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f)
>  	mf->width = sd_framesize.width;
>  	mf->height = sd_framesize.height;
>  
> -	ret = v4l2_subdev_call(dcmi->sensor, pad,
> -			       set_fmt, NULL, &format);
> +	ret = dcmi_pipeline_s_fmt(dcmi, NULL, &format);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -1530,7 +1662,19 @@ static int dcmi_graph_notify_complete(struct v4l2_async_notifier *notifier)
>  	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
>  	int ret;
>  
> +	/*
> +	 * Now that the graph is complete,
> +	 * we search for the camera sensor subdevice
> +	 * in order to expose it through V4L2 interface
> +	 */
> +	dcmi->sensor = media_entity_to_v4l2_subdev(dcmi_find_sensor(dcmi));
> +	if (!dcmi->sensor) {
> +		dev_err(dcmi->dev, "No camera sensor subdevice found\n");
> +		return -ENODEV;
> +	}
> +
>  	dcmi->vdev->ctrl_handler = dcmi->sensor->ctrl_handler;
> +
>  	ret = dcmi_formats_init(dcmi);
>  	if (ret) {
>  		dev_err(dcmi->dev, "No supported mediabus format found\n");
> @@ -1574,12 +1718,30 @@ static int dcmi_graph_notify_bound(struct v4l2_async_notifier *notifier,
>  				   struct v4l2_async_subdev *asd)
>  {
>  	struct stm32_dcmi *dcmi = notifier_to_dcmi(notifier);
> +	unsigned int ret;
> +	int src_pad;
>  
>  	dev_dbg(dcmi->dev, "Subdev %s bound\n", subdev->name);
>  
> -	dcmi->sensor = subdev;
> +	/*
> +	 * Link this sub-device to DCMI, it could be
> +	 * a parallel camera sensor or a bridge
> +	 */
> +	src_pad = media_entity_get_fwnode_pad(&subdev->entity,
> +					      subdev->fwnode,
> +					      MEDIA_PAD_FL_SOURCE);
> +
> +	ret = media_create_pad_link(&subdev->entity, src_pad,
> +				    &dcmi->vdev->entity, 0,
> +				    MEDIA_LNK_FL_IMMUTABLE |
> +				    MEDIA_LNK_FL_ENABLED);
> +	if (ret)
> +		dev_err(dcmi->dev, "Failed to create media pad link with subdev %s\n",
> +			subdev->name);
> +	else
> +		dev_dbg(dcmi->dev, "DCMI is now linked to %s\n", subdev->name);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static const struct v4l2_async_notifier_operations dcmi_graph_notify_ops = {
> @@ -1639,6 +1801,15 @@ static int dcmi_graph_init(struct stm32_dcmi *dcmi)
>  		return ret;
>  	}
>  
> +	/* Register all the subdev nodes */
> +	ret = v4l2_device_register_subdev_nodes(&dcmi->v4l2_dev);
> +	if (ret) {
> +		dev_err(dcmi->dev, "Failed to register subdev nodes\n");
> +		v4l2_async_notifier_unregister(&dcmi->notifier);
> +		of_node_put(dcmi->entity.node);
> +		return ret;
> +	}
> +
>  	return 0;
>  }
>  

-- 
regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
