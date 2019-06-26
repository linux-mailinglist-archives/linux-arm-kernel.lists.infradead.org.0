Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863D56F81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGxEbHM45nqcqJI48rw4eF62CIWGEs0v+Go8ZZu8Ivw=; b=VbLEqdkyPbStJC
	SqHL0zulkwzKlYJVY9ZNo6OP+7HOigmrmjhuHCakKMlv0nnnM2EW7xUxFUo1l3uR8dVxSQo4wrYk8
	hIg+e8hDZzMT/CaJziFvJ4N067+8gKOQSSBBA1wD8v4Lz0MRhUq/HPUgaP1W5ryAdzE+753QkJ4q8
	IWmOvYJ/hFjhO/rERBOND7xnqRYimV/NnedHTFtnVjAsbgL1Yxl744bLz84ENF0RGJlfNP7x8NT8u
	X53djLaiYt2b7tipplg8rV59d2vx9L479HBs6K0YwryuvdWUjoyozla7y1t/ojTOrPvD3PD1jBki/
	GTLCYaO+Z9b0igJfaA0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBi5-0003ms-Dv; Wed, 26 Jun 2019 17:27:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBhs-0003ls-0f
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:27:42 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A1035510;
 Wed, 26 Jun 2019 19:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1561570050;
 bh=i14VRbRUNWeaIKjEs5xAYIdwAOF9WuME1WNthjXo334=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D7AdT3iHB/0TaRDGPON3Uu1w9UZ1SWe8rNbHY0LKbFytsYZFOOX5xgYHPMDriKuNl
 go7zLXJ7/ylQZy/6QEXBEdVbwSV8/fCmLJx1TavUSbtS+hWyPvGBMeIoy6KK91cFx1
 xbNWGAxwk2PBZ+wMy9Yycyz0YHUUD+Ib8HSGU81c=
Date: Wed, 26 Jun 2019 20:25:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hugues FRUCHET <hugues.fruchet@st.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Message-ID: <20190626172503.GB6118@pendragon.ideasonboard.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_102740_356025_9E0F2D63 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Jun 24, 2019 at 10:10:05AM +0000, Hugues FRUCHET wrote:
> Hi Sakari,
> 
>  > - Where's the sub-device representing the bridge itself?
> This is pointed by [1]: drivers/media/i2c/st-mipid02.c
> 
>  > - As the driver becomes MC-centric, crop configuration takes place
> through
>  >   V4L2 sub-device interface, not through the video device node.
>  > - Same goes for accessing sensor configuration: it does not take place
>  >   through video node but through the sub-device nodes.
> 
> Our objective is to be able to support either a simple parallel sensor
> or a CSI-2 sensor connected through a bridge without any changes on 
> userspace side because no additional processing or conversion involved, 
> only deserialisation is m.
> With the proposed set of patches, we succeeded to do so, the same 
> non-regression tests campaign is passed with OV5640 parallel sensor 
> (STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with 
> D3 mezzanine board).
> 
> We don't want driver to be MC-centric, media controller support was 
> required only to get access to the set of functions needed to link and
> walk trough subdevices: media_create_pad_link(), 
> media_entity_remote_pad(), etc...
> 
> We did a try with the v1 version of this patchset, delegating subdevices 
> handling to userspace, by using media-controller, but this require to 
> configure first the pipeline for each single change of resolution and 
> format before making any capture using v4l2-ctl or GStreamer, quite 
> heavy in fact.
> Benjamin did another try using new libcamera codebase, but even for a 
> basic capture use-case, negotiation code is quite tricky in order to
> match the right subdevices bus format to the required V4L2 format.

Why would it be trickier in userspace than in the kernel ? The V4L2
subdev operations are more or less expose verbatim through the subdev
userspace API.

> Moreover, it was not clear how to call libcamera library prior to any
> v4l2-ctl or GStreamer calls.

libcamera isn't meant to be called before v4l2-ctl or GStreamer.
Applications are supposed to be based directly on libcamera, or, for
existing userspace APIs such as V4L2 or GStreamer, compatibility layers
are supposed to be developed. For V4L2 it will take the form of a
LD_PRELOAD-able .so that will intercept the V4L2 API calls, making most
V4L2 applications work with libcamera unmodified (I said most as 100%
compatibility will likely not be achievable). For GStreamer it will take
the form of a GStreamer libcamera element that will replace the V4L2
source element.

> Adding 100 lines of code into DCMI to well configure resolution and 
> formats fixes the point and allows us to keep backward compatibility
> as per our objective, so it seems far more reasonable to us to do so
> even if DCMI controls more than the subdevice it is connected to.
> Moreover we found similar code in other video interfaces code like 
> qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole 
> pipeline, so it seems to us quite natural to go this way.

I can't comment on the qcom-camss driver as I'm not aware of its
internals, but where have you found such code in the Xilinx V4L2 drivers
?

> To summarize, if we cannot do the negotiation within kernel, delegating
> this to userspace implies far more complexity and breaks compatibility
> with existing applications without adding new functionalities.
> 
> Having all that in mind, what should be reconsidered in your opinion 
> Sakari ? Do you have some alternatives ?

First of all, let's note that your patch series performs to related but
still independent changes: it enables MC support, *and* enables the V4L2
subdev userspace API. The former is clearly needed and will allow you to
use the MC API internally in the kernel, simplifying pipeline traversal.
The latter then enables the V4L2 subdev userspace API, moving the
pipeline configuration responsibility to userspace.

You could in theory move to the MC API inside the kernel, without
enabling support for the V4L2 subdev userspace API. Configuring the
pipeline and propagating the formats would then be the responsibility of
the kernel driver. However, this will limit your driver to the
following:

- Fully linear pipelines only (single sensor)
- No support for controls implemented by multiple entities in the
  pipeline (for instance controls that would exist in both the sensor
  and the bridge, such as gains)
- No proper support for scaling configuration if multiple components in
  the pipeline can scale

Are you willing to set those limitations in stone and give up on
supporting those features ?

> On 6/20/19 6:17 PM, Sakari Ailus wrote:
> > On Tue, Jun 11, 2019 at 10:48:29AM +0200, Hugues Fruchet wrote:
> >> This patch serie allows to connect non-parallel camera sensor to
> >> DCMI thanks to a bridge connected in between such as STMIPID02 [1].
> >>
> >> Media controller support is introduced first, then support of
> >> several sub-devices within pipeline with dynamic linking
> >> between them.
> >> In order to keep backward compatibility with applications
> >> relying on V4L2 interface only, format set on video node
> >> is propagated to all sub-devices connected to camera interface.
> >>
> >> [1] https://www.spinics.net/lists/devicetree/msg278002.html
> > 
> > General notes on the set, not related to any single patch:
> > 
> > - Where's the sub-device representing the bridge itself?
> > 
> > - As the driver becomes MC-centric, crop configuration takes place through
> >    V4L2 sub-device interface, not through the video device node.
> > 
> > - Same goes for accessing sensor configuration: it does not take place
> >    through video node but through the sub-device nodes.
> > 

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
