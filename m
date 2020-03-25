Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF2C1921A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 08:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqhTAmr4Ie5IklDp+MWDSWQkRDaV3OMihl4hM7l4LRI=; b=J6jYRmzVqnUz/g
	Ybxyal43M6xaY5vcqOaN+3lZppxkD14qe9F1VLsp6G81gfxqiwuJv6ioqzmnKYyfJLuzebl/VfH+5
	pnPcki35q18P0gbXj5j2WO2GqKtn/tm1xJivB8Qywk6hOnTSkDfS9RI3zfz30lbC06C60bv1+y4Iv
	x3w26+Fx8H2zOPjTHzC3o4tI2vSCAubaPUc7jnMs8oLZKHa7Wog9eWJOROWl+moSTO+KIRxFUqkqJ
	KBtHt+tbHt//ZBr41EUd/BfOIC9M2WvVjvEfxWxpCBZd0Z6oN+uk6VEyPuxmXr/ebew5qHhWRloB3
	MtZsj17q16zNTMJlW3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH0D6-00067W-U2; Wed, 25 Mar 2020 07:12:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH0Cy-000674-Cm; Wed, 25 Mar 2020 07:12:14 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D2BCB80C;
 Wed, 25 Mar 2020 08:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585120321;
 bh=FSqDVsI6A0y3vtyhZ1Fm263/rnwL70jwXZ95f1VAuQY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHRKpkF3nDa+UlyBfoi8825Haq86enBr9HrqHxchx/izp68QwhV/YTlYkFlz7nu9T
 jR6e71qbJ7mraZyHGduB8A+lRpX8bniR++WO7VWdamfYzxG4sWq1/zdkJCE5z4UiX1
 bjor2Vh2bxkw4ioUiJrMI0pCoMP55ZdYZ5l7I6bM=
Date: Wed, 25 Mar 2020 09:11:57 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna3@gmail.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20200325071157.GA4760@pendragon.ideasonboard.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <86e17716-193f-ca49-1104-9c599a667eeb@collabora.com>
 <f229a840-bcf3-50c8-27c6-363c72de1d01@xs4all.nl>
 <20190815193511.GB5011@pendragon.ideasonboard.com>
 <CAJ1myNREvdbfw5t7RCX1RtBZnarXy7O6_+Cg89w7njWutijNqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ1myNREvdbfw5t7RCX1RtBZnarXy7O6_+Cg89w7njWutijNqQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_001212_582756_C0A9FA69 
