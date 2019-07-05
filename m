Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9F8606E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GP4qB3ZcJIGUvmROE2GqvVTCiKPbQ3CoJAsXEXBv+nA=; b=t8aShQNf7YEMKX
	OBw+btzp70brDmOlR46oJ8AW3Uuj3CqXFZczbcXqG7M8sTjUK+x0S1XRAmzxs+8OvvB48VLJLZkdR
	o1gb8b7M5oIrU2267KEOWkljpDNDFTFngZcMkjdwFa6Odjsh3hVaSIVvVLrRi8B7sg7eWzaGtkAqg
	Lsq3vj4KUqmhlV2EjLczYaZ9VCJzGPElwZ+eSelH7K9zf/6OOhAQyZSkwzp2P7ZMHdzvqLG1uIGbA
	esruhvMTbfyBy7jvDVp1lwsSnNDDQxZKAHYC7EENshUpHh7CHvmXw4Fgpih2Y7av9ve5/jEJiPibQ
	LqDj1syoUBmXKKqcmrlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOfS-0004WB-IM; Fri, 05 Jul 2019 13:54:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJ5O-0008EY-IT
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 07:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3cjgu9Iv1H4oIn77N3AZ43IuzqR/tQSRhL/262Foto=; b=YmNNNmsGWRbr+y2U/mJsv9iY0
 AWC13lBNo/fiYApbWddWXcLhZm1ZWDb1zFXuoQLR23OaKKSewe1ovu0/64oQs8rQs8pCjD+p0coqm
 iu6XpNk3Ie6r8RPXiWZcbnCuQJB2fNDfcJ7UnieGy1m/ZPps275oTZQ2h2nvIuokJ1F/ShPCE65fv
 7f1kbdfMtmM6x+UUMfaMpCZAS6ggHXsEQcipxWQvkiATwdUy8WNmkjEbNcmdElQWBDLeG9ntDoZKn
 8yUVF/J2ahRRUEVj1oBbrfJg2U4CLLDicmfSDwljGMbMQmnq4gMEloRHM6HoMReCrIrS7eR7ixWxN
 0e06qCnjw==;
Received: from mga06.intel.com ([134.134.136.31])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJ5D-0004TL-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:56:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 00:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,454,1557212400"; d="scan'208";a="187755810"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2019 00:55:23 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id EE1FA2036A; Fri,  5 Jul 2019 10:55:22 +0300 (EEST)
Date: Fri, 5 Jul 2019 10:55:22 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Message-ID: <20190705075522.o7kuptdy3p3o64l7@paasikivi.fi.intel.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
 <20190626172503.GB6118@pendragon.ideasonboard.com>
 <b21efe64-7762-308b-c2e5-503589041c35@st.com>
 <20190627133824.GC5021@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627133824.GC5021@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_085639_526442_4B4B78AD 
