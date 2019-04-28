Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59E2B611
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 16:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TypTPPZMPAxsoDVm1Qcw6Sauv9r4pB35OaRXsY2YU4k=; b=AsMaJv5ZwikejkPt6T0eiKH2R3
	qTotij0mSca3FysWh7qxc7RS7NWFnqgkZW2K1Ksi/h0L4GHd9FRe2RoWM1jmAjYbIZErvk+guVuH2
	F86Mb61X0HRJLYlmz6BHRsIRUrO2qm5+xlYxmJbGc8x6vuEYFYIAvUWRQQJOP6LUT9+UHRMA+HBSq
	LPX67xXzgk+PcVcVDZBpnmIohhpn5pLbnnGWMQLcEwYE16MSkBhBEWAstj1DeBPuirdJA0CpmbQTg
	MvpuHk11WmvufXtQypQRRpB2GSQRTca4rHTe1gIfUMHaUaw4Jd60/zmS748fn6bJ+pAHx6ZvlJRUO
	U1RdNEeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKl1E-0002JY-Ss; Sun, 28 Apr 2019 14:43:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKl0k-000297-On
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 14:42:36 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63E932075D;
 Sun, 28 Apr 2019 14:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556462554;
 bh=2nlDegaPHckDGqoHmsfpGv9MEmyJ160PcbaY/t9ACE0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RWy/XlAYlvhVZ/Us2vVCsBS0TxZ4Z9k54C0yk37jbQPhrXueCV1dSndf80v6WnBwl
 Cs0+ktFug4eb01KLicjW1dDvJmHJAartz7PEHxB2EOpmaF0ruM0nHQdj9YfxzLOFYH
 OS7jzUXNabq/7BDJ6LWb7P95vEqahew3rEN/OLfM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 2/2] arm64: dts: exynos: Second round for v5.2
Date: Sun, 28 Apr 2019 16:42:21 +0200
Message-Id: <20190428144221.11187-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190428144221.11187-1-krzk@kernel.org>
References: <20190428144221.11187-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_074234_819240_AFCCC433 
X-CRM114-Status: GOOD (  10.18  )
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


The following changes since commit 77fc46976e0bfcd78d30fb4c9f0169752b4339c9:

  arm64: dts: exynos: Add SlimSSS to Exynos5433 (2019-03-20 19:29:57 +0100)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.2-2

for you to fetch changes up to f36afdd0f53583759562cef3a8453919e3b86a7c:

  arm64: dts: exynos: Move fixed-clocks out of soc (2019-04-24 19:57:59 +0200)

----------------------------------------------------------------
Samsung DTS ARM64 changes for v5.2, second round

DTC warning fixes: move fixed-clocks, timer and pmu nodes outside of soc
node.

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      arm64: dts: exynos: Move pmu and timer nodes out of soc
      arm64: dts: exynos: Move fixed-clocks out of soc

 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 49 ++++++++++++-------------
 arch/arm64/boot/dts/exynos/exynos7.dtsi    | 57 +++++++++++++++---------------
 2 files changed, 54 insertions(+), 52 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
