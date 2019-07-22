Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E586F939
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r8nC44mpN+xO1vd5rPLzTuxZdmRE1M5fp4IudpfmKb4=; b=gn+
	iacxGVLvgQnAm+adeNcx3EbKzqcKz9dPnSxIRm+6CAGhYO+2jKV4U0TIPA/vJV6nkjeGt6J6j/HTJ
	u3ndFrqPk6kJ35shK0wAURObSDxr6R15/ZSFTcqYxdzQyAjNTBC7qb66Toe2OSgDYHXTqMMqOICo4
	iS4aFrefy3fIQIcVuRSHd1h+3KQ0j53OVap9BBlbGQfs68Tly80/ZkFTCiIsPr/spa7jv981FW/Kw
	ye6ECLh1CaafmiXiRgAnErj7bH8y6QYb37JkTGEzr8HvrhiUV+o8wRYNtoRJkOSLDIYM+mHPqfrvJ
	EUCsezwcCbgfB1r8Pa4uhTJAMEHEbMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRLx-0007oW-Ll; Mon, 22 Jul 2019 05:59:17 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIy-0005U7-UD; Mon, 22 Jul 2019 05:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774934;
 bh=nTl109vyOUBR2zyRol9VTmFHR6gjS2AXS/Pgcx0bQTY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=jfvqjgCISbf+Pa+4ERn3aG+TLMc5aEPOQ3Ya5vwgAUfV7o7TGBrneL2PgT5gWeXWD
 AbfRMW8zQMEfxM7un7lZWl84atKOgysssowkyeqkxsL7PSHciqe1hMZ31lhVQvXhDb
 pa0BQJLf0Vfhm/GWwfwPPoLknl0SY2ZHIi7W6K3E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lurin-1iXGMB16Fl-01063s; Mon, 22
 Jul 2019 07:55:34 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
Date: Mon, 22 Jul 2019 07:54:31 +0200
Message-Id: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:nFbHXC3fhyDvHOK156rPlI/cNhYflJ/Mq9kOF5ukfMQHr/MP8Xg
 /WzrjIdPAsrrY1Krk7yAn2KGUOz+yI+aZNDXc72ZqDctEvoZInuoZLO1+9a6kam6ycWKLBy
 a16E4sUXp+tq1kW9tlRHjN4oCeX+BJqhNuCOfHRYFDIgTeg1pZbx9OLN0LsHARTIRA8k3sb
 i0Ns448tqkluxVdwyDcDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Uldo6zz6IjY=:ga4Bk0EAggcaniosdxi3TY
 BgQyrQ/Wkn2YpDgu7u7b8ifl7wnfTANjECLKncwQDvzaSAWMk7izDeEH72fc75g6LPW0WODLI
 YLQvm79Bt7xPXTF0xpfsMPMkPUxW6i3VW6U5EIkCiCW5KXEBrq0qhW9/QcBraTqYvtditq/sq
 ZgbqDmDf4pSHfL4zGPYH5CiamfU7uGDvi/zAWp7hYSSgolLaUXP2ryaTrHeVlIYI1SpS4sRZP
 XuQFTA1xVV/R9P4VrtQjzVnHEQvg+BFkzTCqUMuTRIbw4VGuMvbZwrC9HjS5H2cRlbOWdA3fl
 xGXEIWen1XTvSXoXubZqvenCp2NrixbbLO9A5LH0Ob/xH+lP16ZxDLNvsskQPYunGo1dN7gfN
 MyGdPoQepoivceGY8b12ZOv0ygiJnZBIQDDxZunWvzZiRfWNsVQWs2EgZV2Wco3q/bhowjtAr
 y5oeXMjFiAVJBthnny3IOzEaLBpVeKPSkePSsglBIcD1qr3Cd1AdxdvpTLYdvwmekv93Uil+A
 F3JwYjPF0DZp8ZkVkoekXsrLt2gyBDGiOfL4gu5TA6phJ9p9uk6Yq16WFmrC7fqZ77glL9puN
 XKkQQZfjP8Qf0AM4B0FfZs1kKyHtfQX/gkFN4fD2gts9/YBxPkLeycqD7uuosqzjVGcCmoXQx
 8nuvWU51P89VsYXBzfJux5457i2tL7qan84KBSxhpoDDk2TQrtBbHsppDoryF8AmN1Hj4mLe6
 AcO17zpKaLND0FEChvMS0+4KxuTkF3iuX5yZFNaNSjFRUkcSwQzTtEcS/rWsLYxLLyiAn0gDX
 8Ns/aldail14qEJBSyyVye31qAusvon7Wjv5iE/+fXzzzUK4RfohAs+a5Oz5RsdYSjPnedM+g
 NfUi6Broc0jG8Hwya3g01GKrfoRRJeQhbxiQZl+ihHQjV6L7YnqH8Nrf4WqCL3swLO7oJvcrd
 bSy82RJvZOPr9tY8NQOdPTTUgMi6wmYZEt5QHTELstfSqTjD5cEX0hf+28p9b1oJmmS9DBaKQ
 UJBRHKf65g3qrzsQ+Arz/YMxZkKHiH0WkV+HhTcPvTWykl0YYKnQbXgsApS4PJGWF3ytrk4Tx
 VUNxcUIbZYGdso=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225613_434376_B8125497 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds minimal support for the new Raspberry Pi 4, so we are able
