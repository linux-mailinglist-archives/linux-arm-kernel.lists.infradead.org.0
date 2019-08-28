Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDC5A0999
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7DjQy6VRcsDPJexRvBpkePKQ/ymw8tRSQ2SxyuBvYVA=; b=MbiRFYSy9TjF8I
	L4dZ6MQ4ZTXnt4ro5a+vyC7nSm3hX8J4N2hhrUQEJc5gM0gBthqS4Z7q82rJmjozTWq6g3DORco+J
	xjxxWmyqkS0bhjMGg1YiMfAYT5q8Ujxn6SGesRpQk+HAC6SNvg3Z+CwQkPxs+VtSKaO6INuCSHDDj
	nIQYfG4wSDuyzMaXaJ3Cvi2uCydUHEobjhJUOsgChFsmLlWT4O4VdiSrq+z8vKuH15Q8QygHosdk1
	nZg3TVI2GmLjk3QXZqSwJ2YWOobARmqqP2aa/zdKiF8VTmV/LeHtM92r9h+xA6m+fu3n3WoQ2pXeC
	eNcfohn/1YKUhEp2ai7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32mn-0004tC-HG; Wed, 28 Aug 2019 18:35:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32mW-0004se-VQ
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:34:58 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0FEC88162;
 Wed, 28 Aug 2019 18:35:25 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] soc changes for omap variants for v5.4
Date: Wed, 28 Aug 2019 11:34:49 -0700
Message-Id: <pull-1567016893-318461@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113457_047788_90A39495 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/soc-signed

for you to fetch changes up to 50f57ef83d836d727902a6a7e70cca61b0d02655:

  ARM: OMAP2+: Delete an unnecessary kfree() call in omap_hsmmc_pdata_init() (2019-08-26 08:59:48 -0700)

----------------------------------------------------------------
SoC changes for omap variants for v5.4

The first change moves platform-specific asm-offsets.h to arch/arm/mach-omap2
to fix iessu with parallel build with CONFIG_IKHEADERS, and the second change
removes a useless kfree.

Note that the first change causes a trivial merge conflict with the iommu
changes for arch/arm/mach-omap2/Makefile.

----------------------------------------------------------------
Markus Elfring (1):
      ARM: OMAP2+: Delete an unnecessary kfree() call in omap_hsmmc_pdata_init()

Masahiro Yamada (1):
      ARM: OMAP2+: move platform-specific asm-offset.h to arch/arm/mach-omap2

 arch/arm/mach-omap2/.gitignore  | 1 +
 arch/arm/mach-omap2/Makefile    | 5 +++--
 arch/arm/mach-omap2/hsmmc.c     | 4 +---
 arch/arm/mach-omap2/sleep33xx.S | 2 +-
 arch/arm/mach-omap2/sleep43xx.S | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/mach-omap2/.gitignore

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
