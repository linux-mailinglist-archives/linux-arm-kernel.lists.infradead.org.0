Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA2583BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wnk8BpLaNTf7zeA80Oe8kZEsky7K4JFQnOapWfqunTs=; b=bsZI2hmrqvjsTM
	pA3VD5aT30DYz66f8O6Hr2dXlF0Gk7B0UjMX4xQ5LR5plXWySewANfqQsQJLUZI4a7vQkT2GaS0gm
	OgN6VQQTWwqTgTQj7w7d2MAuGF1KDxIZ3me0sSvefZYHCtjlCRWqqRKHcQXhsw5UBl/zjLSjTmK+Y
	Jh5dfgtu+Ob9ONiPaQ1f7KftZeF4a8oiKco/rcHUPTnfULUhtFkWzGnYMJvOpBcAiYoZ0nb87IKu+
	wHn61XF3hze3auWeKpUx0MinCJ8aSx8GiFjp/542Lj/4GZlvwZcSsQu5GE6xZMT1c92kAZWOuTnp1
	4uPPi5wkUrK+mP/LYL2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUeS-0000ql-Q3; Thu, 27 Jun 2019 13:41:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUe7-0000pX-6e
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:41:05 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 029EC2E7;
 Thu, 27 Jun 2019 15:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1561642855;
 bh=HMXw1bq26l/AwcC88kSlR7g3gzxeywpa0Tf0fZPQY+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UY2Nc7WH5OCjXAqqPblZA3sAKXT4vpahk3mowCoy6ObvbApft7v9y+sQs0qwekhz1
 xHy5P3KIVn3CBGFZ+GPaIFXxmFC2ijGjCTWnJL318Gvj3HlTvC5/Dxq4zOY6CXDSRX
 r6mykFV/rpFOSe/qyboRZXvGC3QQdM3GBqIrr8Ss=
Date: Thu, 27 Jun 2019 16:38:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hugues FRUCHET <hugues.fruchet@st.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Message-ID: <20190627133824.GC5021@pendragon.ideasonboard.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
 <20190626172503.GB6118@pendragon.ideasonboard.com>
 <b21efe64-7762-308b-c2e5-503589041c35@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b21efe64-7762-308b-c2e5-503589041c35@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_064103_542010_3C87A26A 
