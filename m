Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF5FE222B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=toofu6/HULS4i4GZSlqm+Apw0YLurvRPwq6OFsEu9sc=; b=JSs84bgFeX4Q8w
	7iD1N6DWgKKJ9qlm8bN/gZ0lIrjavg2s4T02iRxIbqkreK+ciwQz7fblntwOXJy4eNqjgai05rTfS
	R9e56M5FLtlXyWee7yvc9OlkJuDQbqQq7/UmG6wN9cRWPEjasIKsPIOTSK3r984K7IZ8fCairyH31
	lQLpDrqvX+FPA0bSUJkeooDMxQWTj2uDvuPM4YiV0vnijB2akt2cp4A6/auRTjbmnmMi9n+lfhvVQ
	s0DIou4edmywnMNuVcN79uN+mDr7K57LkG1lpiXl8B0W43K9KRaAvOD+ttZu3GKzQOKgLDdUp+QaM
	hqvAnv5JumX9azk6mccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKr7-0004tW-Rt; Wed, 23 Oct 2019 17:55:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKqa-0003Uf-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:55:03 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8B12080CF;
 Wed, 23 Oct 2019 17:55:32 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/2] omap2plus_defconfig changes for v5.5
Date: Wed, 23 Oct 2019 10:54:48 -0700
Message-Id: <pull-1571853258-16998@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_105500_406035_D740195E 
X-CRM114-Status: UNSURE (   7.18  )
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

The following changes since commit 96d49bbfe6c1a6bb43ccd00fb87aca100e32e5e2:

  ARM: omap2plus_defconfig: Fix selected panels after generic panel changes (2019-10-03 09:44:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/defconfig-signed

for you to fetch changes up to ec2b31267263cd7d5a7567d315f839796c2a8c87:

  configs: omap2plus: Enable VIDEO_MT9P031 module (2019-10-22 09:11:03 -0700)

----------------------------------------------------------------
Defconfig changes for omap2plus_defconfig for v5.5

A series of changes from Adam Ford to update for removed and moved items,
and then enable crypto devices and MT9P031 video as loadable modules.

Looks like I missed unifying the subject line for one commit, but I did
not want to mess with the commit after pushing it out.

----------------------------------------------------------------
Adam Ford (4):
      ARM: omap2plus_defconfig: Update for removed items
      ARM: omap2plus_defconfig: Update for moved item
      ARM: omap2plus_defconfig: Enable HW Crypto engine modules
      configs: omap2plus: Enable VIDEO_MT9P031 module

 arch/arm/configs/omap2plus_defconfig | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
