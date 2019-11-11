Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C78BF6C02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVAc7IUXJjYST+zplVl5U5ydRDlhYha2BnG9zeb5uBY=; b=Zjc6+bcrNndzMl
	4ILcQxb5/fqYjGQhLyKaNq5P1GjCVPu85ybbRtq+VI6s43lzbaqx2I3e21mEMNexz8bOixKiKVTvo
	C4m3xnPukvvqwMS3EyLIcUfIhagV1zBz9Vfifq+KK+spVCe5tKhiQ08l53bloHbJB09WvW5axbAVf
	A1qz3YhU6r+qeumKXR4uDLNiXiPtaivLwKMDKoaN4zZUB/BRUcPUpVxkLbJl6N9oeH6V9UK1ugSiP
	jjJk5H2clhrq81FwM6LNX0g1BHh//A9dmTokAU8EVqanPI58KWMcjQLxRychFWbt0F+BaC4UDGXRg
	eKrRh1ARm31T+AEqrxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxnt-0008DH-6h; Mon, 11 Nov 2019 00:43:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxng-0008CE-VI; Mon, 11 Nov 2019 00:43:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iTxnf-00061h-MQ; Mon, 11 Nov 2019 01:43:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dts64 changes for 5.5 - round 2
Date: Mon, 11 Nov 2019 01:43:22 +0100
Message-ID: <12204771.K8DX0fml49@phil>
In-Reply-To: <1926436.N9mSsAMzn9@phil>
References: <1926436.N9mSsAMzn9@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_164325_151426_1E7CA93B 
X-CRM114-Status: GOOD (  13.66  )
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

The following changes since commit d083ce427947bbf10358e4c12bf20f288ee6b3df:

  include: dt-bindings: rockchip: mark RK_FUNC defines as deprecated (2019-10-16 21:40:54 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts64-2

for you to fetch changes up to 75aa567803b15e679432655badf95cd30b66b930:

  arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc (2019-11-09 02:15:22 +0100)

----------------------------------------------------------------
One new soc the rk3308 with quad-Cortex-A35 cores.
New boards are Beelink A1, roc-rk3308-cc, rk3308-evb
A big number of improvements for the rk3399-roc-pc board
(support for M.2 variant, reworked power-tree, buttons, leds)
and further improvements of the px30-evb (usb2phy, otp controller,
removal of default optee node - optee does add its own when loaded)
And finally rk3328 audio support, sdmmc detection fix and enabled
of the gpu on rk3399-puma.

----------------------------------------------------------------
Andy Yan (6):
      dt-bindings: Add doc about rk3308 General Register Files
      arm64: dts: rockchip: Add core dts for RK3308 SOC
      dt-bindings: Add doc for rk3308-evb
      arm64: dts: rockchip: Add basic dts for RK3308 EVB
      dt-bindings: Add doc for Firefly ROC-RK3308-CC board
      arm64: dts: rockchip: Add devicetree for board roc-rk3308-cc

Heiko Stuebner (5):
      arm64: dts: rockchip: add px30 otp controller
      arm64: dts: rockchip: enable gpu on rk3399-puma
      arm64: dts: rockchip: remove px30 default optee node
      arm64: dts: rockchip: add usb2phy for px30
      arm64: dts: rockchip: enable usb2phy on px30-evb

Markus Reichl (5):
      arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
      arm64: dts: rockchip: Add nodes for buttons on rk3399-roc-pc
      arm64: dts: rockchip: Add vcc_sys enable pin on rk3399-roc-pc
      arm64: dts: rockchip: Rework voltage supplies for regulators on rk3399-roc-pc
      arm64: dts: rockchip: Split rk3399-roc-pc for with and without mezzanine board.

Peter Geis (2):
      dt-bindings: clean up rockchip grf binding document
      arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc

Robin Murphy (3):
      arm64: dts: rockchip: Add RK3328 audio pipelines
      dt-bindings: ARM: rockchip: Add Beelink A1
      arm64: dts: rockchip: Add Beelink A1

 .../devicetree/bindings/arm/rockchip.yaml          |   19 +-
 .../devicetree/bindings/soc/rockchip/grf.txt       |   17 +-
 arch/arm64/boot/dts/rockchip/Makefile              |    4 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts          |   12 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   74 +-
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts        |  230 +++
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  188 +++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 1739 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |  359 ++++
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |    1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   32 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |    5 +
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |   72 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts     |  670 +-------
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  767 +++++++++
 15 files changed, 3509 insertions(+), 680 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
