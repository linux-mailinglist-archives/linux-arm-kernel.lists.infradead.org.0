Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387A611F973
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KRNc3TKVRQgIlYt4gzCqhHndR4aGvhgCZiNz0O474d8=; b=AmM4IK9L84XlbY
	/zHbIeblXdgoGUU+DUxSMMT0w1p+1HWWSYqdPV/jm2AA2j+Vjna91C9Rz7Ay/dnTvoG9vONvSAC69
	k8gdqebP/a8aURvTu38XAXXaCBrIzX28ra0N9lbvqZviKl+SQefLVsTecAohXMAn5mvh++JcbEzne
	NQRMM22W5lHyZj3XVkkDMaze8Ijp0NmFy/5KtA4XyM66i8hbvPAzVauiUvKInh2sdMlJcxJUz99aP
	bHZLFabuPSys0ZXcT+tCbj3y+8L9UMtQKURHPdjvzxQ3xnf7pTcGKpIl0tUNcWq0cbewiCI4v/Dhe
	4EAWRZhb+6wUUWVa6BlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXGK-0007x9-NU; Sun, 15 Dec 2019 17:00:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF0-0005kN-7j
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 757FD2465E;
 Sun, 15 Dec 2019 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429169;
 bh=Gd00U8yFwwl+S6X9g/gX+uSdH0+/+1ri3WTiVTHeXXs=;
 h=From:To:Cc:Subject:Date:From;
 b=A2ZXDhDk9koYFIl88D6Mf/4V2RRFy/5q2UI+sO847d65qk70b5J6uA+RnF1nyviow
 aQoCzGBqfD3q5AxcDjueSTEOK4TCJGk49FCtiCx9ABY1ykYfLduCqOqr9b9YSD9fxY
 Lb0JyooRRdJ2d2U+E+agKEk4x55CibCkZsvsH/mE=
Received: by wens.tw (Postfix, from userid 1000)
 id 12FD95FC87; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 00/14] media: sun4i-csi: A10/A20 CSI1 and R40 CSI0 support
Date: Mon, 16 Dec 2019 00:59:10 +0800
Message-Id: <20191215165924.28314-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085934_331729_DCF3409F 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

This series adds basic support for CSI1 on Allwinner A10/A20 and CSI0 on
Allwinner R40. The CSI1 block has the same structure and layout as the
CSI0 block. Differences include:

  - Only one channel in BT.656 instead of four in CSI0
  - 10-bit raw data input vs 8-bit in CSI0
  - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
  - No ISP hardware (CSI SCLK not needed)

The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
in the A20. The register maps line up, and they support the same
features. The R40 appears to support BT.1120 based on the feature
overview, but it is not mentioned anywhere else. Also like the A20, the
ISP is not mentioned, but the CSI special clock needs to be enabled for
the hardware to function. The manual does state that the CSI special
clock is the TOP clock for all CSI hardware, but currently no hardware
exists for us to test if CSI1 also depends on it or not.

Included are a couple of fixes for signal polarity and DRAM offset
handling.

Patches 1 and 2 add compatible strings for the newly supported hardware.

Patches 3 and 4 fix the polarity setting of [HV]sync and data sampling.
Allwinner hardware uses [HV]ref semantics instead of [HV]sync.

Patch 5 deals with the DRAM offset when the CSI hardware does DMA. The
hardware does DMA directly to the memory bus, thus requiring the address
to not be offset like when DMA is done over the system bus.

Patch 6 add support for the CSI1 hardware block. For now this simply
means not requiring the ISP clock.

Patches 7 and 8 add CSI1 to A10 (sun4i) and A20 (sun7i) dtsi files.

Patch 9 adds I2C pixmuxing options for the R40. Used in the last example
patch.

Patch 10 adds a compatible string for the R40's MBUS (memory bus).

Patch 11 adds CSI0 to the R40 dtsi file

Patches 12 through 14 are examples of cameras hooked up to boards.

Please have a look. The MBUS compatible patch is likely to conflict
with a DT binding conversion patch Maxime sent out.

Also, I sent out an email asking about the polarity settings for
[HV]sync, how to signal the use of [HV]ref instead, and how to pass
timings from the camera to the capture interface. So far I haven't
heard back. In particular I think the OV7670 driver has inverted
polarity settings for HSYNC. Not sure about VSYNC.


Regards
ChenYu


Chen-Yu Tsai (14):
  dt-bindings: media: sun4i-csi: Add compatible for CSI1 on A10/A20
  dt-bindings: media: sun4i-csi: Add compatible for CSI0 on R40
  media: sun4i-csi: Fix data sampling polarity handling
  media: sun4i-csi: Fix [HV]sync polarity handling
  media: sun4i-csi: Deal with DRAM offset
  media: sun4i-csi: Add support for A10 CSI1 camera sensor interface
  ARM: dts: sun4i: Add CSI1 controller and pinmux options
  ARM: dts: sun7i: Add CSI1 controller and pinmux options
  ARM: dts: sun8i: r40: Add I2C pinmux options
  dt-bindings: bus: sunxi: Add R40 MBUS compatible
  ARM: dts: sun8i: r40: Add device node for CSI0
  [DO NOT MERGE] ARM: dts: sun4i: cubieboard: Enable OV7670 camera on
    CSI1
  [DO NOT MERGE] ARM: dts: sun7i: cubieboard2: Enable OV7670 camera on
    CSI1
  [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable OV5640
    camera

 .../bindings/arm/sunxi/sunxi-mbus.txt         |  1 +
 .../media/allwinner,sun4i-a10-csi.yaml        | 14 +++-
 arch/arm/boot/dts/sun4i-a10-cubieboard.dts    | 42 ++++++++++++
 arch/arm/boot/dts/sun4i-a10.dtsi              | 35 ++++++++++
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts   | 42 ++++++++++++
 arch/arm/boot/dts/sun7i-a20.dtsi              | 36 ++++++++++
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 67 +++++++++++++++++++
 arch/arm/boot/dts/sun8i-r40.dtsi              | 64 ++++++++++++++++++
 .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 57 ++++++++++++++--
 .../platform/sunxi/sun4i-csi/sun4i_csi.h      |  6 +-
 .../platform/sunxi/sun4i-csi/sun4i_dma.c      | 20 ++++--
 11 files changed, 370 insertions(+), 14 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
