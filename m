Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC8557DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 21:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GTj+ngoNpBtGzcpK7Iq8YxO/zjlTincaPRJ8Nl8vdLQ=; b=Chz56plYm3QQKIfu1BFa3l1V/6
	4jPMoNhEX/dQZDgpZxQfg2/7XE/oL5DKnA6Km6Rk98PuonIn3yn1pkWlFlqDI+TuPDCseXEtCN8wT
	1iw4jLh/Q9Vghtx18J7ywSJlVHv0JLacYljjwUz3kglPVfVC7Y5vJjpyi3TqADes4eAQX/vS5NBDS
	eljyyGMVV8p+ZGyQa0tt7xfZSfc+BFkTJ4tgmgg/YUIRw40Cx8jSkx82tmRE8Cp/lcRmo21JY1CQE
	oulX9Ed8UH3KWmeY3YocSNAi6JdIZ4zxUL3jx0hys0VQckRtaQgw9ITyDSzJjH1AUQrTyRpbFBa5O
	Wc3X/YfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrER-00079e-MT; Tue, 25 Jun 2019 19:35:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrDc-0006C9-Jo
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 19:35:06 +0000
Received: from localhost.localdomain (unknown [194.230.155.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BC6B213F2;
 Tue, 25 Jun 2019 19:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561491304;
 bh=WRO1PJBOd9F1TBXQZFcn4VIz5X/p6G37KuMecoE/ay0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f+XgcGS/ZPjwM5bW6dOKu56L+JFdBHODTKjmGMIHxo4cYeSQhWBRvbzA/Y+gLvGWC
 aWGdGlWXCup0cVFaxiQKghZgqPzLFmP2hUpYO8tFhrxFvZ5zSYi8OlvNwLxwllGqsN
 rnPrSLG/D8KJ2Eoj11Oj+ZfY5ZtXtyw+HB+DSrkM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 2/4] ARM: dts: exynos: Second pull for v5.3
Date: Tue, 25 Jun 2019 21:34:49 +0200
Message-Id: <20190625193451.7696-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625193451.7696-1-krzk@kernel.org>
References: <20190625193451.7696-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_123504_707628_B1478463 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On top of previous pull request.

Best regards,
Krzysztof


The following changes since commit d2cac68e0d9b038da7207c0b63e1399c4f9f60c4:

  ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU (2019-06-11 20:37:21 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3-2

for you to fetch changes up to 13efd80acaa4cdb61fde52732178ff9eb4141104:

  ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4 (2019-06-24 20:03:42 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.3, second round

1. Add camera flash to Galaxy S3 boards,
2. Fix PMU affinity interrupt warning on Exynos4,
3. Improve regulator configuration on Odroid XU3/XU4/HC1 family and
   Arndale Octa by disabling unneeded regulators and adding suspend
   configuration.  The suspend configuration brings significant reduce of
   energy usage in Suspend to RAM (e.g. 120 -> ~7 mA on Odroid HC1).
4. Add Mali nodes to Exynos3 and Exynos4.

----------------------------------------------------------------
Krzysztof Kozlowski (9):
      ARM: dts: exynos: Add PMU interrupt affinity to Exynos4 boards
      ARM: dts: exynos: Fix language typo and indentation
      ARM: dts: exynos: Disable unused buck10 regulator on Odroid HC1 board
      ARM: dts: exynos: Add regulator suspend configuration to Arndale Octa board
      ARM: dts: exynos: Add regulator suspend configuration to Odroid XU3/XU4/HC1 family
      ARM: dts: exynos: Use proper regulator for eMMC memory on Arndale Octa
      dt-bindings: gpu: mali: Add Samsung compatibles for Midgard and Utgard
      ARM: dts: exynos: Add GPU/Mali 400 node to Exynos3250
      ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4

Simon Shields (1):
      ARM: dts: exynos: Add flash support to Galaxy S3 boards

 .../devicetree/bindings/gpu/arm,mali-midgard.txt   |  1 +
 .../devicetree/bindings/gpu/arm,mali-utgard.txt    |  1 +
 arch/arm/boot/dts/exynos3250-artik5.dtsi           |  5 ++
 arch/arm/boot/dts/exynos3250-monk.dts              |  5 ++
 arch/arm/boot/dts/exynos3250-rinato.dts            |  5 ++
 arch/arm/boot/dts/exynos3250.dtsi                  | 33 ++++++++
 arch/arm/boot/dts/exynos4.dtsi                     | 38 ++++++++-
 arch/arm/boot/dts/exynos4210-origen.dts            |  5 ++
 arch/arm/boot/dts/exynos4210-trats.dts             |  4 +
 arch/arm/boot/dts/exynos4210-universal_c210.dts    |  5 ++
 arch/arm/boot/dts/exynos4210.dtsi                  | 31 ++++++-
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi        | 32 +++++++
 arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi    |  5 ++
 arch/arm/boot/dts/exynos4412-midas.dtsi            |  5 ++
 arch/arm/boot/dts/exynos4412-odroid-common.dtsi    |  5 ++
 arch/arm/boot/dts/exynos4412-prime.dtsi            |  7 ++
 arch/arm/boot/dts/exynos4412.dtsi                  | 27 ++++++
 arch/arm/boot/dts/exynos5420-arndale-octa.dts      | 82 +++++++++++++++++-
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi      | 98 +++++++++++++++++++++-
 arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi |  6 ++
 20 files changed, 392 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
