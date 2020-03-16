Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B411871BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CLBa5W/0neYlGMRkLbusO9cuZ+/KPRQkpcGgR5Mf6gY=; b=PDAIVAnYY1ARqWawQRh1YX3RpB
	U7jOxnQjNmMeEBA5Wye0VCzufsLKyGKChgaXuSXf5dhSAUNEfjuiupnx9BVexqb0P+Zq7gKItutKV
	sdoDwDMoxj8rXwh6G0wJJSbpJkV6uTQTKhcDWxi/5v/+kyQhqPBcqwhrMvTRIiy0z4mkLod5ZN1dH
	12quizbsQjpQze/T5TbOT+3Kkz44sba1NtlhW8qrkW9d3rNPKXhXbMVbrfow51hloytEE0dfyDS4D
	snbH7bk8ExujD9cXoT7iXmDh+YYij+K01nRjCxa4QRqFBzA6fKcHYtc38cBbPG+eWh+rVuoYNeG6n
	fx+lcBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtzf-0001Wy-9w; Mon, 16 Mar 2020 17:57:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtz8-0001An-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:57:07 +0000
Received: from localhost.localdomain (unknown [194.230.155.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE18720658;
 Mon, 16 Mar 2020 17:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584381425;
 bh=p/K6uiHCwx3XqKC7vU6943HU/XzK030DyQX8JO8TkrM=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dy8U80RXWN6U/dymzAAoT+RtMq1IJWJP5IeWd7tQVvvyhknsOaIiCbJjz18gUxcSA
 ykwW8xU7vSN10M1M8yXJa1JVnEUDep0zYDsSh8Q2krCD5jvWGAcRsW7Qon+FMzqy8w
 3kL5wLKQBvkdlz4QnONwzTGH0TVxNsxtEGXtwldY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/3] ARM: dts: exynos: Stuff for v5.7
Date: Mon, 16 Mar 2020 18:56:51 +0100
Message-Id: <20200316175652.5604-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316175652.5604-1-krzk@kernel.org>
References: <20200316175652.5604-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_105706_344811_B21FADFE 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.7

for you to fetch changes up to 32a1671ff8e84f0dfff3a50d4b2091d25e91f5e2:

  ARM: dts: exynos: Fix polarity of the LCD SPI bus on UniversalC210 board (2020-03-11 11:03:03 +0100)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.7

1. Various fixes:
 - Reboot of some Odroid Exynos4412-based boards,
 - MMC regulators on Arndale5250,
 - Memory mapping on Artik5,
 - GPU power domain on Exynos542x boards,
 - LCD SPI polarity on UniversalC210,
2. Add thermal cooling of GPU on Odroid XU3/XU4 family,
3. Add dynamic-power-coefficient to Exynos5422 for energy model.

----------------------------------------------------------------
Lukasz Luba (1):
      ARM: dts: exynos: Add dynamic-power-coefficient to Exynos5422 CPUs

Marek Szyprowski (8):
      ARM: dts: exynos: Fix broken reboot on some Odroid U2/X2/U3 boards
      ARM: dts: exynos: Add GPU thermal zone cooling maps for Odroid XU3/XU4/HC1
      ARM: dts: exynos: Fix MMC regulator on Arndale5250 board
      ARM: dts: exynos: Make fixed regulators always-on on Arndale5250
      ARM: dts: exynos: Fix memory on Artik5 evaluation boards
      ARM: dts: exynos: Fix G3D power domain supply on Odroid XU3/XU4/HC1 boards
      ARM: dts: exynos: Fix G3D power domain supply on Arndale Octa boards
      ARM: dts: exynos: Fix polarity of the LCD SPI bus on UniversalC210 board

 arch/arm/boot/dts/exynos3250-artik5.dtsi           |  2 +-
 arch/arm/boot/dts/exynos4210-universal_c210.dts    |  4 +-
 arch/arm/boot/dts/exynos4412-odroid-common.dtsi    |  9 ++++
 arch/arm/boot/dts/exynos5250-arndale.dts           | 10 ++--
 arch/arm/boot/dts/exynos5420-arndale-octa.dts      |  2 +
 arch/arm/boot/dts/exynos5422-cpus.dtsi             |  8 +++
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi      |  1 +
 arch/arm/boot/dts/exynos5422-odroidhc1.dts         | 30 +++++++++++
 arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi | 59 ++++++++++++++++++++++
 9 files changed, 118 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
