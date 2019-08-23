Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95AE9B889
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 00:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W00W8Q1VMBumxekEkn5h2FVu5OdXN7hITUCOporAg9Y=; b=ZGfPyu5XoiRfIk
	bGFEfjHB/0NvvKvVH5s+gvSze6vLe4pCSpNZb6Zwm7GPesTjW5jamGT3Vmyjm9zjAokRJ/qmGYSCA
	rAC8KfY6OcvwUvnXNXK3Fy30CiAFQXC505ctiaiqPNpXXQ5YQP88x0dGj1yHD9L1I9s1ObKjlql+n
	r51cswhakSpcjUA8krz7l9QeIq9t/4vVUGF6VIyvrVVK7jNHzH9F9oys4uX8n9U+ctjHiFyDexOxf
	bdnD0RlP7ruJFqXoqec/ERNeIZRw1RMo+fZXsmY3nHWwDH0l7QL56yQMzCWXscX+iGS8+z7YPYTte
	aZFVVhc1W7KNGd5rpnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Hzb-0003uB-FZ; Fri, 23 Aug 2019 22:25:11 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1HzE-0003nr-Bs
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 22:24:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0FB4880A5;
 Fri, 23 Aug 2019 22:25:14 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/2] ti-sysc driver changes for v5.3
Date: Fri, 23 Aug 2019 15:24:41 -0700
Message-Id: <pull-1566599057-142651@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_152448_514295_1528B0F8 
X-CRM114-Status: UNSURE (   7.59  )
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

The following changes since commit 5b63fb90adb95a178ad403e1703f59bf1ff2c16b:

  ARM: dts: Fix incomplete dts data for am3 and am4 mmc (2019-08-13 04:03:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/ti-sysc-signed

for you to fetch changes up to c8a738f4cfaeccce40b171aca6da5fc45433ce60:

  bus: ti-sysc: remove set but not used variable 'quirks' (2019-08-13 04:40:11 -0700)

----------------------------------------------------------------
Driver changes for ti-sysc for v5.4

Few changes to prepare for using a reset driver for PRM rstctrl mostly
to deal with the clocks for reset. Then few minor clean-up patches and
SPDX license identifier changes, and add a MAINTAINERs file entry.

----------------------------------------------------------------
Suman Anna (4):
      MAINTAINERS: Add ti-sysc files under the OMAP2+ entry
      dt-bindings: ti-sysc: Add SPDX license identifier
      bus: ti-sysc: Switch to SPDX license identifier
      bus: ti-sysc: Add missing kerneldoc comments

Tero Kristo (3):
      bus: ti-sysc: re-order the clkdm control around reset handling
      bus: ti-sysc: rework the reset handling
      bus: ti-sysc: allow reset sharing across devices

YueHaibing (1):
      bus: ti-sysc: remove set but not used variable 'quirks'

 MAINTAINERS                           |  2 ++
 drivers/bus/ti-sysc.c                 | 56 ++++++++++++++---------------------
 include/dt-bindings/bus/ti-sysc.h     |  1 +
 include/linux/platform_data/ti-sysc.h |  7 +++--
 4 files changed, 31 insertions(+), 35 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
