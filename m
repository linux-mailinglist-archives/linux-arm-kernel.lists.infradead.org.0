Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468B91362BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7L/NGA2Qxi1p4m4EaAviDQURMXDxMO8QmhB+EVyRZH4=; b=d540zs6s0GH+tt
	miVOYJSz7EOpfhETqOggImMGoD/Yt904LKZ3eno61ZVTtlpgLWmPC+Lyv7VOqucCfvNFVQPB6WoWG
	WiOiQ1rcW3x4JDhg3ty9cCP4EANFJLuhRPiHYqRw26cej8TbVYeo4Tw70AMDrubmHLFI/0FxmY3Tq
	i8gzaWzGV+WACG5jIDEX4iMkq3LeSkHDNUBhD3EtFGmhiWsDzoGp9N0sSyiAsZg2pw8RztoXkiYcN
	Cz1MVMJRD4gVxJjKuKm9YPaytiNJy/Zc5fD//rm97AbuMCNmTDs1Jyq5mV4CdfTPrsBS6mQkul4HA
	UomqvqFT3fNArKxuYHYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfXs-0006SR-0i; Thu, 09 Jan 2020 21:40:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfXg-0006Qi-FD; Thu, 09 Jan 2020 21:40:38 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ipfXf-0000hy-6T; Thu, 09 Jan 2020 22:40:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dt64 for 5.6
Date: Thu, 09 Jan 2020 22:40:34 +0100
Message-ID: <5115625.yBEeHQkg2z@phil>
In-Reply-To: <8215452.dU6eVM2tAM@phil>
References: <8215452.dU6eVM2tAM@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_134036_660087_4DB52326 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.6-rockchip-dts64-1

for you to fetch changes up to 1fc61ed04d309b0b8b3562acf701ab988eee12de:

  arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc (2020-01-09 00:28:40 +0100)

----------------------------------------------------------------
New boards are the Radxa Rock Pi N10 using the VMARC SOM and Dalang
carrier board, separate versions for the two rockpro64 hardware revisions
which switched a pin between revisions. The rockpro64 also got
bluetooth support now.

The px30 got a lot of attention with dsi, gpu and thermal support.
Similarly the rk3399-roc-pc board also got attention with mtd flash,
sdr104 mode, hdmi sound, gpu and a lot of other smaller improvements.

Other than that there is a new gpu-cooling device for rk3399 a cpu
idle-state for rk3328 and more small improvements across a number
of boards.

----------------------------------------------------------------
Anand Moon (1):
      arm64: dts: rockchip: Add regulators for pcie on rk3399-rock960

Heiko Stuebner (7):
      arm64: dts: rockchip: remove 408MHz operating point from px30
      arm64: dts: rockchip: add thermal infrastructure to px30
      arm64: dts: rockchip: enable tsadc on px30-evb
      dt-bindings: gpu: mali-bifrost: Add Rockchip PX30
      arm64: dts: rockchip: add the gpu for px30
      arm64: dts: rockchip: enable the gpu on px30-evb
      arm64: dts: rockchip: add dsi controller for px30

Jagan Teki (4):
      dt-bindings: arm: rockchip: Add Rock Pi N10 binding
      arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
      ARM: dts: rockchip: Add Radxa Dalang Carrier board
      arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

Johan Jonker (3):
      arm64: dts: rockchip: remove identical &uart0 node from rk3368-lion-haikou
      arm64: dts: rockchip: rk3399-firefly: remove num-slots from &sdio0 node
      arm64: dts: rockchip: rk3399-hugsun-x99: remove supports-sd and supports-emmc options

Katsuhiro Suzuki (1):
      arm64: dts: rockchip: split rk3399-rockpro64 for v2 and v2.1 boards

Kever Yang (1):
      arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log

Markus Reichl (10):
      arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
      arm64: dts: rockchip: Add regulators for pcie on rk3399-roc-pc
      arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
      arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
      arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
      arm64: dts: rockchip: Use correct pin for lcd-reset pinctrl on rk3399-roc-pc
      arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on rk3399-roc-pc
      arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc
      arm64: dts: rockchip: Remove always-on properties from regulator nodes on rk3399-roc-pc.
      arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc

Matwey V. Kornilov (2):
      arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
      arm64: dts: rockchip: Add regulators for PCIe for Radxa Rock Pi 4 board

Miquel Raynal (2):
      arm64: dts: rockchip: Add PX30 DSI DPHY
      arm64: dts: rockchip: Add PX30 LVDS

Robin Murphy (4):
      arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
      arm64: dts: rockchip: Improve nanopi4 PCIe
      arm64: dts: rockchip: Add GPU cooling device for RK3399
      arm64: dts: rockchip: Add RK3328 idle state

Soeren Moch (2):
      arm64: dts: rockchip: enable wifi module at sdio0 on rockpro64
      arm64: dts: rockchip: hook up bluetooth at uart0 on rockpro64

 .../devicetree/bindings/arm/rockchip.yaml          |   9 +
 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |   1 +
 .../boot/dts/rockchip-radxa-dalang-carrier.dtsi    |  81 +++
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  11 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 187 ++++-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  17 +
 .../arm64/boot/dts/rockchip/rk3368-lion-haikou.dts |   6 -
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |   3 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   2 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  |  28 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  27 +-
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  97 ++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  |  26 +
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  11 +
 .../boot/dts/rockchip/rk3399-rockpro64-v2.dts      |  30 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts  | 759 +-------------------
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 797 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   9 +
 .../boot/dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     | 333 +++++++++
 22 files changed, 1632 insertions(+), 825 deletions(-)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
