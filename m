Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A04E979DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cDpBsaUxP5BUz+b+3QGtN/pFrqm+c7XSFcZkiwdCTNY=; b=EOqcZMtCxu47e4JDb0c8EofeMh
	SQRhbDRkcRgcjz594mVtfOd6Clo4AvJV6BOP/9lTsZIab6iMmctde9ILHeSEPXSTEC2IuVxUA957W
	6H1d6eLJwzHx0k6XHBNUfFYDNqkWJKUOuzkibOUC8ugKR93SBIssL2dPNgCs3mbNyxIhW/kfis6G/
	7Z6wLcnnRNTBuq4iuI+5RqhsewXVsTSbkfi9sSgpJXHoF4HFbfP4XXHkHMR/KGMFHKcUSNKIziDL7
	vGO/SnAhW4XymLm9bZjTXTZrP6RYzkQSduNCVpe8h1bC4LZ0So4NhxxXxs/h3aISAj1/14aSgtsTX
	2TUlsZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Q1K-00011E-Or; Wed, 21 Aug 2019 12:47:23 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Q0G-0000MY-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:46:19 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id rom32000i05gfCL06om3cp; Wed, 21 Aug 2019 14:46:07 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0003e4-Mg; Wed, 21 Aug 2019 14:46:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i0Q03-0007dl-Lf; Wed, 21 Aug 2019 14:46:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Simon Horman <horms@verge.net.au>,
	Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 3/3] [RFC] ARM: shmobile: defconfig: Disable
 PL310_ERRATA_588369
Date: Wed, 21 Aug 2019 14:46:02 +0200
Message-Id: <20190821124602.29317-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821124602.29317-1-geert+renesas@glider.be>
References: <20190821124602.29317-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_054616_583003_2A32C8B7 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PL310 Erratum 588369 affects PL310 cache controller revisions older than
r2p0.

As Renesas ARM SoCs contain the following revisions:
  - SH-Mobile AG5: r3p1,
  - R-Mobile A1: r3p1-50rel0,
  - R-Car H1: r3p2,
  - RZ/A1: r3p2,
  - RZ/A2: r3p3,
none of them are affected, and support for the errata can be disabled
safely.

The EMMA Mobile EV2 documentation doesn't mention the revision of its
PL310 cache controller, so this SoC might be affected.  However, the L2
cache controller is not enabled by Linux.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/configs/shmobile_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
index 123821e63873dafa..95a127cbe8e6fcd7 100644
--- a/arch/arm/configs/shmobile_defconfig
+++ b/arch/arm/configs/shmobile_defconfig
@@ -8,7 +8,6 @@ CONFIG_CC_OPTIMIZE_FOR_SIZE=y
 CONFIG_PERF_EVENTS=y
 CONFIG_SLAB=y
 CONFIG_ARCH_RENESAS=y
-CONFIG_PL310_ERRATA_588369=y
 CONFIG_SMP=y
 CONFIG_SCHED_MC=y
 CONFIG_NR_CPUS=8
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
