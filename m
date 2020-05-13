Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08551D1B32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P6V1f3JIumHd+yyzo1ixK5faZZGxVJvfLy5shqglWVM=; b=VoA6i1XuczPM3+
	pgKa0kA32JV80wI0GzCEcimpVFwzZLNqkcqAEMJ8QzfsNPyEPdsu2yso1VNAmwL7aX6AMI2cyxWrx
	2HF5KXywsfHFEYPI/FZs9w52ZCoAvQkb5NhV2hEWISNUnHtBc8aCf+NIMM6+48GGnWWIHocxmgYqT
	K/ry+NoUHsQXrOl0WgWL7V15at0vKOaoLFu2Q3mavP8PHt1qwprbY25VwXB5BZQzQMeiVDY3RLBTt
	VKYw3/XQOCC0A45Eb8V80WMSYqtffiPYYHGNzTshS1qA/3rPJtcpGQdGTEetyHqAZrlQ75rQJdJk9
	DbXMwfkpQ54b97CdU1cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuMN-0002WU-8V; Wed, 13 May 2020 16:35:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuMG-0002V7-5s
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 16:35:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8314A80E1;
 Wed, 13 May 2020 16:36:35 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] SoC changes for omaps for v5.8
Date: Wed, 13 May 2020 09:35:43 -0700
Message-Id: <pull-1589387719-605999@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_093548_252494_1376187D 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/soc-signed-take2

for you to fetch changes up to d33e3d542b6c09a5cb4fa51d82109b2ca92e89c2:

  ARM: OMAP2+: pm33xx-core: Make am43xx_get_rtc_base_addr static (2020-05-12 08:36:04 -0700)

----------------------------------------------------------------
SoC changes for omaps for v5.8 merge window

SoC related changes for omaps:

- Use ard instead of adrl for sleep34xx.S for clang

- Stop selecting MIGHT_HAVE_CACHE_L2X0, it's already selected
  by ARCH_MULTI_V6_V7

- Make omap5_erratum_workaround_801819() and am43xx_get_rtc_base_addr()
  static

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: omap2plus: Drop unneeded select of MIGHT_HAVE_CACHE_L2X0

Ma Feng (1):
      ARM: omap2: make omap5_erratum_workaround_801819 static

Samuel Zou (1):
      ARM: OMAP2+: pm33xx-core: Make am43xx_get_rtc_base_addr static

Stefan Agner (1):
      ARM: OMAP2+: drop unnecessary adrl

 arch/arm/mach-omap2/Kconfig       | 1 -
 arch/arm/mach-omap2/omap-smp.c    | 2 +-
 arch/arm/mach-omap2/pm33xx-core.c | 2 +-
 arch/arm/mach-omap2/sleep34xx.S   | 2 +-
 4 files changed, 3 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
