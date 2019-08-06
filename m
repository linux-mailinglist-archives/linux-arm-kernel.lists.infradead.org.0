Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB19383608
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aoman3HiWGVZnMUXRLlXqNspn+HJkMRs+vup9ajJnZ0=; b=pmmXoivuZeSGaz
	ZilAB+BwIrPSXNBZH0no1kXtlDhoy13B5rT5xGbBLU8qjpe9N9ysgj4v0YWbN84wr/ruChGmZRrWH
	+9RiO/sWCRYCLS13DOIssTjM8yzF+YpyIN1JfU5NeLmumgKG4z/+v3ABLItPbzhiYBBXn4BBaZ5jr
	fSJCiKRAvGDUZxoJBUj+b7zajKx3TD6kEw2xOyuq9G588dAGopx6c0BhYZOvv3LY6EArOT1aCdYcM
	UaiVZ4O9ewh8EBIFLtLvgQDYXhoBz2/6mzzniBpom0tJkUeoXnN+LdL1RnzaG3r2so6NZz3p/q8/W
	+YADCKVyfCf9Up+qFMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1qw-00056M-Ai; Tue, 06 Aug 2019 15:58:22 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1qX-0004fP-58
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565107070; bh=egi9N2aUooM4xwUVTszK4AAXbAsxiwPdWdYEVVzOEOI=;
 h=From:To:Cc:Subject:Date:From;
 b=aCCt7a2pvoFwXWCN66MQQOgGkcm/J7oKUz5yXo2HfSTQtY6eUud+ekspop8i5j/mt
 5pCqA4DzSnEgJIHXS0dzUKPFBN55dlGQenq80kIT2WXkuYa5Hhq2igDZdoMW1En1+m
 vnibEOmQNr8qOPqSGUXmtR7csd9kBdxtP0gCfii8=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: [PATCH v8 0/4] Add support for Orange Pi 3
Date: Tue,  6 Aug 2019 17:57:39 +0200
Message-Id: <20190806155744.10263-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085757_583482_4C6FEC5E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This series implements support for Xunlong Orange Pi 3 board. There
are only a few patches remaining.

- ethernet support - just a DT change (patch 1)
- HDMI support (patches 2-4)

For some people, ethernet doesn't work after reboot because u-boot doesn't
support AXP805 PMIC, and will not turn off the etherent PHY regulators.
So the regulator controlled by gpio will be shut down, but the other one
controlled by the AXP PMIC will not.

This is a problem only when running with a builtin driver. This needs
to be fixed in u-boot.


Please take a look.

thank you and regards,
  Ondrej Jirman

Changes in v8:
- added reviewed-by tags
- dropped already applied patches
- added more info about the phy initialization issue after reset

Changes in v7:
- dropped stored reference to connector_pdev as suggested by Jernej
- added forgotten dt-bindings reviewed-by tag

Changes in v6:
- added dt-bindings reviewed-by tag
- fix wording in stmmac commit (as suggested by Sergei)

Changes in v5:
- dropped already applied patches (pinctrl patches, mmc1 pinconf patch)
- rename GMAC-3V3 -> GMAC-3V to match the schematic (Jagan)
- changed hdmi-connector's ddc-supply property to ddc-en-gpios
  (Rob Herring)

Changes in v4:
- fix checkpatch warnings/style issues
- use enum in struct sunxi_desc_function for io_bias_cfg_variant
- collected acked-by's
- fix compile error in drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c:156
  caused by missing conversion from has_io_bias_cfg struct member
  (I've kept the acked-by, because it's a trivial change, but feel free
  to object.) (reported by Martin A. on github)
  I did not have A80 pinctrl enabled for some reason, so I did not catch
  this sooner.
- dropped brcm firmware patch (was already applied)
- dropped the wifi dts patch (will re-send after H6 RTC gets merged,
  along with bluetooth support, in a separate series)

Changes in v3:
- dropped already applied patches
- changed pinctrl I/O bias selection constants to enum and renamed
- added /omit-if-no-ref/ to mmc1_pins
- made mmc1_pins default pinconf for mmc1 in H6 dtsi
- move ddc-supply to HDMI connector node, updated patch descriptions,
  changed dt-bindings docs

Changes in v2:
- added dt-bindings documentation for the board's compatible string
  (suggested by Clement)
- addressed checkpatch warnings and code formatting issues (on Maxime's
  suggestions)
- stmmac: dropped useless parenthesis, reworded description of the patch
  (suggested by Sergei)
- drop useles dev_info() about the selected io bias voltage
- docummented io voltage bias selection variant macros
- wifi: marked WiFi DTS patch and realted mmc1_pins as "DO NOT MERGE",
  because wifi depends on H6 RTC support that's not merged yet (suggested
  by Clement)
- added missing signed-of-bys
- changed &usb2otg dr_mode to otg, and added a note about VBUS
- improved wording of HDMI driver's DDC power supply patch

Ondrej Jirman (4):
  arm64: dts: allwinner: orange-pi-3: Enable ethernet
  dt-bindings: display: hdmi-connector: Support DDC bus enable
  drm: sun4i: Add support for enabling DDC I2C bus to sun8i_dw_hdmi glue
  arm64: dts: allwinner: orange-pi-3: Enable HDMI output

 .../display/connector/hdmi-connector.txt      |  1 +
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 70 +++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c         | 54 ++++++++++++--
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h         |  2 +
 4 files changed, 123 insertions(+), 4 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
