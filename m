Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5142F1D909A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BlCJXjIwEunjimVIDmglxZ/3HQLLZoyMOuBX8vd9/hI=; b=KSu
	U3FvUUwb/NAdF6Z/AtNrWzm/UJICql1BHJ4a0hH0OlfWA0dnDlWE56rtpdX+1jGMEjG6hWLwW4z19
	DVUWtQI814vVKvV8c4TodwwQQ+vLMb8rzeSgZmyZVJro0mp1/NgXMn8DtB3PnjTdiSUYpl55upDRL
	FGV771pavNSn48AooGXHI6pzqSL6vBayxDdwv2qzwwcxbXVcJYo2wqpVNNvnynHvzX2QhnHoLxx8/
	zBEtpkArNzt5bGkk1fgJD3JYuYQgrOSNkEfeV0Bc+N276pdq/xXVUZTpi3Fc1vr81z+6mvpzyxvCn
	pdq4AsDKxG20hg9Nx/RkW+G+Zdn/VRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawFm-0001NU-2u; Tue, 19 May 2020 07:01:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawFe-0001Mr-1X
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 07:01:23 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A858220758;
 Tue, 19 May 2020 07:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589871678;
 bh=DgJgSr5WT13nwD4Vf1SEEDTdH8bte8CrZ6hmb+jKKno=;
 h=From:List-Id:To:Cc:Subject:Date:From;
 b=pmuLI4J9V6gOB8rWJH3L4f9zSQkB4U1SA9mupxCSiM/uNQq4Dvpr6eBfJ/9ClbFZ0
 Uq4SC2v6GHhPEF2MjTV96A6s917YDeuxF9BmurNmLcvc/iO76BKn8Xsrnl6cdp86ay
 s5OIdevbIt+x1rZHzRb4N5mgYPbUa24kCZuR7S5Q=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] soc/memory: samsung: Drivers update for v5.8
Date: Tue, 19 May 2020 09:01:11 +0200
Message-Id: <20200519070111.6265-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_000122_105426_280A47FF 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.8

for you to fetch changes up to 108c31e77594561eb239534fe019d971c1f8fe38:

  memory: samsung: exynos5422-dmc: Reduce protected code area in IRQ handler (2020-05-12 15:11:47 +0200)

----------------------------------------------------------------
Samsung SoC drivers changes for v5.8

Fix and minor cleanup of Exynos5422 DMC (Dynamic Memory Controller)
driver.

----------------------------------------------------------------
Bernard Zhao (2):
      memory: samsung: exynos5422-dmc: Fix tFAW timings alignment
      memory: samsung: exynos5422-dmc: Reduce protected code area in IRQ handler

 drivers/memory/samsung/exynos5422-dmc.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
