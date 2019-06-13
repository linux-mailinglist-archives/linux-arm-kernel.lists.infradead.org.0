Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480274333D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jq1n+fK3QtWysix5ypCW4meS/g7py8UBFAR9F5JHQ1s=; b=lnDlq6mrR6vg29
	zxNS19TqK2Iwd4kuHArIdb19JEHCw9usD6bep0UtXsaXybPs4MLf2MzzeIHZkR2a9vPiStp0B0tM1
	GOKJdKM6I3yg3zzYE2UweGXhYPdgDjKLtScn2PhyQNKtAs/K7yYaxut0AFo46ZsRn7MmxLbYAPuXf
	Is/9v8dSpYg/yZ1xh5fG3Mh/MGEio+0TqhpW8YqGODwf7zstui4t7PUGqIRGFh3FPwa34zgsQyiuO
	nFLPVwSVPfZ0W6HhHW/YUkb1//CqG04zG6MZnt1hD49QXFRmRC1sxBMkhokBicHKixKQ6FJEQ1rZ5
	v58g9WpxWfmo8wDcdwuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJzr-0004yC-Nj; Thu, 13 Jun 2019 07:18:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJt0-0006Qm-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:11:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2E960811B;
 Thu, 13 Jun 2019 07:11:21 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL 1/4] soc changes for omap variants for v5.3
Date: Thu, 13 Jun 2019 00:10:50 -0700
Message-Id: <pull-1560399818-512977@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001102_809266_86EC9324 
X-CRM114-Status: UNSURE (   8.49  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/soc-signed

for you to fetch changes up to 45450f36e569e5162957df488b0174c9a952e1b0:

  soc: ti: pm33xx: Add a print while entering RTC only mode with DDR in self-refresh (2019-06-10 05:19:26 -0700)

----------------------------------------------------------------
ti-sysc soc changes for v5.3

Just two changes to make few platform data functions static, and to
call dev_info() if am437x is suspending to RTC-only mode. We want to
see this in case of issues as it depends on the board wiring for things
like DDR memory.

----------------------------------------------------------------
Keerthy (1):
      soc: ti: pm33xx: Add a print while entering RTC only mode with DDR in self-refresh

YueHaibing (1):
      ARM: OMAP2+: Make some variables static

 arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c | 8 ++++----
 drivers/soc/ti/pm33xx.c                                 | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
