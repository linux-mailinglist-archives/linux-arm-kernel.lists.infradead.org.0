Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82740606E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5tcgoIrXIF16JzUp3lU2UD3z3VJ+vmltkWO2og3h0U=; b=DlvZnVvhl2GDj4
	R4F89g3FsWX/rKqFTHyhWDoHyMS2QC8PfcQmF7W8r0sQ8siTNQ8HLnzFQrGEMH8bNJ/3rC0OPMhq/
	C97tndwyCYeNFKNWEcDPPekjXpo8+XUn2o/dSah+Vz2BkEywS55gSfOHodZQVt5CO7xHrmF7Gj2d4
	wuZbjGgk+aYiL20a6o8Nv8EP+Y2wpob8Di6EhnCcS4PW73DGEQUBnOkEWPaWKmx/92XFJ8J/Ovzg4
	0Ll5at7DUrWBkNs6ZdWmSHpn/BMmXeu3JLpatg1q7YXADs9QiNxgh/OwCmcV+KMYcgbwiTsyceMxN
	5ooJlo2H414cH1Jdp31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOfy-0004pg-4U; Fri, 05 Jul 2019 13:54:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJEv-0002JM-M0
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 08:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IQ2QJXOXjhBfCeV3QHMxZRZfc7xsrOvmP35eTyYqx9c=; b=tbkre6wWUrUTea8MkZp84zCGb
 +ZKegenaiOGt/NrDwiS0nAYWMQDdDSCUjaiSJ4PBwlhvho5TTMjKJl10DWXx5ueK5UqleOSUKXQR5
 Mdwnf4wRv18fcWhZPL5DU4eRx1LIqQNCkYNqhH5Gz7gfUApodkONWbrdwAgnAlii7KgtV60JyNukH
 hCuWPn/8ek0ZRmUAD7FaA0rD8kwj9AgRAZqinY6SFy2eZyu03Z9HAhecJp0qgOWg1crXpyWUQS8T5
 Vow8nzhCinkgsdk2lH57dBQjcSmqIzvIIjbfxG+7N+OLp8dj6gFEWtcDpEmVP40ZmqeQfQIhAYTtU
 r7gXFTT2Q==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJEU-0004mW-7Z
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:06:16 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6CC2E24B;
 Fri,  5 Jul 2019 10:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1562313885;
 bh=vM8j+9EAhOK78IsrgxkMvUfXdGfaHhZN4ekKfz0Lbbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f3uox6TmH8R5eN8DSIpCRZwmKP+vMoBS8EtRmOs3H+BN4//O25ar+6i8Nw23Kfo54
 1CYrKGQJAh103UWCPEpmTdGKz9fKQfHobVKI23mtAWO6K8uoyj4t6QTzv5b/lwAgRZ
 3mBbLjzZMzvKsk3pspGm9KF6UqeUekJmqIIwOOLM=
Date: Fri, 5 Jul 2019 11:04:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Message-ID: <20190705080424.GA4994@pendragon.ideasonboard.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
 <20190626172503.GB6118@pendragon.ideasonboard.com>
 <b21efe64-7762-308b-c2e5-503589041c35@st.com>
 <20190627133824.GC5021@pendragon.ideasonboard.com>
 <20190705075522.o7kuptdy3p3o64l7@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705075522.o7kuptdy3p3o64l7@paasikivi.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_090614_347206_A4C0FB1A 
