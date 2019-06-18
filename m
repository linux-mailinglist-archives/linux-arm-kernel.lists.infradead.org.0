Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73F04AAA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IYXtPJptcz3mpTeEj8OC8FXmjWB9hF2rzHvANzCF4w4=; b=KRm
	ChD/s2kxVs/viFjYP1GAdGUWdHQlGyRMh1Zljlfwob+kJwNsbvTU2VziH9ogXUJ4eKccL1fym7b+C
	+SKzPp+6umuFlRK6qnbQ7tJLKHpHPJuSd5FsiTUEjitxXkINdFl+XNWmLJBhQVGiUpxcBrZqDa7LD
	L1iWMZ+QM0Ac8cDUwUJx+jNFR4b29WDENmuF6XFkq4Fgv6RdpUb/OdYQOwIZ9HNXA35c7pynAnWn/
	5Ym4UR6lxLmlrOaDKTqT/hrpNgDNj/xQOIw/DdKWzyoONQxSAUO/Mhi2t+GtATfxu/DpsZ/ftIhTZ
	BhZiQeoLaJ4lsC6AcexUJyYJhElWG8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJQa-0003bI-QN; Tue, 18 Jun 2019 19:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJQO-0003as-8c
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:05:45 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9939220B1F;
 Tue, 18 Jun 2019 19:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560884744;
 bh=vK8tc7Kd1ER0oaq0T5vbExeB1V5IbhRIZBrXithdRSM=;
 h=From:To:Cc:Subject:Date:From;
 b=gFY5e132yO4yupLmLmnqzmDydMEQ4VP+fUPR85du/PyG0jwiZmvr1iSWYTUiTRtAK
 z4i3BdnIg3UmIccOouDtHfQ6KI/izeu1wMHR/y6EbSarhsOPoHYIYCWMjI3/wG7Hoz
 hFvxW+ldZQGwE5xx/t/7C5DY17w8/U+ekqdHTsj4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Olof Johansson <olof@lixom.net>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [RFT 00/10] ARM/arm64: dts: exynos: Add support for Mali
Date: Tue, 18 Jun 2019 21:05:24 +0200
Message-Id: <20190618190534.4951-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_120544_331691_AFB4627F 
X-CRM114-Status: GOOD (  13.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Inspired by patch from Joseph Kogut [1], let's add support for Mali GPUs
to most of other boards.  However it was tested only on Odroid U3
(Exynos4412) and not fully because requirement of special Mesa drivers
with Lima support.

Even without tests it brings full description of hardware and replaces
some out-of-tree downstream code (e.g. in Tizen).

Comments and tests are welcomed.

[1] https://patchwork.kernel.org/patch/10996887/

Best regards,
Krzysztof


Krzysztof Kozlowski (10):
  dt-bindings: gpu: mali: Add Samsung compatibles for Midgard and Utgard
  clk: samsung: Add bus clock for GPU/G3D on Exynos4412
  ARM: dts: exynos: Fix language typo and indentation
  ARM: dts: exynos: Add GPU/Mali 400 node to Exynos3250
  ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4
  arm64: dts: exynos: Add GPU/Mali T760 node to Exynos5433
  arm64: dts: exynos: Add GPU/Mali T760 node to Exynos7
  ARM: multi_v7_defconfig: Enable Panfrost and LIMA drivers
  ARM: exynos_defconfig: Enable Panfrost and LIMA drivers
  arm64: defconfig: Enable Panfrost driver

 .../bindings/gpu/arm,mali-midgard.txt         |  1 +
 .../bindings/gpu/arm,mali-utgard.txt          |  1 +
 arch/arm/boot/dts/exynos3250-artik5.dtsi      |  5 ++
 arch/arm/boot/dts/exynos3250-monk.dts         |  5 ++
 arch/arm/boot/dts/exynos3250-rinato.dts       |  5 ++
 arch/arm/boot/dts/exynos3250.dtsi             | 33 ++++++++++++
 arch/arm/boot/dts/exynos4.dtsi                | 29 +++++++++++
 arch/arm/boot/dts/exynos4210-origen.dts       |  5 ++
 arch/arm/boot/dts/exynos4210-trats.dts        |  4 ++
 .../boot/dts/exynos4210-universal_c210.dts    |  5 ++
 arch/arm/boot/dts/exynos4210.dtsi             | 36 +++++++++++--
 .../boot/dts/exynos4412-itop-scp-core.dtsi    |  5 ++
 arch/arm/boot/dts/exynos4412-midas.dtsi       |  5 ++
 .../boot/dts/exynos4412-odroid-common.dtsi    |  5 ++
 arch/arm/boot/dts/exynos4412.dtsi             | 32 ++++++++++++
 arch/arm/configs/exynos_defconfig             |  3 +-
 arch/arm/configs/multi_v7_defconfig           |  3 +-
 .../dts/exynos/exynos5433-tm2-common.dtsi     |  5 ++
 arch/arm64/boot/dts/exynos/exynos5433.dtsi    | 51 +++++++++++++++++++
 .../boot/dts/exynos/exynos7-espresso.dts      |  5 ++
 arch/arm64/boot/dts/exynos/exynos7.dtsi       | 11 ++++
 arch/arm64/configs/defconfig                  |  2 +-
 drivers/clk/samsung/clk-exynos4.c             |  1 +
 include/dt-bindings/clock/exynos4.h           |  1 +
 24 files changed, 251 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
