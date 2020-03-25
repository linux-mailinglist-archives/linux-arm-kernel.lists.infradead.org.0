Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E0A192135
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 07:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=636L9HFHgGPJ3G4pnuGhzcslBZ0WAic30E6wvKGstGs=; b=XkV+15Q4RcaOuZ
	iYXSKGPTcXNw1A5tT8KSGAMd1PNjU40EdF5fcwmAlCbEtxDSsmFNx7WI8tOWZVPob6EuySvvqJbLw
	PlmclL0NRLGme1xgdvFYVan68xPG6Q2g+Nt1Pm+6LPsJ6vLyi3lWhlU2z+N/VUDl8JxKbV/T1UWs0
	uG9mab+M+hS707+/tu2K1tSi1ZyYub0eLiTKKkFtademJCQB9Vy54e3jEe9uGBzvvZ2uZ7aFza0jJ
	3zSZBV/lf69sATfr9wZ7O77NOOBKTUgF7vu5ydP1zaji2SKpQkAAQvsjv0hRNMItM6PtVFcjOxZCY
	VuSSS7gTomwQwfBGZBsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGzdH-0001bM-3k; Wed, 25 Mar 2020 06:35:19 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzct-0001Zz-KX; Wed, 25 Mar 2020 06:34:57 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b5so866394vsb.1;
 Tue, 24 Mar 2020 23:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=snvaZXInR5TYHvvzgnuHJAggy00IBOf7fQ0noztQ8E4=;
 b=oddnZKU5NssB+gR71xQBOw2hGnN04656Bx3NAHpeILiNc8i2ylGS9fMnY2nPY0Fgfw
 /V0XNrvvnh7S6V5HaCLWrsXjwlEklwyk5jAuCAAG4YL8JV1cccW5RAP8EIEy/5Jxqhwa
 bdihFpK3cZjpy1KTPi5urAYInCGhaAYBgSSySYNtMdla7r9rT2kTFO1CJUJg49RlwTgl
 h+89QYgTEYbump1xooL4PFhRXAHmnKqLRkpCh8b7sKQ3LoLxZ9/9EaOlrmGo608jSrIz
 zlKeFrY4tSqz2kRY+H/9N4n1xxhSybMZgGiK09rPVdLqSPIWD7xt6KlCXHhS6X1I3NBy
 04Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=snvaZXInR5TYHvvzgnuHJAggy00IBOf7fQ0noztQ8E4=;
 b=cXmIpDmxwHFiN1iLFEGFbRAiC+SeEjuLdJmUzs0wLYiOInlJlpj34D5nDjCKdazQD6
 FVRhTEXp3zwWz5xPofaeTFYJassTVScu3C0fRw8Dl0ZWTtBscS4K5hLz9epLehUIA9cU
 sHcdZq72UXpYLW5omYr4CGoJioXgqwfivCHS3YXPIucP7UquQOTW4VWcMqJKvkjcHhPl
 oi1T1cJd6QFkAFDNHOTilsQH9M10tQY08w5RcgJq7L5wei5dmErZ8FsCDqyAZIYAyvIW
 LVBe6u1OOBwJBufMDc0Il39E5+NyIF0aKfSyUPJC/pwTKsiMeVJM/1AWW6/Q3M95GHfA
 sp6A==
X-Gm-Message-State: ANhLgQ0fiDGSQAHXUy9WA+QvfjaxUABtbCHudPEr3d+XgoBGjRFAJ5hX
 As74XPBTTTfQG6HVJLcKtLZIBNEOEszfveWK6iY=
X-Google-Smtp-Source: ADFU+vvwR5kUzjT5BR7CPePZ0VHwUgxxNtVvkWmwCciImo1s/lwHpeFZ/Nosapw/3p/r7QtJO6jypTwLwWXqbx8xu6k=
X-Received: by 2002:a67:fad8:: with SMTP id g24mr1342780vsq.136.1585118093783; 
 Tue, 24 Mar 2020 23:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <86e17716-193f-ca49-1104-9c599a667eeb@collabora.com>
 <f229a840-bcf3-50c8-27c6-363c72de1d01@xs4all.nl>
 <20190815193511.GB5011@pendragon.ideasonboard.com>