X-CRM114-Status: GOOD (  38.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugues,

On Thu, Jun 27, 2019 at 12:38:40PM +0000, Hugues FRUCHET wrote:
> On 6/26/19 7:25 PM, Laurent Pinchart wrote:
> > On Mon, Jun 24, 2019 at 10:10:05AM +0000, Hugues FRUCHET wrote:
> >> Hi Sakari,
> >>
> >>> - Where's the sub-device representing the bridge itself?
> >>
> >> This is pointed by [1]: drivers/media/i2c/st-mipid02.c
> >>
> >>> - As the driver becomes MC-centric, crop configuration takes place through
> >>>   V4L2 sub-device interface, not through the video device node.
> >>> - Same goes for accessing sensor configuration: it does not take place
> >>>   through video node but through the sub-device nodes.
> >>
> >> Our objective is to be able to support either a simple parallel sensor
> >> or a CSI-2 sensor connected through a bridge without any changes on
> >> userspace side because no additional processing or conversion involved,
> >> only deserialisation is m.
> >> With the proposed set of patches, we succeeded to do so, the same
> >> non-regression tests campaign is passed with OV5640 parallel sensor
> >> (STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with
> >> D3 mezzanine board).
> >>
> >> We don't want driver to be MC-centric, media controller support was
> >> required only to get access to the set of functions needed to link and
> >> walk trough subdevices: media_create_pad_link(),
> >> media_entity_remote_pad(), etc...
> >>
> >> We did a try with the v1 version of this patchset, delegating subdevices
> >> handling to userspace, by using media-controller, but this require to
> >> configure first the pipeline for each single change of resolution and
> >> format before making any capture using v4l2-ctl or GStreamer, quite
> >> heavy in fact.
> >> Benjamin did another try using new libcamera codebase, but even for a
> >> basic capture use-case, negotiation code is quite tricky in order to
> >> match the right subdevices bus format to the required V4L2 format.
> > 
> > Why would it be trickier in userspace than in the kernel ? The V4L2
> > subdev operations are more or less expose verbatim through the subdev
> > userspace API.
> > 
> >> Moreover, it was not clear how to call libcamera library prior to any
> >> v4l2-ctl or GStreamer calls.
> > 
> > libcamera isn't meant to be called before v4l2-ctl or GStreamer.
> > Applications are supposed to be based directly on libcamera, or, for
> > existing userspace APIs such as V4L2 or GStreamer, compatibility layers
> > are supposed to be developed. For V4L2 it will take the form of a
> > LD_PRELOAD-able .so that will intercept the V4L2 API calls, making most
> > V4L2 applications work with libcamera unmodified (I said most as 100%
> > compatibility will likely not be achievable). For GStreamer it will take
> > the form of a GStreamer libcamera element that will replace the V4L2
> > source element.
> > 
> >> Adding 100 lines of code into DCMI to well configure resolution and
> >> formats fixes the point and allows us to keep backward compatibility
> >> as per our objective, so it seems far more reasonable to us to do so
> >> even if DCMI controls more than the subdevice it is connected to.
> >> Moreover we found similar code in other video interfaces code like
> >> qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole
> >> pipeline, so it seems to us quite natural to go this way.
> > 
> > I can't comment on the qcom-camss driver as I'm not aware of its
> > internals, but where have you found such code in the Xilinx V4L2 drivers
> > ?
> 
> For ex. in xilinx/xilinx-dma.c, stream on/off is propagated to all 
> subdevices within pipeline:
>   * Walk the entities chain starting at the pipeline output video node 
> static int xvip_pipeline_start_stop(struct xvip_pipeline *pipe, bool start)
> 
> Same for qcom/camss/camss-video.c:
> static int video_start_streaming(struct vb2_queue *q, unsigned int count)

For stream start/stop, that's expected. Userspace only controls the
stream start/stop on the video node, and the kernel propagates that
along the pipeline. There is no VIDIOC_STREAMON or VIDIOC_STREAMOFF
ioctl exposed to userspace for V4L2 subdevs. What is not propagated in
the kernel for MC-centric devices is the pipeline configuration (formats
and selection rectangles).

> For resolution/format, in exynos4-is/fimc-capture.c:
> static int fimc_pipeline_try_format(struct fimc_ctx *ctx,
> ...
> 	while (1) {
> ...
> 		/* set format on all pipeline subdevs */
> 		while (me != &fimc->vid_cap.subdev.entity) {
> ...
> 			ret = v4l2_subdev_call(sd, pad, set_fmt, NULL, &sfmt);

As explained below, propagating formats is fine for video node-centric
drivers, but comes with limitations.

> >> To summarize, if we cannot do the negotiation within kernel, delegating
> >> this to userspace implies far more complexity and breaks compatibility
> >> with existing applications without adding new functionalities.
> >>
> >> Having all that in mind, what should be reconsidered in your opinion
> >> Sakari ? Do you have some alternatives ?
> > 
> > First of all, let's note that your patch series performs to related but
> > still independent changes: it enables MC support, *and* enables the V4L2
> > subdev userspace API. The former is clearly needed and will allow you to
> > use the MC API internally in the kernel, simplifying pipeline traversal.
> > The latter then enables the V4L2 subdev userspace API, moving the
> > pipeline configuration responsibility to userspace.
> > 
> > You could in theory move to the MC API inside the kernel, without
> > enabling support for the V4L2 subdev userspace API. Configuring the
> > pipeline and propagating the formats would then be the responsibility of
> > the kernel driver.
> 
> Yes this is exactly what we want to do.
> If I understand well, to disable the V4L2 subdev userspace API, I just 
> have to remove the media device registry:
> 
> -	/* Register the media device */
> -	ret = media_device_register(&dcmi->mdev);
> -	if (ret) {
> -		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
> -			ret);
> -		goto err_media_device_cleanup;
> -	}
> 
> Do you see any additional things to do ?

That should be it. Note that in that case pipeline configuration has to
be handled by the master driver (DCMI in this case), the external
subdevs involved (such as the CSI-2 to parallel bridge) must not handle
any propagation of formats or selection rectangles.

> > However, this will limit your driver to the
> > following:
> > 
> > - Fully linear pipelines only (single sensor)
> > - No support for controls implemented by multiple entities in the
> >    pipeline (for instance controls that would exist in both the sensor
> >    and the bridge, such as gains)
> > - No proper support for scaling configuration if multiple components in
> >    the pipeline can scale
> > 
> > Are you willing to set those limitations in stone and give up on
> > supporting those features ?
> > 
> 
> The involved hardware do not have those features, no need of extra 
> functionalities to be exposed to userspace, so this is fine.
> 
> I'll push a v3 with this change and the other fixes related to Sakari 
> and Hans comments.
> 
> Please Sakari & Hans, also comment on that change that we can converge 
> on v3.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
