Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEF68E226
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=slb4Rvm+sba5n+u7IaeBNe+XSOEX5Y9qXgcEF8tULCM=; b=DY40Kwyef2d/68
	yQ9hqSXai9oI9czrZc6IyhD/ZkJIzigzQrVFCtB1aL8/l2GJjlwgMOsdTTFQCY3dXmNvAFkz+7A8a
	U91XeglgxYs0O9USCUO4BgNbtZDtdyneWUJ2x9kkUQVs/rOi9dyNVF29mCIBNOSewrFPMgbXugTXw
	XVM5PFCNg0QFC36V1nkAbEDC3uGfVQ1MZ/sz6oZYXnELxTWnThZ+2erlwLyawv0etilLUzUibzOee
	33rcJ8cPknZZD/FXVFh0oJirrcFhTU43jLoJB+xaouEcP6SDYJDBg77/WfL792iCAv5sDIa7x0irR
	Xb+rIrRoU1L1sZPv/h+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3yf-0006Xu-U1; Thu, 15 Aug 2019 00:50:54 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x4-0004Zw-5C
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:17 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 351503E95F;
 Thu, 15 Aug 2019 00:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830151;
 bh=PCy1j7MQudvJstVSVlYc4cRcJStkAE4OqJRndsZJOI0=;
 h=From:To:Cc:Subject:Date:From;
 b=q+P4dvnY8kCbSHP6/cQeJNcM49HQS1+tGPc+xTcR+NwY72Dg4KvVyK6FG5xTEo6OD
 Y0IU/xMhrkp5ILcJF73dQBeXzhK6vqkhotTJU3BhwoVHVXfT7SDH+vnJ/YUcDoyfct
 XVblgW3CGsQv/S/J6MMGbtBm1olh/8loyiE9N9b0=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 00/11] ARM: dts: qcom: msm8974: add support for external
 display
Date: Wed, 14 Aug 2019 20:48:43 -0400
Message-Id: <20190815004854.19860-1-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174914_274975_A74FFEB9 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series begins to add support for the external display over
HDMI that is supported on msm8974 SoCs. I'm testing this series on the
Nexus 5, and I'm able to communicate with the HDMI bridge via the
analogix-anx78xx driver, however the external display is not working
yet.

When I plug in the HDMI cable, the monitor detects that a device is
hooked up, but nothing is shown on the external monitor. The hot plug
detect GPIO (hpd-gpios) on the analogix-anx78xx bridge and MSM HDMI
drivers do not change state when the slimport adapter or HDMI cable is
plugged in or removed. I wonder if a regulator is not enabled somewhere?
I have a comment in patch 10 regarding 'hpd-gdsc-supply' that may
potentially be an issue.

I'm still digging in on this, however I'd appreciate any feedback if
anyone has time. Most of these patches are ready now, so I marked the
ones that aren't ready with 'PATCH RFC'.

I'm using an Analogix Semiconductor SP6001 SlimPort Micro-USB to 4K HDMI
Adapter to connect my phone to an external display via a standard HDMI
cable. This works just fine with the downstream MSM kernel using
Android.

Brian Masney (11):
  dt-bindings: drm/bridge: analogix-anx78xx: add new variants
  drm/bridge: analogix-anx78xx: add new variants
  drm/bridge: analogix-anx78xx: silence -EPROBE_DEFER warnings
  drm/bridge: analogix-anx78xx: convert to i2c_new_dummy_device
  drm/bridge: analogix-anx78xx: correct value of TX_P0
  drm/bridge: analogix-anx78xx: add support for avdd33 regulator
  ARM: qcom_defconfig: add CONFIG_DRM_ANALOGIX_ANX78XX
  drm/msm/hdmi: silence -EPROBE_DEFER warning
  ARM: dts: qcom: pm8941: add 5vs2 regulator node
  ARM: dts: qcom: msm8974: add HDMI nodes
  ARM: dts: qcom: msm8974-hammerhead: add support for external display

 .../bindings/display/bridge/anx7814.txt       |   6 +-
 .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 140 ++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8974.dtsi           |  80 ++++++++++
 arch/arm/boot/dts/qcom-pm8941.dtsi            |  10 ++
 arch/arm/configs/qcom_defconfig               |   1 +
 drivers/gpu/drm/bridge/analogix-anx78xx.c     |  60 +++++++-
 drivers/gpu/drm/bridge/analogix-anx78xx.h     |   2 +-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c           |   8 +-
 8 files changed, 295 insertions(+), 12 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
