Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA3BEDD58
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R0P1hJLDsbFSzgSOAnbKxMACIWIWtMHKFC3ryDRBYJ0=; b=e9n
	XShhp5LQdlyVJTLCqcO18QLLEmIh+Ifwb/SeB5hTHpseiiPH8R7MOEb3IqmnVA7aNe8i67U/wrU5y
	TpUaI2DytqVw8UgFk12vRIDyXt9syhteUz2fLFSvn9DZxANcaZTwOIX633o49HTWvPBRxGdotByz0
	VMgZ1lnKsae83D4mUmAN54L9agfLb5rpOzI8j/8HBM6OtZVqffOF4rcHLdvzqlImWqltw3u06QDRA
	duiWY3U13uZZpFockoOPX/yjX5Nakil+2C0Lki9GCiuqoKbwxwAOkZYhnjMK5NPuB6GqYIqVpGDt9
	kuZ6uSrCDQVldmppLp7emwZiQu9W4yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRa9f-0000NO-3j; Mon, 04 Nov 2019 11:04:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRa9X-0000MO-UQ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 11:04:09 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id F319F68BE1; Mon,  4 Nov 2019 12:04:00 +0100 (CET)
From: Torsten Duwe <duwe@lst.de>
Date: Mon, 4 Nov 2019 11:34:23 +0100
Subject: [PATCH v5 0/7] Add anx6345 DP/eDP bridge for Olimex Teres-I
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Message-Id: <20191104110400.F319F68BE1@verein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_030408_281643_97662636 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


ANX6345 LVTTL->eDP video bridge, driver with device tree bindings.

Changes since v4:

* enforce DT ports to be nodes and forbid additionalProperties.

Changes since v3:

* converted binding schema file to json-schema ("YAML")
  It now validates (itself and the dts) like a charm ;-)
  Input port0 is mandatory, output port1 is optional.

* Enric Balletbo i Serra waived analogix-anx6345 module ownership to icenowy
  <CAFqH_50s0J_NEevV9b5o-wq-bw+xGaUZ3WyhVDRZKyM2Yn-iVg@mail.gmail.com>
  Since they both agree, I won't interfere.

Changes from v2:

* use SPDX-IDs throughout

* removed the panel output again, as it was not what Maxime had in mind.
  At least the Teres-I does very well without.

* binding clarifications and cosmetic changes as suggested by Andrzej

Changes from v1:

* fixed up copyright information. Most code changes are only moves and thus
  retain copyright and module ownership. Even the new analogix-anx6345.c originates
  from the old 1495-line analogix-anx78xx.c, with 306 insertions and 987 deletions
  (ignoring the trivial anx78xx -> anx6345 replacements) 306 new vs. 508 old...

* fixed all minor formatting issues brought up

* merged previously separate new analogix_dp_i2c module into existing analogix_dp

* split additional defines into a preparatory patch

* renamed the factored-out common functions anx_aux_* -> anx_dp_aux_*, because
  anx_...aux_transfer was exported globally. Besides, it is now GPL-only exported.

* moved chip ID read into a separate function.

* keep the chip powered after a successful probe.
  (There's a good chance that this is the only display during boot!)

* updated the binding document: LVTTL input is now required, only the output side
  description is optional.

 Laurent: I have also looked into the drm_panel_bridge infrastructure,
 but it's not that trivial to convert these drivers to it.

Changes from the respective previous versions:

* the reset polarity is corrected in DT and the driver;
  things should be clearer now.

* as requested, add a panel (the known innolux,n116bge) and connect
  the ports.

* renamed dvdd?? to *-supply to match the established scheme

* trivial update to the #include list, to make it compile in 5.2

Icenowy Zheng (4):
  drm/bridge: move ANA78xx driver to analogix subdirectory
  drm/bridge: split some definitions of ANX78xx to dedicated headers
  drm/bridge: extract some Analogix I2C DP common code
  drm/bridge: Add Analogix anx6345 support

Torsten Duwe (3):
  drm/bridge: Prepare Analogix anx6345 support
  dt-bindings: Add ANX6345 DP/eDP transmitter binding
  arm64: dts: allwinner: a64: enable ANX6345 bridge on Teres-I

 .../bindings/display/bridge/anx6345.yaml           |  92 +++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts      |  45 +-
 drivers/gpu/drm/bridge/Kconfig                     |  10 -
 drivers/gpu/drm/bridge/Makefile                    |   4 +-
 drivers/gpu/drm/bridge/analogix-anx78xx.h          | 710 ------------------
 drivers/gpu/drm/bridge/analogix/Kconfig            |  22 +
 drivers/gpu/drm/bridge/analogix/Makefile           |   4 +-
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 793 +++++++++++++++++++++
 .../drm/bridge/{ => analogix}/analogix-anx78xx.c   | 146 +---
 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h | 255 +++++++
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    | 165 +++++
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    | 258 +++++++
 .../drm/bridge/analogix/analogix-i2c-txcommon.h    | 236 ++++++
 13 files changed, 1868 insertions(+), 872 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml
 delete mode 100644 drivers/gpu/drm/bridge/analogix-anx78xx.h
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
 rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c (90%)
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
