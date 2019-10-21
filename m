Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E87ADF4B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eNgWixfrCCUP89FLa7hOt0zGYYc2zlDHAgCqMSvgbDw=; b=Yy1NWTz8a0acnh3L45t0u6kWkj
	Znk+qq0HnkNDjpxzjE1NExGyExOJCnPbl598yX3SvmYJDh2ya60+oIkH0Gu+gZQSUArh1oIOHVKXQ
	JvdSjqHGNtSU2w5kK8cMkM+ZvdBP++mfnW2k+lkGF64noxD7OwkTC8ji2dXkV49d5o7xPS2uWb7Yx
	nYy0SUXXGprOozh1byyRhunxJpREc9U1EtVipRe+SRG7dJig87Ff6cy2LbDB6Wk4H2RYPkzr1M1/1
	ct6BCwhAqOTO6x9ZDlqILmZ7ck0m09FmJz3GjmZ6Ok+88qHTD9OQuJcLX4qrZclP2YxKAECHCWVCo
	0njXFt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc4Q-0006ga-Qk; Mon, 21 Oct 2019 18:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc3X-0005vJ-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:05:25 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 118BD214AE;
 Mon, 21 Oct 2019 18:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571681122;
 bh=ivLMp577gO6IQFjad9juA1B2PNCjhzK67v3fdxzOU+k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o8jcXh+8S2m2b0cwD4Ey95j+hhEGTPiZhlt+kt0o/ia4DG2nCoCI05trF8p3fGV4l
 4eHZetUTR1vrPWqUjcqb0bxdttorrB/1mHkmBGv2w4ejioIjHq5VQG67sb4pNjjtvh
 NMBkDGqU6IFfTRmmlWSoqkCD0+0vtQnltcB7vkwo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 5/5] arm64: dts: exynos: Stuff for v5.5
Date: Mon, 21 Oct 2019 20:04:52 +0200
Message-Id: <20191021180453.29455-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021180453.29455-1-krzk@kernel.org>
References: <20191021180453.29455-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110523_868287_1F03C0BC 
X-CRM114-Status: GOOD (  11.90  )
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

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.5

for you to fetch changes up to 9f17f839fe9cfee2615f03f9f4a1b34ae1f1a040:

  arm64: dts: exynos: Rename Multi Core Timer node to "timer" on Exynos5433 (2019-10-01 21:04:47 +0200)

----------------------------------------------------------------
Samsung DTS ARM64 changes for v5.5

1. Fix boot of Exynos7 due to wrong address/size of memory node,
2. Move GPU under /soc node,
3. Minor of DT bindings.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      arm64: dts: exynos: Rename Multi Core Timer node to "timer" on Exynos5433

Maciej Falkowski (2):
      arm64: dts: exynos: Swap clock order of sysmmu on Exynos5433
      arm64: dts: exynos: Split phandle in dmas property on Exynos5433

Marek Szyprowski (3):
      arm64: dts: exynos: Move GPU under /soc node for Exynos5433
      arm64: dts: exynos: Move GPU under /soc node for Exynos7
      arm64: dts: exynos: Revert "Remove unneeded address space mapping for soc node"

 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 168 ++++++++++++++---------------
 arch/arm64/boot/dts/exynos/exynos7.dtsi    |  28 ++---
 2 files changed, 98 insertions(+), 98 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
