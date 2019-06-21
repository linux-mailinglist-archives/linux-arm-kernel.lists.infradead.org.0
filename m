Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A288B4E389
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FLF0J1D1+aBl6SGzNuUIDLbQpdQaEnW43wLUk5Iulb4=; b=HoZtoXV6e3nCGp
	mW7rElbFxCIXHlIA8PHXs+pCHdYq4wuoKdzSp3KMyBhgfmV7DqzijWhUmxzl7ubVqp2Jo8iuysGDy
	XcLdt2g6Z4f2AXtLuHbzzlHLx2UjhYyZUO5PlPT1YTxIsXdfcUwji7VywDNk5LtAIbBNSYdnNv7FK
	P26vp87cseIzWqh9Iv6fwB4p8z4d8IX/QoY4Kd6UqHq30+WNcs0FlrtBfQ7A/HBqlTZiDfgA4QLro
	pAZZ9Qp8uYjvAfv4Q2lyZ+zJ6Jo/dHWeefYl6EH/9r5mhQDF+EUwTtUTrZiQ4v+g5yg2IFU74ncO4
	68Fjw5tqLllt9vp1ycJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFq3-0004yj-Uo; Fri, 21 Jun 2019 09:28:08 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFeq-0002tC-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:16:34 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id CD77F25AD85;
 Fri, 21 Jun 2019 19:16:31 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D95519408C4; Fri, 21 Jun 2019 11:16:29 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM64 Based SoC DT Updates for v5.3
