Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A19C13D7E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q38SzBgOCvV4F3yjAtOguNYLtd0AdfP2ZMLxnD/PkM=; b=QzpbKYB8pks/66
	ahVjMkl2Z/r57sxUVek7/spD/L2+VaW21Z48Y5HA89zBbiQuFSyZTV+DvLpi8gcwBnRQ9z0/1Va8I
	Ox3OM1hHJpMrexyDsINSm9T2MYp73VoJFw2qhJ7T8ygFObr/eo3Cq9vhVqxBBI5J3JIeygaFgckU9
	SY+BJ5Rf77WFusZm+CIT3Geb6GmgrwmkfQ6Mau9ypqgk+WsI7i/fxKbYr141t7cVQXW58UUbUmFcd
	OREnNau81AuZ1CRgQnqcGH33P1LObU+NDAH8PrJwaZt+E2n4ZIvJstvY4r3nOOK6w/vOdz7Xb8QPP
	NwlEXrNlzNRm1cceshUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2QJ-0004Qi-4T; Thu, 16 Jan 2020 10:30:47 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2Q6-0004Of-H4; Thu, 16 Jan 2020 10:30:39 +0000
Received: from [IPv6:2001:420:44c1:2577:1825:cb8:c622:6168]
 ([IPv6:2001:420:44c1:2577:1825:cb8:c622:6168])
 by smtp-cloud9.xs4all.net with ESMTPA
 id s2PniJWzoT6sRs2PricrHs; Thu, 16 Jan 2020 11:30:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1579170623; bh=kn7bUSdZ2Fasrf3hZzW73u5tRI6ZSWWaoFUv/HUNxNE=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=uC6CkSm7DDqXaHTcgovlMkoa7drUCK8oBD0nrZfV0Cgr8hUqbQqjigPdVPNzflqNl
 ZwEbkVXMvvj/4P6XcjPj42lj0D537yqJj0aYSR+EmFaq51s4RALOcK8VgsaatGgZRV
 oxAF5Hz/pHng54iU+u+pqyrj1/343fF/CbYz4AK5zrQXiaDAKMYb/zMKf3vq6BUqRO
 vWkEODCguvf4MxFXlpvbUuUxxoCN8LaTmhIo5rCBE20IJUs/9NYSUmwsf9GgSo+4ga
 H5YTo8vnGYDHmKts+MRpIUxuRjLUkbwPQRl6wApEw2ccT5GGz1QVn/RoPfT8eUBz1N
 u8BEZUnC95USw==
Subject: Re: [PATCH v5 0/5] Add support for mt2701 JPEG ENC support
To: Xia Jiang <xia.jiang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rick Chang <rick.chang@mediatek.com>
References: <20191204094424.2562-1-xia.jiang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <e62010b2-a2c1-cf52-139f-5f0134605195@xs4all.nl>
Date: Thu, 16 Jan 2020 11:30:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204094424.2562-1-xia.jiang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLx4+oarlH9NOKPID7K7G8V0SUpdV50ZS509UQ+6bf01fg9VgNH2/YXnhVVenenH8SjBYRQ8/LGm/4twIwDgTbdCNN+sUQwBDJ4Sd0eRC2HMSsjX1DId
 HAbn+UnktBFG9VQkbvguOpWrsdNLs6r3sZgM18LRSawjJgO3nVTYawHDFACK7/anPAz8nOcCeUekFHYouB7n1AGJaBFmkaWDidn51Qgpo0myxHsTq5ZoimAW
 j0QwovbyKwLzGlxoLlYqNWPm4AknlEDzAfP3pCFCUU96NqWUoCB+XPAKSnsZFhBsHE6PmsRpxPfGTFZUFw7vph6uWjNkEOOHF05e7r2X46huel2Ap+K7R6z/
 cjPDJ+ErxDxZLUzs78mScDnt4D/jl6OF8B+4kS0b9X2ZELnYRRim5X4bl5dRIZ9v0S8xoPmoHyAIj/VGfH6EipcSYNx4Tvqa3+uNGgGtdZ0VO83T/8b5XRxb
 4u30FTHXPsjQlRitJVSugNz1knHJmXVWdZQylILffHO58HVojvh409xnJ7jNdZ8bErxzz0aknpmjTgF9JDdj2zla3EzbVP8vMa/J1idyVz58bcriikLGs9F/
 IPPp7vPA8bkrlLtOdXgLm7BLGpWgRY1JbMCkaev1k8fDBfGLBmx9nHm6g1AIj+7bPu1vp1EMBcqBeLG+2LeYQW3zdkiKrzDa0mKghrAlB6P2ZnlhUMvrBD1x
 abHlHtyzz6dv/feufdly+BF1H/upqJRGUuJQHtwadDEliwLs+zD/Ug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_023034_885234_CA3081CD 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

