Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7936A1D135D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YA+FQntG0Lkp7133O5sZPexMbuO4BBjhlwVbZSbdFsY=; b=JJ9rkASTADtS3n
	EMadIA/ISKQyxyuOhtE3aRPQgJf7eSSGSuR5gU0zQ4lrnmq4mVfWBxH6Ofj2R/D763rZe4c/G0kmR
	xLevb04Xwd6KNhQ8OoIzWGhH4oFODnQWCO27xBv6lryTux/yb5P2voQZItheiHh60rBeiLFLFPgZf
	C06rhEiIPs/5Mk+XJH2LPKVYJU1barthsby3dby4lkS4xV3YuRqnlI7CuHjA4c6z2Ulld/QGG6nr6
	G8aKyAqfEUZHWn+faP7afJBoLDpUk9ky3LVz3SsgukSp26AAojALrhQRTEK4/E7KBNy8CduPEwukq
	TK9smNMCVOHAjJFh6hHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqvh-0001L4-74; Wed, 13 May 2020 12:56:09 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqvX-0001Js-FX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374559; x=1620910559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=71agoK2Lf2NcrvRKduazxlxfbvYG5gjDX3+0wemNjCw=;
 b=URUivyVsnBWD5nQtlpaDFjBN75KtPIcvhJs6ryMT66UHfpnVJiWA1UUr
 aARYFBzSUcDpfb5IWBmcrxmsyzjvrlspnADW7WdIuRSYuiMFBKw91ea3R
 Lg8BhxNX4CkXWkDiUvuNtYYBFiFaWCG46w2MBnoXBQ9i41utx7AtoBYmk
 gAmxv8AWBmKJn2xPQH0dXIhIqyt2/1btFd+5ttde0yEWa+skJ6UVoJMut
 fFVvC2e/KArEeoI9axZmi7QCph2A7CqCbFwvOxvwWGScm+dMCgSK9WL96
 ANeRS0jT+/bEZCp5rNkDWmD2UTSf8jxk+xpchOT+ujasleoXcGY6a+kbp g==;
IronPort-SDR: 3Bbqq+3ueyuEU0vcFJ63If04Fklj8PCnVSsmtda/MfpzXzLeqBZv06fQHy9pyyPmCnNbtRr+0a
 WKD8Sfn8OkWwYsBSil4fsWOrrGRJoDowIhYPnCMK08AvJmX7pZ/EXNgGSYq79ci5/nEx5RWj70
 mwSIziKMbOkRgj/N237z1EX/Kkra6yNHUeCsDuY7rS9uKCqDBBXbGr8dzn9k6No+gjmoT8Cw3I
 R7cuwk+XjmQNHshM9gm7mEbUFj8srYBXqe4n0XXL58LCAGSjnt3RhOmuz/UFFD9kWdP7Pu2Cdt
 iUk=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76494509"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:55:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:55:57 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:55:52 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 00/14] Adding support for Microchip Sparx5 SoC
Date: Wed, 13 May 2020 14:55:18 +0200
Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055559_521402_A4633E16 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
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
Microsemi Ocelot SoC.

This is the first official revision of the series.

Lars Povlsen (14):
  pinctrl: ocelot: Should register GPIO's even if not irq controller
  pinctrl: ocelot: Remove instance number from pin functions
  pinctrl: ocelot: Fix GPIO interrupt decoding on Jaguar2
  arm64: sparx5: Add support for Microchip 2xA53 SoC
  dt-bindings: arm: sparx5: Add documentation for Microchip Sparx5 SoC
  arm64: dts: sparx5: Add basic cpu support
  dt-bindings: pinctrl: ocelot: Add Sparx5 SoC support
  arm64: dts: sparx5: Add pinctrl support
  pinctrl: ocelot: Add Sparx5 SoC support
  dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL clock
  dt-bindings: clock: sparx5: Add bindings include file
  clk: sparx5: Add Sparx5 SoC DPLL clock driver
  arm64: dts: sparx5: Add Sparx5 SoC DPLL clock
  arm64: dts: sparx5: Add i2c devices, i2c muxes

 .../bindings/arm/microchip,sparx5.yaml        |  87 +++
 .../bindings/clock/microchip,sparx5-dpll.yaml |  46 ++
 .../bindings/pinctrl/mscc,ocelot-pinctrl.txt  |   4 +-
 MAINTAINERS                                   |   9 +
 arch/arm64/Kconfig.platforms                  |  14 +
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/microchip/Makefile        |   4 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 202 +++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  21 +
 .../boot/dts/microchip/sparx5_pcb134.dts      |  17 +
 .../dts/microchip/sparx5_pcb134_board.dtsi    | 252 ++++++++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  17 +
 .../boot/dts/microchip/sparx5_pcb135.dts      |  17 +
 .../dts/microchip/sparx5_pcb135_board.dtsi    |  92 +++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  17 +
 .../boot/dts/microchip/sparx5_pcb_common.dtsi |  19 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-sparx5.c                      | 269 +++++++++
 drivers/pinctrl/pinctrl-ocelot.c              | 558 +++++++++++++++---
 include/dt-bindings/clock/microchip,sparx5.h  |  23 +
 20 files changed, 1587 insertions(+), 83 deletions(-)
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
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