X-CRM114-Status: GOOD (  38.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Jacob Chen <cc@rock-chips.com>, hans.verkuil@cisco.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com,
 Allon Huang <allon.huang@rock-chips.com>, mchehab@kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,

On Wed, Mar 25, 2020 at 07:34:37AM +0100, Dafna Hirschfeld wrote:
> On Thu, Aug 15, 2019 at 10:17 PM Laurent Pinchart wrote:
> > On Wed, Aug 07, 2019 at 12:39:17PM +0200, Hans Verkuil wrote:
> > > On 8/6/19 8:51 PM, Helen Koike wrote:
> > > > On 7/30/19 3:42 PM, Helen Koike wrote:
> > > >> From: Jacob Chen <jacob2.chen@rock-chips.com>
> > > >>
> > > >> Add the subdev driver for rockchip isp1.
> > > >>
> > > >> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> > > >> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> > > >> Signed-off-by: Yichong Zhong <zyc@rock-chips.com>
> > > >> Signed-off-by: Jacob Chen <cc@rock-chips.com>
> > > >> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> > > >> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> > > >> Signed-off-by: Allon Huang <allon.huang@rock-chips.com>
> > > >> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > > >> [fixed unknown entity type / switched to PIXEL_RATE]
> > > >> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > >> [update for upstream]
> > > >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > >>
> > > >> ---
> > > >>
> > > >> Changes in v8: None
> > > >> Changes in v7:
> > > >> - fixed warning because of unknown entity type
> > > >> - fixed v4l2-compliance errors regarding rkisp1 formats, try formats
> > > >> and default values
> > > >> - fix typo riksp1/rkisp1
> > > >> - redesign: remove mipi/csi subdevice, sensors connect directly to the
> > > >> isp subdevice in the media topology now. As a consequence, remove the
> > > >> hack in mipidphy_g_mbus_config() where information from the sensor was
> > > >> being propagated through the topology.
> > > >> - From the old dphy:
> > > >>         * cache get_remote_sensor() in s_stream
> > > >>         * use V4L2_CID_PIXEL_RATE instead of V4L2_CID_LINK_FREQ
> > > >> - Replace stream state with a boolean
> > > >> - code styling and checkpatch fixes
> > > >> - fix stop_stream (return after calling stop, do not reenable the stream)
> > > >> - fix rkisp1_isp_sd_get_selection when V4L2_SUBDEV_FORMAT_TRY is set
> > > >> - fix get format in output (isp_sd->out_fmt.mbus_code was being ignored)
> > > >> - s/intput/input
> > > >> - remove #define sd_to_isp_sd(_sd), add a static inline as it will be
> > > >> reused by the capture
> > > >>
> > > >>  drivers/media/platform/rockchip/isp1/rkisp1.c | 1286 +++++++++++++++++
> > > >>  drivers/media/platform/rockchip/isp1/rkisp1.h |  111 ++
> > > >>  2 files changed, 1397 insertions(+)
> > > >>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.c
> > > >>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.h
> > > >>
> > > >> diff --git a/drivers/media/platform/rockchip/isp1/rkisp1.c b/drivers/media/platform/rockchip/isp1/rkisp1.c
> > > >> new file mode 100644
> > > >> index 000000000000..6d0c0ffb5e03
> > > >> --- /dev/null
> > > >> +++ b/drivers/media/platform/rockchip/isp1/rkisp1.c
> > > >> @@ -0,0 +1,1286 @@
> > >
> > > <snip>
> > >
> > > >> +static int rkisp1_isp_sd_get_fmt(struct v4l2_subdev *sd,
> > > >> +                           struct v4l2_subdev_pad_config *cfg,
> > > >> +                           struct v4l2_subdev_format *fmt)
> > > >> +{
> > > >> +  struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> > > >> +  struct v4l2_mbus_framefmt *mf = &fmt->format;
> > > >> +
> > > >> +  if ((fmt->pad != RKISP1_ISP_PAD_SINK) &&
> > > >> +      (fmt->pad != RKISP1_ISP_PAD_SOURCE_PATH)) {
> > > >> +          fmt->format.code = MEDIA_BUS_FMT_FIXED;
> > > >> +          /*
> > > >> +           * NOTE: setting a format here doesn't make much sense
> > > >> +           * but v4l2-compliance complains
> > > >> +           */
> > > >> +          fmt->format.width = RKISP1_DEFAULT_WIDTH;
> > > >> +          fmt->format.height = RKISP1_DEFAULT_HEIGHT;
> > > >
> > > > As I had mentioned to you, this is called for the isp pads connected to the
> > > > DMA engines for statistics and parameters (meta data).
> > > >
> > > > If I remove those, I get the following errors:
> > > >
> > > > Sub-Device ioctls (Sink Pad 1):
> > > >         test Try VIDIOC_SUBDEV_ENUM_MBUS_CODE/FRAME_SIZE/FRAME_INTERVAL: OK
> > > >                 fail: v4l2-test-subdevs.cpp(311): fmt.width == 0 || fmt.width > 65536
> > > >                 fail: v4l2-test-subdevs.cpp(356): checkMBusFrameFmt(node, fmt.format)
> > > >         test Try VIDIOC_SUBDEV_G/S_FMT: FAIL
> > > >         test Try VIDIOC_SUBDEV_G/S_SELECTION/CROP: OK
> > > >         test Active VIDIOC_SUBDEV_ENUM_MBUS_CODE/FRAME_SIZE/FRAME_INTERVAL: OK
> > > >                 fail: v4l2-test-subdevs.cpp(311): fmt.width == 0 || fmt.width > 65536
> > > >                 fail: v4l2-test-subdevs.cpp(356): checkMBusFrameFmt(node, fmt.format)
> > > >         test Active VIDIOC_SUBDEV_G/S_FMT: FAIL
> > > >         test Active VIDIOC_SUBDEV_G/S_SELECTION/CROP: OK
> > > >         test VIDIOC_SUBDEV_G/S_FRAME_INTERVAL: OK (Not Supported)
> > > >
> > > > Here is the full log: http://ix.io/1QNt
> > > >
> > > > Is this a bug in v4l2-compliance?
> > >
> > > Yes and no :-)
> > >
> > > Currently v4l2-compliance assumes that only video is transferred over a media bus.
> > > But that's not the case here, and testing the code field doesn't help v4l2-compliance
> > > since MEDIA_BUS_FMT_FIXED is also still used by some older subdev drivers for video.
> > >
> > > I think we need a new bus format: MEDIA_BUS_FMT_FIXED_METADATA. Then v4l2-compliance
> > > can tell it apart from the regular fixed video bus format.
> >
> > Wouldn't a pad flag that identifies the type of data transmitted by a
> > pad be a better, backward-compatible option ? This could be useful for
> > audio as well.
> 
> Hi,
> Can you explain what pad flag do you mean?
> Do you mean adding a flag in the 'MEDIA_LNK_FL_*' list ?

I meant MEDIA_PAD_FL_*. We could reserve a few bits in
media_pad_desc.flags to tell what type of data is being transported.

> Also, some valid value should be set to  'fmt->format.code' so with
> the flags solution
> that you suggest it should stay  MEDIA_BUS_FMT_FIXED ?

Correct.

> > > If I do a 'git grep MEDIA_BUS_FMT_FIXED' then I see that it is also in use by vsp1
> > > for histogram information, so that should also be converted to use the new FIXED_METADATA
> > > format, although that might be too late (there might be userspace complications).
> >
> > Yes, probably not a good idea.
> >
> > > >> +          fmt->format.field = V4L2_FIELD_NONE;
> > > >> +          return 0;
> > > >> +  }
> > > >> +
> > > >> +  if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> > > >> +          mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
> > > >> +          fmt->format = *mf;
> > > >> +          return 0;
> > > >> +  }
> > > >> +
> > > >> +  if (fmt->pad == RKISP1_ISP_PAD_SINK) {
> > > >> +          *mf = isp_sd->in_frm;
> > > >> +  } else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_PATH) {
> > > >> +          /* format of source pad */
> > > >> +          *mf = isp_sd->in_frm;
> > > >> +          mf->code = isp_sd->out_fmt.mbus_code;
> > > >> +          /* window size of source pad */
> > > >> +          mf->width = isp_sd->out_crop.width;
> > > >> +          mf->height = isp_sd->out_crop.height;
> > > >> +          mf->quantization = isp_sd->quantization;
> > > >> +  }
> > > >> +  mf->field = V4L2_FIELD_NONE;
> > > >> +
> > > >> +  return 0;
> > > >> +}

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
