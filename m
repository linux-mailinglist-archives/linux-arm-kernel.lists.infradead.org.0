Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F644DC9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VUw3qUnuTRRQNDLW4aTuvOHzA5dUKBihC8wTlpxvKUE=; b=TapUCBkuW3gF1G
	4KWWJv1Qrk8kbZ19HI6QbV/XdPoHrH9+yiVU6pnDlknr1cLmjOvPkmKt+cqD1MT8Iw+CPyU7Wv1Io
	t7nvAhY1L5U1lRlBwAE0GQaq1T7MU2xDD88YkkHpCAvpK/HMyInQ1PlZPVz1qdJguXuEgrH18gtTx
	E4wdwGsQ5BEluoO8Vrt8o5ClDC+uaDx3qxO77JyLURy++Bex8I9gjCz1+n05cpbkkT/vkTKLQG4jR
	Kgsr+EW5n+6WBWy0b0E6itw0s9VTF7AGVbSAepMNK4obPlpJO6qT07XOH2Ts3mmYENnnJZdQ+9QeS
	iiheenXbvpKVQgB+FM9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4iU-0002MD-SS; Thu, 20 Jun 2019 21:35:35 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4iH-0002LT-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:35:24 +0000
Received: by mail-pg1-x52e.google.com with SMTP id w10so2240638pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=a2BZkvHQp1ZvdJAw0F3bOJoHRSpekQtwltTEvb01O+Y=;
 b=ENP7Mcb0dBuRhR9PI9M+fX+reRGshwLHGhoGUX6bWVBL03L5vwXDsmijG16ZVG0rOu
 pQLqzGtmHPJkKtpAQ92pc2FPccpWhwa2PIQjkHUqSzRJNA3oqKYFZJa9Zb2d2+TcARYA
 zXg6ztJayB7oxBO/TqPoIbnbTJSEN/BybWpsZ0sh720vnZPb+SlBsUmZx0Ea7ddbTC9X
 Sj4uWnTtuzwgojg80DB0589dxz5FA+HATQ806F4IpLR+Pt2KwLmFoyp1phfNabGsi02q
 rC6FQ7IbSjN5Zog0RqM8AUrjadD/xH2kczKimtKHAPLD1xZQNak0Mvw+IvSmpVg3+dcs
 CHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=a2BZkvHQp1ZvdJAw0F3bOJoHRSpekQtwltTEvb01O+Y=;
 b=Or/iWGy9v2D3yUV+2kozKkzYnLG7tBDhMRzz72RpyK6W9VEL/sMGw2M/1ml65OXjNx
 55cl8LALIenmxBYFCNuWnPoDAAmtElh78FfgQtnwUJaNR0YCzsJcw58KLlsB+wpQZHJ0
 enhKcbQHqSe4LIR1DuHwFZ6EWI/qyTHHDd3y2GTHJ4pMsteXCsERgeC9qJZ4yfN+hc2K
 K8+N1dxfCKal2SxXWLywUygjPDtg23Ane2SUaPMA/q2gvLBB2rhiTwpuNekGlxB9fLaC
 FBa9eZQCwCQ3Z2AsJXQEvwGn9Wn/xEdFH1ygz39N9uZHINzm+XA6i8xdfNCYn0Q2pheV
 fekA==
X-Gm-Message-State: APjAAAU7ldU2g6Qzo+dQ42kDbZOPquwSyZEwM3572wncpoLqW/Y/qCIT
 wjwZ+MOmkPc1H//96oDK81ONjXOvWdtylw==
X-Google-Smtp-Source: APXvYqzIAw1TwpOqfr3Za5UTiPoBH1m0Nx/O8eZyJdcbHntYM1rV0OVvwJ9/ETJgwzRkG3JmSMKd4w==
X-Received: by 2002:a17:90a:b30a:: with SMTP id
 d10mr1866994pjr.8.1561066517973; 
 Thu, 20 Jun 2019 14:35:17 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id w187sm444415pfb.4.2019.06.20.14.35.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 14:35:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.3
Date: Thu, 20 Jun 2019 14:35:16 -0700
Message-ID: <7h1rzoey97.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143522_012984_FFB40746 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

