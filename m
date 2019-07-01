Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CEA5B815
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQPnc0tJKaEPzHa+GK9v6efK06WQa4E52iRq299T6Cs=; b=Kd5v9wDDqp57+i
	r63BB/VveYKje+6EBSVbJuuh2ol5Qh3NSpj6SNr+hEVCJe9LF5oT+vlgbl6LyY4tH4uNOQb8cOQNl
	ag4Co1tntn8xK1cdZggDr9YyDz1RM+cSeny/hwUEcd+x3Ecj7LyRyS2hPG4RcMDlBDtn9xNa7Mnmp
	K8kqAaunNmOCypQZxAkXqHnmhWe2xD/Pa5Vm6iV+knIYTBh3QxxnvFb2nOgHh1fro5QniM6KIm+ux
	0gCVeUshK1ns+hG8OIXOYJalCGF1qrcVwC20PkRx1NcS1GUukuRC5wJjVjHVWM9NMCf35zZQFoCIb
	fBXUVMNwUudt9amYaJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhshl-0006nm-Iu; Mon, 01 Jul 2019 09:34:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhshZ-0006n9-G8; Mon, 01 Jul 2019 09:34:22 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hhshY-0001oz-5u; Mon, 01 Jul 2019 11:34:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dts64 updates for 5.3 round 2
Date: Mon, 01 Jul 2019 11:34:19 +0200
Message-ID: <1845795.d5AgpU8gu5@phil>
In-Reply-To: <1883297.MJ2kjSRBWT@phil>
References: <1883297.MJ2kjSRBWT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_023421_689256_4406B8BC 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 45fa7c3838715b34ccea661e4b7b261d91668b17:

  arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-2

for you to fetch changes up to e1d9149e8389f1690cdd4e4056766dd26488a0fe:

  arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire (2019-06-27 16:40:02 +0200)

----------------------------------------------------------------
New boards the Khadas Edge family of sbcs and the Hugsun X99 TV box,
both based on rk3399. Small improvements for RockPi, Sapphire and
rk3328-roc-cc boards. Improvements for the thermal handling on rk3399
as well as the rock960 board. rk3399 dwc3 clock updates and a small
start of the dtsi for the new rk3399pro (the one with the connected
npu).

----------------------------------------------------------------
Daniel Lezcano (2):
      arm64: dts: rockchip: Fix multiple thermal zones conflict in rk3399.dtsi
      arm64: dts: rockchip: Define values for the IPA governor for rock960

Enric Balletbo i Serra (1):
      arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs

Ezequiel Garcia (1):
      arm64: dts: rockchip: Enable HDMI audio on Rock Pi

Heiko Stuebner (3):
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-armsoc/dts64

Jianqun Xu (1):
      arm64: dts: rockchip: add core dtsi file for RK3399Pro SoCs

Leonidas P. Papadakos (1):
      arm64: dts: rockchip: enable rk3328 watchdog clock

Nick Xie (1):
      arm64: dts: rockchip: Add support for Khadas Edge/Edge-V/Captain boards

Peter Geis (1):
      arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.

Vicente Bergas (1):
      arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire

Vivek Unune (1):
      arm64: dts: rockchip: Add support for Hugsun X99 TV Box

 .../devicetree/bindings/arm/rockchip.yaml          |  13 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   4 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 733 +++++++++++++++++++
 .../dts/rockchip/rk3399-khadas-edge-captain.dts    |  27 +
 .../boot/dts/rockchip/rk3399-khadas-edge-v.dts     |  27 +
 .../arm64/boot/dts/rockchip/rk3399-khadas-edge.dts |  13 +
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 804 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  |   4 +
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  39 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |   5 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  15 +-
 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi        |  22 +
 include/dt-bindings/clock/rk3228-cru.h             |   1 +
 include/dt-bindings/clock/rk3328-cru.h             |   1 +
 17 files changed, 1702 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
