Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1041420F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 00:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=716g8EctsBf4T12Lf7XPILlymf6zvhY0Y54/YaE2Dzk=; b=fJvDIOOTeH586c
	jzafs4YprIxEGfjiLmGrQjyntRcEoat1Oj2EbJYz8aY/yybS9UeUH3KS2WFoxTRELnBtmLJNedAlR
	vyQD/CxLiW/5ZgOgrBAOaZuC1fyjxHKb0QLTspXSMy05CsiBcmhS46HqEhV0jF0DJlc5Q8Anekd6F
	HK9Mmag5xCP1pCbRKOKHiQN2HVlydfqiDe9JlXCJbFCpY0d7x5YI2RoO+XAgJ6dTkp8oqRY3ZSuAr
	QQ9Mq9SC9hvUREIGFt8LlIgqiNFSaFIRFaJbfcuqikyOw83Je8Uu4zArQajCQqBhQb2qPM8ltYMsh
	cNqyTxotXL5/d6QxaQUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itKI9-0004V9-GH; Sun, 19 Jan 2020 23:47:41 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itKI0-0004U9-EL
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 23:47:34 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D95D41C0004;
 Sun, 19 Jan 2020 23:47:07 +0000 (UTC)
Date: Mon, 20 Jan 2020 00:47:07 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.6 #2
Message-ID: <20200119234707.GA90094@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_154732_613409_4BC16D04 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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

Here is the second DT pull request for AT91 with mostly DT compatible
documentation and the sam9x60 SoC dtsi and evaluation kit dts. This
builds fine and is very unlikely to cause any issue.

The following changes since commit a7e0f3fc01df4b1b7077df777c37feae8c9e8b6d:

  ARM: dts: at91: sama5d3: define clock rate range for tcb1 (2020-01-10 18:25:14 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.6-dt-2

for you to fetch changes up to 1e5f532c273714abf4275df930b2c77aa1b63b51:

  ARM: dts: at91: sam9x60: add device tree for soc and board (2020-01-16 14:51:40 +0100)

----------------------------------------------------------------
AT91 DT for 5.6 #2

 - Add sam9x60 dtsi
 - New board sam9x60 Evaluation Kit

----------------------------------------------------------------
Claudiu Beznea (11):
      dt-bindings: at_xdmac: remove wildcard
      dt-bindings: at_xdmac: add microchip,sam9x60-dma
      dt-bindings: atmel-can: add microchip,sam9x60-can
      dt-bindings: atmel-isi: add microchip,sam9x60-isi
      dt-bindings: at91-sama5d2_adc: add microchip,sam9x60-adc
      dt-bindings: atmel-matrix: add microchip,sam9x60-matrix
      dt-bindings: atmel-nand: add microchip,sam9x60-pmecc
      dt-bindings: atmel-sysreg: add microchip,sam9x60-ddramc
      dt-bindings: atmel-smc: add microchip,sam9x60-smc
      dt-bindings: atmel-gpbr: add microchip,sam9x60-gpbr
      dt-bindings: arm: add sam9x60-ek board

Sandeep Sheriker Mallikarjun (1):
      ARM: dts: at91: sam9x60: add device tree for soc and board

 .../devicetree/bindings/arm/atmel-at91.yaml        |   6 +
 .../devicetree/bindings/arm/atmel-sysregs.txt      |   1 +
 .../devicetree/bindings/dma/atmel-xdma.txt         |   4 +-
 .../bindings/iio/adc/at91-sama5d2_adc.txt          |   2 +-
 .../devicetree/bindings/media/atmel-isi.txt        |   2 +-
 .../devicetree/bindings/mfd/atmel-gpbr.txt         |   4 +-
 .../devicetree/bindings/mfd/atmel-matrix.txt       |   1 +
 .../devicetree/bindings/mfd/atmel-smc.txt          |   1 +
 .../devicetree/bindings/mtd/atmel-nand.txt         |   1 +
 .../devicetree/bindings/net/can/atmel-can.txt      |   3 +-
 arch/arm/boot/dts/Makefile                         |   2 +
 arch/arm/boot/dts/at91-sam9x60ek.dts               | 647 +++++++++++++++++++
 arch/arm/boot/dts/sam9x60.dtsi                     | 691 +++++++++++++++++++++
 13 files changed, 1358 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boot/dts/at91-sam9x60ek.dts
 create mode 100644 arch/arm/boot/dts/sam9x60.dtsi

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
