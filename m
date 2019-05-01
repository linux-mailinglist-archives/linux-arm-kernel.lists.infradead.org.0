Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C9210AFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=objLiF7AJ2YjtCgJQgmkp+RuWvCasjQwUD9p0WRgtOU=; b=ih/mM818PhQ3wO
	AftgfgorCM4/IamLIstipFj9gl9diJ7qvzv2BK2E5Fpr2tWsePiiu4igyRdxEpLcyzmcJ8Cw7WZah
	zBkgFKhExqJtl+TE30eA07V1l0orG2Ci7pd+2tEDTn3LH5RnQtG9dVljgH1QtmGsLlZN1eSvpMRW1
	clS17pnTW2GkQh3BHt8WbGEZ8TA3c+/W8QO5Ht0zPaSJnycpSbzKiBH8OV4tIckdRjPnmN6zrw6B6
	nEe7dYEjxij3Lr2m9n/mHrzqtQ8csRnTxahKsty6HVGMeXbRTSogROIzvMLdM+0AIR2vzCJTbyHST
	MqmA0GHm3e+g0lgehxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrti-0005ih-03; Wed, 01 May 2019 16:15:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrta-0005i9-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:15:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id F3368805C;
 Wed,  1 May 2019 16:16:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL] two fixes for omaps
Date: Wed,  1 May 2019 09:15:36 -0700
Message-Id: <pull-1556727306-300309@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_091546_833051_4B51135E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The following changes since commit 81717283cf2c4c4d9bf8fd618cd6e5bdfe082edd:

  Merge commit '7d56bedb2730dc2ea8abf0fd7240ee99ecfee3c9' into omap-for-v5.1/fixes (2019-04-01 09:36:25 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.1/fixes-rc6

for you to fetch changes up to 6a38df676a0a06bfc7ff8607ac62ccd6d95969ad:

  ARM: dts: logicpd-som-lv: Fix MMC1 card detect (2019-04-30 08:49:25 -0700)

----------------------------------------------------------------
Two regression fixes for omaps

Two one-liners to fix board-ams-delta booting regression and
logicpd-som-lv MMC card detect to use GPIO_ACTIVE_LOW instead of
IRQ_TYPE_LEVEL_LOW. Note that the board-ams-delta regression has
been in there already since v5.0, so if necessary these can wait
for the merge window.

----------------------------------------------------------------
Aaro Koskinen (1):
      ARM: OMAP1: ams-delta: fix early boot crash when LED support is disabled

Adam Ford (1):
      ARM: dts: logicpd-som-lv: Fix MMC1 card detect

 arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi | 2 +-
 arch/arm/mach-omap1/board-ams-delta.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