In-Reply-To: <20190815193511.GB5011@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Wed, 25 Mar 2020 07:34:37 +0100
Message-ID: <CAJ1myNREvdbfw5t7RCX1RtBZnarXy7O6_+Cg89w7njWutijNqQ@mail.gmail.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_233455_678228_9CD62B1A 
X-CRM114-Status: GOOD (  36.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dafna3[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dafna3[at]gmail.com]
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

On Thu, Aug 15, 2019 at 10:17 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Hans,
>
> On Wed, Aug 07, 2019 at 12:39:17PM +0200, Hans Verkuil wrote:
> > On 8/6/19 8:51 PM, Helen Koike wrote:
> > > On 7/30/19 3:42 PM, Helen Koike wrote:
> > >> From: Jacob Chen <jacob2.chen@rock-chips.com>
> > >>
> > >> Add the subdev driver for rockchip isp1.
> > >>
> > >> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> > >> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> > >> Signed-off-by: Yichong Zhong <zyc@rock-chips.com>
> > >> Signed-off-by: Jacob Chen <cc@rock-chips.com>
> > >> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> > >> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> > >> Signed-off-by: Allon Huang <allon.huang@rock-chips.com>
> > >> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > >> [fixed unknown entity type / switched to PIXEL_RATE]
> > >> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > >> [update for upstream]
> > >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > >>
> > >> ---
> > >>
> > >> Changes in v8: None
> > >> Changes in v7:
> > >> - fixed warning because of unknown entity type
> > >> - fixed v4l2-compliance errors regarding rkisp1 formats, try formats
> > >> and default values
> > >> - fix typo riksp1/rkisp1
> > >> - redesign: remove mipi/csi subdevice, sensors connect directly to the
> > >> isp subdevice in the media topology now. As a consequence, remove the
> > >> hack in mipidphy_g_mbus_config() where information from the sensor was
> > >> being propagated through the topology.
> > >> - From the old dphy:
> > >>         * cache get_remote_sensor() in s_stream
> > >>         * use V4L2_CID_PIXEL_RATE instead of V4L2_CID_LINK_FREQ
> > >> - Replace stream state with a boolean
> > >> - code styling and checkpatch fixes
> > >> - fix stop_stream (return after calling stop, do not reenable the stream)
> > >> - fix rkisp1_isp_sd_get_selection when V4L2_SUBDEV_FORMAT_TRY is set
> > >> - fix get format in output (isp_sd->out_fmt.mbus_code was being ignored)
> > >> - s/intput/input
> > >> - remove #define sd_to_isp_sd(_sd), add a static inline as it will be
> > >> reused by the capture
> > >>
> > >>  drivers/media/platform/rockchip/isp1/rkisp1.c | 1286 +++++++++++++++++
> > >>  drivers/media/platform/rockchip/isp1/rkisp1.h |  111 ++
> > >>  2 files changed, 1397 insertions(+)
> > >>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.c
> > >>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.h
> > >>
> > >> diff --git a/drivers/media/platform/rockchip/isp1/rkisp1.c b/drivers/media/platform/rockchip/isp1/rkisp1.c
> > >> new file mode 100644
> > >> index 000000000000..6d0c0ffb5e03
> > >> --- /dev/null
> > >> +++ b/drivers/media/platform/rockchip/isp1/rkisp1.c
> > >> @@ -0,0 +1,1286 @@
> >
> > <snip>
> >
> > >> +static int rkisp1_isp_sd_get_fmt(struct v4l2_subdev *sd,
> > >> +                           struct v4l2_subdev_pad_config *cfg,
> > >> +                           struct v4l2_subdev_format *fmt)
> > >> +{
> > >> +  struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> > >> +  struct v4l2_mbus_framefmt *mf = &fmt->format;
> > >> +
> > >> +  if ((fmt->pad != RKISP1_ISP_PAD_SINK) &&
> > >> +      (fmt->pad != RKISP1_ISP_PAD_SOURCE_PATH)) {
> > >> +          fmt->format.code = MEDIA_BUS_FMT_FIXED;
> > >> +          /*
> > >> +           * NOTE: setting a format here doesn't make much sense
> > >> +           * but v4l2-compliance complains
> > >> +           */
> > >> +          fmt->format.width = RKISP1_DEFAULT_WIDTH;
> > >> +          fmt->format.height = RKISP1_DEFAULT_HEIGHT;
> > >
> > > As I had mentioned to you, this is called for the isp pads connected to the
> > > DMA engines for statistics and parameters (meta data).
> > >
> > > If I remove those, I get the following errors:
> > >
> > > Sub-Device ioctls (Sink Pad 1):
> > >         test Try VIDIOC_SUBDEV_ENUM_MBUS_CODE/FRAME_SIZE/FRAME_INTERVAL: OK
> > >                 fail: v4l2-test-subdevs.cpp(311): fmt.width == 0 || fmt.width > 65536
> > >                 fail: v4l2-test-subdevs.cpp(356): checkMBusFrameFmt(node, fmt.format)
> > >         test Try VIDIOC_SUBDEV_G/S_FMT: FAIL
> > >         test Try VIDIOC_SUBDEV_G/S_SELECTION/CROP: OK
> > >         test Active VIDIOC_SUBDEV_ENUM_MBUS_CODE/FRAME_SIZE/FRAME_INTERVAL: OK
> > >                 fail: v4l2-test-subdevs.cpp(311): fmt.width == 0 || fmt.width > 65536
> > >                 fail: v4l2-test-subdevs.cpp(356): checkMBusFrameFmt(node, fmt.format)
> > >         test Active VIDIOC_SUBDEV_G/S_FMT: FAIL
> > >         test Active VIDIOC_SUBDEV_G/S_SELECTION/CROP: OK
> > >         test VIDIOC_SUBDEV_G/S_FRAME_INTERVAL: OK (Not Supported)
> > >
> > > Here is the full log: http://ix.io/1QNt
> > >
> > > Is this a bug in v4l2-compliance?
> >
> > Yes and no :-)
> >
> > Currently v4l2-compliance assumes that only video is transferred over a media bus.
> > But that's not the case here, and testing the code field doesn't help v4l2-compliance
> > since MEDIA_BUS_FMT_FIXED is also still used by some older subdev drivers for video.
> >
> > I think we need a new bus format: MEDIA_BUS_FMT_FIXED_METADATA. Then v4l2-compliance
> > can tell it apart from the regular fixed video bus format.
>
> Wouldn't a pad flag that identifies the type of data transmitted by a
> pad be a better, backward-compatible option ? This could be useful for
> audio as well.

Hi,
Can you explain what pad flag do you mean?
Do you mean adding a flag in the 'MEDIA_LNK_FL_*' list ?
Also, some valid value should be set to  'fmt->format.code' so with
the flags solution
that you suggest it should stay  MEDIA_BUS_FMT_FIXED ?

thanks,
Dafna
>
> > If I do a 'git grep MEDIA_BUS_FMT_FIXED' then I see that it is also in use by vsp1
> > for histogram information, so that should also be converted to use the new FIXED_METADATA
> > format, although that might be too late (there might be userspace complications).
>
> Yes, probably not a good idea.
>
> > >> +          fmt->format.field = V4L2_FIELD_NONE;
> > >> +          return 0;
> > >> +  }
> > >> +
> > >> +  if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> > >> +          mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
> > >> +          fmt->format = *mf;
> > >> +          return 0;
> > >> +  }
> > >> +
> > >> +  if (fmt->pad == RKISP1_ISP_PAD_SINK) {
> > >> +          *mf = isp_sd->in_frm;
> > >> +  } else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_PATH) {
> > >> +          /* format of source pad */
> > >> +          *mf = isp_sd->in_frm;
> > >> +          mf->code = isp_sd->out_fmt.mbus_code;
> > >> +          /* window size of source pad */
> > >> +          mf->width = isp_sd->out_crop.width;
> > >> +          mf->height = isp_sd->out_crop.height;
> > >> +          mf->quantization = isp_sd->quantization;
> > >> +  }
> > >> +  mf->field = V4L2_FIELD_NONE;
> > >> +
> > >> +  return 0;
> > >> +}
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
