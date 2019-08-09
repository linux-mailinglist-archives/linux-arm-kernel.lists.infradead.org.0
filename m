Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AFF882DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 20:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX7Dt8nMqlx+V3AOFcAoZvW4TkzFaw/1YTv59itlraQ=; b=hN7eW6lAIyM9Li
	frx+cBPa5ardCQ+yQ3ByIE/LaZmZO4RP1OGfSaAQGT4wF5swyjx3CSi3NCyKl9BUDxU4KpoYpeLA/
	UrVwPQiuCYGIZGDRo1sim4Ild3EFQYnFhSAFAeACYIuUbjOzMgTCPFEq79p3p+Cidv1HRj5ZKWpQS
	k5ZKZMLXvZEKKlx5tFTHrSP7arsWox0MphDUaiB7XKb7qVxO048sKKORpR0sNCSt7sDvcfWGmHzY5
	2ptDlD2lOg16QmcAdgl7ThRCmHCbnEk3C+JoQ75DYEWcDp+URGLysrD2onI0AVcGhAYQCs0XTb3MG
	LewwZ91RB/LhQg2Loh1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9u2-00042W-9U; Fri, 09 Aug 2019 18:46:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9to-00041M-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 18:46:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so45327174plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 11:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kA5LMiIp35kf1OvXboDks3RjTBrzmyys+m0gU3GXqkY=;
 b=totvYs6WJYnbIThPXIKEypX7mCUKzz85xs246Qyy6UXtgaVUmub9FQl8br2uKbfpFg
 7pZWXSDF7ZHNYbhmdZaOklLs4Okoq5X9BjvlNPdUYgSuFJOBTOW4oAtVt1XwZrpBn1ml
 mdJOGpAw7V6y5I9ta7dsFbWWAB0aQC0qEyauE+/jVdoyPdl+hfhv8QMq7ACaWI39hc9W
 SaHlJ+RXDa7BMM9ba8p1GYay1MVHF9L3SsPQeTRFRdGE0RUrN/9uj+XuHaxfZ7oDD8IS
 S2nWTpOipd7a4StfDh7np0KJjkZ3DDll8OYCnDjQX9N33li3sexl18rfRUOg7bNHod84
 PwtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kA5LMiIp35kf1OvXboDks3RjTBrzmyys+m0gU3GXqkY=;
 b=W/1Fy/sKw113WqZ8m9wn4lrf5WSvQ3NnkdahFfqzf1qbnERJY+WPDcSirYp9AFT9gP
 TUrOKhVt/cUesoLi5XC/mRmX29/gAW90fFza8a1Vjs4yyzVXjCScGCpvO7u6ar+x498t
 gr/rstTzmJCb3syqg5UP2B3jsdH0AB3O1CM1UrPLX+IhEVlAqnFL9ZKZtTzLVZXbUYiU
 Hc69A5x+86PD8OtFl16oRjDYZVdQWCylmBQwC+UTB4KgfEBlNxReAdr7GMPBF0UVBIR6
 CtlGlNOapFxv53oUh2Jbb+edeoKchNoHdjUyQOmG7zFUxW1b0Ng0OSVBk5KpaiwXpFak
 jv3A==
X-Gm-Message-State: APjAAAVMxv2OGJ8vRQWfq2VmJACmVgbF7e39B1tjBoEn1dkGLb/H2rwL
 CFhp62eMDn9cxB8svrtVfm1N
X-Google-Smtp-Source: APXvYqx8Xc1qNXI4kyu3+M5Sl/Db8l+iqg6Tbc4dM4Y8QzmZEndaSqDq3bql3F92nRtZlLFfP8a5ig==
X-Received: by 2002:a17:902:8203:: with SMTP id
 x3mr20514753pln.304.1565376359454; 
 Fri, 09 Aug 2019 11:45:59 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6092:4e27:d84b:95b4:a65a:8749])
 by smtp.gmail.com with ESMTPSA id w16sm121850348pfj.85.2019.08.09.11.45.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 11:45:58 -0700 (PDT)
Date: Sat, 10 Aug 2019 00:15:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 00/14] Rockchip ISP1 Driver
Message-ID: <20190809184546.GA29746@Mani-XPS-13-9360>
References: <20190730184256.30338-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-1-helen.koike@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_114601_001409_B12ACE77 
X-CRM114-Status: GOOD (  40.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

On Fri, Aug 09, 2019 at 03:40:02PM -0300, Helen Koike wrote:
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

I just tested this patchset on Rock960 but getting below error while
configuring media link:

root@linaro-alip:~# media-ctl -p /dev/media0 -v
Opening media device /dev/media0
Enumerating entities
looking up device: 81:4
looking up device: 81:0
looking up device: 81:1
looking up device: 81:2
looking up device: 81:3
looking up device: 81:5
Found 6 entities
Enumerating pads and links
*** Error in `media-ctl': munmap_chunk(): invalid pointer: 0x01ce44d0 ***
Aborted

Here is the change I did for Rock960:
https://pastebin.ubuntu.com/p/CmdcqJ7bsJ/

Did I miss anything?

Thanks,
Mani

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
> -- 
> 2.22.0
> 
> 
> -- 
> To unsubscribe, send mail to kernel-unsubscribe@lists.collabora.co.uk.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
