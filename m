Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE861025B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 14:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hjR01FcY+CLKdkI4KSe3L1y84EjQWgGvfUeF7F/WC4I=; b=dgW+xrjjB3jjtx
	0e4IDQ1A/T39YTm8zm/4NKim/RuWE2QtFx2is4BccmM57v3Mhuwc9vW6ckYTdtsBD/wr0PEFkToX4
	NZBqR+kwkIIhgoSYgF6VHa2xtzu/xImdM67FP9HV9iE7OfhDVj4YzfnGUrhvwBS4SnnYRXwuPZLel
	00JPdWc+p6hmhB47m80t8NspF54bl+GdY9cfJANlzUjoNPWHXYKy92C49X6boJRv6grnYjfW/Bchz
	uZW4OuHhg73aqmTdlh89ce9wdkfLEQ8iYu+ON3VQ1prnzThTa/fbU19faQYSb0vABn/+XOXpcsLQd
	6lyqc8CifPLwGJV8z0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3pa-0002sP-Sb; Tue, 19 Nov 2019 13:46:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3pP-0002rM-KR; Tue, 19 Nov 2019 13:46:02 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iX3pN-0005yT-5D; Tue, 19 Nov 2019 14:45:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL] Rockchip dts64 changes for 5.5 - round 3
Date: Tue, 19 Nov 2019 14:45:56 +0100
Message-ID: <3235791.ImxGk5JOut@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_054601_340716_91A9F683 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Hi (arm-)soc people,

for whatever reason I've gotten a big avalanche of patches for various
arm64 parts since the last pull request and with -rc8 being real I thought
I'll try to get these into 5.5 still to not make the wait too long ;-)

And I don't think it's anything earth shattering in there.


If it's not overly late, please pull, otherwise I'll move these over to 5.6
which also wouldn't be problematic.

Thanks
Heiko

The following changes since commit 75aa567803b15e679432655badf95cd30b66b930:

  arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc (2019-11-09 02:15:22 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts64-3

for you to fetch changes up to c36308abe4110e4db362d5e2ae3797834a7b1192:

  arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc (2019-11-19 00:17:46 +0100)

----------------------------------------------------------------
PCIe regulator improvements for RockPi4 and Rock960, NanoPi improvements
for PCIe and cooling maps, a big number of improvements for the
rk3399-roc-pc (spi-flash, sdmmc, regulators, hdmi-sound, gpu node) and
some more things for the px30-evb (thermal handling and dropping an
operating point).

----------------------------------------------------------------
Anand Moon (1):
      arm64: dts: rockchip: Add regulators for pcie on rk3399-rock960

Heiko Stuebner (3):
      arm64: dts: rockchip: remove 408MHz operating point from px30
      arm64: dts: rockchip: add thermal infrastructure to px30
      arm64: dts: rockchip: enable tsadc on px30-evb

Kever Yang (1):
      arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log

Markus Reichl (8):
      arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
      arm64: dts: rockchip: Add regulators for pcie on rk3399-roc-pc
      arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
      arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
      arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
      arm64: dts: rockchip: Use correct pin for lcd-reset pinctrl on rk3399-roc-pc
      arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on rk3399-roc-pc
      arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc

Matwey V. Kornilov (1):
      arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board

Robin Murphy (2):
      arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
      arm64: dts: rockchip: Improve nanopi4 PCIe

 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  6 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 71 ++++++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  | 28 +--------
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   | 27 +++++++-
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  2 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    | 62 ++++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  | 14 +++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   | 11 ++++
 9 files changed, 181 insertions(+), 42 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
