Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314DB15A77D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SSKKcrn6zyFjuiqGNgiFcXe8u/yrso/7u0gOb+1pzeo=; b=g34eafKcU0dUK+bN4TglpnG3wZ
	aU2RlZUBLZuAnTBQjLekKlgf1yY/dcBXTHvM/CD9ZSRHtqZlKvlOOZfFT+gMD0i1jPaGhXC0bRsjY
	wXRUMI7MqQwCdoVGeVisiNTddJOu5uRPjr9AaRQGgKOawJtSHN433QCFpOx8CJsCX8OIgiwIItncA
	9deuZ9JxNuM+51ac/8F2TXGoNKSGl01OMY7KmP9oJlvomRRshlPqIw0RuTK5co6oIwYRyU6akeZy0
	gIMrIf6UFUE7hSt4b6U+DuXZbWjycwpV8qTo40NUPDwa42LbdlauyL3VM1gMyLsKrmvc6UrsU3JN5
	eJSdPngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pzq-0004xh-Ae; Wed, 12 Feb 2020 11:15:58 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1owk-0007kK-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:08:46 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 1m8Y2200f5USYZQ06m8Yvg; Wed, 12 Feb 2020 11:08:38 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1owa-0001Ef-QB; Wed, 12 Feb 2020 11:08:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j1owa-0000Ml-OG; Wed, 12 Feb 2020 11:08:32 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>,
 Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH 6/7] ARM: sunxi: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:29 +0100
Message-Id: <20200212100830.446-7-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_020842_682786_1BEEEC53 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner platform code is not a clock provider, and just needs to
call of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/mach-sunxi/sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-sunxi/sunxi.c b/arch/arm/mach-sunxi/sunxi.c
index 933b6930f024f03a..06da2747a90bc21d 100644
--- a/arch/arm/mach-sunxi/sunxi.c
+++ b/arch/arm/mach-sunxi/sunxi.c
@@ -10,9 +10,9 @@
  * warranty of any kind, whether express or implied.
  */
 
-#include <linux/clk-provider.h>
 #include <linux/clocksource.h>
 #include <linux/init.h>
+#include <linux/of_clk.h>
 #include <linux/platform_device.h>
 #include <linux/reset/sunxi.h>
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
