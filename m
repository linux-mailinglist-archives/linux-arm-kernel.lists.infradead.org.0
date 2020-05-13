Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE181D16B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SPbuhQtlNeh5BId637FjacEcoHWUT6IF94wSc9V3EPg=; b=aE0OMgEw2JwA8m
	HzvZeBwLYHTjxHLvBALUkk8p59scSd71hk+FZdFhjr+2figVGkVzEPoF9ojdLkVLsTpLJuJupe4Eg
	kdkaPJ4uOwukqkYUhAqRVhwcKkUp+wrBwJYVQRR1GiOUi4BKRr6kM05H4SwTwf/LVTOdVPB3iLsKH
	Vt8toNkYdjL+W5VsTQdRPhr4tspEGpjSTMQo85Lc1yOQr01S3N5Rbr07NyOg09O9PKbvgcSiY+IW7
	DNik0zKxksbm4AvllXc/UJ7HcUrrinK3XBB7kPwa+JJsSxHimlCY/rJaNfIEWEkxJEbPFmbxM6cnY
	zcAWDha85x60qThqhhAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrwQ-0006Xp-H4; Wed, 13 May 2020 14:00:58 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrw9-0006X4-OD
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378441; x=1620914441;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tXc6/mHc2+SLyIE4RWS7EYDLa9x7v+roOjcgud5k/FM=;
 b=oOxq79/SeNFYdZtELVOfCDXkVugkIlyJyRsdZsVE5tPbac+aK4QsmyTR
 qcwTl/2dE26hXLd7KjcjhlKZUAwJo1fW37nbvHiPGjFRBpKBPaYSvvceN
 I5WxrqSxaNtWjNF5UhbtwjfIaWRVSyMkr+4imdWPqYhe9xbq6euK/FBxa
 D35oFIKXhH9QgxBB2plxI70G7PiGnB3uSlkmPaaFT/502k+ShO4nlPg4S
 YZdFN8TqghLY8cCFT07Z4URwJ/mXWkhlGv6npnpqZ/yxMiVEXQwzy83VS
 MJcmd2qo0GosgfNRSXalCNpF2gfEZGcO//d7Fv+l3k9MbrGElFJjaYk+A A==;
IronPort-SDR: ZplCVhn7dt1CCXrvIyaxi9B793BQdV1bKqjSMlGMUb4HA8bM99qF+Wp9bNj3XO9slj7PoV908D
 cSgPoBCVWra8hvvma+1I7zjC4031JbUOISOcJlRV5rTR6P1RqaK/axH7cdYHpYMqMydiItVldv
 WjTS+58FzWB/Bn8awju8rUKASA1iVxvQ3TNkgajJhegAVvJ1IcPucq7TgObvHrx9O5lNYOUL/7
 5y15H2OMurJBB4nVJKLBtrhaqRC7X8TUDT9bGGGi0kk0GW3kXoMxKgzipt+HyCqRiPuUsa4L5F
 utg=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="75774839"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:43 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:39 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 00/10] spi: Adding support for Microchip Sparx5 SoC
Date: Wed, 13 May 2020 16:00:21 +0200
Message-ID: <20200513140031.25633-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070041_816179_ED444925 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).

The series add support for Sparx5 on top of the existing
ocelot/jaguar2 spi driver.

It spins off the existing support for the MSCC platforms into a
separate driver, as adding new platforms from the MSCC/Microchip
product lines will further complicate (clutter) the original driver.

New YAML dt-bindings are provided for the resulting driver.

It is expected that the DT patches are to be taken directly by the arm-soc
maintainers.

Lars Povlsen (10):
  spi: dw: Add support for polled operation via no IRQ specified in DT
  spi: dw: Add support for RX sample delay register
  spi: dw: Add support for client driver memory operations
  dt-bindings: spi: Add bindings for spi-dw-mchp
  spi: spi-dw-mmio: Spin off MSCC platforms into spi-dw-mchp
  dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
  spi: spi-dw-mchp: Add Sparx5 support
  arm64: dts: sparx5: Add SPI controller
  arm64: dts: sparx5: Add spi-nor support
  arm64: dts: sparx5: Add spi-nand devices

 .../bindings/spi/mscc,ocelot-spi.yaml         |  89 ++++
 .../bindings/spi/snps,dw-apb-ssi.txt          |   7 +-
 MAINTAINERS                                   |   2 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  37 ++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  16 +
 .../boot/dts/microchip/sparx5_pcb134.dts      |  22 +
 .../dts/microchip/sparx5_pcb134_board.dtsi    |   9 +
 .../boot/dts/microchip/sparx5_pcb135.dts      |  23 +
 .../dts/microchip/sparx5_pcb135_board.dtsi    |   9 +
 arch/mips/configs/generic/board-ocelot.config |   2 +-
 drivers/spi/Kconfig                           |   7 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-dw-mchp.c                     | 399 ++++++++++++++++++
 drivers/spi/spi-dw-mmio.c                     |  93 ----
 drivers/spi/spi-dw.c                          |  31 +-
 drivers/spi/spi-dw.h                          |   4 +
 16 files changed, 644 insertions(+), 107 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
 create mode 100644 drivers/spi/spi-dw-mchp.c

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
