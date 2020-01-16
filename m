Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8961A13F513
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqVX/FA3M7cfLj5pElY5Zk2Ru5u5sMVe1mcYYUVDzK8=; b=aY8BUMb7GHHzFc
	c5lqUWmkb2FpLc331CDyKmyDkMxhFkl94ptkTM/nCTqC7jQISQWb6MIgI1O9DAfjW3IThQdBuunEu
	2Cp1rXJXIm5Hq+t59o0cSL6Ck1lvJUTx905vRjdsnLARq8ajIn4UcOQAN5jzDEewmI8IBuRWoiUfI
	G2qun8h9Oc51GiJo7QoU8WvptVJoipQaurrZl4giy0r1U3MPS1FBGCK3b/LD9e0SG3B7+oj8lPqpv
	+aufHHdiFfIcBqdRRWaPQTsZqVYN//huiVgL7kywEvw8KC/c/77CDMrkhoLZn/V3Uy2KpmkS9eMsi
	wKQVLhCnvYFJJ8lYDyjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAHK-0002P2-Vh; Thu, 16 Jan 2020 18:54:02 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isACG-0004l8-3b
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:48:55 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A060D8125;
 Thu, 16 Jan 2020 18:49:27 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] soc changes for omap smc for v5.6
Date: Thu, 16 Jan 2020 10:48:11 -0800
Message-Id: <pull-1579200367-372444@atomide.com-2>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1579200367-372444@atomide.com>
References: <pull-1579200367-372444@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104848_230706_5CDC66AD 
X-CRM114-Status: UNSURE (   8.29  )
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

The following changes since commit 4601832f40501efc3c2fd264a5a69bd1ac17d520:

  ARM: OMAP2+: use separate IOMMU pdata to fix DRA7 IPU1 boot (2019-12-17 09:57:09 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/soc-smc-signed

for you to fetch changes up to 8ab871f8bdfcca627802b6992e556fba5722a268:

  ARM: OMAP2+: sleep43xx: Call secure suspend/resume handlers (2020-01-13 10:06:46 -0800)

----------------------------------------------------------------
SMC related changes for omaps for v5.6 merge window

A series of changes to use optee SMC calls if optee is initialized by
the bootloader. Based on the discussions on LAKML in mailing list thread
"arm_smccc_smc as generic smc interface?" we don't want to add more quirk
handling to arm_smccc_smc() and want to handle it locally instead.

----------------------------------------------------------------
Andrew F. Davis (4):
      ARM: OMAP2+: Add omap_secure_init callback hook for secure initialization
      ARM: OMAP2+: Introduce check for OP-TEE in omap_secure_init()
      ARM: OMAP2+: Use ARM SMC Calling Convention when OP-TEE is available
      ARM: OMAP2+: sleep43xx: Call secure suspend/resume handlers

 arch/arm/mach-omap2/common.h      |  2 +-
 arch/arm/mach-omap2/io.c          | 11 +++++++++
 arch/arm/mach-omap2/omap-secure.c | 50 +++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap2/omap-secure.h | 10 ++++++++
 arch/arm/mach-omap2/omap-smc.S    |  6 ++---
 arch/arm/mach-omap2/pm33xx-core.c | 24 +++++++++++++++++++
 6 files changed, 99 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
