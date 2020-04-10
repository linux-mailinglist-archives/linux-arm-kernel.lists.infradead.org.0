Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32511A44E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQILUDwEnED65gvlRk3260PozEC3lB0T9ehz0ll3Wc0=; b=LhwiMx7NcgNCyG
	MqmcvQ6rrCT5zu0W/7cgwBxuqrtwdWo6ZAHerldsQvYQPoV+5Nw97BjCgfA00NnlY2fqR2I37bSs3
	oHf0zehDDAEGlBeIzkxRAxEbLfb8w1sRSrAnfp4FQR/+v86UDBi9nM37oWsHnKQP4w/r/p5v/l24M
	LY430y+7XhvJwvg4xJHJEGXJ6hYkf1HEyyP7rxi6KsypOOB89liVpyoBOf+S6DkRJUMMLtdS/uaTi
	nyjqIoRdyyQu2tv2dX8bXrJQNwP4Bl+j3gZuiYlbUMIPacDjpQX1E4HeBKxt31861s18oxv51XsVa
	O63qSjLGTcnjKmvx3zZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqSc-0000YM-KA; Fri, 10 Apr 2020 10:00:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqSQ-0000Wm-Aj; Fri, 10 Apr 2020 10:00:21 +0000
X-UUID: db160af8eba04377a60f0e5ab31c79e3-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=dBHxmfTdIkE3bGLGDEM6BvHcVdkJIsDzzt+sqqsKpbc=; 
 b=OUgkoroFLAdM9kTQFNATUAURpNReklUTUvC6fR2sArm64nE913JLn/9jWYcoI8ynUKOhCt2SBDqvbErQCWO9zDtoU+ebbpB46avEU3K4BP7XFO+G1u9tFjOju7K61GqdTC4qMEKNyaBLcrG/IKcKc5bIT9M/kULAiMcVDbaLNI4=;
X-UUID: db160af8eba04377a60f0e5ab31c79e3-20200410
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 25559541; Fri, 10 Apr 2020 02:00:05 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 03:00:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 18:00:08 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 10 Apr 2020 18:00:09 +0800
Message-ID: <1586512810.8406.97.camel@mtksdccf07>
Subject: Re: [v6, 4/5] media: platform: Add Mediatek ISP P1 image & meta
 formats
From: Jungo Lin <jungo.lin@mediatek.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Fri, 10 Apr 2020 18:00:10 +0800
In-Reply-To: <20200403023031.GH4745@pendragon.ideasonboard.com>
References: <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
 <20191219054930.29513-5-jungo.lin@mediatek.com>
 <20200403023031.GH4745@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_030018_393560_B93933EB 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com, robh@kernel.org,
 Rynn.Wu@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 frederic.chen@mediatek.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hverkuil-cisco@xs4all.nl, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Laurent:

Thanks for your comments.

