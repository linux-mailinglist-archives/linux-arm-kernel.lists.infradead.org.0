Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082D8905CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZjC8yCGwKBCldkKqL212j56NimPSTsWVhztP7vvTYm0=; b=Y6zOlldi7HtV8cXSHMu+dPH5ir
	ylZ0GAniKlfjjhhwam+uWOE3Ej+gl9ZVJte28XDsSooyq6ato2xrr4gwdTq/Epbl7cChDRmVgY/Ph
	6feBKPQTuNHEXXY9NZfR4ojLYOmIIQnPwfIMtfKkxntCaMYY+2DmljA9ZfjmD0ralovstSZrexuPb
	Ab7y4D8TVSGs4Orwyx7A9kWoTjbw+LRas+gql5hpwnqWq1anpCF9v3BmUg2K8a/aJcvVxU0vW3BsP
	uFSft012n28mDt0yHVSwsOm7IdfBGXZB1b1H5iOk5k/PWk0TwvrtUfq8SstaEqzN/7/kBL3SlQbYs
	jHQR1XGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyf8N-0005o4-Ll; Fri, 16 Aug 2019 16:31:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyf7t-0005ba-Go
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:30:54 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44C2621726;
 Fri, 16 Aug 2019 16:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565973053;
 bh=aO/6758MN7/RW1bNMET+Zow/5HJauuEWmahCmyZ+QO0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lGLBtl1MvgfiOIQ9n9p62C0/WjBydOJcjSi7nrhH8bMQIHIFinDSx2XfNjQEii5nF
 FN+asI5NHNtZmyJ8oedWDkTSyarlI+ocDqEuqVjRQMCwDGw9+xCN/u2eufUsd+4qte
 bMajju6KZRyva59zekAaQqvmQSGUbrchx1hft1EM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/3] ARM: dts: exynos: DT for v5.4
Date: Fri, 16 Aug 2019 18:30:41 +0200
Message-Id: <20190816163042.6604-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816163042.6604-1-krzk@kernel.org>
References: <20190816163042.6604-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_093053_572919_C2F93B42 
X-CRM114-Status: GOOD (  11.32  )
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.4

for you to fetch changes up to bfb77169306d5d560a8b62eebaf6d69d02e8d152:

  ARM: dts: exynos: Add CAM power domain to Exynos5422/5800 (2019-08-12 19:02:59 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.4

1. Add AHCI to Exynos5250,
2. Add camera and GPU power domains to Exynos5422,
3. Minor cleanup.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      ARM: dts: exynos: Use space after '=' in exynos4412-itop-scp-core

Marek Szyprowski (4):
      ARM: dts: exynos: Add port map to Exynos5250 AHCI node
      ARM: dts: exynos: Move MSC power domain to the right (sorted) place
      ARM: dts: exynos: Add G3D power domain to Exynos542x
      ARM: dts: exynos: Add CAM power domain to Exynos5422/5800

 arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi | 18 +++++++++---------
 arch/arm/boot/dts/exynos5250.dtsi               |  1 +
 arch/arm/boot/dts/exynos5420.dtsi               | 13 ++++++++++---
 arch/arm/boot/dts/exynos5800.dtsi               |  9 +++++++++
 4 files changed, 29 insertions(+), 12 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
