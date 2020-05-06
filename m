Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D9C1C651A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 02:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x7RrPNflYz8ZDTPj6AL+XJse6FZiEuKz6rZzJaZusUE=; b=KKjoJp1e7wLXSY
	M/TBnv9LlodokwRODXs8v31fcIpZrUHyRJNp1o27UKrJkaMNxmOkAMH0SoMAZibWRMmPCfrSuA+8M
	Y+sz9vF8fL1VO4sixin2JZ19CmrJ0kMVjSMZsZO8rE2RUvskm75aYcZFQ8wugGaEA2QFTHc9dglmk
	fjirKDbjcaMhMr9yeRBgH/dgrsLUoagPnwaFfE1mEm3Tk8Ko2q3dX3c4t6UN+1E3bLLQXu8fOPSyM
	cZtAiaNjTWMdjPPOauTLnfGq+HuUKGiTgsUlQ1tW7uuso+RvtA8LRkYI2LEUZBQHMGTQLEzSWaSt/
	a5lZsdcoXs3/HcXdMtTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7xP-0002ya-2r; Wed, 06 May 2020 00:30:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7xG-0002wI-DH; Wed, 06 May 2020 00:30:31 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jW7xF-0005gu-AI; Wed, 06 May 2020 02:30:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL] Rockchip dt fixes for 5.7
Date: Wed, 06 May 2020 02:30:28 +0200
Message-ID: <1738941.6LdaBJIBqS@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_173030_447821_516B7CD6 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Hi Arnd, Kevin, Olof,

please find below some fixes for the newly added Pinebook pro
as well as some fixes to make the dtc and the binding check happy.

Please pull!

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dtsfixes1

for you to fetch changes up to 855bdca1781c79eb661f89c8944c4a719ce720e8:

  ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi (2020-04-27 21:36:31 +0200)

----------------------------------------------------------------
Some fixes for the newly added Pinebook Pro and other fixes to
make dtc and the new dtscheck against yaml bindings happy.

----------------------------------------------------------------
Chen-Yu Tsai (5):
      arm64: dts: rockchip: Replace RK805 PMIC node name with "pmic" on rk3328 boards
      arm64: dts: rockchip: drop non-existent gmac2phy pinmux options from rk3328
      arm64: dts: rockchip: drop #address-cells, #size-cells from rk3328 grf node
      arm64: dts: rockchip: drop #address-cells, #size-cells from rk3399 pmugrf node
      arm64: dts: rockchip: Rename dwc3 device nodes on rk3399 to make dtc happy

Johan Jonker (7):
      ARM: dts: rockchip: fix phy nodename for rk3228-evb
      ARM: dts: rockchip: fix phy nodename for rk3229-xms6
      arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
      arm64: dts: rockchip: fix status for &gmac2phy in rk3328-evb.dts
      arm64: dts: rockchip: swap interrupts interrupt-names rk3399 gpu node
      ARM: dts: rockchip: swap clock-names of gpu nodes
      ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi

Robin Murphy (2):
      arm64: dts: rockchip: Correct PMU compatibles for PX30 and RK3308
      arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt

Tobias Schramm (2):
      arm64: dts: rockchip: fix inverted headphone detection on Pinebook Pro
      arm64: dts: rockchip: enable DC charger detection pullup on Pinebook Pro

 arch/arm/boot/dts/rk3036.dtsi                        |  2 +-
 arch/arm/boot/dts/rk3228-evb.dts                     |  2 +-
 arch/arm/boot/dts/rk3229-xms6.dts                    |  2 +-
 arch/arm/boot/dts/rk322x.dtsi                        |  6 +++---
 arch/arm/boot/dts/rk3xxx.dtsi                        |  2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi               |  2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi             |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts          |  5 ++---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts       |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi             | 18 ------------------
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts |  9 +++++----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi             | 14 ++++++--------
 12 files changed, 23 insertions(+), 43 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
