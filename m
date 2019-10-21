Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75850DF4B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NpXOOg1+/5GAfEy05mwTeiAHo/6pvCyHFwm061AJFfo=; b=hlk29IFKH7RR6eaw7g2IMi/iEh
	okYr/1vZKbxE4qgeUNZr8QH4GnysZC5COsFe5fU5tHbCzD/f9MX3DhU2tMcgbX9LJWAGVSjE3kdBX
	7j4GIIUPzWdlZZeliLQejyOUho9KCFyn78B7i8NNDp74udyPhGOpUw4wSbQLez7TWCiTWntw1tfBM
	h71xwAe9ZN2tvg3opDOC4p69DCtvUGibqW+8T5HAKfGxhmRl4F4awJ0L56ZH+0EqOI1sulTZSr/eM
	8SrKtCKHwJZOysoAFvW+wOyCu8Qekr/vQHunBar8CC0k5hl0idFw0UlM5YDawd5twclt4tb+O55SN
	yl8cupNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc4E-0006SO-Fn; Mon, 21 Oct 2019 18:06:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc3T-0005qt-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:05:21 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A40C320B7C;
 Mon, 21 Oct 2019 18:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571681118;
 bh=yyOjELTdxm8vdGtIFPCxeWArh8Xp5R+LNwJC8tsWNvU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w7f4CyiASL+Bl/+jvR3zVUL6MZbNCB+OEZHkmr2+mWTx8G47qgwDmnBA+fF88xrci
 c6PKJ7G8N/bnaG+l0yHQQ0ddfbQj/AZTNu9nk95FZNfc0jL47B0o5KLg0lnyguoH5i
 5qjvwklsFAF4bwg83H3dMPBBjaZNlpPK6izHBA3k=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 4/5] ARM: dts: exynos: Stuff for v5.5
Date: Mon, 21 Oct 2019 20:04:51 +0200
Message-Id: <20191021180453.29455-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021180453.29455-1-krzk@kernel.org>
References: <20191021180453.29455-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110519_606038_4DF72ABC 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.5

for you to fetch changes up to d60d0cff4ab01255b25375425745c3cff69558ad:

  ARM: dts: s3c64xx: Fix init order of clock providers (2019-10-08 22:45:20 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.5

1. Add ARM architected timers on Exynos5 for KVM-based virtualization,
2. Extend chip identification needed for future Adaptive Supply Voltage,
3. Add audio support to Arndale board,
4. Fix init order of clock providers on s3c64xx,
5. A lot of cleanups and adjustments of DTS with DT schema.

----------------------------------------------------------------
Krzysztof Kozlowski (8):
      ARM: dts: exynos: Rename Multi Core Timer node to "timer"
      ARM: dts: exynos: Remove MCT subnode for interrupt map on Exynos4210
      ARM: dts: exynos: Remove MCT subnode for interrupt map on Exynos4412
      ARM: dts: exynos: Remove MCT subnode for interrupt map on Exynos5250
      ARM: dts: exynos: Remove MCT subnode for interrupt map on Exynos54xx
      ARM: dts: exynos: Use defines for MCT interrupt GIC SPI/PPI specifier
      ARM: dts: exynos: Rename power domain nodes to "power-domain" in Exynos4
      ARM: dts: exynos: Rename SysRAM node to "sram"

Lihua Yao (1):
      ARM: dts: s3c64xx: Fix init order of clock providers

Maciej Falkowski (2):
      ARM: dts: exynos: Remove obsolete IRQ lines on Exynos3250
      ARM: dts: exynos: Split phandle in dmas property

Marek Szyprowski (1):
      ARM: dts: exynos: Add support ARM architected timers on Exynos5

Sylwester Nawrocki (3):
      ARM: dts: exynos: Add "syscon" compatible string to chipid node on Exynos5
      ARM: dts: exynos: Add samsung,asv-bin property to Odroid XU3 Lite
      ARM: dts: exynos: Add audio support (WM1811 CODEC boards) to Arndale board

 arch/arm/boot/dts/exynos3250.dtsi               | 13 +++----
 arch/arm/boot/dts/exynos4.dtsi                  | 14 ++++----
 arch/arm/boot/dts/exynos4210.dtsi               | 27 +++++----------
 arch/arm/boot/dts/exynos4412.dtsi               | 25 +++++---------
 arch/arm/boot/dts/exynos5.dtsi                  |  4 +--
 arch/arm/boot/dts/exynos5250-arndale.dts        | 27 ++++++++++++++-
 arch/arm/boot/dts/exynos5250.dtsi               | 41 ++++++++--------------
 arch/arm/boot/dts/exynos5260.dtsi               |  2 +-
 arch/arm/boot/dts/exynos5410.dtsi               |  6 ++--
 arch/arm/boot/dts/exynos5420-peach-pit.dts      |  4 +++
 arch/arm/boot/dts/exynos5420.dtsi               | 14 ++++----
 arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts |  4 +++
 arch/arm/boot/dts/exynos54xx.dtsi               | 46 ++++++++++++-------------
 arch/arm/boot/dts/exynos5800-peach-pi.dts       |  4 +++
 arch/arm/boot/dts/s3c6410-mini6410.dts          |  4 +++
 arch/arm/boot/dts/s3c6410-smdk6410.dts          |  4 +++
 16 files changed, 126 insertions(+), 113 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
