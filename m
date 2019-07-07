Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6367615C8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 20:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yy/xotyB0bK2dyHrGcRmErdK7rfKiLLXGTkVUnSowUQ=; b=pgm
	idwCdK7R0oUG54TviXTImFQm0dQtMAdihjasdjjebe6+u8QLwxRm1n+pka4XY2zx71HwEiR1OqW1H
	nhR6t0XfewzVrptFl03Ifm6vlX3HSEJ2/Dl5//KiFcVrLngaDVIOopCPzhybd/rVf9olNRKR+jEt1
	dEG8W5cKxcXWAuLG1NQZauJCKJWLgggcO/hqfs58DXrAkKjLrDI2x2zM1kf9rA5gny8b82wzVkhJM
	0SlfMvZKAH/buXYBMxlrWTUj9h2YnpzTmcTBIaL78vSVgZcNdIrJfdAAN2XKDtuWWWCFEhVG4sqnK
	ek+Gnd1+qgNN52AodZCnJLKo3Z5YEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkBTl-0007w4-E4; Sun, 07 Jul 2019 18:01:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkBTZ-0007vl-GC
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 18:01:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7577420828;
 Sun,  7 Jul 2019 18:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562522484;
 bh=lsP5Zoo/8iHxNocirmfN8LDYdicr15IJWCPxxQZCuac=;
 h=From:To:Cc:Subject:Date:From;
 b=aYZLB716cdJ9vvETO37jpgoOXnP21glMfS+sxwi9lTzhiavo91Hj69VdPMkWPUvbu
 0nhyQd6WSDuaDUY4WhIx6aQ0Y77KfoulEfUCWYkoD7wzlQpS/c5TdEs5Cl6upKY4Yf
 VoEp0gWJmw+3P+9a/9P4/9n9gZYZuiHhQDk2/7kM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: dts: exynos: Late pull for v5.3
Date: Sun,  7 Jul 2019 20:01:15 +0200
Message-Id: <20190707180115.5562-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_110125_558833_7CFA7C8D 
X-CRM114-Status: GOOD (  11.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Late third pull of DTS changes, on top of previous pull request.
This contains important fix for stuff merged recently, one cleanup
and two minor fixups for regulators.

Best regards,
Krzysztof


The following changes since commit 13efd80acaa4cdb61fde52732178ff9eb4141104:

  ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4 (2019-06-24 20:03:42 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3-3

for you to fetch changes up to 841ed60264b3d37d5bf3e32cff168920e4923f88:

  ARM: dts: exynos: Adjust buck[78] regulators to supported values on Arndale Octa (2019-07-01 20:28:37 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.3, third round

1. Fix imprecise abort on Exynos4210 caused by newly added Mali nodes,
2. Reorganize Mali nodes under /soc,
3. Adjust buck regulators voltages on Arndale Octa and Odroid XU3/XU4
   family to sane values.

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      ARM: dts: exynos: Adjust buck[78] regulators to supported values on Odroid XU3 family
      ARM: dts: exynos: Adjust buck[78] regulators to supported values on Arndale Octa

Marek Szyprowski (2):
      ARM: dts: exynos: Fix imprecise abort on Mali GPU probe on Exynos4210
      ARM: dts: exynos: Move Mali400 GPU node to "/soc"

 arch/arm/boot/dts/exynos3250.dtsi             | 66 +++++++++++++--------------
 arch/arm/boot/dts/exynos4.dtsi                | 50 ++++++--------------
 arch/arm/boot/dts/exynos4210.dtsi             | 20 ++++++++
 arch/arm/boot/dts/exynos4412.dtsi             | 22 +++++++++
 arch/arm/boot/dts/exynos5420-arndale-octa.dts |  6 +--
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 10 ++--
 6 files changed, 97 insertions(+), 77 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
