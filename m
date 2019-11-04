Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5918BEE6CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7omaS4FhiPC/Ea5cNTT8Q+opFd/HbpEJhCvf1Xzlbjg=; b=tQ5v7J0Dhlo7mXB0HxMZPxoHEo
	NaLEFpIuqEqwr7vBkpSPK3yBz6Dc8KqVfEbSypaZFKQpEHVAyNZsS1aYiYSex0PN9CG8Ch7Cz7xAI
	47KsYY66+y7Al4MfCWDGTZYSfOzdLl9fecF61jsM61uAMnmeIC0G55OxE4fssBdkuExJ/j5uQnqKk
	ulUvbPjTO1BLfxnZiXRQnlwscIm29Ibj3cX9PKTatiuvs8nbmpJGAuaoawpE9fujqD7S9iDFTCN/e
	LHhIFeHDs9zmfDaW8GbboBuRoR377tlLI3Nl9llly/ibw+MuqIb7nCmvkEt2ElH95YOoyna9QSTkJ
	4BuJh7WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgdb-0001T8-6m; Mon, 04 Nov 2019 17:59:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgdG-0001N5-P8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:59:16 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E7C02184C;
 Mon,  4 Nov 2019 17:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572890354;
 bh=7ghGrmoiEIxN4IpLB8JEUAW5aI+a94fxk1XNN5k5Y9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cOZ2pWZA0y4VDkNtlai4dc6Nq9LOmCdV/DcOiR1N/0WcdNsF/8p2ySJPWeDEVKL9A
 Ph29g1ciVxTQJ1RupdWgogkr8PqdgCnGMIN2AeYweO7xsMNS9UPLKKTD2dQnJR0RjJ
 DypJkGVPfiHpfw5U8/MGYHG5mpnUR+WWwLwSMwlU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/2] ARM: samsung: S3C/Exynos for v5.5
Date: Mon,  4 Nov 2019 18:59:02 +0100
Message-Id: <20191104175902.12224-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104175902.12224-1-krzk@kernel.org>
References: <20191104175902.12224-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_095914_859586_F0E423A9 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.5

for you to fetch changes up to 4134b762eb133787273500101223e10728c154cd:

  ARM: exynos: Enable exynos-asv driver for ARCH_EXYNOS (2019-10-28 18:22:33 +0100)

----------------------------------------------------------------
Samsung mach/soc changes for v5.5

1. Minor cleanups in S3C platforms,
2. Enable newly added EXYNOS_ASV (Adaptive Supply Voltage) driver.

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      ARM: s3c: Rename s3c64xx_spi_setname() function
      ARM: s3c: Rename s5p_usb_phy functions

Sylwester Nawrocki (1):
      ARM: exynos: Enable exynos-asv driver for ARCH_EXYNOS

 arch/arm/mach-exynos/Kconfig                 | 1 +
 arch/arm/mach-s3c24xx/s3c2416.c              | 2 +-
 arch/arm/mach-s3c24xx/s3c2443.c              | 2 +-
 arch/arm/mach-s3c24xx/spi-core.h             | 2 +-
 arch/arm/mach-s3c64xx/setup-usb-phy.c        | 4 ++--
 arch/arm/plat-samsung/devs.c                 | 4 ++--
 arch/arm/plat-samsung/include/plat/usb-phy.h | 4 ++--
 7 files changed, 10 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
