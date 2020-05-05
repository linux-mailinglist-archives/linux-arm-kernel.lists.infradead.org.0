Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8644E1C5A97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RFiDUJgJSY7V7bzJivVzLsuykAPJXlQYY7NZ0VUvj2E=; b=XiKDkMVSaWAH1XKatIjJOtqmy2
	aV5aGSc7O/XdiAwMhqcaJeFD4dLiADQzKWowwdBf781C4oqVyw1BLE1rTbHElHQIDma3qBglzGxEi
	KRwMPgvdngNY5re1ypU6XfUGNMF0OPQ8k8EY+Xuewf5/TlKXLOPPvtuUK5vXkuVOQ6Y8Bi+J5zO6U
	D1VGG3NQnJ5MKziWt5DAE5dTlE0zG+etFgZ9dVCC6aEaBjVvUMLYuiOTt/3XFyZCIz2VxYCs31bxl
	sibmCuBrYe87/xXn7W3qAVvXKl6L6rXCw2eOXESvWhBWIeYzfVbwJ0fspHnPk4UsRor3q7AVkf91e
	Q1n3gguw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzBY-0007dA-1t; Tue, 05 May 2020 15:08:40 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAW-0006jf-N8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:40 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by andre.telenet-ops.be with bizsmtp
 id b37U2200Y3VwRR30137UPK; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-00028Z-70; Tue, 05 May 2020 17:07:28 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-0000R1-28; Tue, 05 May 2020 17:07:28 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 13/15] ARM: prima2: Drop unneeded select of HAVE_SMP
Date: Tue,  5 May 2020 17:07:20 +0200
Message-Id: <20200505150722.1575-14-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080736_936560_99D2F6D4 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: Barry Song <baohua@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for CSR SiRF SoCs depends on ARCH_MULTI_V7.
As the latter selects HAVE_SMP, there is no need for ARCH_ATLAS7 to
select HAVE_SMP.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Barry Song <baohua@kernel.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
  - Add Acked-by.
---
 arch/arm/mach-prima2/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-prima2/Kconfig b/arch/arm/mach-prima2/Kconfig
index 6f66785fab01bbc9..ea077f66372dd55a 100644
--- a/arch/arm/mach-prima2/Kconfig
+++ b/arch/arm/mach-prima2/Kconfig
@@ -30,7 +30,6 @@ config ARCH_ATLAS7
 	select ARM_GIC
 	select ATLAS7_TIMER
 	select HAVE_ARM_SCU if SMP
-	select HAVE_SMP
 	help
           Support for CSR SiRFSoC ARM Cortex A7 Platform
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
