Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A8BBAC0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 00:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eo6AaeKQLPsPFQkyCNMZH3M0ZQd2CGgPWXDCsnXMirY=; b=kT9py+rRzlBAYo
	FhpScIalZlk8GH6oNVfsN5cYfv0Y82ih+a8AwDMkadCwvSJD0QD+VkdIBZ5TnwpQGRnMiam5BrCpr
	RVZT+YI4omfUTymOfA2LF0z49O2DudZSK1vaYGjei91O+Ak3Ct0COEhEp57dBqzunXvbo/Or5jH3h
	uP0kIVxuY2KVit68R8RT0mEWzjEMec1Ilf0g6hmRAh1/yiDaxMglgNeCX0xP5Z9lZU1bO7e7Qtd6p
	h/qha0ZRLkubnQKUhShkTOw002gKncDeX7f7FH7GBYilZXDB/zFdxb8Zyh10TWljaq2ani9+TApVk
	mowzYKjWyc03sQcCtiYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCAjK-0004dl-Vh; Sun, 22 Sep 2019 22:53:23 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCAj8-0004cN-G1
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 22:53:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Sep 2019 15:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,538,1559545200"; d="scan'208";a="182339433"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 22 Sep 2019 15:52:59 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iCAix-0002dh-6t; Mon, 23 Sep 2019 06:52:59 +0800
Date: Mon, 23 Sep 2019 06:52:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v6 2/2] drm/bridge: Add NWL MIPI DSI host controller
 support
Message-ID: <201909230644.qfSKbNf9%lkp@intel.com>
References: <c0ac0b203fb65ae7efd1b9b54664b491ca2fb157.1569170717.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0ac0b203fb65ae7efd1b9b54664b491ca2fb157.1569170717.git.agx@sigxcpu.org>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_155310_577244_C37BE833 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Robert Chiras <robert.chiras@nxp.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, kbuild-all@01.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi "Guido,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.3 next-20190920]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Guido-G-nther/drm-bridge-Add-NWL-MIPI-DSI-host-controller-support/20190923-005010

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

smatch warnings:
drivers/gpu/drm/bridge/nwl-dsi.c:272 nwl_dsi_config_dpi() warn: unsigned 'color_format' is never less than zero.

vim +/color_format +272 drivers/gpu/drm/bridge/nwl-dsi.c

   245	
   246	static int nwl_dsi_config_dpi(struct nwl_dsi *dsi)
   247	{
   248		u32 color_format, mode;
   249		bool burst_mode;
   250		int hfront_porch, hback_porch, vfront_porch, vback_porch;
   251		int hsync_len, vsync_len;
   252	
   253		hfront_porch = dsi->mode.hsync_start - dsi->mode.hdisplay;
   254		hsync_len = dsi->mode.hsync_end - dsi->mode.hsync_start;
   255		hback_porch = dsi->mode.htotal - dsi->mode.hsync_end;
   256	
   257		vfront_porch = dsi->mode.vsync_start - dsi->mode.vdisplay;
   258		vsync_len = dsi->mode.vsync_end - dsi->mode.vsync_start;
   259		vback_porch = dsi->mode.vtotal - dsi->mode.vsync_end;
   260	
   261		DRM_DEV_DEBUG_DRIVER(dsi->dev, "hfront_porch = %d\n", hfront_porch);
   262		DRM_DEV_DEBUG_DRIVER(dsi->dev, "hback_porch = %d\n", hback_porch);
   263		DRM_DEV_DEBUG_DRIVER(dsi->dev, "hsync_len = %d\n", hsync_len);
   264		DRM_DEV_DEBUG_DRIVER(dsi->dev, "hdisplay = %d\n", dsi->mode.hdisplay);
   265		DRM_DEV_DEBUG_DRIVER(dsi->dev, "vfront_porch = %d\n", vfront_porch);
   266		DRM_DEV_DEBUG_DRIVER(dsi->dev, "vback_porch = %d\n", vback_porch);
   267		DRM_DEV_DEBUG_DRIVER(dsi->dev, "vsync_len = %d\n", vsync_len);
   268		DRM_DEV_DEBUG_DRIVER(dsi->dev, "vactive = %d\n", dsi->mode.vdisplay);
   269		DRM_DEV_DEBUG_DRIVER(dsi->dev, "clock = %d kHz\n", dsi->mode.clock);
   270	
   271		color_format = nwl_dsi_get_dpi_pixel_format(dsi->format);
 > 272		if (color_format < 0) {
   273			DRM_DEV_ERROR(dsi->dev, "Invalid color format 0x%x\n",
   274				      dsi->format);
   275			return color_format;
   276		}
   277		DRM_DEV_DEBUG_DRIVER(dsi->dev, "pixel fmt = %d\n", dsi->format);
   278	
   279		nwl_dsi_write(dsi, NWL_DSI_INTERFACE_COLOR_CODING, NWL_DSI_DPI_24_BIT);
   280		nwl_dsi_write(dsi, NWL_DSI_PIXEL_FORMAT, color_format);
   281		/*
   282		 * Adjusting input polarity based on the video mode results in
   283		 * a black screen so always pick active low:
   284		 */
   285		nwl_dsi_write(dsi, NWL_DSI_VSYNC_POLARITY,
   286			      NWL_DSI_VSYNC_POLARITY_ACTIVE_LOW);
   287		nwl_dsi_write(dsi, NWL_DSI_HSYNC_POLARITY,
   288			      NWL_DSI_HSYNC_POLARITY_ACTIVE_LOW);
   289	
   290		burst_mode = (dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_BURST) &&
   291			     !(dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE);
   292	
   293		if (burst_mode) {
   294			nwl_dsi_write(dsi, NWL_DSI_VIDEO_MODE, NWL_DSI_VM_BURST_MODE);
   295			nwl_dsi_write(dsi, NWL_DSI_PIXEL_FIFO_SEND_LEVEL, 256);
   296		} else {
   297			mode = ((dsi->dsi_mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) ?
   298					NWL_DSI_VM_BURST_MODE_WITH_SYNC_PULSES :
   299					NWL_DSI_VM_NON_BURST_MODE_WITH_SYNC_EVENTS);
   300			nwl_dsi_write(dsi, NWL_DSI_VIDEO_MODE, mode);
   301			nwl_dsi_write(dsi, NWL_DSI_PIXEL_FIFO_SEND_LEVEL,
   302				      dsi->mode.hdisplay);
   303		}
   304	
   305		nwl_dsi_write(dsi, NWL_DSI_HFP, hfront_porch);
   306		nwl_dsi_write(dsi, NWL_DSI_HBP, hback_porch);
   307		nwl_dsi_write(dsi, NWL_DSI_HSA, hsync_len);
   308	
   309		nwl_dsi_write(dsi, NWL_DSI_ENABLE_MULT_PKTS, 0x0);
   310		nwl_dsi_write(dsi, NWL_DSI_BLLP_MODE, 0x1);
   311		nwl_dsi_write(dsi, NWL_DSI_USE_NULL_PKT_BLLP, 0x0);
   312		nwl_dsi_write(dsi, NWL_DSI_VC, 0x0);
   313	
   314		nwl_dsi_write(dsi, NWL_DSI_PIXEL_PAYLOAD_SIZE, dsi->mode.hdisplay);
   315		nwl_dsi_write(dsi, NWL_DSI_VACTIVE, dsi->mode.vdisplay - 1);
   316		nwl_dsi_write(dsi, NWL_DSI_VBP, vback_porch);
   317		nwl_dsi_write(dsi, NWL_DSI_VFP, vfront_porch);
   318	
   319		return 0;
   320	}
   321	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
