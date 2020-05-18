Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B184B1D8A0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 23:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dnsj9wnc87XqNUC3T3rdL5ujFJlQSkjMEdA+3M4aLtU=; b=k3HUNnb7vHA0I8
	gy4UePs6K90o2U1+rHKtGTEGkFSqAJCee9uRWZCuXQwgXH6Twgjresh9grM1XVrAMO/FdnWLDjkai
	YmPoTIkgGnOkxR5T5A1oZHTRtZs8ptQL9lmZPPlNIhwR5/keM2tVezXiz9nJTF+n4qdrIqxNXj6i0
	oDVcPgdEHcUnWhnYFw0dHtg1+JesNJN2zIRGG2p7et6+W180ZTCvEhT46mM7CHz+lFZihlOA8/FTR
	WX3PMTokyLpuOyhmJ9QJW7pX9EUVgeNwAXv1oNr7cpAZHNLRvtw/u6GAAmJObOaocKPsynREd8ghQ
	kj8Gus4rSmjTSWiXRonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janJn-0006xX-0c; Mon, 18 May 2020 21:29:03 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janJb-0006wc-6d
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 21:28:55 +0000
X-Originating-IP: 90.65.91.255
Received: from localhost (lfbn-lyo-1-1912-bdcst.w90-65.abo.wanadoo.fr
 [90.65.91.255]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 03753C000A;
 Mon, 18 May 2020 21:28:44 +0000 (UTC)
Date: Mon, 18 May 2020 23:28:44 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.8
Message-ID: <20200518212844.GA26356@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_142851_512776_6A99A59D 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Despite a new evaluation board being added this cycle, the move of the
flexcom nodes to the sama5d2 dtsi and the switch to the new PMC bindings
result in the deletion of about 100 lines.

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.8-dt

for you to fetch changes up to 88d801aec6e971c15a0bfb4d46d02476dde9e8aa:

  ARM: dts: at91: sama5d2_xplained: Add aliases for the dedicated I2C IPs (2020-05-18 16:51:58 +0200)

----------------------------------------------------------------
AT91 DT for 5.8

 - New board: Microchip SAMA5D2 Industrial Connectivity Platform
 - All SoCs are now converted to the new PMC device tree binding
 - sama5d2 flexcom nodes are now fully described in sama5d2.dtsi

----------------------------------------------------------------
Alexandre Belloni (4):
      ARM: dts: at91: sama5d3: switch to new clock bindings
      ARM: dts: at91: at91sam9n12: switch to new clock bindings
      ARM: dts: at91: at91sam9g45: switch to new clock bindings
      ARM: dts: at91: rm9200: switch to new clock bindings

Claudiu Beznea (1):
      ARM: dts: at91: sama5d27_som1: Add SPI NOR flash mapping

Codrin Ciubotariu (2):
      dt-bindings: ARM: Document SAMA5D2-ICP
      ARM: dts: at91: Configure I2C SCL gpio as open drain

Cristian Birsan (1):
      ARM: dts: at91: sama5d2-icp: add SAMA5D2-ICP

Cyrille Pitchen (1):
      ARM: dts: at91: sama5d2_xplained: Add QSPI0 + SPI NOR memory nodes

Ludovic Desroches (6):
      ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node description
      ARM: dts: at91: sama5d2_ptc_ek: fix vbus pin
      ARM: dts: at91: sama5d2_ptc_ek: add PB_USER as wakeup source
      ARM: dts: at91: sama5d27_som1_ek: enable i2c0
      ARM: dts: at91: sama5d27_som1_ek: add an alias for i2c0
      ARM: dts: at91: at91-sama5d27_som1: Enable eeprom device

Tudor Ambarus (20):
      ARM: dts: at91: sam9x60ek: Use quad mode in the spi-nor flash
      ARM: dts: at91: sam9x60ek: Add sdmmc1 node
      ARM: dts: at91: sama5d27_wlsom1: Add alias for i2c0
      ARM: dts: at91: sama5d2: Fix the label numbering for flexcom functions
      ARM: dts: at91: sama5d2: Move flx4 definitions in the SoC dtsi
      ARM: dts: at91: sama5d2: Move flx3 definitions in the SoC dtsi
      ARM: dts: at91: sama5d2: Move flx2 definitions in the SoC dtsi
      ARM: dts: at91: sama5d2: Move flx1 definitions in the SoC dtsi
      ARM: dts: at91: sama5d2: Move flx0 definitions in the SoC dtsi
      ARM: dts: at91: sama5d2: Specify the FIFO size for the Flexcom UART
      ARM: dts: at91: sama5d2: Add DMA bindings for the SPI and UART flx4 functions
      ARM: dts: at91: sama5d2: Add DMA bindings for the flx3 SPI function
      ARM: dts: at91: sama5d2: Add DMA bindings for the flx1 I2C function
      ARM: dts: at91: sama5d2: Add DMA bindings for the SPI and I2C flx0 functions
      ARM: dts: at91: sama5d2: Remove i2s and tcb aliases from SoC dtsi
      ARM: dts: at91: sama5d2: Add missing flexcom definitions
      ARM: dts: at91: sama5d2_xplained: Add alias for DBGU
      ARM: dts: at91: sama5d2_ptc_ek: Add comments to describe the aliases
      ARM: dts: at91: sama5d2_xplained: Describe the flx0 I2C function
      ARM: dts: at91: sama5d2_xplained: Add aliases for the dedicated I2C IPs

 .../devicetree/bindings/arm/atmel-at91.yaml        |   7 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/at91-dvk_su60_somc.dtsi          |   2 +-
 arch/arm/boot/dts/at91-kizbox3-hs.dts              |   4 +-
 arch/arm/boot/dts/at91-kizbox3_common.dtsi         |  48 +-
 arch/arm/boot/dts/at91-sam9x60ek.dts               |  23 +
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi          |  54 ++
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts        |  64 +-
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi        |  16 +-
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts      |  12 -
 arch/arm/boot/dts/at91-sama5d2_icp.dts             | 767 +++++++++++++++++++++
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts          |  25 +-
 arch/arm/boot/dts/at91-sama5d2_xplained.dts        | 118 +++-
 arch/arm/boot/dts/at91-wb50n.dtsi                  |   4 -
 arch/arm/boot/dts/at91rm9200.dtsi                  | 296 +-------
 arch/arm/boot/dts/at91sam9g45.dtsi                 | 338 +--------
 arch/arm/boot/dts/at91sam9m10g45ek.dts             |   4 +-
 arch/arm/boot/dts/at91sam9n12.dtsi                 | 324 +--------
 arch/arm/boot/dts/at91sam9n12ek.dts                |   2 +-
 arch/arm/boot/dts/sama5d2.dtsi                     | 295 +++++++-
 arch/arm/boot/dts/sama5d3.dtsi                     | 430 ++----------
 arch/arm/boot/dts/sama5d3_can.dtsi                 |  20 +-
 arch/arm/boot/dts/sama5d3_emac.dtsi                |   8 +-
 arch/arm/boot/dts/sama5d3_gmac.dtsi                |  11 +-
 arch/arm/boot/dts/sama5d3_lcd.dtsi                 |  19 +-
 arch/arm/boot/dts/sama5d3_mci2.dtsi                |  11 +-
 arch/arm/boot/dts/sama5d3_tcb1.dtsi                |  12 +-
 arch/arm/boot/dts/sama5d3_uart.dtsi                |  20 +-
 arch/arm/boot/dts/sama5d3xmb.dtsi                  |   6 +-
 arch/arm/boot/dts/sama5d3xmb_cmp.dtsi              |   6 +-
 arch/arm/boot/dts/sama5d4.dtsi                     |   6 +-
 31 files changed, 1429 insertions(+), 1524 deletions(-)
 create mode 100644 arch/arm/boot/dts/at91-sama5d2_icp.dts

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
