Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C559810431B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/eC8Bo+oIxp6hc2ozgKF2N7H5Rg/2oUyh7y/SI6dPtQ=; b=MdxGQ9zJpk2PBu
	0AP8lMacaJgzHrM5hSo2dec8M2ZCqTQC1971uQj0lI4tyGxmeKJNzQasoMXZo8BB8kzUL8i3fXKg3
	IGu6VHyUf+NDYWhCbVNJao0uDzJOH46GrHcBz5HQl6EjDzD6Z13US8NkryJzJ3BFn8f2wiC+CRnB3
	dmV+Xc2QYu4dnpBHeB6IcK+bH5fIbMDnquy6YY91sIfV18t14xo4sLTXJ//9wipbOZWKIiD4+3YEX
	tR1B18dlB8przH95UTwSzBzqC2wovQpSakAXqXMzrMhNuEibLhw1VO8mnSU0RJKcu/IEyjd2dgVC+
	v+lIFu/jlBh2wwmvOe0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUWp-0005Aj-Mn; Wed, 20 Nov 2019 18:16:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUWh-0005A6-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:16:28 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3BF45811B;
 Wed, 20 Nov 2019 18:17:00 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] few ti-sysc fixes and updates for v5.5 merge window
Date: Wed, 20 Nov 2019 10:16:19 -0800
Message-Id: <pull-1574273726-31367@atomide.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101627_718807_6F5E185E 
X-CRM114-Status: UNSURE (   9.35  )
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

The following changes since commit b82049f2c1395d0bf99f0ae291c748c9dcb7d507:

  Merge tag 'omap-for-v5.5/soc-late-signed' into omap-for-v5.5/ti-sysc-late (2019-11-20 10:01:38 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/ti-sysc-late-signed

for you to fetch changes up to d7d8d62a3f3b50b606c9395298b017bd9fd9c8d4:

  Merge branches 'omap-for-v5.5/soc' and 'omap-for-v5.5/ti-sysc' into omap-for-v5.5/ti-sysc-late (2019-11-20 10:04:05 -0800)

----------------------------------------------------------------
Few ti-sysc related fixes for v5.5 merge window

Just few minor changes that can be merged when suitable, but would
be good to have these in v5.5-rc1 to remove dependencies between branches
for more changes later on in v5.6:

- Add quirk handling for AESS (Audio Engine Sub System)

- We want to drop the useless gptimer option for omap4 as there are local
  timers

- A minor error path handling improvment for sysc_child_add_named_clock()
  that will make further patching a bit easier

----------------------------------------------------------------
Markus Elfring (1):
      bus: ti-sysc: Adjust exception handling in sysc_child_add_named_clock()

Tony Lindgren (3):
      bus: ti-sysc: Add module enable quirk for audio AESS
      ARM: OMAP2+: Drop useless gptimer option for omap4
      Merge branches 'omap-for-v5.5/soc' and 'omap-for-v5.5/ti-sysc' into omap-for-v5.5/ti-sysc-late

 arch/arm/mach-omap2/timer.c           |  4 ++--
 drivers/bus/ti-sysc.c                 | 21 ++++++++++++++++-----
 include/linux/platform_data/ti-sysc.h |  1 +
 3 files changed, 19 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