On Fri, 2020-04-03 at 05:30 +0300, Laurent Pinchart wrote:
> Hi Jungo,
> 
> Thank you for the patch.
> 
> On Thu, Dec 19, 2019 at 01:49:29PM +0800, Jungo Lin wrote:
> > Add packed/full-g bayer formats with 8/10/12/14 bit
> > for image output. Add Pass 1 (P1) specific meta formats for
> > parameter processing and 3A/other statistics.
> > 
> > (The current metadata format used in meta input and partial
> > meta nodes is only a temporary solution to kick off the driver
> > development and is not ready to be reviewed yet.)
> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> > Changes from v6:
> >  - Remove RGB format definitions in pixfmt-rgb.rst for kernel
> >    v5.5-rc1 version.
> > ---
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr10.rst   |  65 +++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst  |  90 ++++++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr12.rst   |  61 ++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst  | 110 ++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr14.rst   |  73 ++++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst  | 110 ++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr8.rst    |  51 ++++++++
> >  .../media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst   |  78 +++++++++++++
> >  8 files changed, 638 insertions(+)
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
> >  create mode 100644 Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst
> > 
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
> > new file mode 100644
> > index 000000000000..534edb4f0fd4
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10.rst
> > @@ -0,0 +1,65 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr10:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg10:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg10:
> > +.. _v4l2-pix-fmt-mtisp-srggb10:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR10 ('MBBA'), V4L2_PIX_FMT_MTISP_SGBRG10('MBGA'), V4L2_PIX_FMT_MTISP_SGRBG10('MBgA'), V4L2_PIX_FMT_MTISP_SRGGB10('MBRA')
> > +*******************************
> > +
> > +10-bit Packed Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format, meaning all the data bits for a pixel lying
> > +next to each other with no padding in memory, with a depth of 10 bits per pixel.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor.
> > +They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
> > +Below is an example of conventional RGB byte order BGGR.
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +pixels cross the byte boundary and have a ratio of 5 bytes for each 4 pixels.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00low bits 7--0`
> > +      - G\ :sub:`01low bits 5--0` (bits 7--2) B\ :sub:`00high bits 9--8`\ (bits 1--0)
> > +    * - start + 2:
> > +      - B\ :sub:`02low bits 3--0`\ (bits 7--4) G\ :sub:`01high bits 9--6`\ (bits 3--0)
> > +      - G\ :sub:`03low bits 1--0`\ (bits 7--6) B\ :sub:`02high bits 9--4`\ (bits 5--0)
> > +    * - start + 4:
> > +      - G\ :sub:`03high bits 9--2`
> 
> This contradicts the description above, where you mention there's no
> padding, and here only 8 bits are used for the two bytes. Which one is
> correct ?
> 

These four pixel formats are raw sRGB / Bayer formats with 10 bits per
color. Each color component is stored in the 1st byte with bit 0~7, with
2 extra high bits 8~9 will be stored in 2nd byte. For the rest 6 bits of
2nd byte are filled with the next color with bit 0~5. So there is no
padding between the consecutive colors.

> > +    * - start + 6:
> > +      - G\ :sub:`10low bits 7--0`
> > +      - R\ :sub:`11low bits 5--0`\ (bits 7--2) G\ :sub:`10high bits 9--8`\ (bits 1--0)
> > +    * - start + 8:
> > +      - G\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 9--6`\ (bits 3--0)
> > +      - R\ :sub:`13low bits 1--0`\ (bits 7--6) G\ :sub:`12high bits 9--4`\ (bits 5--0)
> > +    * - start + 10:
> > +      - R\ :sub:`13high bits 9--2`
> > +    * - start + 12:
> > +      - B\ :sub:`20low bits 7--0`
> > +      - G\ :sub:`21low bits 5--0`\ (bits 7--2) B\ :sub:`20high bits 9--8`\ (bits 1--0)
> > +    * - start + 14:
> > +      - B\ :sub:`22low bits 3--0`\ (bits 7--4) G\ :sub:`21high bits 9--6`\ (bits 3--0)
> > +      - G\ :sub:`23low bits 1--0`\ (bits 7--6) B\ :sub:`22high bits 9--4`\ (bits 5--0)
> > +    * - start + 16:
> > +      - G\ :sub:`23high bits 9--2`
> > +    * - start + 18:
> > +      - G\ :sub:`30low bits 7--0`
> > +      - R\ :sub:`31low bits 5--0`\ (bits 7--2) G\ :sub:`30high bits 9--8`\ (bits 1--0)
> > +    * - start + 20:
> > +      - G\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 9--6`\ (bits 3--0)
> > +      - R\ :sub:`33low bits 1--0`\ (bits 7--6) G\ :sub:`32high bits 9--4`\ (bits 5--0)
> > +    * - start + 22:
> > +      - R\ :sub:`33high bits 9--2` (bits 7--0)
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
> > new file mode 100644
> > index 000000000000..7be527711602
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr10f.rst
> > @@ -0,0 +1,90 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr10f:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg10f:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg10f:
> > +.. _v4l2-pix-fmt-mtisp-srggb10f:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR10F ('MFBA'), V4L2_PIX_FMT_MTISP_SGBRG10F('MFGA'), V4L2_PIX_FMT_MTISP_SGRBG10F('MFgA'), V4L2_PIX_FMT_MTISP_SRGGB10F('MFRA')
> > +*******************************
> > +
> > +10-bit Packed Full-G Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format with a depth of 10 bits per sample with every 4 pixels.
> > +Full-G means 1 more pixel for green channel every 2 pixels.
> 
> I think this should describe where the additional green pixel comes
> from.
> 

Ok, we will add more descriptions to describe.

The Full-G format adopts some of the features of Bayer CFA and RGB.
In R and B Channels, only the pixel value of the corresponding position
under the CFA arrangement is recorded.
And the G Channel has full pixel values.


> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
> > +described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
> > +RGB byte order BGGR.
> > +
> > +**Bit-packed representation.**
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - B\ :sub:`00`
> > +      - FG\ :sub:`01`
> > +      - G\ :sub:`02`
> > +      - B\ :sub:`03`
> > +      - FG\ :sub:`04`
> > +      - G\ :sub:`05`
> > +    * - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - FG\ :sub:`12`
> > +      - G\ :sub:`13`
> > +      - R\ :sub:`14`
> > +      - FG\ :sub:`15`
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00low bits 7--0`
> > +      - FG\ :sub:`01low bits 5--0`\ (bits 7--2) B\ :sub:`00high bits 9--8`\ (bits 1--0)
> > +      - G\ :sub:`02low bits 3--0`\ (bits 7--4) FG\ :sub:`01high bits 9--6`\ (bits 3--0)
> > +      - B\ :sub:`03low bits 1--0`\ (bits 7--6) G\ :sub:`02high bits 9--4`\ (bits 5--0)
> > +    * - start + 4:
> > +      - B\ :sub:`03high bits 9--2`
> > +      - FG\ :sub:`04low bits 7--0`
> > +      - G\ :sub:`05low bits 5--0`\ (bits 7--2) FG\ :sub:`04high bits 9--8`\ (bits 1--0)
> > +      - G\ :sub:`05high bits 3--0`
> > +    * - start + 8:
> > +      - G\ :sub:`10low bits 7--0`
> > +      - R\ :sub:`11low bits 5--0`\ (bits 7--2) G\ :sub:`10high bits 9--8`\ (bits 1--0)
> > +      - FG\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 9--6`\ (bits 3--0)
> > +      - G\ :sub:`13low bits 1--0`\ (bits 7--6) FG\ :sub:`12high bits 9--4`\ (bits 5--0)
> > +    * - start + 12:
> > +      - G\ :sub:`13high bits 9--2`
> > +      - R\ :sub:`14low bits 7--0`
> > +      - FG\ :sub:`15low bits 5--0`\ (bits 7--2) R\ :sub:`14high bits 9--8`\ (bits 1--0)
> > +      - FG\ :sub:`15high bits 3--0`
> > +    * - start + 16:
> > +      - B\ :sub:`20low bits 7--0`
> > +      - FG\ :sub:`21low bits 5--0`\ (bits 7--2) B\ :sub:`20high bits 9--8`\ (bits 1--0)
> > +      - G\ :sub:`22low bits 3--0`\ (bits 7--4) FG\ :sub:`21high bits 9--6`\ (bits 3--0)
> > +      - B\ :sub:`23low bits 1--0`\ (bits 7--6) G\ :sub:`22high bits 9--4`\ (bits 5--0)
> > +    * - start + 20:
> > +      - B\ :sub:`23high bits 9--2`
> > +      - FG\ :sub:`24low bits 7--0`
> > +      - G\ :sub:`25low bits 5--0`\ (bits 7--2) FG\ :sub:`24high bits 9--8`\ (bits 1--0)
> > +      - G\ :sub:`25high bits 3--0`
> > +    * - start + 24:
> > +      - G\ :sub:`30low bits 7--0`
> > +      - R\ :sub:`31low bits 5--0`\ (bits 7--2) G\ :sub:`30high bits 9--8`\ (bits 1--0)
> > +      - FG\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 9--6`\ (bits 3--0)
> > +      - G\ :sub:`33low bits 1--0`\ (bits 7--6) FG\ :sub:`32high bits 9--4`\ (bits 5--0)
> > +    * - start + 28:
> > +      - G\ :sub:`33high bits 9--2`
> > +      - R\ :sub:`34low bits 7--0`
> > +      - FG\ :sub:`35low bits 5--0`\ (bits 7--2) R\ :sub:`34high bits 9--8`\ (bits 1--0)
> > +      - FG\ :sub:`35high bits 3--0`
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
> > new file mode 100644
> > index 000000000000..cc888aac42c2
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12.rst
> > @@ -0,0 +1,61 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr12:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg12:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg12:
> > +.. _v4l2-pix-fmt-mtisp-srggb12:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR12 ('MBBC'), V4L2_PIX_FMT_MTISP_SGBRG12('MBGC'), V4L2_PIX_FMT_MTISP_SGRBG12('MBgC'), V4L2_PIX_FMT_MTISP_SRGGB12('MBRC')
> > +*******************************
> > +
> > +12-bit Packed Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format, meaning all the data bits for a pixel lying
> > +next to each other with no padding in memory, with a depth of 12 bits per pixel.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor.
> > +They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
> > +Below is an example of conventional RGB byte order BGGR.
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +pixels cross the byte boundary and have a ratio of 6 bytes for each 4 pixels.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00lowbits 7--0`
> > +      - G\ :sub:`01lowbits 3--0`\ (bits 7--4) B\ :sub:`00highbits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`01highbits 7--0`
> > +      - B\ :sub:`02lowbits 7--0`
> > +      - G\ :sub:`03lowbits 3--0`\ (bits 7--4) B\ :sub:`02highbits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`03highbits 7--0`
> > +    * - start + 6:
> > +      - G\ :sub:`10lowbits 7--0`
> > +      - R\ :sub:`11lowbits 3--0`\ (bits 7--4) G\ :sub:`10highbits 11--8`\ (bits 3--0)
> > +      - R\ :sub:`11highbits 7--0`
> > +      - G\ :sub:`12lowbits 7--0`
> > +      - R\ :sub:`13lowbits 3--0`\ (bits 7--4) G\ :sub:`12highbits 11--8`\ (bits 3--0)
> > +      - R\ :sub:`13highbits 7--0`
> > +    * - start + 12:
> > +      - B\ :sub:`20lowbits 7--0`
> > +      - G\ :sub:`21lowbits 3--0`\ (bits 7--4) B\ :sub:`20highbits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`21highbits 7--0`
> > +      - B\ :sub:`22lowbits 7--0`
> > +      - G\ :sub:`23lowbits 3--0`\ (bits 7--4) B\ :sub:`22highbits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`23highbits 7--0`
> > +    * - start + 18:
> > +      - G\ :sub:`30lowbits 7--0`
> > +      - R\ :sub:`31lowbits 3--0`\ (bits 7--4) G\ :sub:`30highbits 11--8`\ (bits 3--0)
> > +      - R\ :sub:`31highbits 7--0`
> > +      - G\ :sub:`32lowbits 7--0`
> > +      - R\ :sub:`33lowbits 3--0`\ (bits 7--4) G\ :sub:`32highbits 11--8`\ (bits 3--0)
> > +      - R\ :sub:`33highbits 7--0`
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
> > new file mode 100644
> > index 000000000000..c063de9f9ad8
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr12f.rst
> > @@ -0,0 +1,110 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr12f:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg12f:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg12f:
> > +.. _v4l2-pix-fmt-mtisp-srggb12f:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR12F ('MFBC'), V4L2_PIX_FMT_MTISP_SGBRG12F('MFGC'), V4L2_PIX_FMT_MTISP_SGRBG12F('MFgC'), V4L2_PIX_FMT_MTISP_SRGGB12F('MFRC')
> > +*******************************
> > +
> > +12-bit Packed Full-G Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format with a depth of 12 bits per sample with every 4 pixels.
> > +Full-G means 1 more pixel for green channel every 2 pixels.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
> > +described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
> > +RGB byte order BGGR.
> > +
> > +**Bit-packed representation.**
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - B\ :sub:`00`
> > +      - FG\ :sub:`01`
> > +      - G\ :sub:`02`
> > +      - B\ :sub:`03`
> > +      - FG\ :sub:`04`
> > +      - G\ :sub:`05`
> > +    * - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - FG\ :sub:`12`
> > +      - G\ :sub:`13`
> > +      - R\ :sub:`14`
> > +      - FG\ :sub:`15`
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00low bits 7--0`
> > +      - FG\ :sub:`01low bits 3--0`\ (bits 7--4) B\ :sub:`00high bits 11--8`\ (bits 3--0)
> > +    * - start + 2:
> > +      - FG\ :sub:`01high bits 7--0`
> > +      - G\ :sub:`02low bits 7--0`
> > +    * - start + 4:
> > +      - B\ :sub:`03low bits 3--0`\ (bits 7--4) G\ :sub:`02high bits 11--8`\ (bits 3--0)
> > +      - B\ :sub:`03high bits 7--0`
> > +    * - start + 6:
> > +      - FG\ :sub:`04low bits 7--0`
> > +      - G\ :sub:`05low bits 3--0`\ (bits 7--4) FG\ :sub:`04high bits 11--8`\ (bits 3--0)
> > +    * - start + 8:
> > +      - G\ :sub:`05high bits 7--0`
> > +      -
> > +    * - start + 10:
> > +      - G\ :sub:`10low bits 7--0`
> > +      - R\ :sub:`11low bits 3--0`\ (bits 7--4) G\ :sub:`10high bits 11--8`\ (bits 3--0)
> > +    * - start + 12:
> > +      - R\ :sub:`11high bits 7--0`
> > +      - FG\ :sub:`12low bits 7--0`
> > +    * - start + 14:
> > +      - G\ :sub:`13low bits 3--0`\ (bits 7--4) FG\ :sub:`12high bits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`13high bits 7--0`
> > +    * - start + 16:
> > +      - R\ :sub:`14low bits 7--0`
> > +      - FG\ :sub:`15low bits 3--0`\ (bits 7--4) R\ :sub:`14high bits 11--8`\ (bits 3--0)
> > +    * - start + 18:
> > +      - FG\ :sub:`15high bits 7--0`
> > +      -
> > +    * - start + 20:
> > +      - B\ :sub:`20low bits 7--0`
> > +      - FG\ :sub:`21low bits 3--0`\ (bits 7--4) B\ :sub:`20high bits 11--8`\ (bits 3--0)
> > +    * - start + 22:
> > +      - FG\ :sub:`21high bits 7--0`
> > +      - G\ :sub:`22low bits 7--0`
> > +    * - start + 24:
> > +      - B\ :sub:`23low bits 3--0`\ (bits 7--4) G\ :sub:`22high bits 11--8`\ (bits 3--0)
> > +      - B\ :sub:`23high bits 7--0`
> > +    * - start + 26:
> > +      - FG\ :sub:`24low bits 7--0`
> > +      - G\ :sub:`25low bits 3--0`\ (bits 7--4) FG\ :sub:`24high bits 11--8`\ (bits 3--0)
> > +    * - start + 28:
> > +      - G\ :sub:`25high bits 7--0`
> > +      -
> > +    * - start + 30:
> > +      - G\ :sub:`30low bits 7--0`
> > +      - R\ :sub:`31low bits 3--0`\ (bits 7--4) G\ :sub:`30high bits 11--8`\ (bits 3--0)
> > +    * - start + 32:
> > +      - R\ :sub:`31high bits 7--0`
> > +      - FG\ :sub:`32low bits 7--0`
> > +    * - start + 34:
> > +      - G\ :sub:`33low bits 3--0`\ (bits 7--4) FG\ :sub:`32high bits 11--8`\ (bits 3--0)
> > +      - G\ :sub:`33high bits 7--0`
> > +    * - start + 36:
> > +      - R\ :sub:`34low bits 7--0`
> > +      - FG\ :sub:`35low bits 3--0`\ (bits 7--4) R\ :sub:`34high bits 11--8`\ (bits 3--0)
> > +    * - start + 38:
> > +      - FG\ :sub:`35high bits 7--0`
> > +      -
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
> > new file mode 100644
> > index 000000000000..39ea9882a792
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14.rst
> > @@ -0,0 +1,73 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr14:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg14:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg14:
> > +.. _v4l2-pix-fmt-mtisp-srggb14:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR14 ('MBBE'), V4L2_PIX_FMT_MTISP_SGBRG14('MBGE'), V4L2_PIX_FMT_MTISP_SGRBG14('MBgE'), V4L2_PIX_FMT_MTISP_SRGGB14('MBRE')
> > +*******************************
> > +
> > +14-bit Packed Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format, meaning all the data bits for a pixel lying
> > +next to each other with no padding in memory, with a depth of 14 bits per pixel.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor.
> > +They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
> > +Below is an example of conventional RGB byte order BGGR.
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +pixels cross the byte boundary and have a ratio of 7 bytes for each 4 pixels.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00low bits 7--0`
> > +      - G\ :sub:`01low bits 1--0`\ (bits 7--6) B\ :sub:`00high bits 13--8`\ (bits 5--0)
> > +      - G\ :sub:`01low bits 9--2`\
> > +      - B\ :sub:`02low bits 3--0`\ (bits 7--4) G\ :sub:`01high bits 13--10`\ (bits 3--0)
> > +    * - start + 4:
> > +      - B\ :sub:`02low bits 11--4`\
> > +      - G\ :sub:`03low bits 5--0`\ (bits 7--2) B\ :sub:`02high bits 13--12`\ (bits 1--0)
> > +      - G\ :sub:`03high bits 13--6`\
> > +      -
> > +    * - start + 8:
> > +      - G\ :sub:`10low bits 7--0`
> > +      - R\ :sub:`11low bits 1--0`\ (bits 7--6) G\ :sub:`10high bits 13--8`\ (bits 5--0)
> > +      - R\ :sub:`11low bits 9--2`\
> > +      - G\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 13--10`\ (bits 3--0)
> > +    * - start + 12:
> > +      - G\ :sub:`12low bits 11--4`\
> > +      - R\ :sub:`13low bits 5--0`\ (bits 7--2) G\ :sub:`12high bits 13--12`\ (bits 1--0)
> > +      - R\ :sub:`13high bits 13--6`\
> > +      -
> > +    * - start + 16:
> > +      - B\ :sub:`20low bits 7--0`
> > +      - G\ :sub:`21low bits 1--0`\ (bits 7--6) B\ :sub:`20high bits 13--8`\ (bits 5--0)
> > +      - G\ :sub:`21low bits 9--2`\
> > +      - B\ :sub:`22low bits 3--0`\ (bits 7--4) G\ :sub:`21high bits 13--10`\ (bits 3--0)
> > +    * - start + 20:
> > +      - B\ :sub:`22low bits 11--4`\
> > +      - G\ :sub:`23low bits 5--0`\ (bits 7--2) B\ :sub:`22high bits 13--12`\ (bits 1--0)
> > +      - G\ :sub:`23high bits 13--6`\
> > +      -
> > +    * - start + 24:
> > +      - G\ :sub:`30low bits 7--0`
> > +      - R\ :sub:`31low bits 1--0`\ (bits 7--6) G\ :sub:`30high bits 13--8`\ (bits 5--0)
> > +      - R\ :sub:`31low bits 9--2`\
> > +      - G\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 13--10`\ (bits 3--0)
> > +    * - start + 28:
> > +      - G\ :sub:`32low bits 11--4`\
> > +      - R\ :sub:`33low bits 5--0`\ (bits 7--2) G\ :sub:`32high bits 13--12`\ (bits 1--0)
> > +      - R\ :sub:`33high bits 13--6`\
> > +      -
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
> > new file mode 100644
> > index 000000000000..010b1c190c60
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr14f.rst
> > @@ -0,0 +1,110 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr14f:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg14f:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg14f:
> > +.. _v4l2-pix-fmt-mtisp-srggb14f:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR14F ('MFBE'), V4L2_PIX_FMT_MTISP_SGBRG14F('MFGE'), V4L2_PIX_FMT_MTISP_SGRBG14F('MFgE'), V4L2_PIX_FMT_MTISP_SRGGB14F('MFRE')
> > +*******************************
> > +
> > +14-bit Packed Full-G Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format with a depth of 14 bits per sample with every 4 pixels.
> > +Full-G means 1 more pixel for green channel every 2 pixels.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
> > +described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
> > +RGB byte order BGGR.
> > +
> > +**Bit-packed representation.**
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - B\ :sub:`00`
> > +      - FG\ :sub:`01`
> > +      - G\ :sub:`02`
> > +      - B\ :sub:`03`
> > +      - FG\ :sub:`04`
> > +      - G\ :sub:`05`
> > +    * - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - FG\ :sub:`12`
> > +      - G\ :sub:`13`
> > +      - R\ :sub:`14`
> > +      - FG\ :sub:`15`
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00low bits 7--0`
> > +      - FG\ :sub:`01low bits 1--0`\ (bits 7--6) B\ :sub:`00high bits 13--8`\ (bits 5--0)
> > +      - FG\ :sub:`01low bits 9--2`
> > +      - G\ :sub:`02low bits 3--0`\ (bits 7--4) FG\ :sub:`01high bits 13--10`\ (bits 3--0)
> > +    * - start + 4:
> > +      - G\ :sub:`02low bits 11--4`
> > +      - B\ :sub:`03low bits 5--0`\ (bits 7--2) G\ :sub:`02high bits 13--12`\ (bits 1--0)
> > +      - B\ :sub:`03high bits 13--6`
> > +      - FG\ :sub:`04low bits 7--0`
> > +    * - start + 8:
> > +      - G\ :sub:`05low bits 1--0`\ (bits 7--6) FG\ :sub:`04high bits 13--8`\ (bits 5--0)
> > +      - G\ :sub:`05high bits 9--2`
> > +      - G\ :sub:`05high bits 13--10`
> > +      -
> > +    * - start + 12:
> > +      - G\ :sub:`10low bits 7--0`
> > +      - R\ :sub:`11low bits 1--0`\ (bits 7--6) G\ :sub:`10high bits 13--8`\ (bits 5--0)
> > +      - R\ :sub:`11low bits 9--2`
> > +      - FG\ :sub:`12low bits 3--0`\ (bits 7--4) R\ :sub:`11high bits 13--10`\ (bits 3--0)
> > +    * - start + 16:
> > +      - FG\ :sub:`12low bits 11--4`
> > +      - G\ :sub:`13low bits 5--0`\ (bits 7--2) FG\ :sub:`12high bits 13--12`\ (bits 1--0)
> > +      - G\ :sub:`13high bits 13--6`
> > +      - R\ :sub:`14low bits 7--0`
> > +    * - start + 20:
> > +      - FG\ :sub:`15low bits 1--0`\ (bits 7--6) R\ :sub:`14high bits 13--8`\ (bits 5--0)
> > +      - FG\ :sub:`15high bits 9--2`
> > +      - FG\ :sub:`15high bits 13--10`
> > +      -
> > +    * - start + 24:
> > +      - B\ :sub:`20low bits 7--0`
> > +      - FG\ :sub:`21low bits 1--0`\ (bits 7--6) B\ :sub:`20high bits 13--8`\ (bits 5--0)
> > +      - FG\ :sub:`21low bits 9--2`
> > +      - G\ :sub:`22low bits 3--0`\ (bits 7--4) FG\ :sub:`21high bits 13--10`\ (bits 3--0)
> > +    * - start + 28:
> > +      - G\ :sub:`22low bits 11--4`
> > +      - B\ :sub:`23low bits 5--0`\ (bits 7--2) G\ :sub:`22high bits 13--12`\ (bits 1--0)
> > +      - B\ :sub:`23high bits 13--6`
> > +      - FG\ :sub:`24low bits 7--0`
> > +    * - start + 32:
> > +      - G\ :sub:`25low bits 1--0`\ (bits 7--6) FG\ :sub:`24high bits 13--8`\ (bits 5--0)
> > +      - G\ :sub:`25high bits 9--2`
> > +      - G\ :sub:`25high bits 13--10`
> > +      -
> > +    * - start + 36:
> > +      - G\ :sub:`30low bits 7--0`
> > +      - R\ :sub:`31low bits 1--0`\ (bits 7--6) G\ :sub:`30high bits 13--8`\ (bits 5--0)
> > +      - R\ :sub:`31low bits 9--2`
> > +      - FG\ :sub:`32low bits 3--0`\ (bits 7--4) R\ :sub:`31high bits 13--10`\ (bits 3--0)
> > +    * - start + 40:
> > +      - FG\ :sub:`32low bits 11--4`
> > +      - G\ :sub:`33low bits 5--0`\ (bits 7--2) FG\ :sub:`32high bits 13--12`\ (bits 1--0)
> > +      - G\ :sub:`33high bits 13--6`
> > +      - R\ :sub:`34low bits 7--0`
> > +    * - start + 44:
> > +      - FG\ :sub:`35low bits 1--0`\ (bits 7--6) R\ :sub:`34high bits 13--8`\ (bits 5--0)
> > +      - FG\ :sub:`35high bits 9--2`
> > +      - FG\ :sub:`35high bits 13--10`
> > +      -
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
> > new file mode 100644
> > index 000000000000..86cadbf38175
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8.rst
> > @@ -0,0 +1,51 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr8:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg8:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg8:
> > +.. _v4l2-pix-fmt-mtisp-srggb8:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR8 ('MBB8'), V4L2_PIX_FMT_MTISP_SGBRG8('MBG8'), V4L2_PIX_FMT_MTISP_SGRBG8('MBg8'), V4L2_PIX_FMT_MTISP_SRGGB8('MBR8')
> > +*******************************
> > +
> > +8-bit Packed Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format, meaning all the data bits for a pixel lying
> > +next to each other with no padding in memory, with a depth of 8 bits per pixel.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor.
> > +They are conventionally described as GRGR... BGBG..., RGRG... GBGB..., etc.
> > +Below is an example of conventional RGB byte order BGGR.
> 
> How do these 8-bit formats differ from the V4L2_PIX_FMT_SGBRG8 (and
> other variants) ? They seem identical based on the description.
> 

You are right. They are identical.
We will move "8-bit packed bayer formats" in next patch.

Best regards,

Jungo

> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00`
> > +      - G\ :sub:`01`
> > +      - B\ :sub:`02`
> > +      - G\ :sub:`03`
> > +    * - start + 4:
> > +      - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - G\ :sub:`12`
> > +      - R\ :sub:`13`
> > +    * - start + 8:
> > +      - B\ :sub:`20`
> > +      - G\ :sub:`21`
> > +      - B\ :sub:`22`
> > +      - G\ :sub:`23`
> > +    * - start + 12:
> > +      - G\ :sub:`30`
> > +      - R\ :sub:`31`
> > +      - G\ :sub:`32`
> > +      - R\ :sub:`33`
> > \ No newline at end of file
> > diff --git a/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst
> > new file mode 100644
> > index 000000000000..ca5151312bca
> > --- /dev/null
> > +++ b/Documentation/media/uapi/v4l/pixfmt-mtisp-sbggr8f.rst
> > @@ -0,0 +1,78 @@
> > +.. -*- coding: utf-8; mode: rst -*-
> > +
> > +.. _v4l2-pix-fmt-mtisp-sbggr8f:
> > +.. _v4l2-pix-fmt-mtisp-sgbrg8f:
> > +.. _v4l2-pix-fmt-mtisp-sgrbg8f:
> > +.. _v4l2-pix-fmt-mtisp-srggb8f:
> > +
> > +*******************************
> > +V4L2_PIX_FMT_MTISP_SBGGR8F ('MFB8'), V4L2_PIX_FMT_MTISP_SGBRG8F('MFG8'), V4L2_PIX_FMT_MTISP_SGRBG8F('MFg8'), V4L2_PIX_FMT_MTISP_SRGGB8F('MFR8')
> > +*******************************
> > +
> > +8-bit Packed Full-G Bayer formats.
> > +
> > +Description
> > +===========
> > +
> > +These four pixel formats are used by Mediatek ISP P1.
> > +This is a packed format with a depth of 8 bits per sample with every 4 pixels.
> > +Full-G means 1 more pixel for green channel every 2 pixels.
> > +The least significant byte is stored at lower memory addresses (little-endian).
> > +The RGB byte order follows raw sRGB / Bayer format from sensor. They are conventionally
> > +described as GRGR... BGBG..., RGRG... GBGB..., etc. Below is an example of conventional
> > +RGB byte order BGGR.
> > +
> > +**Bit-packed representation.**
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - B\ :sub:`00`
> > +      - FG\ :sub:`01`
> > +      - G\ :sub:`02`
> > +      - B\ :sub:`03`
> > +      - FG\ :sub:`04`
> > +      - G\ :sub:`05`
> > +    * - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - FG\ :sub:`12`
> > +      - G\ :sub:`13`
> > +      - R\ :sub:`14`
> > +      - FG\ :sub:`15`
> > +
> > +**Byte Order.**
> > +Each cell is one byte.
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +
> > +    * - start + 0:
> > +      - B\ :sub:`00`
> > +      - FG\ :sub:`01`
> > +      - G\ :sub:`02`
> > +      - B\ :sub:`03`
> > +      - FG\ :sub:`04`
> > +      - G\ :sub:`05`
> > +    * - start + 6:
> > +      - G\ :sub:`10`
> > +      - R\ :sub:`11`
> > +      - FG\ :sub:`12`
> > +      - G\ :sub:`13`
> > +      - R\ :sub:`14`
> > +      - FG\ :sub:`15`
> > +    * - start + 12:
> > +      - B\ :sub:`20`
> > +      - FG\ :sub:`21`
> > +      - G\ :sub:`22`
> > +      - B\ :sub:`23`
> > +      - FG\ :sub:`24`
> > +      - G\ :sub:`25`
> > +    * - start + 18:
> > +      - G\ :sub:`30`
> > +      - R\ :sub:`31`
> > +      - FG\ :sub:`32`
> > +      - G\ :sub:`33`
> > +      - R\ :sub:`34`
> > +      - FG\ :sub:`35`
> > \ No newline at end of file
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
