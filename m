Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9D41FF9C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmc+TMyLO0UJvQPkMHE87kDjkepudG7uns+YJqunRZA=; b=NBhcNSSgRGLqkz
	EUrJoU+GD6qFYu6fW2mzQV5dHw2nTwz02E241jiDS6tKEzcTKkLmM0cIZpZwgN9Lub9OHivQGJWfo
	svJJT7VHgF+0Lc5N6SACp0FdKC8HMO8agCsNhc6eTzloYZdOJjLusFZtejWD8/ECv0NuLy0faTSW+
	gkzyCaE5wj/5EiDxSPFHaGuz0WcsQAO2wniu6oyaPW8h4UipwdYdGpbfBl18PUsBD+666XGB0N/MD
	RwmkJSIIiwy8ILGkJnx8LBMa9eSjPYBzRSjBm/xDDEc0sQrQL41qYFYjxLF+zoMSeXwHqR7oZjCVC
	Z00/M5xJn4Osw2+iReSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlxpN-0000JG-5D; Thu, 18 Jun 2020 16:55:49 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlxpE-0000IE-Iy
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 16:55:41 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id BA53A80A9;
 Thu, 18 Jun 2020 16:56:26 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Few dts fixes for omaps for v5.8
Date: Thu, 18 Jun 2020 09:55:27 -0700
Message-Id: <pull-1592499282-121092@atomide.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_095540_669216_3C97F2EE 
X-CRM114-Status: UNSURE (   9.33  )
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

The following changes since commit 07c7b547a79605f1041d55b84d91a4a4d9c5b363:

  Merge tag 'v5.8-rc1' into fixes (2020-06-16 09:25:03 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/fixes-rc1-signed

for you to fetch changes up to a352fe371053d047481635da328ea781329c84a4:

  Merge branch 'omap-for-v5.8/fixes-rc1' into fixes (2020-06-16 09:26:03 -0700)

----------------------------------------------------------------
Few dts fixes for omaps for v5.8

Few fixes for various devices:

- Prevent pocketgeagle header line signal from accidentally setting
  micro-SD write protection signal by removing the default mux

- Fix NFSroot flakeyness after resume for duover by switching the
  smsc911x gpio interrupt to back to level sensitive

- Fix regression for omap4 clockevent source after recent system
  timer changes

- Yet another ethernet regression fix for the "rgmii" vs "rgmii-rxid"
  phy-mode

----------------------------------------------------------------
Drew Fustini (2):
      ARM: dts: am335x-pocketbeagle: Fix mmc0 Write Protect
      ARM: dts: am5729: beaglebone-ai: fix rgmii phy-mode

Tony Lindgren (3):
      ARM: dts: Fix duovero smsc interrupt for suspend
      ARM: dts: Fix omap4 system timer source clocks
      Merge branch 'omap-for-v5.8/fixes-rc1' into fixes

 arch/arm/boot/dts/am335x-pocketbeagle.dts  | 1 -
 arch/arm/boot/dts/am5729-beagleboneai.dts  | 2 +-
 arch/arm/boot/dts/omap4-duovero-parlor.dts | 2 +-
 arch/arm/boot/dts/omap4.dtsi               | 2 +-
 4 files changed, 3 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
