Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E284DD49FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 23:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bskRyFfHf1jwtVOTGCQ3kXS5YeqlISi9JaWaljtWDpY=; b=kMlNJODaqN1wqL
	kRRGbfLLiH9o6LmuED7lkC4w1i+sq7tthPiomffrFGrYwNs2Zs9kRpKbnVIP9xkDKNDmIqZMv5A0d
	IICdWZbLkICu3YPjtYjv9KpqmuZR5HobbU3dljwWln3r9zi+J1yjfmGbVfw0TOczfYttQhFmHJG6u
	u4/Hn5oWYx2yxXOI0/kGWT1+TF2LIlOQeDRrYuDIlGeObQRJ8icWl21ICXzxxRoP5vwe6wR02bNWb
	MPcboIzcF9Xy5HKv6nH//YKk2yR/EtwQGooQn0KujaZGzb9IP2Rsc9kSHSG/f/sCH5JTCRpxNOqyn
	zxhiv1pANrLxjpAnN82Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ2cl-00015L-Eb; Fri, 11 Oct 2019 21:38:59 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ2cb-000145-3B; Fri, 11 Oct 2019 21:38:51 +0000
X-IronPort-AV: E=Sophos;i="5.67,285,1566856800"; d="scan'208";a="322455499"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2019 23:38:45 +0200
Date: Fri, 11 Oct 2019 23:38:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warning
 of Logical continuations should be on the previous line
In-Reply-To: <20191011212745.20262-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910112336440.3284@hadrien>
References: <20191011212745.20262-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_143849_435409_E294B776 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 11 Oct 2019, Jules Irenge wrote:

> Fix warning of logical continuations should be on the previous line.
> Issue detected by checkpatch tool.

There seem to be several changes mixed together in this patch.

Don't have a subject line that is identical to a line in the log message.
The subject line should be short.

Keeping the arguments of && on the same line, but breaking the line after
a == doesn't seem to be a good idea.  It would be better to have the left
argument of == on one line and the right argument on another, if that is
needed.

julia


>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  .../bcm2835-camera/bcm2835-camera.c           | 41 ++++++++-----------
>  1 file changed, 17 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index d4d1e44b16b2..365bcd97e19d 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  			if (is_capturing(dev)) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  					 "Grab another frame");
> -				vchiq_mmal_port_parameter_set(
> -					instance,
> -					dev->capture.camera_port,
> +			vchiq_mmal_port_parameter_set(instance,
> +						      dev->capture.camera_port,
>  					MMAL_PARAMETER_CAPTURE,
>  					&dev->capture.frame_count,
>  					sizeof(dev->capture.frame_count));
> @@ -392,9 +391,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  	    is_capturing(dev)) {
>  		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "Grab another frame as buffer has EOS");
> -		vchiq_mmal_port_parameter_set(
> -			instance,
> -			dev->capture.camera_port,
> +		vchiq_mmal_port_parameter_set(instance,
> +					      dev->capture.camera_port,
>  			MMAL_PARAMETER_CAPTURE,
>  			&dev->capture.frame_count,
>  			sizeof(dev->capture.frame_count));
> @@ -1090,8 +1088,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>
>  	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
>
> -	if (!ret
> -	    && camera_port ==
> +	if (!ret && camera_port ==
>  	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
>  		bool overlay_enabled =
>  		    !!dev->component[COMP_PREVIEW]->enabled;
> @@ -1124,9 +1121,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  					  dev->capture.timeperframe.numerator;
>  		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
>  		if (overlay_enabled) {
> -			ret = vchiq_mmal_port_connect_tunnel(
> -				dev->instance,
> -				preview_port,
> +			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
> +							     preview_port,
>  				&dev->component[COMP_PREVIEW]->input[0]);
>  			if (!ret)
>  				ret = vchiq_mmal_port_enable(dev->instance,
> @@ -1154,9 +1150,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  			    camera_port->recommended_buffer.num;
>
>  			ret =
> -			    vchiq_mmal_port_connect_tunnel(
> -					dev->instance,
> -					camera_port,
> +			    vchiq_mmal_port_connect_tunnel(dev->instance,
> +							   camera_port,
>  					&encode_component->input[0]);
>  			if (ret) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug,
> @@ -1655,8 +1650,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
>
>  	/* get the preview component ready */
> -	ret = vchiq_mmal_component_init(
> -			dev->instance, "ril.video_render",
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.video_render",
>  			&dev->component[COMP_PREVIEW]);
>  	if (ret < 0)
>  		goto unreg_camera;
> @@ -1669,8 +1664,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	}
>
>  	/* get the image encoder component ready */
> -	ret = vchiq_mmal_component_init(
> -		dev->instance, "ril.image_encode",
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.image_encode",
>  		&dev->component[COMP_IMAGE_ENCODE]);
>  	if (ret < 0)
>  		goto unreg_preview;
> @@ -1731,15 +1726,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>
>  unreg_vid_encoder:
>  	pr_err("Cleanup: Destroy video encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_VIDEO_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_VIDEO_ENCODE]);
>
>  unreg_image_encoder:
>  	pr_err("Cleanup: Destroy image encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_IMAGE_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_IMAGE_ENCODE]);
>
>  unreg_preview:
>  	pr_err("Cleanup: Destroy video render\n");
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191011212745.20262-1-jbi.octave%40gmail.com.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
