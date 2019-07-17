Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFC56C1C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y40XeQmQXkW29+0azEhjT8IX/FF7v2Q875VlTfwKEYs=; b=Lo/
	6mQbfCapkooe1mGX4iEO6KyCYgegho17CO2Rl3OVkWwQvtZfw+b84qZrREhRLSP5WokWMNlZZQFJN
	S+zJAlbEANjy2ZojBC7d63P5eWfDWIRv3uLtGjeBJJsUrbgUVgb//QQR5GXx3qQR/Hk+gaQsa5KXQ
	kFxm47i6hOVnkgMYvgUtcBLDznBjUOs1vy+LUPxqj2lvq2TV0TCAAJV927971oEN+ndS2y1Agec1X
	Fx/Af5bu9qLvcNu6yiqnWFgxyN9ba+kkOhn1xMRipOc6loslNNIR+3aLM/ON01n8mqOcRFSxJL/bL
	bc1eLCXgf5OfpsZC5AHqMaXejTvLmvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnq0t-0005qx-Pa; Wed, 17 Jul 2019 19:54:55 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tJ-Qz; Wed, 17 Jul 2019 19:51:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393039;
 bh=5UDCMes6YxnQqdbOpB1DqmIS9XgXrBZFyZtYmOi5kW0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=GLlFe5CTi9psPRckK9Z1MbWNg6IB0Z4X3RSe4rMeZw53yY9hewO8LBFekOF1+7xFp
 v4y3TZP16GN8IbOStYpES/M+he1IYmY0/FbtwfELUr9ePVzChZGahx/BSaHFnSLLdb
 vtw9IMKo2T0YZjn7RAlNYVI/l+yqCdItUoU8Oe5M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MQvDO-1hsfmz1Vb4-00UGP3; Wed, 17 Jul 2019 21:50:39 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 00/18] ARM: Add minimal Raspberry Pi 4 support
Date: Wed, 17 Jul 2019 21:50:08 +0200
Message-Id: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:G1tJr+A1DQl6I1doj5SlccbvsQo2oRFnJtoDftIP7G7iXAyVylM
 Pg5JYe4N3HcwC+6Uxj1qu7NmBcJVYNARzKx8mKeisUCAEVhLCBE952mBUl2GEu3rew7fD/A
 eszpSfoAdAY8Y6x3G1XsntgFq/Z1iwvakQzp/E7o1KBYkr/MRE74jq5j6CewXpFEMo6OI/W
 pQeBL57dKMbnjuanHkRNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:usz1zgziBmc=:/3I+vaWuMVAIcAlzP/wd7i
 PamsLKbtaTaqYMURiTAkEMQULVFJCIyOdWhBDzcqMPXW9IZAkzoBRd1QeIOetoQ0kskbAhxix
 WKKLdfwTyHgQU4fyljeKPraa0dU8nDbNiHF3wPcDWLgegQdvJ7pn5W4vVmmZs42O3/dqqVUb8
 S5nx4BGyksDCyNbYSmT1LXecfJKDCffeH5UG19F4CniPotiqAXr3XZI6aTx+dfWESTgbg2TX9
 iRVeLNZCm0cqOaTPbMm+jhHrUp9sSau2xDiWIDqDkl2woF9fzBXyelBAeWaYeUvZ66W8AhZDH
 Z4RVmllKjPqGXA9Hcyij5SjyO9ENohnL0KBLpSOruKPUtlan/tEXCTdaftXMgx5mpe5ODdIzM
 WbfFZuG067jkiRfZpJITpN2nDgE1XzH6HoalcOvToHMZVEbBPmxjEpwEPdO5aid8RghE8kbGs
 Ss60bD1kkkvmM9i83SThPqhj16tgJrkwGMDwUvDs7HHAR0WzZmAh9bgwf2WcSegPzpguawKIU
 XZCbMzvpHB1rrOWHpbQL7I2hRFEvgc6u6Rd58iZ1rF/3IEXi+JJ/EG1MI4ed5BMU2B08rJbPK
 oQWkkJ3ZmoOVWFzM3CPyFEBCtUH24HM12xnKdJYuwAk+5dPeShBsGfbvqXgl/We12IFsx/3sl
 dCrp7niihDzDxPjBRFNXXuwJlyD+PpGBu983nIzChvq8cgcfBCJXdkH9r37HjC7OMBIHAGqu2
 +mDcQ3YxxyQ8MPVCxL5IfeA3Fp4ht4kxUi1mYwk96ruRd8sb89pTAI1K/qiE4/SKjoPFEuEUY
 UU/rT03+POmHUnbBso+93oTdJSZH6aeTfc9TGrTPgnBCghjUX/OEPe3DXIMmXQBammvg5CWQu
 vXKLsoo5NNiUByDJWlpFrdsigUK6KZbUUGy6SPT0qlmGY+3Q+xm+lNuGn0SkAEEnIdl74ptcq
 h5LzJX/Ciqc3A/Tz4YTxEQwBwJKBqUKPAuJXVpQimJQFOK72CQ8rizbF7T275HCpss/YGEUUN
 V6sHbTqg7uIovf+BGLCcRSaX0jHvk/MGQD4I6V24P9ZdwGx4M5au0vP8JTJmfOgCJfvY42xUB
 8n8vcrTMFAfJOc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125058_169767_29FB35CA 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds minimal support for the new Raspberry Pi 4, so we are able
