Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F76EC297A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTaXTUVaP/kNifYebKNMgBRnZOnybnpkrt+PNTjTBAw=; b=VccoJ5kX4pftvE
	yqpcgzyyeTuQztxMj/1XfQvzU1EOPh/RyAvMMm8FWA+esu5NGqL8nX9lgD/9mgYqMRsd4ZDSa5yGe
	3PO7nqcBYOslqkpE78pmOvajLCEy7E6iLrTsTJ/5wMP44hOcQ9qZhngn9NBWj9OcgzSENDS74H1w8
	rqDzyeXDoYE3DiFF7lWb32URs2OiIsnt2ODxS8z8/poCxLhgPlVZUxWHToycs8LhJ46crMrNlljMx
	5ga1Vu8+hf81zRTqRqzMjcRQx34/yo/mohNWFiBr6fUNdNte03zu5g4DqvIx0YGFRt1hFRuUOK6Av
	TSOipCgD+04dye2Uottg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF491-0007Ps-6t; Mon, 30 Sep 2019 22:27:51 +0000
Received: from mailoutvs5.siol.net ([185.57.226.196] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF48r-0007Os-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:27:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4E1E9521949;
 Tue,  1 Oct 2019 00:27:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ptcGB7QC91-1; Tue,  1 Oct 2019 00:27:34 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A502F522D91;
 Tue,  1 Oct 2019 00:27:34 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 19572521949;
 Tue,  1 Oct 2019 00:27:33 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Tue, 01 Oct 2019 00:27:32 +0200
Message-ID: <4342181.Ehiz7mZe5m@jernej-laptop>
In-Reply-To: <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_152741_483262_2DE8DB6C 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.196 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 30. september 2019 ob 10:10:48 CEST je Hans Verkuil 
napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > This series adds support for decoding multi-slice H264 frames along with
> > support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.
> > 
> > Code was tested by modified ffmpeg, which can be found here:
> > https://github.com/jernejsk/FFmpeg, branch mainline-test
> > It has to be configured with at least following options:
> > --enable-v4l2-request --enable-libudev --enable-libdrm
> > 
> > Samples used for testing:
> > http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
> > http://jernej.libreelec.tv/videos/h264/h264.mp4
> > 
> > Command line used for testing:
> > ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt
> > bgra -f fbdev /dev/fb0
> > 
> > Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
> > not sure how. ffmpeg follows exactly which slice is last in frame
> > and sets hold flag accordingly. Improper usage of hold flag would
> > corrupt ffmpeg assumptions and it would probably crash. Any ideas
> > how to test this are welcome!
> 
> It can be tested partially at least: if ffmpeg tells you it is the last
> slice, then queue the slice with the HOLD flag set, then call FLUSH
> afterwards. This should clear the HOLD flag again. In this case the queued
> buffer is probably not yet processed, so the flag is cleared before the
> decode job starts.
> 
> You can also try to add a sleep before calling FLUSH to see what happens
> if the last queued buffer is already decoded.

Ok, I tried following code:
https://github.com/jernejsk/FFmpeg/blob/flush_test/libavcodec/
v4l2_request.c#L220-L233

But results are not good. It seems that out_vb in flush command is always NULL 
and so it always marks capture buffer as done, which leads to kernel warnings.

dmesg output with debugging messages is here: http://ix.io/1Ks8

Currently I'm not sure what is going on. Shouldn't be output buffer queued and 
waiting to MEDIA_REQUEST_IOC_QUEUE which is executed after flush command as it 
can be seen from ffmpeg code linked above?

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > Thanks to Jonas for adjusting ffmpeg.
> > 
> > Please let me know what you think.
> > 
> > Best regards,
> > Jernej
> > 
> > Changes from v1:
> > - added Rb tags
> > - updated V4L2_DEC_CMD_FLUSH documentation
> > - updated first slice detection in Cedrus
> > - hold capture buffer flag is set according to source format
> > - added v4l m2m stateless_(try_)decoder_cmd ioctl helpers
> > 
> > Hans Verkuil (2):
> >   vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
> >   videodev2.h: add V4L2_DEC_CMD_FLUSH
> > 
> > Jernej Skrabec (4):
> >   media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
> >   media: cedrus: Detect first slice of a frame
> >   media: cedrus: h264: Support multiple slices per frame
> >   media: cedrus: Add support for holding capture buffer
> >  
> >  Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
> >  .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
> >  .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
> >  .../media/videodev2.h.rst.exceptions          |  1 +
> >  .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
> >  drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
> >  .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
> >  include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
> >  include/media/videobuf2-core.h                |  3 ++
> >  include/media/videobuf2-v4l2.h                |  5 ++
> >  include/uapi/linux/videodev2.h                | 14 ++++--
> >  15 files changed, 175 insertions(+), 11 deletions(-)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
