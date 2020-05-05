Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368E21C5A98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NwvPflzllK2sFY3DD0av4GNCoFlj9i8cg75XfVtnK8E=; b=sIlVDVf/+WrJMwFbeD9uBm+Fay
	B2y3eCTqGAq0abHyH4OpxqjQglbnrgwAjP/lGgMHSoKdKkZPzFGg/1azqj3BWY/WPF5E/ug98HJsg
	UqfSWEMGF/cUjP33ouM/WOSG3bv4E7TQAhALeIht/p/ZCtemRCHpXPoeC2EjgBr1UNzjyW7AHcvcC
	3ZpedujTPq/4QgIyhU57ouUiDtVk6sn8F++Fmes4xmL7p0Yl873xoK6DPBuQgDKFZHozh/6BiRW2t
	uAYX8WRFs9k0SVoZ45iyp78pLmn+xXr3flDSNWqsox7gpHy/rnAUOYHQ6owQnbrn8QMz2NLooi9JA
	wJHvEQNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzBi-0007qm-Vx; Tue, 05 May 2020 15:08:51 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAW-0006ji-N7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:40 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by andre.telenet-ops.be with bizsmtp
 id b37U2200X3VwRR30137UPJ; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-00028X-5l; Tue, 05 May 2020 17:07:28 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-0000Qz-0c; Tue, 05 May 2020 17:07:28 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 12/15] ARM: omap2plus: Drop unneeded select of
 MIGHT_HAVE_CACHE_L2X0
Date: Tue,  5 May 2020 17:07:19 +0200
Message-Id: <20200505150722.1575-13-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080736_916490_28604B8A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for TI AM43x SoCs depends on ARCH_MULTI_V7, which selects
ARCH_MULTI_V6_V7.
As the latter selects MIGHT_HAVE_CACHE_L2X0, there is no need for
SOC_AM43XX to select MIGHT_HAVE_CACHE_L2X0.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-omap@vger.kernel.org
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Tony Lindgren <tony@atomide.com>
---
v2:
  - Add Acked-by.
---
 arch/arm/mach-omap2/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index dca7d06c0b938619..ea23205bf70f4df6 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -66,7 +66,6 @@ config SOC_AM43XX
 	select ARCH_OMAP2PLUS
 	select ARM_GIC
 	select MACH_OMAP_GENERIC
-	select MIGHT_HAVE_CACHE_L2X0
 	select HAVE_ARM_SCU
 	select GENERIC_CLOCKEVENTS_BROADCAST
 	select HAVE_ARM_TWD
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