X-CRM114-Status: GOOD (  64.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Yannick FERTRE <yannick.fertre@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Thu, Jun 27, 2019 at 04:38:24PM +0300, Laurent Pinchart wrote:
> Hi Hugues,
> 
> On Thu, Jun 27, 2019 at 12:38:40PM +0000, Hugues FRUCHET wrote:
> > On 6/26/19 7:25 PM, Laurent Pinchart wrote:
> > > On Mon, Jun 24, 2019 at 10:10:05AM +0000, Hugues FRUCHET wrote:
> > >> Hi Sakari,
> > >>
> > >>> - Where's the sub-device representing the bridge itself?
> > >>
> > >> This is pointed by [1]: drivers/media/i2c/st-mipid02.c
> > >>
> > >>> - As the driver becomes MC-centric, crop configuration takes place through
> > >>>   V4L2 sub-device interface, not through the video device node.
> > >>> - Same goes for accessing sensor configuration: it does not take place
> > >>>   through video node but through the sub-device nodes.
> > >>
> > >> Our objective is to be able to support either a simple parallel sensor
> > >> or a CSI-2 sensor connected through a bridge without any changes on
> > >> userspace side because no additional processing or conversion involved,
> > >> only deserialisation is m.
> > >> With the proposed set of patches, we succeeded to do so, the same
> > >> non-regression tests campaign is passed with OV5640 parallel sensor
> > >> (STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with
> > >> D3 mezzanine board).
> > >>
> > >> We don't want driver to be MC-centric, media controller support was
> > >> required only to get access to the set of functions needed to link and
> > >> walk trough subdevices: media_create_pad_link(),
> > >> media_entity_remote_pad(), etc...
> > >>
> > >> We did a try with the v1 version of this patchset, delegating subdevices
> > >> handling to userspace, by using media-controller, but this require to
> > >> configure first the pipeline for each single change of resolution and
> > >> format before making any capture using v4l2-ctl or GStreamer, quite
> > >> heavy in fact.
> > >> Benjamin did another try using new libcamera codebase, but even for a
> > >> basic capture use-case, negotiation code is quite tricky in order to
> > >> match the right subdevices bus format to the required V4L2 format.
> > > 
> > > Why would it be trickier in userspace than in the kernel ? The V4L2
> > > subdev operations are more or less expose verbatim through the subdev
> > > userspace API.
> > > 
> > >> Moreover, it was not clear how to call libcamera library prior to any
> > >> v4l2-ctl or GStreamer calls.
> > > 
> > > libcamera isn't meant to be called before v4l2-ctl or GStreamer.
> > > Applications are supposed to be based directly on libcamera, or, for
> > > existing userspace APIs such as V4L2 or GStreamer, compatibility layers
> > > are supposed to be developed. For V4L2 it will take the form of a
> > > LD_PRELOAD-able .so that will intercept the V4L2 API calls, making most
> > > V4L2 applications work with libcamera unmodified (I said most as 100%
> > > compatibility will likely not be achievable). For GStreamer it will take
> > > the form of a GStreamer libcamera element that will replace the V4L2
> > > source element.
> > > 
> > >> Adding 100 lines of code into DCMI to well configure resolution and
> > >> formats fixes the point and allows us to keep backward compatibility
> > >> as per our objective, so it seems far more reasonable to us to do so
> > >> even if DCMI controls more than the subdevice it is connected to.
> > >> Moreover we found similar code in other video interfaces code like
> > >> qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole
> > >> pipeline, so it seems to us quite natural to go this way.
> > > 
> > > I can't comment on the qcom-camss driver as I'm not aware of its
> > > internals, but where have you found such code in the Xilinx V4L2 drivers
> > > ?
> > 
> > For ex. in xilinx/xilinx-dma.c, stream on/off is propagated to all 
> > subdevices within pipeline:
> >   * Walk the entities chain starting at the pipeline output video node 
> > static int xvip_pipeline_start_stop(struct xvip_pipeline *pipe, bool start)
> > 
> > Same for qcom/camss/camss-video.c:
> > static int video_start_streaming(struct vb2_queue *q, unsigned int count)
> 
> For stream start/stop, that's expected. Userspace only controls the
> stream start/stop on the video node, and the kernel propagates that
> along the pipeline. There is no VIDIOC_STREAMON or VIDIOC_STREAMOFF
> ioctl exposed to userspace for V4L2 subdevs. What is not propagated in
> the kernel for MC-centric devices is the pipeline configuration (formats
> and selection rectangles).
> 
> > For resolution/format, in exynos4-is/fimc-capture.c:
> > static int fimc_pipeline_try_format(struct fimc_ctx *ctx,
> > ...
> > 	while (1) {
> > ...
> > 		/* set format on all pipeline subdevs */
> > 		while (me != &fimc->vid_cap.subdev.entity) {
> > ...
> > 			ret = v4l2_subdev_call(sd, pad, set_fmt, NULL, &sfmt);
> 
> As explained below, propagating formats is fine for video node-centric
> drivers, but comes with limitations.
> 
> > >> To summarize, if we cannot do the negotiation within kernel, delegating
> > >> this to userspace implies far more complexity and breaks compatibility
> > >> with existing applications without adding new functionalities.
> > >>
> > >> Having all that in mind, what should be reconsidered in your opinion
> > >> Sakari ? Do you have some alternatives ?
> > > 
> > > First of all, let's note that your patch series performs to related but
> > > still independent changes: it enables MC support, *and* enables the V4L2
> > > subdev userspace API. The former is clearly needed and will allow you to
> > > use the MC API internally in the kernel, simplifying pipeline traversal.
> > > The latter then enables the V4L2 subdev userspace API, moving the
> > > pipeline configuration responsibility to userspace.
> > > 
> > > You could in theory move to the MC API inside the kernel, without
> > > enabling support for the V4L2 subdev userspace API. Configuring the
> > > pipeline and propagating the formats would then be the responsibility of
> > > the kernel driver.
> > 
> > Yes this is exactly what we want to do.
> > If I understand well, to disable the V4L2 subdev userspace API, I just 
> > have to remove the media device registry:
> > 
> > -	/* Register the media device */
> > -	ret = media_device_register(&dcmi->mdev);
> > -	if (ret) {
> > -		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
> > -			ret);
> > -		goto err_media_device_cleanup;
> > -	}
> > 
> > Do you see any additional things to do ?
> 
> That should be it. Note that in that case pipeline configuration has to
> be handled by the master driver (DCMI in this case), the external
> subdevs involved (such as the CSI-2 to parallel bridge) must not handle
> any propagation of formats or selection rectangles.

I wonder what we'd do in the case when someone needs to connect something
else to the pipeline, such as a sensor with more than one sub-device, or a
flash or a lens controller.

For future-proofness, I'd just use MC for hardware that may be part of a
complex pipeline. In this case, if you think backwards compatibility is
important (and for most hardware it probably is), I don't think there are
perfect solutions if your existing driver is not MC-enabled.

A reasonable compromise would be to add a Kconfig option that allows
enabling MC. This way you can provide backwards compatibility and allow
making use of the full potential of the hardware. That's also why hardware
that may be part of a non-trivial MC pipeline should start with MC-enabled
so we wouldn't run into this.

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
