Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D51E2222
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHB7d7VXSm5QED1z4CUVs0N2N6IIcUgpZsopfXn1yk4=; b=roLSmGz2LyqU4+
	+4pm/peJNV1QFpEq8HHe5DDKoFbHBijRNeBGfqFz5QTfGodnhVGaJGWkMWpQ3pxSurq+2FlGbCDEM
	LAbryE3Rw+xGc5ByEH44rmA0vbBYTWRtt3AoR4t/5TZhn5WElm8ObUCc74Hu2cTGdkTmYfKlVeouA
	35IsflytsF0mpwVswJANtd0KUy+0AwPU76OBsj3nTWWu3IC4vBAdLPCT6e45gWKRb3T7u9+jHwnMM
	+L8xgDOzoaV4bfTtL3+SbMg59jOMbd6Q/dtk5F0Ht/ryfWfZH5FmKN26KACTtAU6aEeRRGKXrj+ON
	RaaJak3+Vg5Im9pcTV7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKqr-0003wo-9y; Wed, 23 Oct 2019 17:55:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKqa-0003Uh-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:55:03 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A2804816C;
 Wed, 23 Oct 2019 17:55:33 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/2] ti-sysc driver changes for v5.5
Date: Wed, 23 Oct 2019 10:54:49 -0700
Message-Id: <pull-1571853258-16998@atomide.com-2>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1571853258-16998@atomide.com>
References: <pull-1571853258-16998@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_105500_407142_CF545DBE 
X-CRM114-Status: UNSURE (   7.16  )
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

The following changes since commit c7d8669f46ba97f6a8e14d6e9b8d6c39e2c07727:

  bus: ti-sysc: Fix watchdog quirk handling (2019-10-18 08:45:32 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/ti-sysc-signed

for you to fetch changes up to 1819ef2e2d12d5b1a6ee54ac1c2afe35cffc677c:

  bus: ti-sysc: Use swsup quirks also for am335x musb (2019-10-21 14:15:55 -0700)

----------------------------------------------------------------
Changes for ti-sysc interconnect target module driver for v5.5

A series of changes from Tero Kristo for rpm reset control
driver to deal with the ordering requirements between clocks
and resets, and two changes to deal with quirks for musb otg
device.

----------------------------------------------------------------
Tero Kristo (3):
      bus: ti-sysc: re-order reset and main clock controls
      bus: ti-sysc: drop the extra hardreset during init
      bus: ti-sysc: avoid toggling power state of module during probe

Tony Lindgren (3):
      Merge branch 'watchdog-fix' into omap-for-v5.5/ti-sysc
      bus: ti-sysc: Handle mstandby quirk and use it for musb
      bus: ti-sysc: Use swsup quirks also for am335x musb

 drivers/bus/ti-sysc.c | 87 +++++++++++++++++++--------------------------------
 1 file changed, 33 insertions(+), 54 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
