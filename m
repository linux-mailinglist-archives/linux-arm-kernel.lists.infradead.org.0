Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C344E20D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p4x6A88loUgatzGI+4oKRPqfNGucQhrs9/KpKhTa+xE=; b=jmF3qpS3t7nsRI
	ROkk/3GAX1EPDD/4SB+T5qXsqrH7Q/c3df1BFUIUniuG3vMuA9qpC30QnzkJUzgS+YmcSkJsyjZMH
	lTEAOrD8NfWJaijpz7EnpeZ6HLjprGir9RQJeejmKobBneqBrS8IoDAbKaYkLFmTupluxeP6HgMEs
	4mnkl0dlWFeURCi/z2uiBT+21ZZGmC0K+KUsFxE8WCNksQu2HQ2YVOS7l3mLMVo0j7GdCNrb+uRxS
	mlbbfzq8HUGnus6yuN+uGUEOmgiQmCvxbm0DVLomWDs4WD/j/2gkJf8TTltW13PIu7yPH8lTSYXtM
	loN1XkCogI/hIYpnlaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJgM-00028o-9u; Wed, 23 Oct 2019 16:40:22 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJg4-0001Uq-IY
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:40:06 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id BF2FC816C;
 Wed, 23 Oct 2019 16:40:36 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] three fixes for omaps for v5.4
Date: Wed, 23 Oct 2019 09:39:57 -0700
Message-Id: <pull-1571848757-282222@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_094004_678037_7B987C51 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 17a9e5bbbfe5a5a6356e47cdc1c1656e1e5e1f62:

  Merge tag 'wlcore-fix' into fixes (2019-10-11 09:15:35 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/fixes-rc4-signed

for you to fetch changes up to 6aed5a0e0f56213cc5e4bff674fb42e997f30df7:

  Merge branch 'watchdog-fix' into fixes (2019-10-18 08:47:39 -0700)

----------------------------------------------------------------
Three fixes for omaps for v5.4-rc cycle

Two regression fixes for omap3 iommu. I missed applying two omap3
related iommu pdata quirks patches earlier because the kbuild test
robot produced errors on them for missing dependencies.

Fix ti-sysc interconnect target module driver handling for watchdog
quirk. I must have tested this earlier only with watchdog service
running, but clearly it does not do what it needs to do.

----------------------------------------------------------------
Suman Anna (2):
      ARM: OMAP2+: Plug in device_enable/idle ops for IOMMUs
      ARM: OMAP2+: Add pdata for OMAP3 ISP IOMMU

Tony Lindgren (2):
      bus: ti-sysc: Fix watchdog quirk handling
      Merge branch 'watchdog-fix' into fixes

 arch/arm/mach-omap2/pdata-quirks.c | 11 +++++++++++
 drivers/bus/ti-sysc.c              | 18 ++++++++++++++----
 2 files changed, 25 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
