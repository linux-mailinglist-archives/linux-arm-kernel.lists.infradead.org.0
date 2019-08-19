Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1FD91F48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o3i8tUDw5G7a6Y1p0l2w966eh1LsII1xo7yVStVan3Q=; b=fAJ
	bTqEDTjhtad20ohfvDxxf044NkILf0Up7dIWdhAzt9e3iszE/b5b7XvpX3ONMfloa2SUi3j5WruOm
	t6iaDG46G0f3Y4aqFyOwvhp3zy/Yut5trFkKbsrktczBR9LFgmFHCgY3ii9+NRiimO3Xsxb3Lcce9
	v+v3H7mGlzCBPrH9mETyjUKRFCknsDBydeg5+aAU3Qg+/BpKDSk46+Uj7i7Df/5c12WWNpi76danF
	UMEwLgy1gUmpyth6V/JRiIhb6enOfb5jkq/YH3EKONuvWAOpGhq0yoOhf3NpmdajosTWHLwkMwUxk
	sLtHIsm2IYvUoVpM7s/8/OPgJuuc7LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdJA-0006f2-TF; Mon, 19 Aug 2019 08:46:32 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdIw-0006dw-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:46:20 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id qwm82000M05gfCL01wm8Xc; Mon, 19 Aug 2019 10:46:10 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hzdIm-0004GM-5V; Mon, 19 Aug 2019 10:46:08 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hzcad-0003fi-Cb; Mon, 19 Aug 2019 10:00:31 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
 Krzysztof Halasa <khalasa@piap.pl>
Subject: [PATCH] soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
 COMPILE_TEST
Date: Mon, 19 Aug 2019 10:00:28 +0200
Message-Id: <20190819080028.13091-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014618_640693_F10B8D27 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The move of the IXP4xx SoC drivers exposed their config options on all
platforms.

Fix this by wrapping them inside an ARCH_IXP4XX or COMPILE_TEST block.

Fixes: fcf2d8978cd538a5 ("ARM: ixp4xx: Move NPE and QMGR to drivers/soc")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
v2:
  - Rebased on top of commit ec8f24b7faaf3d47 ("treewide: Add SPDX
    license identifier - Makefile/Kconfig").
---
 drivers/soc/ixp4xx/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/ixp4xx/Kconfig b/drivers/soc/ixp4xx/Kconfig
index de2e62c3310a37d0..e3eb19b85fa4b358 100644
--- a/drivers/soc/ixp4xx/Kconfig
+++ b/drivers/soc/ixp4xx/Kconfig
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
+if ARCH_IXP4XX || COMPILE_TEST
+
 menu "IXP4xx SoC drivers"
 
 config IXP4XX_QMGR
@@ -15,3 +17,5 @@ config IXP4XX_NPE
 	  and is automatically selected by Ethernet and HSS drivers.
 
 endmenu
+
+endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