I get checkpatch, compiler and sparse/smatch warnings when I try to
compile this series.

checkpatch.pl --strict gives:

0001-media-platform-Fix-jpeg-dec-driver-bug-and-improve-c.patch
---------------------------------------------------------------
CHECK: Alignment should match open parenthesis
#221: FILE: drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c:157:
+               param->comp_w[i] = round_up(param->comp_w[i],
                                                  MTK_JPEG_DCTSIZE);

0004-media-platform-Add-jpeg-dec-enc-feature.patch
--------------------------------------------------
CHECK: spaces preferred around that '+' (ctx:VxV)
#289: FILE: drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:335:
+                                       pix_mp->width * pix_mp->height / (i+1);
                                                                           ^

CHECK: Alignment should match open parenthesis
#312: FILE: drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:358:
+static int mtk_jpeg_try_dec_fmt_mplane(struct v4l2_format *f,
                                   struct mtk_jpeg_fmt *fmt,

CHECK: Avoid CamelCase: <mtk_jpeg_enc_set_encFormat>
#587: FILE: drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:1037:
+       mtk_jpeg_enc_set_encFormat(base, ctx->out_q.fmt->fourcc);


Compiler warnings:

drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c: In function 'vidioc_jpeg_s_ctrl':
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:147:23: warning: unused variable 'jpeg' [-Wunused-variable]
  147 |  struct mtk_jpeg_dev *jpeg = ctx->jpeg;
      |                       ^~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c: In function 'mtk_jpeg_try_enc_fmt_mplane':
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:18: warning: unused variable 'align_h' [-Wunused-variable]
  299 |  int i, align_w, align_h;
      |                  ^~~~~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:9: warning: unused variable 'align_w' [-Wunused-variable]
  299 |  int i, align_w, align_h;
      |         ^~~~~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:298:23: warning: unused variable 'jpeg' [-Wunused-variable]
  298 |  struct mtk_jpeg_dev *jpeg = ctx->jpeg;
      |                       ^~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c: In function 'mtk_jpeg_try_dec_fmt_mplane':
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:362:23: warning: unused variable 'jpeg' [-Wunused-variable]
  362 |  struct mtk_jpeg_dev *jpeg = ctx->jpeg;
      |                       ^~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c: In function 'mtk_jpeg_device_run':
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:1061:16: warning: unused variable 'flags' [-Wunused-variable]
 1061 |  unsigned long flags;
      |                ^~~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c: In function 'mtk_jpeg_enc_set_encFormat':
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:125:6: warning: 'yuv_format' may be used uninitialized in this function [-Wmaybe-uninitialized]
  125 |  u32 yuv_format, value;
      |      ^~~~~~~~~~
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c: In function 'mtk_jpeg_enc_set_ctrl_cfg':
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:221:8: warning: 'enc_quality' may be used uninitialized in this function [-Wmaybe-uninitialized]
  221 |  value = JPEG_ENC_SET_QUALITY(value, enc_quality);
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:211:9: note: 'enc_quality' was declared here
  211 |  u32 i, enc_quality;
      |         ^~~~~~~~~~~

Sparse warnings:

SPARSE:drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:169:5:  warning: symbol 'mtk_jpeg_ctrls_setup' was not declared. Should it be static?
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:147:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:169:5: warning: no previous prototype for 'mtk_jpeg_ctrls_setup' [-Wmissing-prototypes]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:18: warning: unused variable 'align_h' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:9: warning: unused variable 'align_w' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:298:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:362:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:1061:16: warning: unused variable 'flags' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:125:6: warning: 'yuv_format' may be used uninitialized in this function [-Wmaybe-uninitialized]
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:221:8: warning: 'enc_quality' may be used uninitialized in this function [-Wmaybe-uninitialized]

Smatch errors/warnings:

drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c: drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:146 mtk_jpeg_enc_set_encFormat() error: uninitialized symbol 'yuv_format'.
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c: drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:221 mtk_jpeg_enc_set_quality() error: uninitialized symbol 'enc_quality'.
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:125:6: warning: 'yuv_format' may be used uninitialized in this function [-Wmaybe-uninitialized]
drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c:221:8: warning: 'enc_quality' may be used uninitialized in this function [-Wmaybe-uninitialized]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:147:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:169:5: warning: no previous prototype for 'mtk_jpeg_ctrls_setup' [-Wmissing-prototypes]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:18: warning: unused variable 'align_h' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:299:9: warning: unused variable 'align_w' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:298:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:362:23: warning: unused variable 'jpeg' [-Wunused-variable]
drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c:1061:16: warning: unused variable 'flags' [-Wunused-variable]

Please fix!

Regards,

	Hans

On 12/4/19 10:44 AM, Xia Jiang wrote:
> This patchset add support for mt2701 JPEG ENC support.
> 
> This is the compliance test result for jpeg dec and enc.
> 
> The JPEG dec log:
> ------------------------------------------------------------
> v4l2-compliance -d /dev/video0
> v4l2-compliance SHA: af33cc5ef00177edbb45d466faf9061197767f2b, 32 bits
> 
> Compliance test for mtk-jpeg device /dev/video0:
> 
> Driver Info:
>         Driver name      : mtk-jpeg
>         Card type        : mtk-jpeg decoder
>         Bus info         : platform:15004000.jpegdec
>         Driver version   : 5.4.0
>         Capabilities     : 0x84204000
>                 Video Memory-to-Memory Multiplanar
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04204000
>                 Video Memory-to-Memory Multiplanar
>                 Streaming
>                 Extended Pix Format
>         Detected JPEG Decoder
> 
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
>         test second /dev/video0 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK (Not Supported)
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 0 Private Controls: 0
> 
> Format ioctls:
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK (Not Supported)
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK
>         test Scaling: OK
> 
> Codec ioctls:
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls:
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
> 
> Total for mtk-jpeg device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0
> ------------------------------------------------------------
> 
> The JPEG enc log:
> 
> ------------------------------------------------------------
> v4l2-compliance -d /dev/video1 
> v4l2-compliance SHA: af33cc5ef00177edbb45d466faf9061197767f2b, 32 bits
> 
> Compliance test for mtk-jpeg device /dev/video1:
> 
> Driver Info:
>         Driver name      : mtk-jpeg
>         Card type        : mtk-jpeg encoder
>         Bus info         : platform:1500a000.jpegenc
>         Driver version   : 5.4.0
>         Capabilities     : 0x84204000
>                 Video Memory-to-Memory Multiplanar
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04204000
>                 Video Memory-to-Memory Multiplanar
>                 Streaming
>                 Extended Pix Format
>         Detected JPEG Encoder
> 
> Required ioctls:
>         test VIDIOC_QUERYCAP: OK
> 
> Allow for multiple opens:
>         test second /dev/video1 open: OK
>         test VIDIOC_QUERYCAP: OK
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK (Not Supported)
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 4 Private Controls: 0
> 
> Format ioctls:
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK (Not Supported)
>         test VIDIOC_G_FBUF: OK (Not Supported)
>         test VIDIOC_G_FMT: OK
>         test VIDIOC_TRY_FMT: OK
>         test VIDIOC_S_FMT: OK
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK
>         test Composing: OK (Not Supported)
>         test Scaling: OK (Not Supported)
> 
> Codec ioctls:
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls:
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK (Not Supported)
> 
> Total for mtk-jpeg device /dev/video1: 44, Succeeded: 44, Failed: 0, Warnings: 0
> ------------------------------------------------------------
> 
> Change compared to v4:
> -improve code quality for the orignal jpeg decode driver in separate patch.
> -support crop for jpeg encode and compose for jpeg decode separately.
> -delete jpeg_enc_param/mtk_jpeg_enc_param structure.
> -delete mtk_jpeg_set_param() for jpeg encode.
> -use clamp() to replace mtk_jpeg_bound_align_image() and round_up() to
>  replace mtk_jpeg_align().
> -move macro definition about hw to mtk_jpeg_enc_reg.h.
> -delete unnecessary V4L2 logs in driver.
> -cancel spin lock and unlock operation in deviec run function.
> -change jpeg enc register offset hex numberals from upercase to lowercase.
> 
> Xia Jiang (5):
>   media: platform: Fix jpeg dec driver bug and improve code quality
>   media: dt-bindings: Add jpeg enc device tree node document
>   arm: dts: Add jpeg enc device tree node
>   media: platform: Rename jpeg dec file name
>   media: platform: Add jpeg dec/enc feature
> 
>  .../bindings/media/mediatek-jpeg-encoder.txt  |  37 +
>  arch/arm/boot/dts/mt2701.dtsi                 |  13 +
>  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 752 +++++++++++++-----
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  50 +-
>  .../{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}      |   8 +-
>  .../{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}      |  14 +-
>  ...{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} |   2 +-
>  ...{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} |   2 +-
>  .../{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}    |  19 +-
>  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 271 +++++++
>  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  86 ++
>  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  78 ++
>  13 files changed, 1100 insertions(+), 237 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (98%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (89%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
>  rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (77%)
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
