Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645A0102679
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r2oVKBMkcPxWmNVm+gyhG+AIOsLI+xzrLWDWPzFYvRo=; b=TkY
	vMrvuJFfmiNiYaFatXCsvyXNgzbuSvbeW074veFtxjzfWVHOKv681ztXj/xqh1dOL/zIWHxJMSDlr
	QsljrmmPNQ4CJyGcEoA+gEA2slob1p3GBved08HYtY0qBGbqHtXJe3bS7qCDq+letQNoPyCq+rfnH
	Grc7W6DWPRAeKW+7tairf1aqda6MHkS3zkgUjy1sKrE1te/HNXLjE3fRpL+E15uZtb+ZXWyGYyxCe
	HmzhAlN5Hb1VMWJMrbs8b3OkCS4vYXUzriAY6fSlggJSCNpnwxebbZzfzMhyhY3RA9MJ7yUC4vkg3
	My715WQ1wegBb//Z8voWNtEeUIgkPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4N0-0008Vq-PX; Tue, 19 Nov 2019 14:20:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4Ms-0008V1-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:20:35 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF85821852;
 Tue, 19 Nov 2019 14:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574173233;
 bh=bDknmdXel1QhemGwQ74XJ2xEvUlEwuXxxvu6HOA2Uek=;
 h=From:To:Cc:Subject:Date:From;
 b=D+UMymV5RJXQGaDr1xNwW0igze7OsE0mJxe/AeIC9IeHqKddkQss4Npl1JCSz/IV+
 4icbHQsvk6C33XK9EKKgrRDT9OkTdf1TH5V15YriRB6FpHbqC8nUk/h8bIKhJ4e8RE
 nN6VZH1lEJt/Z1PhUP5lPy9kQZrGu+y5hoet7DTs=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: dts: exynos: Second pull for v5.5
Date: Tue, 19 Nov 2019 15:20:26 +0100
Message-Id: <20191119142026.7190-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_062034_329970_7038B158 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

On top of previous pull request - minor updates for next cycle.


Best regards,
Krzysztof


The following changes since commit d60d0cff4ab01255b25375425745c3cff69558ad:

  ARM: dts: s3c64xx: Fix init order of clock providers (2019-10-08 22:45:20 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.5-2

for you to fetch changes up to 1a5a85c5640241ba1407c77792a96cb6d0253483:

  ARM: dts: exynos: Add Mali/GPU node on Exynos5420 and enable it on Odroid XU3/4 (2019-11-18 13:45:22 +0100)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.5, part 2

1. Cleanup by adjusting DTS to bindings,
2. Add touch-sensitive buttons to Midas (Galaxy S III family phones),
3. Add GPU/Mali to Exynos542x and Odroid XU3/XU4 family.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      ARM: dts: exynos: Rename children of SysRAM node to "sram"

Marian Mihailescu (1):
      ARM: dts: exynos: Add Mali/GPU node on Exynos5420 and enable it on Odroid XU3/4

Simon Shields (1):
      ARM: dts: exynos: Add support for the touch-sensitive buttons on Midas family

 arch/arm/boot/dts/exynos3250.dtsi               |  4 +-
 arch/arm/boot/dts/exynos4210-universal_c210.dts |  6 +--
 arch/arm/boot/dts/exynos4210.dtsi               |  4 +-
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi     |  5 +++
 arch/arm/boot/dts/exynos4412-midas.dtsi         | 29 ++++++++++++++
 arch/arm/boot/dts/exynos4412-n710x.dts          |  5 +++
 arch/arm/boot/dts/exynos4412.dtsi               |  4 +-
 arch/arm/boot/dts/exynos5250.dtsi               |  4 +-
 arch/arm/boot/dts/exynos5420.dtsi               | 50 +++++++++++++++++++++++++
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi   |  6 ++-
 arch/arm/boot/dts/exynos54xx.dtsi               |  4 +-
 11 files changed, 107 insertions(+), 14 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
