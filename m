Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0C81F98B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kH+vogYQ2IfG5Sn919klVhq3o1svhrdTmM37RxizP0=; b=tBpdZIqSiMVnYp
	WKRhlTWdw+YGC/BDCAlfQtWS5akiNUUev1UZcPb3AF8Xa55heeOgnuMj0Dcz0XQU31lAnOJskPX5t
	5tmoqYIGBkHP+MQGJyRIKHDnud8AOAKhi7soa9/wK5Igvlpkdz8LJ/VtnKoWFiWZ8+RdpenjvfnIM
	3vnNAiKkh4xyFUo0zPrOk985QqtrNTKHyZxsjaaH6DOmtW22zdlnjfbmGL2eHwdy52dTEoM7Ld9Qb
	K/9DZoYuqhAgIPStpyXtQ+pw7s5Q5s4MIThOEZMtBA1uuNoMSH0sLUmzKzejjDaqn0dNXEEhi68Rb
	aKGjRVNxV0rc/mjFVA9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpEn-0007PC-21; Mon, 15 Jun 2020 13:33:21 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpES-0007OA-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592227981; x=1623763981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ka+s5d03Y8BmBXuXW4GOaBZbM0ynu9V+7sDJ77Fp4Ds=;
 b=ixYJjvxgTL4xq7j+VYcC4WxEVt2J0oLdjUO5aTNbzDYBBbiHpBGNrNfF
 Q8nAmvFN9XXSjwBD00LtBnVlZdGmt5VEuhRDoqGzDrEmimEQs7lriMdRt
 u32r7eptldRhLl9ZGQDJRruo+43AeDPp9Ac/REb47u+9OW2Da4N7zPPHJ
 3yFbxprTAOhHVmiPzXLJlSFin1FaPvu5RuRmr3cFjaOfsE5OyWiwXP9Ug
 aIVx+0aoKUFCBUHW/sWNTfGIpNZewv1hSehkGRVYOd+31J3Wu3JZGr9qd
 cmfbCpTlfwUk+IRzWEojAAv+oodNilAgpiZqaMKtfkjSvfyQ5RREqJy2Y Q==;
IronPort-SDR: e3CBdppFgGp3sAbe6qxq3NDLY2a4SufAqblFvDA1LXWZSAwHkvaejWSXgfY3wGb4TXWFc57Nrd
 kTBhMXtyzz+pgGvqwRwGLb2diKIaYRtr0o8Cbeh3aCPOXQa0+8vI242STIgfIz1eBYNOdlQhWc
 RLyh9ha+QGzNYASV3uazfyKnc2+GY4hhqQHZ8EjqFeel1hulvHStCIxV1QTphHHadKy3db+RG4
 LQIK7gdnGdSNumistunz2AvjWJX9DR0scAS/eBz020xxawkS7rLAPPkwPi2LJGdlP4aBbG/p/Z
 zY0=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="79480447"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:32:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:32:57 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:32:54 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 00/10] Adding support for Microchip Sparx5 SoC
Date: Mon, 15 Jun 2020 15:32:32 +0200
Message-ID: <20200615133242.24911-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063300_218388_80381B57 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds support for Microchip Sparx5 SoC, the CPU
system of a advanced, TSN capable gigabit switch. The CPU is an armv8
x 2 CPU core (A53).

Although this is an ARM core, it shares some peripherals with the
Microsemi Ocelot MIPS SoC.

Changes in v3:
- a "gpio-restart" node has been added to the pcb134/pcb135 DT files.
- pinctrl-ocelot.c: ENOTSUPP replaced by EOPNOTSUPP. Fixed non-static
  ocelot_pinconf_set(), Fixed ocelot_hw_get_value() not returning proper
  read value.
- Rebased on v5.8-rc1

Changes in v2:
- Misc fixes to bindings/arm/microchip,sparx5.yaml
- Changed clock driver to platform driver, using bitfields, recalc
  properly implented, using proper clock parent.
- arch/arm64/boot/dts/microchip/sparx5.dtsi:
 - Added pmu and psci node, using PSCI
 - Updates to GICv3 register spaces (GICV/GICH)
 - Updated timer interrupt specifiers
- pinctrl: ocelot: Fixed symbol clashes from powerpc

Lars Povlsen (10):
  dt-bindings: arm: sparx5: Add documentation for Microchip Sparx5 SoC
  arm64: sparx5: Add support for Microchip 2xA53 SoC
  arm64: dts: sparx5: Add basic cpu support
  arm64: dts: sparx5: Add pinctrl support
  pinctrl: ocelot: Add Sparx5 SoC support
  dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL clock
  dt-bindings: clock: sparx5: Add bindings include file
  clk: sparx5: Add Sparx5 SoC DPLL clock driver
  arm64: dts: sparx5: Add Sparx5 SoC DPLL clock
  arm64: dts: sparx5: Add i2c devices, i2c muxes

 .../bindings/arm/microchip,sparx5.yaml        |  65 +++
 .../bindings/clock/microchip,sparx5-dpll.yaml |  52 +++
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 MAINTAINERS                                   |   9 +
 arch/arm64/Kconfig.platforms                  |  14 +
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/microchip/Makefile        |   4 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 213 +++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  21 +
 .../boot/dts/microchip/sparx5_pcb134.dts      |  17 +
 .../dts/microchip/sparx5_pcb134_board.dtsi    | 252 ++++++++++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  17 +
 .../boot/dts/microchip/sparx5_pcb135.dts      |  17 +
 .../dts/microchip/sparx5_pcb135_board.dtsi    |  92 ++++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  17 +
 .../boot/dts/microchip/sparx5_pcb_common.dtsi |  19 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-sparx5.c                      | 312 +++++++++++++
 drivers/pinctrl/pinctrl-ocelot.c              | 430 +++++++++++++++++-
 include/dt-bindings/clock/microchip,sparx5.h  |  23 +
 20 files changed, 1576 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
 create mode 100644 arch/arm64/boot/dts/microchip/Makefile
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
 create mode 100644 drivers/clk/clk-sparx5.c
 create mode 100644 include/dt-bindings/clock/microchip,sparx5.h

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
