Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA681374BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l+O893NXuF4xg+wb0spC1t1snWmOR36ngCwYJaZhITA=; b=SJkGeYgxUbOxn+W/8HLcAxwj3F
	CKsI9EyOqC+cyCHWYzv7Rvuompu2Fp+6jL6+cHvaCA58iwNe2fGJVQGY2BuKXAA17AMFsMQr1lqsp
	oqEhsr6xTe1Zqt7AZ6CsNzXvVwDlkwzyYXY85gMvEri+jyoHjTW682ZH9JAdT89YrOAXyVZXwE0jF
	mb/Wa6g7mukLsJq4MGkcGsdAxR0MdTcJJa6DUUU9bMwb14GQt6yVZnxqLcw1lPntlgS+wq4A+x1Yn
	gNhMGTA+eV45zoOiW1zhxnHMPC3X0wdAWh8pM1co3ReOPV2MP6yaAE3PVHXBk/dZI3jvs1Yol8mqL
	Yg/PHlzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy1R-0002uw-Nc; Fri, 10 Jan 2020 17:24:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy0x-0002cW-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:24:05 +0000
Received: from localhost.localdomain (unknown [83.218.167.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D0B520838;
 Fri, 10 Jan 2020 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578677042;
 bh=Zrp/bYduXHUDshMwetSqyu6k+WIom7m5BMG2ujk6Q/I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KgWWNNi1eNoiCSVsH/ZYHgci6DzQxPXTOSL0f5FKKpUHCrrQAODGuWexQIQbCpXl5
 tlsG/WXgS+47Mg+pud2l/0zJfoGH4cUyhD7QnxfUNtwGP/UsdLSo6lR2Y/e4tfMKGH
 FRoI1zTCYmXJWWnHe7ymw34K1LKu/koOGw31mZPg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/3] ARM: dts: Pull for v5.6
Date: Fri, 10 Jan 2020 18:23:31 +0100
Message-Id: <20200110172334.4767-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110172334.4767-1-krzk@kernel.org>
References: <20200110172334.4767-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092403_858999_A9BC0BF3 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.6

for you to fetch changes up to dc48a3a795ca5998a053060456a9bf807f619a42:

  ARM: dts: exynos: Enable FIMD node and add proper panel node to Tiny4412 (2020-01-08 21:17:38 +0100)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.6

1. Couple ARM and wcore bus regulators on Exynos542x so higher
   frequencies could be used with dynamic voltage and frequency scaling.
   Enable this higher frequencies.
2. Correct the polarity of USB3503 hub GPIOs.
3. Adjust the bus frequencies (scaled with devfreq framework) on
   Exynos5422 Odroid boards to match values possible to obtain from root
   PLLs.
4. Add display to Tiny4412 board.
5. Cleanups and minor improvements.

----------------------------------------------------------------
Bartlomiej Zolnierkiewicz (1):
      ARM: dts: exynos: Add missing CPU frequencies for Exynos5422/5800

Krzysztof Kozlowski (1):
      ARM: dts: samsung: Rename Samsung and Exynos to lowercase

Marek Szyprowski (4):
      ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
      ARM: dts: exynos: Correct USB3503 GPIOs polarity
      ARM: dts: exynos: Move Exynos5420 bus related OPPs to the Odroid boards DTS
      ARM: dts: exynos: Adjust bus related OPPs to the values correct for Exynos5422 Odroids

Sylwester Nawrocki (1):
      ARM: dts: exynos: Remove syscon compatible from chipid node on Exynos5

Yangtao Li (1):
      ARM: dts: exynos: Enable FIMD node and add proper panel node to Tiny4412

 arch/arm/boot/dts/exynos4412-odroid-common.dtsi    |   2 +-
 arch/arm/boot/dts/exynos4412-tiny4412.dts          |  25 ++
 arch/arm/boot/dts/exynos5.dtsi                     |   2 +-
 arch/arm/boot/dts/exynos5250-arndale.dts           |   4 +-
 arch/arm/boot/dts/exynos5250-smdk5250.dts          |   4 +-
 arch/arm/boot/dts/exynos5250.dtsi                  |   8 +-
 arch/arm/boot/dts/exynos5260-xyref5260.dts         |   4 +-
 arch/arm/boot/dts/exynos5260.dtsi                  |   2 +-
 arch/arm/boot/dts/exynos5410-odroidxu.dts          |   2 +-
 arch/arm/boot/dts/exynos5410-smdk5410.dts          |   4 +-
 arch/arm/boot/dts/exynos5410.dtsi                  |   6 +-
 arch/arm/boot/dts/exynos5420-arndale-octa.dts      |   2 +-
 arch/arm/boot/dts/exynos5420-cpus.dtsi             |   2 +-
 arch/arm/boot/dts/exynos5420-smdk5420.dts          |   4 +-
 arch/arm/boot/dts/exynos5420.dtsi                  | 289 ++-------------------
 arch/arm/boot/dts/exynos5422-cpus.dtsi             |   2 +-
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi      | 279 +++++++++++++++++++-
 arch/arm/boot/dts/exynos5422-odroidhc1.dts         |  64 ++---
 arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi |  78 +++---
 arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts    |  58 +++++
 arch/arm/boot/dts/exynos5800-peach-pi.dts          |  13 +
 arch/arm/boot/dts/exynos5800.dtsi                  |  58 +++--
 arch/arm/boot/dts/s3c2416-smdk2416.dts             |   2 +-
 arch/arm/boot/dts/s3c6410-smdk6410.dts             |   4 +-
 24 files changed, 526 insertions(+), 392 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
