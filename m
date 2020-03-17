Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB2518773A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 02:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eji8S0D65+OjTD/ZNDaezm6iT5SdwDkRO/UOJyNagYo=; b=Y1KU3GIZFbByD2
	FPohE9Y1RJ0IAtUq6VTyrOCrBOsydgCcB/H26PZpndFXAQh3PbkW98uVt5EVjTEiSPIuKPaLtOUYR
	WSeN302BMkUH2T1dDc+XTRKsZzTmcT3EP/Qcff9tBKg4vf9CqexqngPxTme/Drut89UquioaCOR4+
	nxChlG+OkQQYjNDb7m7Yrx8kfeqTwYDPx8lkINeX4xA/cmx9nZv9qQzgeLt8qLlsXVBjsYNuRHNK5
	3o0/Vn4sX0ST2p3HdaD+T8paQTzsfRg6pZ61kUuJGHgK/mvQTpvWliqoDzP8Vqu943TzHS/BN5Y1U
	4QY2RWhjkbfUxJDLp81Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0cI-0006D4-8a; Tue, 17 Mar 2020 01:01:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0c7-0006Bs-BB; Tue, 17 Mar 2020 01:01:48 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0c6-0004Xz-23; Tue, 17 Mar 2020 02:01:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.7
Date: Tue, 17 Mar 2020 02:01:45 +0100
Message-ID: <7846023.TtVhTo4ACP@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_180147_536237_7E07D442 
X-CRM114-Status: GOOD (  13.19  )
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

Hi Arnd, Kevin, Olof,

please find below and in the reply Rockchip devicetree changes for 5.6.
As always nothing earth shattering, but a lot fixes for dt-bindings
converted to yaml.

Please pull

Thanks
Heiko

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dts32-1

for you to fetch changes up to 9b505cf5499071ad4eb2b992d6b42a330b00a3ff:

  ARM: dts: rockchip: remove #address-cells and #size-cells from i2s nodes (2020-03-17 01:24:06 +0100)

----------------------------------------------------------------
Improvements for the rk3288-vyasa board and a lot of cleanups from
verifying devicetrees against new yaml bindings.

----------------------------------------------------------------
Jagan Teki (3):
      ARM: dts: rockchip: Fix vcc10_lcd name and voltage for rk3288-vyasa
      ARM: dts: rockchip: Fix ddc-i2c-bus for rk3288-vyasa
      ARM: dts: rockchip: Add vcc50_hdmi for rk3288-vyasa

Johan Jonker (20):
      ARM: dts: remove g-use-dma from rockchip usb nodes
      ARM: dts: rockchip: add sram to bus_intmem nodename for rv1108
      ARM: dts: rockchip: add sram to bus_intmem nodename for rk3036
      ARM: dts: rockchip: add sram to bus_intmem nodename for rk3288
      ARM: dts: rockchip: add missing model properties
      dt-bindings: arm: fix Rockchip Kylin board bindings
      dt-bindings: arm: add Rockchip rk3036-evb board
      ARM: dts: rockchip: fix vqmmc-supply property name for rk3188-bqedison2qc
      ARM: dts: rockchip: fix rockchip,default-sample-phase property names
      ARM: dts: rockchip: remove #dma-cells from dma client nodes for rv1108
      ARM: dts: add bus to rockchip amba nodenames
      ARM: dts: rockchip: fix lvds-encoder ports subnode for rk3188-bqedison2qc
      ARM: dts: rockchip: rk3xxx: fix L2 cache-controller nodename
      ARM: dts: rockchip: fix vref-supply for &saradc node rk3288 firefly reload
      ARM: dts: rockchip: remove clock-frequency from saradc node rv1108
      ARM: dts: rockchip: swap clocks and clock-names values for spdif nodes
      ARM: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
      ARM: dts: rockchip: remove clock-names property from 'generic-ohci' nodes
      ARM: dts: rockchip: swap clocks and clock-names values for i2s nodes
      ARM: dts: rockchip: remove #address-cells and #size-cells from i2s nodes

Joshua Watt (1):
      ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered during reboot

Katsuhiro Suzuki (1):
      ARM: dts: rockchip: use DMA channels for UARTs for RK3288

 .../devicetree/bindings/arm/rockchip.yaml          |  7 +++++-
 arch/arm/boot/dts/rk3036-kylin.dts                 |  2 +-
 arch/arm/boot/dts/rk3036.dtsi                      |  8 +++---
 arch/arm/boot/dts/rk3066a.dtsi                     | 18 +++++---------
 arch/arm/boot/dts/rk3188-bqedison2qc.dts           | 29 +++++++++++++---------
 arch/arm/boot/dts/rk3188.dtsi                      | 10 +++-----
 arch/arm/boot/dts/rk322x.dtsi                      | 17 ++-----------
 arch/arm/boot/dts/rk3288-evb-act8846.dts           |  1 +
 arch/arm/boot/dts/rk3288-evb-rk808.dts             |  1 +
 arch/arm/boot/dts/rk3288-firefly-reload.dts        |  1 +
 arch/arm/boot/dts/rk3288-r89.dts                   |  1 +
 arch/arm/boot/dts/rk3288-tinker.dtsi               |  1 +
 arch/arm/boot/dts/rk3288-vyasa.dts                 | 28 +++++++++++++++++----
 arch/arm/boot/dts/rk3288.dtsi                      | 26 +++++++++++--------
 arch/arm/boot/dts/rk3xxx.dtsi                      |  4 +--
 arch/arm/boot/dts/rv1108.dtsi                      | 12 ++-------
 16 files changed, 86 insertions(+), 80 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