to login via debug UART.

Patch 1-5:   Prepare platform and DTS for the new SoC BMC2711
Patch 6-10:  Enable support for emmc2 on BCM2711
Patch 11-12: Enable pinctrl for BCM2711
Patch 13-17: Add Raspberry Pi 4 DTS support
Patch 18:    Update MAINTAINERS

Unfortunately the Raspberry Pi Foundation didn't released a
peripheral documentation for the new SoC yet. So we only have a preliminary
datasheet [1] and reduced schematics [2].

Changes since RFC:
- change BCM2838 -> BCM2711 as discussed in RFC
- update MAINTAINERS accordingly
- drop "spi: bcm2835: enable shared interrupt support" from series
- squash all pinctrl-bcm2835 changes into one patch
- introduce SoC specific clock registration as suggested by Florian
- fix watchdog probing for Raspberry Pi 4
- convert brcm,bcm2835.txt to json-schema
- move VC4 node to bcm2835-common.dtsi
- fallback to legacy pull config for Raspberry Pi 4
- revert unintended change of mailbox in bcm283x.dtsi
- add reference for arm64

[1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
[2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf

Phil Elwell (1):
  ARM: bcm2835: DMA can only address 1GB

Stefan Wahren (17):
  ARM: bcm283x: Reduce register ranges for UART, SPI and I2C
  ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
  ARM: dts: bcm283x: Define MMC interfaces at board level
  ARM: dts: bcm283x: Define memory at board level
  dt-bindings: bcm2835-cprman: Add bcm2711 support
  clk: bcm2835: Introduce SoC specific clock registration
  clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
  dt-bindings: sdhci-iproc: Add brcm,bcm2711-emmc2
  mmc: sdhci-iproc: Add support for emmc2 of the BCM2711
  dt-bindings: pinctrl: bcm2835: Add brcm,bcm2711 compatible
  pinctrl: bcm2835: Add support for BCM2711 pull-up functionality
  dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
  dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
  ARM: bcm2835: Add bcm2711 compatible string
  ARM: dts: Add minimal Raspberry Pi 4 support
  arm64: dts: broadcom: Add reference to RPi 4 B
  MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  51 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 ---
 .../bindings/clock/brcm,bcm2835-cprman.txt         |   4 +-
 .../devicetree/bindings/mmc/brcm,sdhci-iproc.txt   |   4 +-
 .../bindings/pinctrl/brcm,bcm2835-gpio.txt         |   1 +
 MAINTAINERS                                        |   3 +-
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 120 ++++
 arch/arm/boot/dts/bcm2711.dtsi                     | 667 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 177 ++++++
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts           |  12 +
 arch/arm/boot/dts/bcm2835-rpi-a.dts                |  12 +
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts           |  12 +
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts           |  12 +
 arch/arm/boot/dts/bcm2835-rpi-b.dts                |  12 +
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts          |   7 +
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi             |   5 +
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts           |  12 +
 arch/arm/boot/dts/bcm2835-rpi-zero.dts             |  12 +
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |  18 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts              |   8 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts         |   1 +
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts         |   1 +
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts              |   1 +
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts          |   7 +
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi             |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 160 +----
 arch/arm/mach-bcm/board_bcm2835.c                  |   2 +
 arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts   |   2 +
 drivers/clk/bcm/clk-bcm2835.c                      | 117 +++-
 drivers/mmc/host/sdhci-iproc.c                     |   9 +
 drivers/pinctrl/bcm/pinctrl-bcm2835.c              | 105 +++-
 include/dt-bindings/clock/bcm2835.h                |   2 +
 37 files changed, 1365 insertions(+), 266 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
