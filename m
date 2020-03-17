Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D318773C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 02:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PsGLwS7O6cfRFWhPO1yjHX+JvQtCaDr5e4nH08rrGs=; b=pTZg2mkNG5NSbN
	Z7Pcmw7xOqsvUfQjuyzkheOyhjVlJ/guhyHmqhPvt8LpbGAhEt05FryPKQWpTQor4ho43M9jyT3R7
	ZnMevvijmPo/t66Opu8Xv4G5GLDiTZadaTT+eCfYVVG6SZ3gPT+WfhUcV7y/xcq7sWhi4h0HQxtFP
	rbdcus+ZhPaFCQlNJ/lWztZS6/gN64cBdbO46uCGsGxcgJsaWTNSAHSkt72LBVUocRdQO7xGBF2E4
	y/83rz1GCes3CaO8+P0FdmJXTP6GEZPQLZY+9L7UGejE1zruipTgGLCH+RMvS1ik/dXsMK71fYGV4
	OYUCZltYXZq72iZf4UwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0cu-0006bD-FV; Tue, 17 Mar 2020 01:02:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0cg-0006Zk-06; Tue, 17 Mar 2020 01:02:23 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0ce-0004YM-Kl; Tue, 17 Mar 2020 02:02:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dt64 for 5.7
Date: Tue, 17 Mar 2020 02:02:19 +0100
Message-ID: <27799037.pT45f1LVdF@phil>
In-Reply-To: <7846023.TtVhTo4ACP@phil>
References: <7846023.TtVhTo4ACP@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_180222_185342_C688C8A0 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dts64-1

for you to fetch changes up to 68c33366a95664ab6afafd9b0ed591597890ede7:

  arm64: dts: rockchip: Add Hugsun X99 power led (2020-03-17 01:49:03 +0100)

----------------------------------------------------------------
Support for the rk3399-based Pinebook Pro, eDP support and power-tree for
the rk3399 evaluation board, a big number of fixes for issues found by
checking against the new yaml dt-bindings.
And on the smaller side, fixes for network transfers, the mute gpio
on rk3328 gets actually described and one lvds fix on the px30 and
the rk3399-hugsun board gets IR and power led.

----------------------------------------------------------------
Alexis Ballier (2):
      arm64: dts: rockchip: Add ethernet phy to rk3399-orangepi
      arm64: dts: rockchip: Explicitly pinmux the regulator configuration GPIOs on rk3399-orangepi

Andy Yan (4):
      arm64: dts: rockchip: remove dvs2 pinctrl for pmic on rk3399 evb
      arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
      arm64: dts: rockchip: remove enable-gpio of backlight on rk3399 evb
      arm64: dts: rockchip: Enable eDP display on rk3399 evb

Carlos de Paula (1):
      arm64: dts: rockchip: Add txpbl node for RK3399/RK3328

Emmanuel Vadot (1):
      dt-bindings: Add doc for Pine64 Pinebook Pro

Enric Balletbo i Serra (1):
      arm64: dts: rk3399: Remove extcon unit address and extcon-cells from Gru

Heiko Stuebner (1):
      arm64: dts: rockchip: fix px30 lvds ports

Johan Jonker (13):
      arm64: dts: rockchip: fix cpu compatible property for rk3308
      arm64: dts: remove g-use-dma from rockchip usb nodes
      arm64: dts: rockchip: fix compatible property for Radxa ROCK Pi N10
      arm64: dts: rockchip: fix compatible property for rk3399-evb
      arm64: dts: rockchip: remove max-freq from &spi1 node for Hugsun X99
      arm64: dts: rockchip: remove rockchip,grf from vop nodes for px30
      arm64: dts: remove no-emmc from mmc node for Rockchip PX5 EVB
      arm64: dts: rockchip: fix vqmmc-supply property name for rk3399 puma
      arm64: dts: rockchip: replace clock-freq-min-max by max-frequency
      arm64: dts: add bus to rockchip amba nodenames
      arm64: dts: rockchip: remove properties from spdif node RK3399 Excavator
      arm64: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
      arm64: dts: rockchip: remove clock-names property from 'generic-ohci' nodes

Robin Murphy (1):
      arm64: dts: rockchip: Describe RK3328 GPIO_MUTE users

Tobias Schramm (1):
      arm64: dts: rockchip: Add initial support for Pinebook Pro

Vivek Unune (2):
      arm64: dts: rockchip: Add Hugsun X99 IR receiver
      arm64: dts: rockchip: Add Hugsun X99 power led

 .../devicetree/bindings/arm/rockchip.yaml          |    5 +
 arch/arm64/boot/dts/rockchip/Makefile              |    1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   32 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   10 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |    1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |    1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |    7 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts    |    1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |    3 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts        |  270 ++++-
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |    4 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |    4 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   39 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   43 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      | 1096 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |    2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |    2 +-
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |    2 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   11 +-
 .../boot/dts/rockchip/rk3399pro-rock-pi-n10.dts    |    3 +-
 20 files changed, 1470 insertions(+), 67 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
