Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991D34E346
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m9fjk9WFdq/GvEaGQDBlw6vg2pcfA3iuaElUd6akIkk=; b=pqn
	0V1tk0LqeSVUSNVGTvzgUuary4H4oXkzKt2Ym3pMH5OXvCLpgwBwiy6oXOJDumO9LCo/jDiFitS0T
	NirGoIJfHm3tQ+N83uuaHnWf4sKyEF8yBfxn35uhKUEJpYP6tzZBB6UGdtU+wLogq/djHX1DsVp68
	EoGaEGDNvSoceJtj1tExL9xIz8aYZYdkDfGFcIiu/Wz5UURiGhMKmKCum3XE9b58O68LpODx7nNw3
	0hGxiC4vOknYWN9vohxGijvae6CA7jJlhn8ipn9rDd87MWZoskpn5k5JLQvoVpf7EYgUmr5mWhHbg
	6rrUBTangL2g//OYXO7XoByREAHyQkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFhO-0004Dd-DM; Fri, 21 Jun 2019 09:19:10 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcF-0008MX-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:13:53 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 793DC25AEE7;
 Fri, 21 Jun 2019 19:13:50 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 870C69408C4; Fri, 21 Jun 2019 11:13:48 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM Based SoC DT Updates for v5.3
Date: Fri, 21 Jun 2019 11:13:44 +0200
Message-Id: <cover.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021351_877104_771A4C98 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these Renesas ARM based SoC DT updates for v5.3.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-dt-for-v5.3

for you to fetch changes up to 9dd6f7c484fd2aaa468dfdf5087425ea9e4c7bf8:

  ARM: dts: r8a7792: Add CMT0 and CMT1 to r8a7792 (2019-06-21 09:45:37 +0200)

----------------------------------------------------------------
Renesas ARM Based SoC DT Updates for v5.3

* Renesas SoC based boards
  - Use ip=on for bootargs

* Renesas R-Car Gen 2 SOC based boards
  - Configure PMIC IRQ pinmux

* R-Car V2H (r8a7792) SoC
  - Describe CMT devices in DT

* RZ/G1C (r8a77470) based iWave SBC (iwg23s-sbc) and
  RZ/G1N (r8a7744) based boards:
  - Correct SDHI2 VccQ regulator to fix SDR50 mode

* RZ/A2M (r7s9210) based rza2mevb EVB
  RZ/A1H (r7s72100) based rskrza1 board
  - Describe input switch in DT

* RZ/A2M (r7s9210) based rza2mevb EVB
  - Sort nodes to ease future maintenance
  - Add USB host, Ethernet and SDHI support

* RZ/A2M (r7s9210) and RZ/A1H (r7s72100) SoCs
  - Describe IRQC device in DT

----------------------------------------------------------------
Chris Brandt (14):
      ARM: dts: r7s9210: Add RSPI
      ARM: dts: r7s9210: Add Ethernet support
      ARM: dts: r7s9210: Add RIIC support
      ARM: dts: r7s9210: Add SDHI support
      ARM: dts: rza2mevb: Add Ethernet support
      ARM: dts: rza2mevb: Add SDHI support
      ARM: dts: rza2mevb: add ethernet aliases
      ARM: dts: r7s9210: Add USB clock
      ARM: dts: rza2mevb: Add 48MHz USB clock
      ARM: dts: r7s9210: Add USB Host support
      ARM: dts: r7s9210: Add USB Device support
      ARM: dts: rza2mevb: Add USB Host support
      ARM: dts: r7s9210: Add IRQC device node
      ARM: dts: rza2mevb: Add input switch

Fabrizio Castro (2):
      ARM: dts: iwg20d-q7-common: Fix SDHI1 VccQ regularor
      ARM: dts: iwg23s-sbc: Fix SDHI2 VccQ regulator

Geert Uytterhoeven (2):
      ARM: dts: r7s72100: Add IRQC device node
      ARM: dts: rskrza1: Add input switches

Magnus Damm (2):
      ARM: dts: renesas: Use ip=on for bootargs
      ARM: dts: r8a7792: Add CMT0 and CMT1 to r8a7792

Marek Vasut (1):
      ARM: dts: r8a779x: Configure PMIC IRQ pinmux

Yoshihiro Kaneko (1):
      ARM: dts: rza2mevb: sort nodes of rza2mevb board

 arch/arm/boot/dts/emev2-kzm9d.dts             |   2 +-
 arch/arm/boot/dts/iwg20d-q7-common.dtsi       |   2 +-
 arch/arm/boot/dts/r7s72100-genmai.dts         |   2 +-
 arch/arm/boot/dts/r7s72100-rskrza1.dts        |  38 ++++
 arch/arm/boot/dts/r7s72100.dtsi               |  19 ++
 arch/arm/boot/dts/r7s9210-rza2mevb.dts        | 161 +++++++++++++--
 arch/arm/boot/dts/r7s9210.dtsi                | 286 ++++++++++++++++++++++++++
 arch/arm/boot/dts/r8a73a4-ape6evm.dts         |   2 +-
 arch/arm/boot/dts/r8a7740-armadillo800eva.dts |   2 +-
 arch/arm/boot/dts/r8a7743-sk-rzg1m.dts        |   2 +-
 arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dts   |   2 +-
 arch/arm/boot/dts/r8a7745-sk-rzg1e.dts        |   2 +-
 arch/arm/boot/dts/r8a77470-iwg23s-sbc.dts     |   4 +-
 arch/arm/boot/dts/r8a7778-bockw.dts           |   2 +-
 arch/arm/boot/dts/r8a7779-marzen.dts          |   2 +-
 arch/arm/boot/dts/r8a7790-lager.dts           |   9 +-
 arch/arm/boot/dts/r8a7790-stout.dts           |   9 +-
 arch/arm/boot/dts/r8a7791-koelsch.dts         |   9 +-
 arch/arm/boot/dts/r8a7791-porter.dts          |   9 +-
 arch/arm/boot/dts/r8a7792-blanche.dts         |   9 +-
 arch/arm/boot/dts/r8a7792-wheat.dts           |   2 +-
 arch/arm/boot/dts/r8a7792.dtsi                |  34 +++
 arch/arm/boot/dts/r8a7793-gose.dts            |   9 +-
 arch/arm/boot/dts/r8a7794-alt.dts             |   2 +-
 arch/arm/boot/dts/r8a7794-silk.dts            |   2 +-
 arch/arm/boot/dts/sh73a0-kzm9g.dts            |   2 +-
 26 files changed, 589 insertions(+), 35 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
