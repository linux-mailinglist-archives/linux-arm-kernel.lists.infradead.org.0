Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8275A8718
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lklcrdo3TzMUlQxQ32Isd3rlhkgMfYJUESZ6jzVK7ys=; b=ISHlI+OOq8Smq27/MYhlP71GOc
	m+IPjYh6u0rVzLt4RtxxQOLi+DS6L9h3gBSpM1FXf6N3D9b/zsP+hnVbUVoSqRk3NaiEZL1x/Azwz
	tUurpe381FlMnD4GoiDAT0r4cvz4YG1sa1Ekzm1vaScHEo/wqXt4i1QqQoFVNxx3b++XO6QcyclXU
	u0PnjK2RZhIhQLIVmtD+qQh+cKZTJFMg4n/CL/njoB6T0+pcUzWelcAYyjuzi0qc1mcFXtXo2ptce
	j0WkVy4nFDQiRv+f9R2Z/g9bysq9bHLc6w4s9Ob8BdWLbx0FAUfKWSaJTTubPA1rXw3vazML4sDlh
	Qu2U4uQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZQx-0008FX-0W; Wed, 04 Sep 2019 17:51:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQH-0007ni-Pv
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:27 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5248822CF5;
 Wed,  4 Sep 2019 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619425;
 bh=vYxoB/up+rjfB1ERqXN7TXj5LMSimQQfJSk7f9YeKgg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AmMnqNJ44eVCJ8zYAD1pddQms4p5U9Yvd8CXPjhaUl+ck9U2ztm/PAie1i/ZJYgyH
 LZczOToKCN3Bf4mU114eCYrczmtNntDFaMRBDTKPTN1xnjg3NGtRw6LcNRXZT2xL6Q
 +gLIEsHpKFsZvvABSa0tmM9q1Vev1oiqcCK26XPY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/5] ARM: dts: exynos: Second pull for v5.4
Date: Wed,  4 Sep 2019 19:50:00 +0200
Message-Id: <20190904175002.10487-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904175002.10487-1-krzk@kernel.org>
References: <20190904175002.10487-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105026_037408_D5076D1F 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


The following changes since commit bfb77169306d5d560a8b62eebaf6d69d02e8d152:

  ARM: dts: exynos: Add CAM power domain to Exynos5422/5800 (2019-08-12 19:02:59 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.4-2

for you to fetch changes up to 51c88919e52873c83f8be0c8f5d0ffd654f1ef4a:

  ARM: dts: exynos: Enable GPU/Mali T604 on Arndale board (2019-09-04 19:25:33 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.4, part 2

1. Fix Exynos542x Chromebooks boot with multi_v7 defconfig,
2. Add GPU (Mali) support to Exynos5250 boards,
3. Minor cleanup for Exynos3250 ADC.

----------------------------------------------------------------
Guillaume Gardet (4):
      ARM: dts: exynos: Fix min/max buck4 for GPU on Arndale board
      ARM: dts: exynos: Add GPU/Mali T604 node to Exynos5250
      ARM: dts: exynos: Enable GPU/Mali T604 on Chromebook Snow
      ARM: dts: exynos: Enable GPU/Mali T604 on Arndale board

Krzysztof Kozlowski (1):
      ARM: dts: exynos: Remove not accurate secondary ADC compatible

Marek Szyprowski (1):
      ARM: dts: exynos: Mark LDO10 as always-on on Peach Pit/Pi Chromebooks

 arch/arm/boot/dts/exynos3250.dtsi             |  3 +-
 arch/arm/boot/dts/exynos5250-arndale.dts      |  9 +++--
 arch/arm/boot/dts/exynos5250-snow-common.dtsi |  5 +++
 arch/arm/boot/dts/exynos5250.dtsi             | 47 +++++++++++++++++++++++++++
 arch/arm/boot/dts/exynos5420-peach-pit.dts    |  1 +
 arch/arm/boot/dts/exynos5800-peach-pi.dts     |  1 +
 6 files changed, 62 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