to login via debug UART.

Patch 1-5:   Prepare platform and DTS for the new SoC BMC2838
Patch 6-9:   Enable support for emmc2 on BCM2838
Patch 10-14: Enable pinctrl for BCM2838
Patch 15:    Enable SPI support for BCM2838
Patch 16-18: Add Raspberry Pi 4 DTS support

Unfortunately the Raspberry Pi Foundation didn't released a
peripheral documentation for the new SoC yet. So we only have a preliminary
datasheet [1] and reduced schematics [2].

This series is marked as RFC because some parts (e.g. pinctrl) are still
work in progress.

[1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
[2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf

Discussible things:
- SoC compatible BCM2711 (as on the SoC label) vs BCM2838 (existing naming scheme)
- ARCH membership ARCH_BCM2835 vs ARCH_BCMSTB
...


Al Cooper (1):
  pinctrl: bcm2835: bcm7211: Add support for 7211 pull-up functionality

Martin Sperl (1):
  spi: bcm2835: enable shared interrupt support

Phil Elwell (2):
  ARM: bcm2835: DMA can only address 1GB
  ARM: bcm2835: Add bcm2838 compatible string

Stefan Wahren (14):
  ARM: bcm283x: Reduce register ranges for UART, SPI and I2C
  ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
  ARM: dts: bcm283x: Define MMC interfaces at board level
  ARM: dts: bcm283x: Define memory at board level
  dt-bindings: bcm2835-cprman: Add bcm2838 support
  clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
  dt-bindings: sdhci-iproc: Add brcm,bcm2838-emmc2
  mmc: sdhci-iproc: Add support for emmc2 of the BCM2838
  pinctrl: bcm2835: Fix BCM7211 pinconf handling
  dt-bindings: pinctrl: bcm2835: Add brcm,bcm2838 compatible
  pinctrl: bcm2835: Add BCM2838 support
  HACK: pinctrl: bcm2835: Implement legacy pull for BCM7211
  dt-bindings: bcm: Add Raspberry Pi 4 B
  ARM: dts: Add minimal Raspberry Pi 4 support

 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |   4 +
 .../bindings/clock/brcm,bcm2835-cprman.txt         |   4 +-
 .../devicetree/bindings/mmc/brcm,sdhci-iproc.txt   |   4 +-
 .../bindings/pinctrl/brcm,bcm2835-gpio.txt         |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2835-common.dtsi              | 173 ++++++
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
 arch/arm/boot/dts/bcm2838-rpi-4-b.dts              | 120 ++++
 arch/arm/boot/dts/bcm2838.dtsi                     | 657 +++++++++++++++++++++
 arch/arm/boot/dts/bcm283x.dtsi                     | 166 +-----
 arch/arm/mach-bcm/board_bcm2835.c                  |   2 +
 drivers/clk/bcm/clk-bcm2835.c                      |  33 +-
 drivers/mmc/host/sdhci-iproc.c                     |   9 +
 drivers/pinctrl/bcm/pinctrl-bcm2835.c              |  97 ++-
 drivers/spi/spi-bcm2835.c                          |   8 +-
 include/dt-bindings/clock/bcm2835.h                |   2 +
 34 files changed, 1232 insertions(+), 185 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2838-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2838.dtsi

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
