Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201B6C1C98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNPU4r4uQpfnf104cjRbUDWl3niEz7/4S5o9BEwo76M=; b=HDu+Nt34Sg+e1H
	sDGxdgyazv3cMOTnPFdR/bdg4y3AHXvNgfZAzpi0mjlucKlBYiE/oiB8lzWQkpT8pxNruC/Mz+9M5
	pOOFgqqlkTFu/Jm3wldEtmaYk01WPbeQRDpwaJE0XvgckLK0DW9syTaxd3H+wXDfMBKfuaPAyCevq
	aefPtwMXM/+n7AnQN2lbAHbQZAt43rgQLd7J4J04A2xNhjOYMbdw1md4ruln5cmBF8E57sudf/Tju
	irWZ4buhqSgNdmXQx0CMzVXw/0k42S0vLCJiMvQ3IS5tgCPoeGL0e3g4kmSZ3hNcMB5bH2MxflxyG
	ZY23N1ngIMYVqOtHaFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqmE-00012N-1d; Mon, 30 Sep 2019 08:11:26 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqly-0000qc-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:11:12 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id EqldicaL79D4hEqlgiKoVb; Mon, 30 Sep 2019 10:11:02 +0200
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
Date: Mon, 30 Sep 2019 10:10:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190929200023.215831-1-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfK9IKuZNeGFEGO1ipU974FZ/22u7b0eHb52sOVTjDWar12s23xSk7+3/qAGZaBOAOIslIwDo31TGsQr/hao3CJLYeYsH4Skz//+KsV/33q5632Vxor0Q
 t4Tkji1xtcf7hwG67KNTFDYRdVo2uQ591OX3mZdbTCca6XOdpC8VVuMTh7WHjR1TyD8qtLrp7HxYqYrHrN7Id71XtQFBpCIyo3sJid0lBgcxoo25VBmoKBy9
 Nr046jks4iF//5HfqDbwQPEgRiIX5bNmxSrECW+67UpopUihzusX4rRYXiQHZrc/2IIBA3exeyT7hkDTPK+LSkNKvAvsUC00Ylj5E5HFK+YHAn282Va1G7zX
 AMGknbLA17cEeMbREFO3L00c0zbhFlkMBxnEQBe3eHIbRlJMPYAbqIgfiWbgB5ahz2oG/8cj1DBSJGr48iIVTTi4YvbLyHaUd/qqnTi6qVk4ss4CWSWj7LZ9
 2JLc5F5cvfY3UcBm7Wk8fRs755HtOtRvInPRLIp8QzIo6NGStiPvvUa0DUs6ThUOtRqnMT8zW4AsTHgA/RZulXK+to07S+YIoqABQm9bbruKx9iguqi1/yuW
 gM+TE6g2gkwUPnyhQFcjEmcn4Vq+7FFc+ea4oWewNURg2iOd/VI2LAYlp5pkVoT4acMj6GXO9ZIpDcXe5uj7NSOSesvXygOeGdF7iS+OGu30cdPW1FWrKzPH
 ZexuRooJtfNwe+g2S6wzE5DBMEVIH9zp9ihXMvzqzEY3nNjvp51hhQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011110_652546_5A678E1B 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, boris.brezillon@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> This series adds support for decoding multi-slice H264 frames along with
> support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.
> 
> Code was tested by modified ffmpeg, which can be found here:
> https://github.com/jernejsk/FFmpeg, branch mainline-test
> It has to be configured with at least following options:
> --enable-v4l2-request --enable-libudev --enable-libdrm
> 
> Samples used for testing:
> http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
> http://jernej.libreelec.tv/videos/h264/h264.mp4
> 
> Command line used for testing:
> ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt bgra -f fbdev /dev/fb0
> 
> Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
> not sure how. ffmpeg follows exactly which slice is last in frame
> and sets hold flag accordingly. Improper usage of hold flag would
> corrupt ffmpeg assumptions and it would probably crash. Any ideas
> how to test this are welcome!

It can be tested partially at least: if ffmpeg tells you it is the last
slice, then queue the slice with the HOLD flag set, then call FLUSH afterwards.
This should clear the HOLD flag again. In this case the queued buffer is
probably not yet processed, so the flag is cleared before the decode job starts.

You can also try to add a sleep before calling FLUSH to see what happens
if the last queued buffer is already decoded.

Regards,

	Hans

> 
> Thanks to Jonas for adjusting ffmpeg.
> 
> Please let me know what you think.
> 
> Best regards,
> Jernej
> 
> Changes from v1:
> - added Rb tags
> - updated V4L2_DEC_CMD_FLUSH documentation
> - updated first slice detection in Cedrus
> - hold capture buffer flag is set according to source format
> - added v4l m2m stateless_(try_)decoder_cmd ioctl helpers
> 
> Hans Verkuil (2):
>   vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
>   videodev2.h: add V4L2_DEC_CMD_FLUSH
> 
> Jernej Skrabec (4):
>   media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
>   media: cedrus: Detect first slice of a frame
>   media: cedrus: h264: Support multiple slices per frame
>   media: cedrus: Add support for holding capture buffer
> 
>  Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
>  .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
>  .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
>  .../media/videodev2.h.rst.exceptions          |  1 +
>  .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
>  drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
>  include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
>  include/media/videobuf2-core.h                |  3 ++
>  include/media/videobuf2-v4l2.h                |  5 ++
>  include/uapi/linux/videodev2.h                | 14 ++++--
>  15 files changed, 175 insertions(+), 11 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