A relatively large set of DT changes this time around, primarily due to
the addition of a new SoC family (G12B) and a bunch of new peripheral
support for a recently added SoC family (G12A).  The new SoC and new
board are highlighted in the tag description as well.

There are a couple of merges from other trees included here.  One from
the clock tree to fix a binding name, and another from the ASoC tree for
a new binding, used in the newly added audio support for G12A SoCs.

Kevin

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64

for you to fetch changes up to 50b617a61874a136d9c4fd75e9cccc7e2f9a03c8:

  arm64: dts: meson: g12a: x96-max: add the Ethernet PHY interrupt line (2019-06-19 20:37:04 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.3

Highlights:
- new SoC: S922X (G12B family, A73/A53 big.LITTLE)
- new board: Hardkernel odroid-N2 (SoC: G12B S922X)
- add/use ethernet PHY interrupt/reset lines
- G12A: add/enable audio, PWM, IR, i2c, SD/eMMC, WiFi, bluetooth, network
- gxbb-vega-s95 board: fix WiFi/BT, enable more peripherals

----------------------------------------------------------------
Christian Hewitt (4):
      arm64: dts: meson-gxm-khadas-vim2: fix gpio-keys-polled node
      arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth support
      arm64: dts: meson-gxbb-wetek: enable SARADC
      arm64: dts: meson-gxbb-wetek: enable bluetooth

Guillaume La Roque (2):
      arm64: dts: meson: g12a: add i2c nodes
      arm64: dts: meson-g12a-x96-max: add support for sdcard and emmc

Jerome Brunet (37):
      clk: meson: fix MPLL 50M binding id typo
      arm64: dts: meson: libretech-cc: set eMMC as removable
      arm64: dts: meson: libretech-cc: switch eMMC to 1.8v
      arm64: dts: meson: fix mmc pin bias
      arm64: dts: meson: fix mmc v2 chips max frequencies
      arm64: dts: meson: vim2: add missing clk-gate pinctrl
      arm64: dts: meson: vim2: remove sd hs and hs400 modes from emmc
      arm64: dts: meson: sei510: consistently order nodes
      arm64: dts: meson: u200: consistently order nodes
      arm64: dts: meson: nanopi k2: add sd DDR50
      arm64: dts: meson: odroid-c2: add missing mmc modes
      arm64: dts: meson: g12a: add mmc nodes
      arm64: dts: meson: u200: add sd and emmc
      arm64: dts: meson: sei510: add sd and emmc
      arm64: dts: meson: g12a: set uart_ao clocks
      arm64: dts: meson: u200: enable i2c busses
      arm64: dts: meson: sei510: enable i2c3
      arm64: dts: meson: g12a: add audio clock controller
      arm64: dts: meson: g12a: add audio memory arbitrer
      arm64: dts: meson: g12a: add audio fifos
      arm64: dts: meson: g12a: add tdm
      arm64: dts: meson: g12a: add spdifouts
      arm64: dts: meson: g12a: add pdm
      arm64: dts: meson: g12a: add spdifin
      arm64: dts: meson: g12a: enable hdmi_tx sound dai provider
      arm64: dts: meson: sei510: add bluetooth supplies
      arm64: dts: meson: g12a: add tohdmitx
      arm64: dts: meson: g12a: add ethernet mac controller
      arm64: dts: meson: g12a: add ethernet pinctrl definitions
      arm64: dts: meson: g12a: add mdio multiplexer
      arm64: dts: meson: u200: add internal network
      arm64: dts: meson: sei510: add network support
      arm64: dts: meson: add dwmac-3.70a to ethmac compatible list
      arm64: dts: meson: g12a: add SDIO controller
      ASoC: meson: add tohdmitx DT bindings
      arm64: dts: meson: sei510: add sound card
      arm64: dts: meson: g12a: sort sdio nodes correctly

Kevin Hilman (2):
      Merge tag 'clk-meson-5.2-1-fixes' of https://github.com/BayLibre/clk-meson into v5.3/dt64
      Merge tag 'asoc-tohdmitx' of https://git.kernel.org/.../broonie/sound into HEAD

Martin Blumenstingl (8):
      clk: meson: meson8b: fix a typo in the VPU parent names array variable
      arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB compatible strings
      arm64: dts: meson: g12a: add the GPIO interrupt controller
      arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY reset line
      arm64: dts: meson: use the generic Ethernet PHY reset GPIO bindings
      arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY reset line
      arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY interrupt line
      arm64: dts: meson: g12a: x96-max: add the Ethernet PHY interrupt line

Maxime Jourdan (1):
      arm64: dts: meson: sei510: add max98357a DAC

Neil Armstrong (25):
      arm64: dts: meson-g12a: Add PWM nodes
      arm64: dts: meson-g12a: Add IR nodes
      arm64: dts: meson-g12a-x96-max: enable IR decoder
      arm64: dts: meson-g12a-u200: enable IR decoder
      arm64: dts: meson: g12a: add drive-strength hdmi ddc pins
      arm64: dts: meson: g12a: add drive strength for eth pins
      arm64: dts: meson: g12a: Add hwrng node
      arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet Support
      arm64: dts: meson-gxbb-vega-s95: fix regulators
      arm64: dts: meson-gxbb-vega-s95: add HDMI nodes
      arm64: dts: meson-gxbb-vega-s95: enable CEC
      arm64: dts: meson-gxbb-vega-s95: enable SARADC
      arm64: dts: meson-gxbb-vega-s95: fix WiFi/BT module support
      arm64: dts: meson-gxbb-vega-s95: add ethernet PHY interrupt
      dt-bindings: arm: amlogic: add G12B bindings
      dt-bindings: arm: amlogic: add Odroid-N2 binding
      arm64: dts: meson: Add minimal support for Odroid-N2
      arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO Module
      arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module
      arm64: dts: meson-g12a-sei510: add 32k clock to bluetooth node
      arm64: dts: meson-g12a-x96-max: add 32k clock to bluetooth node
      arm64: dts: meson-g12a-sei510: bump bluetooth bus speed to 2Mbaud/s
      arm64: dts: meson-g12a-x96-max: bump bluetooth bus speed to 2Mbaud/s
      arm64: dts: meson-g12b-odroid-n2: add sound card
      arm64: dts: meson-g12a-x96-max: add sound card

Rob Herring (2):
      dt-bindings: arm: amlogic: Move 'amlogic, meson-gx-ao-secure' binding to its own file
      dt-bindings: arm: Convert Amlogic board/soc bindings to json-schema

 Documentation/devicetree/bindings/arm/amlogic.txt                            |  142 ------------
 Documentation/devicetree/bindings/arm/amlogic.yaml                           |  144 ++++++++++++
 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt |   28 +++
 Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt            |   55 +++++
 arch/arm64/boot/dts/amlogic/Makefile                                         |    1 +
 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts                               |    4 +-
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                                   |   35 ++-
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts                            |  401 ++++++++++++++++++++++++++++----
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts                              |  122 ++++++++--
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts                           |  257 ++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi                                  | 1825 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts                         |  386 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi                                  |   82 +++++++
 arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi                          |    4 +-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                                    |    4 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts                         |   15 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts                       |   10 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts                          |   15 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts                              |    9 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi                             |    2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi                         |  106 +++++++--
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi                            |   37 ++-
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi                                  |   35 ++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts                         |    2 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts                         |   13 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts                 |   14 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts                  |    2 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi                        |    4 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi                                   |   35 ++-
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts                        |   38 +--
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts                          |   12 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts                               |   13 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts                           |   14 +-
 drivers/clk/meson/g12a.c                                                     |    4 +-
 drivers/clk/meson/g12a.h                                                     |    2 +-
 drivers/clk/meson/meson8b.c                                                  |   10 +-
 include/dt-bindings/clock/g12a-clkc.h                                        |    2 +-
 include/dt-bindings/sound/meson-g12a-tohdmitx.h                              |   13 ++
 38 files changed, 3534 insertions(+), 363 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
 create mode 100644 include/dt-bindings/sound/meson-g12a-tohdmitx.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
