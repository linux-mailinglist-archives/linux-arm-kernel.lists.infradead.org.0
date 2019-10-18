Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9178CDC93F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EfLXuWtW0/VG94oqlcQZ12Y7YhffgHSNARSIX/jYF8=; b=ExDli84lv+DyLR
	vgyO+Nqpx0BHTDC5rpMG9S8DWhIAggm3g+RUXiFhZNcKPKD4AIBs1YtAhWZyCsDEHUc8dluzaVqvA
	fL73iFQ69O36q7q516KHdfz6bPITkKdnBBwlmXyNSKl/L6HmugcnQnzejfHCjoXAWXyv9Xx5nhMyD
	E5koa1nTpCBiQMaI/qGqiiSGhCyai8vHs8kIPseCDzFFRnuUkpyPBoC9memN+GPQkcS2qFc//qO9b
	RszWy7nkfk7k34zEWcXvefzGsrag1owtOqyjz4BRJDl8gtVYoxCse34Xd69sGtwwKcq6zjrGw/gav
	yvcaUQGxPnh15BGQmoAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLURP-0001H8-GK; Fri, 18 Oct 2019 15:45:23 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOa-00082Z-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:30 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MLR9p-1idIMQ30kt-00IYEY; Fri, 18 Oct 2019 17:42:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 08/46] ARM: pxa: move regs-lcd.h into driver
Date: Fri, 18 Oct 2019 17:41:23 +0200
Message-Id: <20191018154201.1276638-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:5LAnEr6iwK59JevwtHrYZroQN0McBCT7qyhw48WP7uThIH9moug
 DFbvYgETyVbB08XUvk/zUJ/9z1oe9LvNnc2kbVl+FKRiYDVArMPrcONKrV/8VAlPlQOcbrK
 1VjYR2TCvM5GjapZzXH33Oa7HA+ZdVo7VtqkozzDGGiJ931w9rlOBRhqlL+lgwmC+ZJyUZ7
 S7kjWYmaVoMwEA+Y4OF0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vHxA+ZpjrdY=:XNCy9TULDG9fJPLTSxJWH9
 RzrjppOcb3r1l6j92A6STsqoCsmwOnL/W8eWKBqCbgTGwEXQPhIwj3WHlDUmNSeLMgNWQ8LO/
 yGSXtK9RIIhblaQhJ8WwUkKIwh2quYl52HNmdKFMdXVXsZrp4skV4BS4CBN80WNRt+JL2PtNJ
 JNB1Vk6RMXsLJWIzvHbxfQ0/bEFjIjH+xrst3yv7cA4d2AV9hsydUDw1mO27RX6Fz/Ic2CifQ
 ixlCP9W3blwBWzF4xIYW4kPaIZuhZwz32D6sLwsJ3N/tbRsi/isqTBk7fsAa0rJBSQgscpf+j
 2c0f+eQFxy3kea8sdTSskHXuBdGuU2R7DEkqDJkmm0Pd51dsiEe1Dbo0LUEH3H9bY/V311xYl
 Ve24rNLJhOWk4bOpbk5Ok9QLPTRnR2pl59v9oHQfyvICrdmR4it2dnv87jDdYgoqUIR3lndjF
 MbiZSDCepHhYWhUXab5eqIZTsynSLEpfuXDFCLyv5bZFPM3D9VEbTCvgqL4MNTUswVfQgESAj
 9veFgI3CpZkztrXyX2x6T0EgGAvOAMPaSchSyX/Y5hAQVG5Awc9H6FuoUEMqy9dN9lkZZzS2L
 hkC/ToH3fuv8bDPmPwGdrpaGPUo02QISaTfJxW8mJJJ51CyS7psslutJqgXDxN872C6mvKl9E
 w3oXbWi5LSyYkqbc3hYRZv4RtwENikgUnq4YxkqGCt3XxAWVilcQo93g7XYcbX47OndD3q+Km
 gvjD81yBDg5OGm7UgZC2ghsIVyu+YayYRjN16jXk1VzXS/Eiuawe3ON77og0MHmHdwvu5JxEg
 4zHCADbvpnH2aMDhvMzuTICkExfS8JO52Aq7YYcL5CNYZojvmlba3ZS9RJ6FPFdZXcjK+HICO
 tV684DZtaYjUf1cF8AHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084228_817764_E59B247E 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: linux-fbdev@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only the pxafb driver uses this header, so move it into the