X-CRM114-Status: GOOD (  55.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Sakari,

On Fri, Jul 05, 2019 at 10:55:22AM +0300, Sakari Ailus wrote:
> On Thu, Jun 27, 2019 at 04:38:24PM +0300, Laurent Pinchart wrote:
> > On Thu, Jun 27, 2019 at 12:38:40PM +0000, Hugues FRUCHET wrote:
> >> On 6/26/19 7:25 PM, Laurent Pinchart wrote:
> >>> On Mon, Jun 24, 2019 at 10:10:05AM +0000, Hugues FRUCHET wrote:
> >>>> Hi Sakari,
> >>>>
> >>>>> - Where's the sub-device representing the bridge itself?
> >>>>
> >>>> This is pointed by [1]: drivers/media/i2c/st-mipid02.c
> >>>>
> >>>>> - As the driver becomes MC-centric, crop configuration takes place through
> >>>>>   V4L2 sub-device interface, not through the video device node.
> >>>>> - Same goes for accessing sensor configuration: it does not take place
> >>>>>   through video node but through the sub-device nodes.
> >>>>
> >>>> Our objective is to be able to support either a simple parallel sensor
> >>>> or a CSI-2 sensor connected through a bridge without any changes on
> >>>> userspace side because no additional processing or conversion involved,
> >>>> only deserialisation is m.
> >>>> With the proposed set of patches, we succeeded to do so, the same
> >>>> non-regression tests campaign is passed with OV5640 parallel sensor
> >>>> (STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with
> >>>> D3 mezzanine board).
> >>>>
> >>>> We don't want driver to be MC-centric, media controller support was
> >>>> required only to get access to the set of functions needed to link and
> >>>> walk trough subdevices: media_create_pad_link(),
> >>>> media_entity_remote_pad(), etc...
> >>>>
> >>>> We did a try with the v1 version of this patchset, delegating subdevices
> >>>> handling to userspace, by using media-controller, but this require to
> >>>> configure first the pipeline for each single change of resolution and
> >>>> format before making any capture using v4l2-ctl or GStreamer, quite
> >>>> heavy in fact.
> >>>> Benjamin did another try using new libcamera codebase, but even for a
> >>>> basic capture use-case, negotiation code is quite tricky in order to
> >>>> match the right subdevices bus format to the required V4L2 format.
> >>> 
> >>> Why would it be trickier in userspace than in the kernel ? The V4L2
> >>> subdev operations are more or less expose verbatim through the subdev
> >>> userspace API.
> >>> 
> >>>> Moreover, it was not clear how to call libcamera library prior to any
> >>>> v4l2-ctl or GStreamer calls.
> >>> 
> >>> libcamera isn't meant to be called before v4l2-ctl or GStreamer.
> >>> Applications are supposed to be based directly on libcamera, or, for
> >>> existing userspace APIs such as V4L2 or GStreamer, compatibility layers
> >>> are supposed to be developed. For V4L2 it will take the form of a
> >>> LD_PRELOAD-able .so that will intercept the V4L2 API calls, making most
> >>> V4L2 applications work with libcamera unmodified (I said most as 100%
> >>> compatibility will likely not be achievable). For GStreamer it will take
> >>> the form of a GStreamer libcamera element that will replace the V4L2
> >>> source element.
> >>> 
> >>>> Adding 100 lines of code into DCMI to well configure resolution and
> >>>> formats fixes the point and allows us to keep backward compatibility
> >>>> as per our objective, so it seems far more reasonable to us to do so
> >>>> even if DCMI controls more than the subdevice it is connected to.
> >>>> Moreover we found similar code in other video interfaces code like
> >>>> qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole
> >>>> pipeline, so it seems to us quite natural to go this way.
> >>> 
> >>> I can't comment on the qcom-camss driver as I'm not aware of its
> >>> internals, but where have you found such code in the Xilinx V4L2 drivers
> >>> ?
> >> 
> >> For ex. in xilinx/xilinx-dma.c, stream on/off is propagated to all 
> >> subdevices within pipeline:
> >>   * Walk the entities chain starting at the pipeline output video node 
> >> static int xvip_pipeline_start_stop(struct xvip_pipeline *pipe, bool start)
> >> 
> >> Same for qcom/camss/camss-video.c:
> >> static int video_start_streaming(struct vb2_queue *q, unsigned int count)
> > 
> > For stream start/stop, that's expected. Userspace only controls the
> > stream start/stop on the video node, and the kernel propagates that
> > along the pipeline. There is no VIDIOC_STREAMON or VIDIOC_STREAMOFF
> > ioctl exposed to userspace for V4L2 subdevs. What is not propagated in
> > the kernel for MC-centric devices is the pipeline configuration (formats
> > and selection rectangles).
> > 
> >> For resolution/format, in exynos4-is/fimc-capture.c:
> >> static int fimc_pipeline_try_format(struct fimc_ctx *ctx,
> >> ...
> >> 	while (1) {
> >> ...
> >> 		/* set format on all pipeline subdevs */
> >> 		while (me != &fimc->vid_cap.subdev.entity) {
> >> ...
> >> 			ret = v4l2_subdev_call(sd, pad, set_fmt, NULL, &sfmt);
> > 
> > As explained below, propagating formats is fine for video node-centric
> > drivers, but comes with limitations.
> > 
> >>>> To summarize, if we cannot do the negotiation within kernel, delegating
> >>>> this to userspace implies far more complexity and breaks compatibility
> >>>> with existing applications without adding new functionalities.
> >>>>
> >>>> Having all that in mind, what should be reconsidered in your opinion
> >>>> Sakari ? Do you have some alternatives ?
> >>> 
> >>> First of all, let's note that your patch series performs to related but
> >>> still independent changes: it enables MC support, *and* enables the V4L2
> >>> subdev userspace API. The former is clearly needed and will allow you to
> >>> use the MC API internally in the kernel, simplifying pipeline traversal.
> >>> The latter then enables the V4L2 subdev userspace API, moving the
> >>> pipeline configuration responsibility to userspace.
> >>> 
> >>> You could in theory move to the MC API inside the kernel, without
> >>> enabling support for the V4L2 subdev userspace API. Configuring the
> >>> pipeline and propagating the formats would then be the responsibility of
> >>> the kernel driver.
> >> 
> >> Yes this is exactly what we want to do.
> >> If I understand well, to disable the V4L2 subdev userspace API, I just 
> >> have to remove the media device registry:
> >> 
> >> -	/* Register the media device */
> >> -	ret = media_device_register(&dcmi->mdev);
> >> -	if (ret) {
> >> -		dev_err(dcmi->dev, "Failed to register media device (%d)\n",
> >> -			ret);
> >> -		goto err_media_device_cleanup;
> >> -	}
> >> 
> >> Do you see any additional things to do ?
> > 
> > That should be it. Note that in that case pipeline configuration has to
> > be handled by the master driver (DCMI in this case), the external
> > subdevs involved (such as the CSI-2 to parallel bridge) must not handle
> > any propagation of formats or selection rectangles.
> 
> I wonder what we'd do in the case when someone needs to connect something
> else to the pipeline, such as a sensor with more than one sub-device, or a
> flash or a lens controller.
> 
> For future-proofness, I'd just use MC for hardware that may be part of a
> complex pipeline. In this case, if you think backwards compatibility is
> important (and for most hardware it probably is), I don't think there are
> perfect solutions if your existing driver is not MC-enabled.

Oh, I fully agree with you, which is why I mentioned in another e-mail
that using a video node-centric approach would come with limitations,
such as not being able to support more complex pipelines, ever.

> A reasonable compromise would be to add a Kconfig option that allows
> enabling MC. This way you can provide backwards compatibility and allow
> making use of the full potential of the hardware. That's also why hardware
> that may be part of a non-trivial MC pipeline should start with MC-enabled
> so we wouldn't run into this.

I really don't like this, as it introduces additional complexity. My
recommendation is to go for an MC-centric approach. Going for a video
node-centric approach is really shooting oneself in the foot regarding
future extensions. But that being said, if there's a strong desire to go
for foot self-shooting, the way to go is explained above.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
