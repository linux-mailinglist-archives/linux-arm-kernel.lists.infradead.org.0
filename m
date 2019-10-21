Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F54BDF4BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gXq41lNciTex8ZEaW31bYbh10WotduOLQrIexqi6KPA=; b=e1Zr2bGq+HPAPbUh5+2ljqL4SE
	yRaj0C+ph3eYJI9Q3ZaK4VsRY3DHyToI63yNcgvqchheCBSBJjwfLvHQIp+Pxf24Qgvnpcfu3j+Hj
	XRZ6P4APTWunxoeW1uhFs+4UQTNwtVR4F2zVHneQoPHnp9JGSvtvyzxSqz2NgpftGVYDrU2ZkMucu
	l+ouqvRCFcJ8O7fyjEx5TeAksLWnA1Yzsn/7lAJFUVFyLj4f4K6ttvei/+jkxEL7zvwxnYbZ9Tjxv
	iRQBvMLozPB85bmipKjsN213mt5MBZIVc6WVudSjgOuH/u1fA71691ko74vuOOl+npUgUeT504Dph
	S/3ns+0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc4c-0006z2-Hj; Mon, 21 Oct 2019 18:06:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc3c-0005za-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:05:33 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86BBE20B7C;
 Mon, 21 Oct 2019 18:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571681127;
 bh=0CPJIU1rMIOyGYW8ZKtjAoM8g4H4SToVEeMTsL9SeOQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OhO3+gZ/Flb+yd21IPeK1WThLsplFx5zNC9VKGSJMJitEOeFANYtyZfHXWH4Y1NWh
 8JdltN9eMwkFvz0IErvQKIfpBcrl4wiQduz2abHB6uf6EI7sj42CuNP9/Y9PWtZRRx
 sM1fuBY1F+5JvRyb9ikYrxmAhv2eptbuMlFfnolc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/5] ARM: dts: exynos: memory DMC driver bindings for v5.5
Date: Mon, 21 Oct 2019 20:04:53 +0200
Message-Id: <20191021180453.29455-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021180453.29455-1-krzk@kernel.org>
References: <20191021180453.29455-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110528_493556_11CB8F9E 
X-CRM114-Status: GOOD (  14.43  )
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

Hi,

Topic branch/pull for DMC driver bindings/DTS. Patchset had many iterations
on mailing lists and waited for very long.

Best regards,
Krzysztof


The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-dmc-5.5

for you to fetch changes up to 41f277be1d028e64fb8d5e91a7ce74df600bde54:

  dt-bindings: memory-controllers: exynos5422-dmc: Correct example syntax and memory region (2019-10-06 17:54:28 +0200)

----------------------------------------------------------------
Samsung DTS changes for DMC driver for v5.5

Add bindings and update device tree sources of Exynos5422 platforms with
new Dynamic Memory Controller nodes and properties.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      dt-bindings: memory-controllers: exynos5422-dmc: Correct example syntax and memory region

Lukasz Luba (9):
      dt-bindings: ddr: Rename lpddr2 directory
      dt-bindings: ddr: Add bindings for LPDDR3 memories
      dt-bindings: memory-controllers: Add Exynos5422 DMC device description
      ARM: dts: exynos: Add syscon compatible to clock controller on Exynos542x
      ARM: dts: exynos: Add DMC device to Exynos5422 and Odroid XU3-family boards
      dt-bindings: ddr: Add bindings for Samsung LPDDR3 memories
      dt-bindings: memory-controllers: exynos5422-dmc: Add interrupt mode
      ARM: dts: exynos: Extend mapped region for DMC on Exynos5422
      ARM: dts: exynos: Add interrupts to DMC controller in Exynos5422

 .../bindings/{lpddr2 => ddr}/lpddr2-timings.txt    |   0
 .../devicetree/bindings/{lpddr2 => ddr}/lpddr2.txt |   2 +-
 .../devicetree/bindings/ddr/lpddr3-timings.txt     |  58 ++++++++++
 Documentation/devicetree/bindings/ddr/lpddr3.txt   | 101 ++++++++++++++++++
 .../bindings/memory-controllers/exynos5422-dmc.txt |  84 +++++++++++++++
 arch/arm/boot/dts/exynos5420.dtsi                  |  76 ++++++++++++-
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi      | 117 +++++++++++++++++++++
 arch/arm/boot/dts/exynos5800.dtsi                  |   2 +-
 8 files changed, 437 insertions(+), 3 deletions(-)
 rename Documentation/devicetree/bindings/{lpddr2 => ddr}/lpddr2-timings.txt (100%)
 rename Documentation/devicetree/bindings/{lpddr2 => ddr}/lpddr2.txt (96%)
 create mode 100644 Documentation/devicetree/bindings/ddr/lpddr3-timings.txt
 create mode 100644 Documentation/devicetree/bindings/ddr/lpddr3.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
