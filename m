Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56F64CF87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXL0gXk/sHalqUh3Lr9TbowMA7RC0oZqY4eRe+l/hxw=; b=nOEW8pP7zDxxkp
	VUdrd2vz+qsQ+RvUjmPl1dvTZaQGD2VbP8GLexHkFX5Hc6hY4vhO/LcCru7UyGKggjCOSvqrhEEWB
	8AVX2LEU/uH/VBE2NR/V29QLwg07lkJVxdc6t6hQTvtNtT2kx14BinRfrP0fyeftyXM5Qg/w8CsDh
	v4SgRrOM9AlnLtbMiDIwY+mGjwplu1PZPeApSpbWuDFSAGP6zTbx29PSucLZUgIe56zUoXaecA8CQ
	73dzvxLfjusJkzaTvcLQpB0BEKxMykmQNAb0WMb6FeYHoLrfSyp6iwI8Ie5GAyJKtx/cOIpqA9fuT
	8lgP4R6d03xue7sjljHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxRf-00036f-Qe; Thu, 20 Jun 2019 13:49:43 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxPw-0001m7-6O
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:47:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561038471; bh=EtxBSRR4SpnZbnkKuYOnn0iuta6FqDZ+zK2kZr5kejg=;
 h=From:To:Cc:Subject:Date:From;
 b=ckh/EsuH/Dff/Yy+mbHihrInZ6GTZhgcUd7uRM8A84U3v10l+iavQuIZJl3zN8vet
 Ky8x1QlNp3WkmgTTztO+7jm0lD1+d6ArTPoZzjauaYCjEyl/RIW4NKLRTP9CuDcAio
 0YzHHuLwcPEcz2q2h2/j4xOEAZmQq3jnHefTrzBc=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: [PATCH v7 0/6] Add support for Orange Pi 3
Date: Thu, 20 Jun 2019 15:47:42 +0200
Message-Id: <20190620134748.17866-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064756_605354_73168AE1 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This series implements support for Xunlong Orange Pi 3 board.

- ethernet support (patches 1-3)
- HDMI support (patches 4-6)

For some people, ethernet doesn't work after reboot (but works on cold
boot), when the stmmac driver is built into the kernel. It works when
the driver is built as a module. It's either some timing issue, or power
supply issue or a combination of both. Module build induces a power
cycling of the phy.

I encourage people with this issue, to build the driver into the kernel,
and try to alter the reset timings for the phy in DTS or
startup-delay-us and report the findings.


Please take a look.

thank you and regards,
  Ondrej Jirman


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

Icenowy Zheng (2):
  net: stmmac: sun8i: add support for Allwinner H6 EMAC
  net: stmmac: sun8i: force select external PHY when no internal one

Ondrej Jirman (4):
  arm64: dts: allwinner: orange-pi-3: Enable ethernet
  dt-bindings: display: hdmi-connector: Support DDC bus enable
  drm: sun4i: Add support for enabling DDC I2C bus to sun8i_dw_hdmi glue
  arm64: dts: allwinner: orange-pi-3: Enable HDMI output

 .../display/connector/hdmi-connector.txt      |  1 +
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 70 +++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c         | 54 ++++++++++++--
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h         |  2 +
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 21 ++++++
 5 files changed, 144 insertions(+), 4 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