same directory. The SMART_* macros are required by some
platform data definitions and can go into the
linux/platform_data/video-pxafb.h header.

Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../video/fbdev/pxa3xx-regs.h                 | 19 ----------------
 drivers/video/fbdev/pxafb.c                   |  1 +
 include/linux/platform_data/video-pxafb.h     | 22 ++++++++++++++++++-
 3 files changed, 22 insertions(+), 20 deletions(-)
 rename arch/arm/mach-pxa/include/mach/regs-lcd.h => drivers/video/fbdev/pxa3xx-regs.h (90%)

diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/drivers/video/fbdev/pxa3xx-regs.h
similarity index 90%
rename from arch/arm/mach-pxa/include/mach/regs-lcd.h
rename to drivers/video/fbdev/pxa3xx-regs.h
index 6a434675f84a..6a96610ef9b5 100644
--- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
+++ b/drivers/video/fbdev/pxa3xx-regs.h
@@ -177,23 +177,4 @@
 #define PRSR_ST_OK	(1 << 9)	/* Status OK */
 #define PRSR_CON_NT	(1 << 10)	/* Continue to Next Command */
 
-#define SMART_CMD_A0			 (0x1 << 8)
-#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
-#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
-#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
-#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
-#define SMART_CMD_NOOP			 (0x4 << 9)
-#define SMART_CMD_INTERRUPT		 (0x5 << 9)
-
-#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
-#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
-
-/* SMART_DELAY() is introduced for software controlled delay primitive which
- * can be inserted between command sequences, unused command 0x6 is used here
- * and delay ranges from 0ms ~ 255ms
- */
-#define SMART_CMD_DELAY		(0x6 << 9)
-#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
 #endif /* __ASM_ARCH_REGS_LCD_H */
diff --git a/drivers/video/fbdev/pxafb.c b/drivers/video/fbdev/pxafb.c
index e68b8a69db92..a65453c6c390 100644
--- a/drivers/video/fbdev/pxafb.c
+++ b/drivers/video/fbdev/pxafb.c
@@ -72,6 +72,7 @@
 #define DEBUG_VAR 1
 
 #include "pxafb.h"
+#include "pxa3xx-regs.h"
 
 /* Bits which should not be set in machine configuration structures */
 #define LCCR0_INVALID_CONFIG_MASK	(LCCR0_OUM | LCCR0_BM | LCCR0_QDM |\
diff --git a/include/linux/platform_data/video-pxafb.h b/include/linux/platform_data/video-pxafb.h
index b3d574778326..6333bac166a5 100644
--- a/include/linux/platform_data/video-pxafb.h
+++ b/include/linux/platform_data/video-pxafb.h
@@ -8,7 +8,6 @@
  */
 
 #include <linux/fb.h>
-#include <mach/regs-lcd.h>
 
 /*
  * Supported LCD connections
@@ -153,6 +152,27 @@ struct pxafb_mach_info {
 void pxa_set_fb_info(struct device *, struct pxafb_mach_info *);
 unsigned long pxafb_get_hsync_time(struct device *dev);
 
+/* smartpanel related */
+#define SMART_CMD_A0			 (0x1 << 8)
+#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
+#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
+#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
+#define SMART_CMD_NOOP			 (0x4 << 9)
+#define SMART_CMD_INTERRUPT		 (0x5 << 9)
+
+#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
+#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
+
+/* SMART_DELAY() is introduced for software controlled delay primitive which
+ * can be inserted between command sequences, unused command 0x6 is used here
+ * and delay ranges from 0ms ~ 255ms
+ */
+#define SMART_CMD_DELAY		(0x6 << 9)
+#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
+
 #ifdef CONFIG_FB_PXA_SMARTPANEL
 extern int pxafb_smart_queue(struct fb_info *info, uint16_t *cmds, int);
 extern int pxafb_smart_flush(struct fb_info *info);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
