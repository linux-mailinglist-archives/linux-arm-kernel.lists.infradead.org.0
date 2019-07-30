Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076C57B430
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA6itQuKUcpphX1HdlHhHUuZ3+4MuNiemmt/DQ++ieY=; b=j7gGSFvgezdyTN
	J3p+3Z3whdZrGHhOAeOXcTA9hZmqYINnuZ4SR+c3yqt36dpAEg7ZLrGm9fo5KUASfyTbItvlOImMr
	jqox98+TfX6L+J7+DeGW3l7bUPpGW3HaDegoYlp3pXQJFOmMwQ/9uvjeVnC9yWxEl9vGm4SjPIbvR
	UN1RfUWjpQGsvCS9n/XljaB+1T0kcjO4JCydYCI51Ft52LiwMvNsWydO8eid+8B5pDmLsPhob0kNc
	Q1HfNBc7zpcqwq3Kl5sACtguUfiLQ5Cx91x01NsrQ38J6E0PDUv9sdtupHgeF2TK+5gI7StoGiIiQ
	Y9TVQva740bdbO9xWHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYXC-0004SS-QC; Tue, 30 Jul 2019 20:15:46 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYX2-0004Rj-ME; Tue, 30 Jul 2019 20:15:39 +0000
Received: from [IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372]
 ([IPv6:2001:983:e9a7:1:a003:9a19:9f18:5372])
 by smtp-cloud9.xs4all.net with ESMTPA
 id sYWshp6MAAffAsYWthkw5y; Tue, 30 Jul 2019 22:15:33 +0200
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190730184256.30338-1-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <dbdfed3e-7bb6-bf1f-64b9-ab7298193e2d@xs4all.nl>
Date: Tue, 30 Jul 2019 22:15:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190730184256.30338-1-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfK+dx4j+dgGtxLsoHU+ORoEJPKIOp+jWl83XrDrQqacNsVuM79Xwci6DE5kLv1wrq3xUzFj3gGdhEYMfJjhOPZPULtph22J50wHmYbEpO+orz0iZzKh1
 8PCRs5OAsnRplxTozRzQuuyMz+igycBj0LCE4c2+uiKxTNFOwA4rUuh6zoiaf4uJyhmQa3a9xlxtJXxHyYMY+MJcBEadFN2fOdfvWKwKdzl55y8Gw/oIc5HC
 7B5MTCBmcVIVUKfWKuRQ6LL+BJN1cCx/2vBULk4nrSkKJB8MOa4xNSIc1amHlUcmW6aKxXrIRs3ZP2Nqf0aQTUpGgjM2HXWDjTxcZnKY1L5octE3lkMyWJZR
 Eleqf+j7ZhQNn53HfN7K/NN3InJ1CVLoZIbXJf27nny8GzEoXwkB2edwSb9Ln9XH77tmZiwOkRieoCae71cLTxcW+MyuCnhpDY3nEloS1FjPs1gbG4l7t9pG
 +F6e4IxXR4dvDG05P3swZKpM2QVdBo7ow51+0wBqqkmWDtRuqK9hWUwJiWXIjau+3wMrfk+xQ50whGUR29XB7TRLx+uaxNGVbdzll0gIHNyuY/iJOoY9y6SX
 GRthWhqtGpqz1klRqINLvfDXLnKDKoOxerdmC8vjkjzaNQ+SAT7s/14uOkqYOygnS1fdVxkhTv3F1KXUI3A/e0xUtGGAhMkU8MuGmYBYi4yNQo2sTzhGAFGg
 qZwIk6vZZRsaTETGDKfQ4qL5gya3aE9zSq+u1rEqfgDbX6bUOaXh7UsNj5CAZmIue7jGVOM85fwCjgUkoYqmDZdiEXAsqG3EyNvRV+2mp8f1orJoYzRp6wpr
 Gqx8rl9KGTyX4ldZSkGMO01UeqIPZZDMRMgEA+67/u0RKRxKwYUqbS2Xg0AksFOTVSRmLQ2RZZL4dZpl3YZoLZC8F6U65GFP7av0a2cld2MTeVKsQGHwRVRN
 cTGuIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_131537_043255_DCED2814 
