Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468B11420E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 00:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3tulSEcnGTFEV/rKZIbsESb0MQkQJZrsbEG+kVQq88=; b=kVQesaOL21/Ckt
	oO3qxBQQOq3NzsZodZjfXl07w5iE606vzguQ9M18f7LKI9JbARaOqH8+hxXC5uj71XDWraZOkpsrf
	ZzG12y262wGT3d2BgzzI64fkwnjATw0mPbJsKatd/RQFU1X8wBnqbFJPn1mZURjejmEadnFnpjoXX
	ARRn3+GCm7vkrjJXynBcqo7t1Xs6gJt31yF/v3Engs5MgUNKpd95iKEAFIL7PNTFJOlvOUrToFzFy
	WRXDJJo6oUsxojRPoQxg7FEhL9nMBoYJ0T+fmrRK0YPhQZeCRvf3OJjDqQv9WKF2Vyw21G7VN3Jgi
	YAeT+oOGhzXoEfQE/6RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itJyE-0004x9-7E; Sun, 19 Jan 2020 23:27:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJxx-0004vy-SZ; Sun, 19 Jan 2020 23:26:51 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1itJxw-0003EN-Jb; Mon, 20 Jan 2020 00:26:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dt64 for 5.6 round2
Date: Mon, 20 Jan 2020 00:26:34 +0100
Message-ID: <7641353.lIegmeFAIi@phil>
In-Reply-To: <3473489.DgqFdXXe5V@phil>
References: <3473489.DgqFdXXe5V@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_152650_068088_AF35D2B6 
X-CRM114-Status: GOOD (  12.13  )
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

The following changes since commit 1fc61ed04d309b0b8b3562acf701ab988eee12de:

  arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc (2020-01-09 00:28:40 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.6-rockchip-dts64-2

for you to fetch changes up to 62b5efc919b12c0effc6fd5720b6d5ddc1d1ee5f:

  arm64: dts: rockchip: Kill off "simple-panel" compatibles (2020-01-18 23:58:56 +0100)

----------------------------------------------------------------
DSI display for px30 evaluation board and a number of cleanups
accross multiple socs.

----------------------------------------------------------------
Heiko Stuebner (1):
      arm64: dts: rockchip: hook up the px30-evb dsi display

Johan Jonker (4):
      arm64: dts: rockchip: fix dwmmc clock name for px30
      arm64: dts: rockchip: fix dwmmc clock name for rk3308
      arm64: dts: rockchip: add reg property to brcmf sub-nodes
      arm64: dts: rockchip: rename dwmmc node names to mmc

Markus Reichl (1):
      arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine

Rob Herring (1):
      arm64: dts: rockchip: Kill off "simple-panel" compatibles

 arch/arm64/boot/dts/rockchip/px30-evb.dts          | 32 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 12 ++++----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 12 ++++----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  6 ++--
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  6 ++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  3 ++
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts  |  2 +-
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  3 ++
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |  3 ++
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  | 21 ++++++++++++++
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  4 +--
 13 files changed, 85 insertions(+), 23 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