Date: Fri, 21 Jun 2019 11:16:27 +0200
Message-Id: <cover.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021633_109579_B5308FE0 
X-CRM114-Status: GOOD (  16.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these Renesas ARM64 based SoC DT updates for v5.3.

I apologise that this pull request ended up somewhat larger than I
expected. It would have been better if I sent what was ready a
few weeks ago at that time. However, by the time I realised this
it was too late.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-dt-for-v5.3

for you to fetch changes up to f6130381e2a20b0503838477462a3f55f7672434:

  arm64: dts: renesas: hihope-common: Remove "label" from LEDs (2019-06-19 16:32:13 +0200)

----------------------------------------------------------------
Renesas ARM64 Based SoC DT Updates for v5.3

* Renesas SoCs
  - Revise usb2_phy nodes and phys properties according to updated bindings
  - Use ip=on for bootargs

* R-Car Gen 3 and RZ/G2M (r8a774a1) SoCs
  - Add dynamic power coefficient
  - Create thermal zone to support IPA

* R-Car E3 (r8a77990) and D3 (r8a77995) SoCs
  - Point LVDS0 to its companion LVDS1

* R-Car E3 (r8a77990) SoC
  - Corresct register range of DU

* R-Car E3 (r8a77990) based Ebisu board
  - Remove renesas, no-ether-link property

* R-Car D3 (r8a77995) based Draak board:
  - Remove unnecessary index from vin4 port

* RZ/G2M (r8a774a1) based HiHope main and sub-boards:
  - Initial support
  - Describe CPU capacity and topoligy
  - Enable CMT, HDMI, LEDs, PCIe RWDT, SCIF, SDHI, TMU, and USB 2.0 and 3.0

* RZ/G2E (r8a774c0) SoC based EK874 board:
  - Clean up CPU compatible strings
  - Enable: Bluetooth, HDMI audio and video, TPU, USB 3.0 and WLAN

----------------------------------------------------------------
Biju Das (22):
      arm64: dts: renesas: r8a774a1: Add VSP instances
      arm64: dts: renesas: r8a774a1: Add DU device to DT
      arm64: dts: renesas: r8a774a1: Add FDP1 instance
      arm64: dts: renesas: r8a774a1: Tie SYS-DMAC to IPMMU-DS0/1
      arm64: dts: renesas: r8a774a1: Tie Audio-DMAC to IPMMU-MP
      arm64: dts: renesas: r8a774a1: Connect Ethernet-AVB to IPMMU-DS0
      arm64: dts: renesas: cat874: Add WLAN support
      arm64: dts: renesas: cat874: Add BT support
      arm64: dts: renesas: Add HiHope RZ/G2M main board support
      arm64: dts: renesas: hihope-common: Add pincontrol support to scif2/scif clock
      arm64: dts: renesas: Add HiHope RZ/G2M sub board support
      arm64: dts: renesas: r8a774a1: Add PCIe device nodes
      arm64: dts: renesas: hihope-common: Declare pcie bus clock
      arm64: dts: renesas: hihope-rzg2-ex: Enable PCIe support
      arm64: dts: renesas: hihope-common: Add RWDT support
      arm64: dts: renesas: cat874: Enable USB3.0 host/peripheral device node
      arm64: dts: renesas: cat874: Enable usb role switch support
      arm64: dts: renesas: hihope-common: Enable USB3.0
      arm64: dts: renesas: r8a774a1: Add CPU topology on r8a774a1 SoC
      arm64: dts: renesas: r8a774a1: Add CPU capacity-dmips-mhz
      arm64: dts: renesas: r8a774a1: Create thermal zone to support IPA
      arm64: dts: renesas: r8a774a1: Add dynamic power coefficient

Cao Van Dong (3):
      arm64: dts: renesas: r8a7796: Add TPU support
      arm64: dts: renesas: r8a77965: Add TPU support
      arm64: dts: renesas: r8a7795: Add TPU support

Dien Pham (4):
      arm64: dts: renesas: r8a7795: Create thermal zone to support IPA
      arm64: dts: renesas: r8a7796: Create thermal zone to support IPA
      arm64: dts: renesas: r8a77965: Create thermal zone to support IPA
      arm64: dts: renesas: r8a77990: Create thermal zone to support IPA

Fabrizio Castro (12):
      arm64: dts: renesas: cat874: Add HDMI video support
      arm64: dts: renesas: cat874: Add HDMI audio
      arm64: dts: renesas: r8a774a1: Add operating points
      arm64: dts: renesas: hihope-common: Add uSD and eMMC
      arm64: dts: renesas: r8a774a1: Add CMT device nodes
      arm64: dts: renesas: r8a774a1: Add TMU device nodes
      arm64: dts: renesas: r8a774a1: Fix USB 2.0 clocks
      arm64: dts: renesas: hihope-common: Add USB 2.0 support
      arm64: dts: renesas: hihope-common: Add LEDs support
      arm64: dts: renesas: r8a774a1: Add HDMI encoder instance
      arm64: dts: renesas: hihope-common: Add HDMI support
      arm64: dts: renesas: hihope-common: Remove "label" from LEDs

Laurent Pinchart (1):
      arm64: dts: renesas: r8a7799[05]: Point LVDS0 to its companion LVDS1

Magnus Damm (1):
      arm64: dts: renesas: Use ip=on for bootargs

Robin Murphy (1):
      arm64: dts: renesas: r8a774c0: Clean up CPU compatibles

Simon Horman (5):
      arm64: dts: renesas: draak: Remove unnecessary index from vin4 port
      arm64: dts: renesas: r8a7795: Add dynamic power coefficient
      arm64: dts: renesas: r8a7796: Add dynamic power coefficient
      arm64: dts: renesas: r8a77965: Add dynamic power coefficient
      arm64: dts: renesas: r8a77990: Add dynamic power coefficient

Spyridon Papageorgiou (1):
      arm64: dts: renesas: ulcb-kf: Add support for TI WL1837

Takeshi Kihara (2):
      arm64: dts: renesas: ebisu: Remove renesas, no-ether-link property
      arm64: dts: renesas: r8a77990: Fix register range of display node

Yoshihiro Shimoda (1):
      arm64: dts: renesas: Revise usb2_phy nodes and phys properties

 arch/arm64/boot/dts/renesas/Makefile               |   2 +
 arch/arm64/boot/dts/renesas/hihope-common.dtsi     | 325 +++++++++++++
 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi    |  63 +++
 .../boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts  |  15 +
 .../boot/dts/renesas/r8a774a1-hihope-rzg2m.dts     |  26 +
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi          | 527 ++++++++++++++++++++-
 arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts    | 246 +++++++++-
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi          |  12 +-
 arch/arm64/boot/dts/renesas/r8a7795.dtsi           |  93 ++--
 arch/arm64/boot/dts/renesas/r8a7796.dtsi           |  71 ++-
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          |  45 +-
 arch/arm64/boot/dts/renesas/r8a77970-eagle.dts     |   2 +-
 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts     |   3 +-
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          |  32 +-
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts     |   9 +-
 arch/arm64/boot/dts/renesas/r8a77995.dtsi          |  10 +-
 arch/arm64/boot/dts/renesas/salvator-common.dtsi   |   2 +-
 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi           |  49 ++
 arch/arm64/boot/dts/renesas/ulcb.dtsi              |   2 +-
 19 files changed, 1393 insertions(+), 141 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/hihope-common.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