X-CRM114-Status: GOOD (  38.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/30/19 8:42 PM, Helen Koike wrote:
> Hello,
> 
> I'm re-sending a new version of ISP(Camera) v4l2 driver for rockchip
> rk3399 SoC.
> 
> I didn't change much from the last version, just applying the
> suggestions made in the previous one.
> 
> This patchset is also available at:
> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v8
> 
> Libcamera patched to work with this version:
> https://gitlab.collabora.com/koike/libcamera
> (also sent to the mailing list)
> 
> I tested on the rockpi 4 with a rpi v1.3 sensor and also with the
> Scarlet Chromebook.
> 
> Known issues (same as in v7):
> -------------
> - Reloading the module doesn't work (there is some missing cleanup when
> unloading)
> - When capturing in bayer format, changing the size doesn't seem to
> affect the image.
> - crop needs more tests
> - v4l2-compliance error:
>         fail: v4l2-test-controls.cpp(824): subscribe event for control 'Image Processing Controls' failed
> test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL

Can you mail me the full v4l2-compliance output?

Regards,

	Hans

> It seems that if controls are supported, v4l2-compliance says that
> controls of type 'Image Processing Controls' are mandatory, is this
> correct?
> - It seems there are still some issues with interrupts, but I couldn't
> isolate them yet.
> 
> Previous changelog:
> -------------------
> 
> changes in V6:
>   - add mipi txrx phy support
>   - remove bool and enum from uapi header
>   - add buf_prepare op
>   - correct some spelling problems
>   - return all queued buffers when starting stream failed
> 
> changes in V5: Sync with local changes,
>   - fix the SP height limit
>   - speed up the second stream capture
>   - the second stream can't force sync for rsz when start/stop streaming
>   - add frame id to param vb2 buf
>   - enable luminance maximum threshold
> 
> changes in V4:
>   - fix some bugs during development
>   - move quantization settings to rkisp1 subdev
>   - correct some spelling problems
>   - describe ports in dt-binding documents
> 
> changes in V3:
>   - add some comments
>   - fix wrong use of v4l2_async_subdev_notifier_register
>   - optimize two paths capture at a time
>   - remove compose
>   - re-struct headers
>   - add a tmp wiki page: http://opensource.rock-chips.com/wiki_Rockchip-isp1
> 
> changes in V2:
>   mipi-phy:
>     - use async probing
>     - make it be a child device of the GRF
>   isp:
>     - add dummy buffer
>     - change the way to get bus configuration, which make it possible to
>             add parallel sensor support in the future(without mipi-phy driver).
> 
> ------------------
> 
> Changes in v8:
> - Add SPDX in the header
> - Remove emacs configs
> - Fix doc style
> - Remove boiler plate license text
> 
> Changes in v7:
> - s/IPU3/RK_ISP1
> - s/correspond/corresponding
> - s/use/uses
> - s/docuemnt/document
> - Fix checkpatch errors (lines over 80 and SPDX)
> - Add TODO to improve docs
> - Migrate dphy specific code from
> drivers/media/platform/rockchip/isp1/mipi_dphy_sy.c
> to drivers/phy/rockchip/phy-rockchip-dphy.c
> - Drop support for rk3288
> - Drop support for dphy txrx
> - code styling and checkpatch fixes
> - fixed warning because of unknown entity type
> - fixed v4l2-compliance errors regarding rkisp1 formats, try formats
> and default values
> - fix typo riksp1/rkisp1
> - redesign: remove mipi/csi subdevice, sensors connect directly to the
> isp subdevice in the media topology now. As a consequence, remove the
> hack in mipidphy_g_mbus_config() where information from the sensor was
> being propagated through the topology.
> - From the old dphy:
>         * cache get_remote_sensor() in s_stream
>         * use V4L2_CID_PIXEL_RATE instead of V4L2_CID_LINK_FREQ
> - Replace stream state with a boolean
> - code styling and checkpatch fixes
> - fix stop_stream (return after calling stop, do not reenable the stream)
> - fix rkisp1_isp_sd_get_selection when V4L2_SUBDEV_FORMAT_TRY is set
> - fix get format in output (isp_sd->out_fmt.mbus_code was being ignored)
> - s/intput/input
> - remove #define sd_to_isp_sd(_sd), add a static inline as it will be
> reused by the capture
> - s/strlcpy/strscpy
> - sort out the locks in isp stats
> - code styling and checkpatch fixes
> - s/strlcpy/strscpy
> - s/strcpy/strscpy
> - fix config lsc error
> LSC data table size is 17x17, but when configuring data to ISP,
> should be aligned to 18x17. That means every last data of last
> line should be filled with 0, and not filled with the data of
> next line.
> - Update new ISP parameters immediately
> For those sub modules that have shadow registers in core isp, the
> new programing parameters would not be active if both
> CIF_ISP_CTRL_ISP_CFG_UPD_PERMANENT and CFG_UPD are not set. Now
> we configure CFG_UPD to force update the shadow registers when new
> ISP parameters are configured.
> - fix some ISP parameters config error
> Some ISP parameter config functions may override the old enable
> bit value, because the enable bits of these modules are in the
> same registers with parameters. So we should save the old enable
> bits firstly.
> - code styling and checkpatch fixes
> - s/strlcpy/strscpy
> - Fix v4l2-compliance issues:
>         * remove input ioctls
> media api can be used to define the topology, this input api is not
> required. Besides it, if an input is enumerated, v4l2-compliance is not
> happy with G_FMT returning the default colorspace instead of something
> more specific.
>         * return the pixelformat to the userspace
> G_/S_/TRY_ FORMAT should return a valid pixelformat to the user, even if
> the user gave an invalid one
>         * add missing default colorspace and ycbcr
>         * fix wrong pixformat in mp_fmts[] table
>         * add buf type check in s_/g_selection
>         * queue_setup - check sizes
>         * normalize bus_info name
>         * fix field any v4l2-compliance -s complain - set field none
>         when streaming
> - Fix compiling error: s/vidioc_enum_fmt_vid_cap_mplane/vidioc_enum_fmt_vid_cap
> - Replace stream state with a boolean
> The rkisp1_state enum consists only of 3 entries, where 1 is completely
> unused and the other two respectively mean not streaming or streaming.
> Replace it with a boolean called "streaming".
> - Simplify MI interrupt handling
> Rather than adding unnecessary indirection, just use stream index to
> handle MI interrupt enable/disable/clear, since the stream index matches
> the order of bits now, thanks to previous patch. While at it, remove
> some dead code.
> - code styling and checkpatch fixes
> - add link_validate: don't allow a link with bayer/non-bayer mismatch
> - VIDEO_ROCKCHIP_ISP1 selects VIDEOBUF2_VMALLOC
> - add PHY_ROCKCHIP_DPHY as a dependency for VIDEO_ROCKCHIP_ISP1
> - Fix compilation and runtime errors due to bitrotting
> The code has bit-rotten since March 2018, fix compilation errors.
> The new V4L2 async notifier API requires notifiers to be initialized by
> a call to v4l2_async_notifier_init() before being used, do so.
> - Add missing module device table
> - use clk_bulk framework
> - add missing notifiers cleanups
> - s/strlcpy/strscpy
> - normalize bus_info name
> - fix s_stream error path, stream_cnt wans't being decremented properly
> - use devm_platform_ioremap_resource() helper
> - s/deice/device
> - redesign: remove mipi/csi subdevice, sensors connect directly to the
> isp subdevice in the media topology now.
> - remove "saved_state" member from rkisp1_stream struct
> - Reverse the order of MIs
> - Simplify MI interrupt handling
> Rather than adding unnecessary indirection, just use stream index to
> handle MI interrupt enable/disable/clear, since the stream index matches
> the order of bits now, thanks to previous patch. While at it, remove
> some dead code.
> - code styling and checkpatch fixes
> - update document with new design and tested example
> - updated doc with new design and tested example
> - add phy properties
> - add ports
> - add phy-cells
> 
> Helen Koike (1):
>   MAINTAINERS: add entry for Rockchip ISP1 driver
> 
> Jacob Chen (9):
>   media: doc: add document for rkisp1 meta buffer format
>   media: rkisp1: add Rockchip MIPI Synopsys DPHY driver
>   media: rkisp1: add Rockchip ISP1 subdev driver
>   media: rkisp1: add ISP1 statistics driver
>   media: rkisp1: add ISP1 params driver
>   media: rkisp1: add capture device driver
>   media: rkisp1: add rockchip isp1 core driver
>   dt-bindings: Document the Rockchip ISP1 bindings
>   dt-bindings: Document the Rockchip MIPI RX D-PHY bindings
> 
> Jeffy Chen (1):
>   media: rkisp1: Add user space ABI definitions
> 
> Shunqian Zheng (3):
>   media: videodev2.h, v4l2-ioctl: add rkisp1 meta buffer format
>   arm64: dts: rockchip: add isp0 node for rk3399
>   arm64: dts: rockchip: add rx0 mipi-phy for rk3399
> 
>  .../bindings/media/rockchip-isp1.txt          |   71 +
>  .../bindings/media/rockchip-mipi-dphy.txt     |   38 +
>  Documentation/media/uapi/v4l/meta-formats.rst |    2 +
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
>  MAINTAINERS                                   |    8 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   36 +
>  drivers/media/platform/Kconfig                |   12 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/rockchip/isp1/Makefile |    7 +
>  .../media/platform/rockchip/isp1/capture.c    | 1754 +++++++++++++++++
>  .../media/platform/rockchip/isp1/capture.h    |  164 ++
>  drivers/media/platform/rockchip/isp1/common.h |  101 +
>  drivers/media/platform/rockchip/isp1/dev.c    |  675 +++++++
>  drivers/media/platform/rockchip/isp1/dev.h    |   97 +
>  .../media/platform/rockchip/isp1/isp_params.c | 1604 +++++++++++++++
>  .../media/platform/rockchip/isp1/isp_params.h |   50 +
>  .../media/platform/rockchip/isp1/isp_stats.c  |  508 +++++
>  .../media/platform/rockchip/isp1/isp_stats.h  |   60 +
>  drivers/media/platform/rockchip/isp1/regs.c   |  223 +++
>  drivers/media/platform/rockchip/isp1/regs.h   | 1525 ++++++++++++++
>  drivers/media/platform/rockchip/isp1/rkisp1.c | 1286 ++++++++++++
>  drivers/media/platform/rockchip/isp1/rkisp1.h |  111 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    2 +
>  drivers/phy/rockchip/Kconfig                  |    8 +
>  drivers/phy/rockchip/Makefile                 |    1 +
>  drivers/phy/rockchip/phy-rockchip-dphy.c      |  408 ++++
>  include/uapi/linux/rkisp1-config.h            |  816 ++++++++
>  include/uapi/linux/videodev2.h                |    4 +
>  29 files changed, 9617 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-isp1.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
>  create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
>  create mode 100644 drivers/media/platform/rockchip/isp1/Makefile
>  create mode 100644 drivers/media/platform/rockchip/isp1/capture.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/capture.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/common.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/dev.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/dev.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/isp_params.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/isp_params.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/isp_stats.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/isp_stats.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/regs.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/regs.h
>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.h
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-dphy.c
>  create mode 100644 include/uapi/linux/rkisp1-config.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
