Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D6DDC8F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0k24oXwZ5qP7yVjOcrDp44D5Z4gSF5ndp4YHNlLllE=; b=WnAe8r4gb3cpAH
	So9Xn745srraBszdUQq+r1sn2rxVNr/tdGc8HYP24GwZsGwLjnV/7qlxAhWZ0WpI+byzy9TGJoqTN
	l6L261DA3JPkOHY4R4YMF9vksENg4T8uvxPOMsgokUt85iprwf7xDPXzfVV43icEwz4iyEG29Q7V4
	B3JisWI6vmMTFGNYsmPXpXM7BVSHpEs9n7Sq/lmZZdmKo5kB1nY9CX8SkB42tGM50OQkxvUOmiszc
	EUX3/aHoR0vvzJiKfJFxTuiooW6RLA3qWSM/AwEerNK33haYJ+Q1GekYnvzFifKg9IUcIIGpNqlxs
	P9Zc+XSQunx/Hp2FbWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUOy-0007y9-SY; Fri, 18 Oct 2019 15:42:53 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOR-0007v4-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:21 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MMGVE-1iefOy3vpW-00JN2x; Fri, 18 Oct 2019 17:42:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 01/46] ARM: pxa: split mach/generic.h
Date: Fri, 18 Oct 2019 17:41:16 +0200
Message-Id: <20191018154201.1276638-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:iVpqPa86ze0iu6OOhejjP0amJ+TBDw2xGngL1judoPmHRjZqhrN
 Q8EV0/l37SyeJE75D3N0sPgmWDWfWo3kfjx4Em1fWmC+AqabmnYF6cwMs7AEN7c0tR/Z5mh
 8hLOuC4xixrHLW0YeCu/YYym6BIPrIMwr7Df6OMgqkBrdWo/qM7oNnqRHAo4wN3I/zLbZ7L
 GlXM6ZyWBP6LsF4XfIoUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zZptb6vq8zo=:s2X4MeHnHk9Lnsa8+6HPrv
 5iWkf8Ogxx4F2D5bQeqlIN8hnoKsIoke3kROPXtoWwAsgN/Mvgphi7O/1KVM62gqsVXB4uBUq
 QScfAuVc2CZ8xiei7BMhcnHUazOJG3tNXI+l3CA23fFXlmrtEoGJFSw7F3afJCgl54UtHmx1Y
 /QZwSwoVo+zjXlpLxNICYSt6n12AlFt7HVgkbM+cjj/vAyBXQ/MlU7ZKro7bzSGMnFdRoMZ6X
 S7KUITNX7C/e0OKxkdy1AvOGTsASKLORorjb813zTf7ZirNfGUVdVB8LFP4Oifzxsbdl0wlS2
 tp2deM99n2HYbQGZgO1zR++T4iQF1CEDbEIEXWgOZSAA7lkPX1Tbf26l/N81xs+t7hNSVG4TJ
 piwFW1fo+7M2TZTvATuN0iDJKraGYum+IezXddTa6eU9/peK9Fkz/fJ9K6qUxoqNXwU7/pjBM
 oGtM+XLr4s1dng303bjLH5TV8ajpR7SjpVzxKjsQ6AvXTtShp7HwFRuVKp+dzBFR0PH3APhrl
 Cpcj12H0cm7Vtxd0vSgQ7e/DMMPkvB4+EDK4hbt25MW/1D8kmbtYRfk9GLIYY9Ta9YeRnmRNp
 EuOovsX75bzAy/WY4EoF74EwXpdl2c7uiin15oWo4LEt9InZk6pmuik6LXXy497IMjsqj40mY
 zlsta6/sLUIXNSauSAtsxfxGLDT8OuDI2WCpjkqz+6KfWEFuo5zL+fg98GPi9rZ1f3TXecJSk
 iXuMvRUEQWgcI/3gT54guvIEuitSDyehDWK8KwzHQApnkVzUZ3+7Bk7RiVdIo5+nbAtyviXKg
 tDd30zvyCrWdDSoLe8op6L0RmbI5nySrkijI9JvuFREP81peEn3MoVcf/mfB027BdZBk1QpYk
 nNMQ503PoGBx79gW3/zQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084219_847219_5D8FDB12 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only one declaration from this header is actually used in drivers,
so move that one into the global location and leave everything else
private.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/generic.h              | 6 +-----
 arch/arm/mach-pxa/include/mach/generic.h | 6 +++++-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-pxa/generic.h b/arch/arm/mach-pxa/generic.h
index 3b7873f8e1f8..67925d3ea026 100644
--- a/arch/arm/mach-pxa/generic.h
+++ b/arch/arm/mach-pxa/generic.h
@@ -7,6 +7,7 @@
  */
 
 #include <linux/reboot.h>
+#include <mach/generic.h>
 
 struct irq_data;
 
@@ -71,8 +72,3 @@ extern unsigned pxa25x_get_clk_frequency_khz(int);
 #define pxa27x_get_clk_frequency_khz(x)		(0)
 #endif
 
-#ifdef CONFIG_PXA3xx
-extern unsigned	pxa3xx_get_clk_frequency_khz(int);
-#else
-#define pxa3xx_get_clk_frequency_khz(x)		(0)
-#endif
diff --git a/arch/arm/mach-pxa/include/mach/generic.h b/arch/arm/mach-pxa/include/mach/generic.h
index 665542e0c9e2..613f6a299d0d 100644
--- a/arch/arm/mach-pxa/include/mach/generic.h
+++ b/arch/arm/mach-pxa/include/mach/generic.h
@@ -1 +1,5 @@
-#include "../../generic.h"
+#ifdef CONFIG_PXA3xx
+extern unsigned	pxa3xx_get_clk_frequency_khz(int);
+#else
+#define pxa3xx_get_clk_frequency_khz(x)		(0)
+#endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
