Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DDBB610
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 16:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HTmf46lUYV+Npmc3zl0CRgVP2JivEjDSUl1dIOIqkRY=; b=QnD
	FYBae/FMDSLBfNsND4Na3rEPVs0xHXFlZMlQyQ2PUMdjnu1DgQPM53loB9Svp+gSc/cTRLqmRqhyO
	L9j7HHQweWAdmS5NYJUX0u7o1yUaOyaTr2a0qrQ7R6XWu3LmdvyO+vdZOTa7hl4Zq9TIaaSb3+QrN
	g+9M5z0IcZPLSpsnQUcxCtrXx/hk1WC7QRPK6+bYhocczLFExnlBvJpMl9UtppnGC/4sB2B69IfqO
	RdABDFLny9TQf4aV861d2I0Fvn9vO+KR/qJMcXVzzSsyZoi+75VtKDfGltx9CUvmBm8/4i3mObuWG
	Qu9qcjWBsBegZBJUSEm7sqtL91JAiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKl15-00029W-6f; Sun, 28 Apr 2019 14:42:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKl0k-00028L-C3
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 14:42:35 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB3EB20644;
 Sun, 28 Apr 2019 14:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556462551;
 bh=w/rU7LVgIYiKJvGCsk3PphaPgE7GMKwBPLNwd/xvtTE=;
 h=From:To:Cc:Subject:Date:From;
 b=1rvgk865ANImqrhNp3jACRVPQx74Aum+dL3iba7aK2fMxZ2ilYJh4uTvw4qQISDWc
 CeSNnvm3wtHhR+ZfbbC2+jFmochLdS+Tb9go966wPZLZl/8QOYCDk5/Y8fcQoCa6kZ
 D3R2kefMcTDqmRdJhE9MTJALh5XtqMTh8l0AnpaY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 1/2] ARM: dts: exynos: Second round for v5.2
Date: Sun, 28 Apr 2019 16:42:20 +0200
Message-Id: <20190428144221.11187-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_074234_436882_D5D542E7 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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


The following changes since commit 8cc76b1c75722196fb3d7ffe67cbfeb721a7b0e3:

  ARM: dts: exynos: Remove console argument from bootargs (2019-04-10 18:13:31 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.2-2

for you to fetch changes up to b4bcbdee137833aab04942671b48a9a3beb0801b:

  ARM: dts: s5pv210: Fix camera clock provider on Goni board (2019-04-24 19:55:14 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.2, second round

1. DTC warning fixes: move timer and pmu nodes outside of soc node,
2. Properly override MDMA0 on Universal C210,
3. Fix camera clock provider (to match bindings and driver) on Goni.

----------------------------------------------------------------
Krzysztof Kozlowski (5):
      ARM: dts: exynos: Move pmu and timer nodes out of soc
      ARM: dts: exynos: Remove unneeded address/size cells from fixed-clock on Exynos3250
      ARM: dts: exynos: Move fixed-clocks out of soc on Exynos3250
      ARM: dts: exynos: Properly override node to use MDMA0 on Universal C210
      ARM: dts: s5pv210: Fix camera clock provider on Goni board

 arch/arm/boot/dts/exynos3250.dtsi               | 72 ++++++++++++-------------
 arch/arm/boot/dts/exynos4.dtsi                  | 14 ++---
 arch/arm/boot/dts/exynos4210-universal_c210.dts | 17 +++++-
 arch/arm/boot/dts/exynos5250.dtsi               | 40 +++++++-------
 arch/arm/boot/dts/exynos54xx.dtsi               | 38 ++++++-------
 arch/arm/boot/dts/s5pv210-goni.dts              |  2 +-
 arch/arm/boot/dts/s5pv210.dtsi                  |  6 +--
 7 files changed, 100 insertions(+), 89 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
