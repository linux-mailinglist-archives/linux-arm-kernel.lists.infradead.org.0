Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC64EC35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W68AtJD9+aarnQAIG/iL2SOGl8wfGdNnLCbEZ/wicho=; b=D9z
	vx97MPUJiOODniDIygUYEKyuB9O9wNxFNIOrlIjxheLy/tqBKoJwezU07/J3zWlFSXkfGHQibAApz
	LiOOMBxt6M6sONlZOISfVWDj4DEk9sWOu9mlVpCvhcdx8oR3SCDtfIVMynXVRyL9WHnTVUavYkg84
	THPUPzG4P6WsP20G5b/U8ZZEa9NL3Mmt9wKLGIuI9ixZvQrSvlRQqvnmM0LJ+LFyjcizndvwgQpcE
	Or3qJI5u2kQqkATGHrX2U2jLlI7jGKvefQdE0HXAL35KY2UF0coDHss+C9zv7Ycsvcge7AOurN6h6
	juYgazk0bKRXGZ8SuzCh86LNPgTTfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLdJ-0003qK-2S; Fri, 21 Jun 2019 15:39:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcw-0003i2-7l
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A5C81A0A88;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4CBD71A0A85;
 Fri, 21 Jun 2019 17:38:54 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D183820629;
 Fri, 21 Jun 2019 17:38:53 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 0/6] Microsemi Felix switch support
Date: Fri, 21 Jun 2019 18:38:46 +0300
Message-Id: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083858_430458_6BDA441C 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This device is an ethernet switch core from Microsemi (VSC9959)
integrated as PCIe endpoint into the LS1028a SoC.

Though this switch core has some particularities (i.e. 6 ports,
some register mapping differences), functionally this driver relies
entirely on the Ocelot switch driver providing all the features,
and is basically an instance of the Ocelot core driver.

The first 3 patches are minor refactoring of the common Ocelot code
(core driver).  The rest provide the integration code of the switch
as a PCIe device, the register mapping, corresponding ls1028a DT
nodes (for switch ports link configuration).  There are also few
particularities described by individual patch messages.

Claudiu Manoil (6):
  ocelot: Filter out ocelot SoC specific PCS config from common path
  ocelot: Refactor common ocelot probing code to ocelot_init
  ocelot: Factor out resource ioremap and regmap init common code
  arm64: dts: fsl: ls1028a: Add Felix switch port DT node
  dt-bindings: net: Add DT bindings for Microsemi Felix Switch
  net/mssc/ocelot: Add basic Felix switch driver

 .../devicetree/bindings/net/mscc-felix.txt    |  77 +++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  58 ++-
 drivers/net/ethernet/mscc/Kconfig             |   8 +
 drivers/net/ethernet/mscc/Makefile            |   9 +-
 drivers/net/ethernet/mscc/felix_board.c       | 392 +++++++++++++++
 drivers/net/ethernet/mscc/felix_regs.c        | 448 ++++++++++++++++++
 drivers/net/ethernet/mscc/ocelot.c            |  23 +-
 drivers/net/ethernet/mscc/ocelot.h            |  13 +-
 drivers/net/ethernet/mscc/ocelot_board.c      |  16 +-
 drivers/net/ethernet/mscc/ocelot_io.c         |  14 +-
 drivers/net/ethernet/mscc/ocelot_regs.c       |  21 +
 11 files changed, 1041 insertions(+), 38 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/mscc-felix.txt
 create mode 100644 drivers/net/ethernet/mscc/felix_board.c
 create mode 100644 drivers/net/ethernet/mscc/felix_regs.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
