Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A52DC9D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8AgxRaLD+xMbXvdYQGTmyMUsH4hChMp5tbEmorBSUc=; b=SOXt87oQeklYSw
	Cc0+y3x3ovDflVUsyaIvw78b49/99bAXgNuwJ5kSiZaasKlrJ/54D2icfUZsvIljLSrF/6PDh4FDB
	0jQtPpusy4PsS2TlxB017IG1WZAd0sb6ZGSEvTEZl5XjNzIYhxalBb9nIPOh1SmaFc9UVQlHTIKV0
	WjeTwybmFGPugTXEy09TQlQ0wY8XLCoS7OnQEICY0sr7YRmWvjWnvuYuthIDBlx8eV3sJVL7k3Eke
	LToN2pwh+QXnSDdpGUZnzUW2VyoNxv9y4uFm7J6IUYG6pe2swx8jUG+y70ClgK3j5bATgj7L9jg6R
	p3yO7saK30CD9GjzGQFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUZM-0003Ax-Ez; Fri, 18 Oct 2019 15:53:36 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOh-00089I-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:50 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MSbt9-1iRlmG1Tzt-00SyLk; Fri, 18 Oct 2019 17:42:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 07/46] ARM: pxa: move mach/sound.h to linux/platform_data/
Date: Fri, 18 Oct 2019 17:41:22 +0200
Message-Id: <20191018154201.1276638-7-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3vE80g8Al+otDUWJBQauUf0JCPEUaiyTrpexojEgYYC6bn6h235
 8+Ns5iFTGYCan96WzD49dqDVhV4JssSKcsoR+YrCcOzBDtUFhi2WodLlrnXMDU55wciWiw8
 m0R0u5ua1cgKKw6+VLIffLpA0XJQB1pg3Skjzho1LHS4uRhcSC/oyg1B/TH1oicZeovdHQ1
 cShujDSXSbQ3BimXWPHlw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K4kEMx+aSHw=:9TmaYW+bJBmmFnjw8jV5nm
 C8F4JR12W3nQjxts+k3NpOwkj/CSDDcSRrvjfkaAwYA5RYuQkxV+x219+LYv7ApbwBg3Stpg6
 Ls3tzjdKsZ/9r9OF+JSskayFfoLbLYCmZUK1CrBJoE2zN8TlEjLsTZL7dZ/D1tgzhP7x716KV
 yx2LQKT9rc0KALIyLqYZXozI0RKd6YkNQSAuNJN98PNz/Z2oIWwmzoe1rm9xD/XpWGh4QOeez
 ivHu8B+5RYSpMxHryQDwFxv1fbOUlTz1kuSYmcxYen7Z1yssZ0CRWxeDB2X7TA1hUcdxPZnKM
 u53b24hI9ttjyy/uP7arn6toloUcMXCt3XgO8c7EwQvJhDiNL7wD2NAkxcVQJv9UXNC7GzVdg
 TDR42OntGmEPgqkodhQ+qytXp4wqg69Nebn2JdFqpBl0pWMj4j3nA42kWGU1LeZr13KDRD8UF
 7q5QcR6hmq4j1FdxYAyxIrdMRLmsZFioyTFG/0tpr56HSLiN5QmeHaT9Py3N6wWLOEzXrZsLK
 d1LKfygPIPYTxWI2HXEPZbphA9bWubroRsmDGLDMvhvr5K/kiqoIybCLeiIffKWEKuTo1Je3F
 BuKSszx9aYP6g/gQztuZXHye5Sv88CmZErxgb9/9ryvkycPjnNOPQ4Gyxf4d9ifsko50TVU0L
 +W6EkVVulLdjXALXBUL7D9tqOYBmwzzx3uXfrnhFqi0WKhxmxDSV8fQSrDkTT5h6zzGpQ2idZ
 OLulRy8se1VKmi6o5U+MBuUpOfHZsEw92GicfHcVel/PvYjo8l1xy/a7NFl4zl2R4LPrmBLk4
 3bF/2OzF2r5uPfc0TL7rbCvOJ2QH88V42QdrO0/k3oY5Z23kBC99cI72djY81jTMCV0GRnfpp
 stywYpDJnJRfh4KJBWjg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084236_964599_762E4D4B 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Mark Brown <broonie@kernel.org>,
 Tomas Cech <sleep_walker@suse.com>, Sergey Lapin <slapin@ossfans.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a basically a platform_data file, so move it out of
the mach/* header directory.

Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Tomas Cech <sleep_walker@suse.com>
Cc: Sergey Lapin <slapin@ossfans.org>
Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/balloon3.c                                  | 2 +-
 arch/arm/mach-pxa/cm-x2xx.c                                   | 2 +-
 arch/arm/mach-pxa/cm-x300.c                                   | 2 +-
 arch/arm/mach-pxa/colibri-pxa270.c                            | 2 +-
 arch/arm/mach-pxa/colibri-pxa300.c                            | 2 +-
 arch/arm/mach-pxa/colibri-pxa320.c                            | 2 +-
 arch/arm/mach-pxa/csb726.c                                    | 2 +-
 arch/arm/mach-pxa/devices.c                                   | 2 +-
 arch/arm/mach-pxa/em-x270.c                                   | 2 +-
 arch/arm/mach-pxa/eseries.c                                   | 2 +-
 arch/arm/mach-pxa/lpd270.c                                    | 2 +-
 arch/arm/mach-pxa/lubbock.c                                   | 2 +-
 arch/arm/mach-pxa/mainstone.c                                 | 2 +-
 arch/arm/mach-pxa/mioa701.c                                   | 2 +-
 arch/arm/mach-pxa/palm27x.c                                   | 2 +-
 arch/arm/mach-pxa/palmld.c                                    | 2 +-
 arch/arm/mach-pxa/palmt5.c                                    | 2 +-
 arch/arm/mach-pxa/palmtc.c                                    | 2 +-
 arch/arm/mach-pxa/palmte2.c                                   | 2 +-
 arch/arm/mach-pxa/palmtreo.c                                  | 2 +-
 arch/arm/mach-pxa/palmtx.c                                    | 2 +-
 arch/arm/mach-pxa/palmz72.c                                   | 2 +-
 arch/arm/mach-pxa/pcm990-baseboard.c                          | 2 +-
 arch/arm/mach-pxa/tosa.c                                      | 2 +-
 arch/arm/mach-pxa/trizeps4.c                                  | 2 +-
 arch/arm/mach-pxa/viper.c                                     | 2 +-
 arch/arm/mach-pxa/vpac270.c                                   | 2 +-
 arch/arm/mach-pxa/zeus.c                                      | 2 +-
 arch/arm/mach-pxa/zylonite.c                                  | 2 +-
 .../mach/audio.h => include/linux/platform_data/asoc-pxa.h    | 4 ++--
 sound/arm/pxa2xx-ac97-lib.c                                   | 2 +-
 sound/arm/pxa2xx-ac97.c                                       | 2 +-
 sound/soc/pxa/corgi.c                                         | 2 +-
 sound/soc/pxa/e740_wm9705.c                                   | 2 +-
 sound/soc/pxa/e750_wm9705.c                                   | 2 +-
 sound/soc/pxa/e800_wm9712.c                                   | 2 +-
 sound/soc/pxa/em-x270.c                                       | 2 +-
 sound/soc/pxa/mioa701_wm9713.c                                | 2 +-
 sound/soc/pxa/palm27x.c                                       | 2 +-
 sound/soc/pxa/poodle.c                                        | 2 +-
 sound/soc/pxa/pxa2xx-ac97.c                                   | 2 +-
 sound/soc/pxa/pxa2xx-i2s.c                                    | 2 +-
 sound/soc/pxa/tosa.c                                          | 2 +-
 sound/soc/pxa/z2.c                                            | 2 +-
 44 files changed, 45 insertions(+), 45 deletions(-)
 rename arch/arm/mach-pxa/include/mach/audio.h => include/linux/platform_data/asoc-pxa.h (93%)

diff --git a/arch/arm/mach-pxa/balloon3.c b/arch/arm/mach-pxa/balloon3.c
index 26140249c784..82f9299f67d3 100644
--- a/arch/arm/mach-pxa/balloon3.c
+++ b/arch/arm/mach-pxa/balloon3.c
@@ -41,7 +41,7 @@
 
 #include "pxa27x.h"
 #include <mach/balloon3.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include "udc.h"
diff --git a/arch/arm/mach-pxa/cm-x2xx.c b/arch/arm/mach-pxa/cm-x2xx.c
index c731539add9f..b13fcc72abab 100644
--- a/arch/arm/mach-pxa/cm-x2xx.c
+++ b/arch/arm/mach-pxa/cm-x2xx.c
@@ -32,7 +32,7 @@
 #undef GPIO87_GPIO
 #undef GPIO88_GPIO
 #undef GPIO89_GPIO
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/addr-map.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <mach/smemc.h>
diff --git a/arch/arm/mach-pxa/cm-x300.c b/arch/arm/mach-pxa/cm-x300.c
index f3f2703fffc6..6cdc440672a6 100644
--- a/arch/arm/mach-pxa/cm-x300.c
+++ b/arch/arm/mach-pxa/cm-x300.c
@@ -53,7 +53,7 @@
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/mtd-nand-pxa3xx.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/usb-pxa3xx-ulpi.h>
 
 #include <asm/mach/map.h>
diff --git a/arch/arm/mach-pxa/colibri-pxa270.c b/arch/arm/mach-pxa/colibri-pxa270.c
index 2f2cd2ae4187..5dc669752836 100644
--- a/arch/arm/mach-pxa/colibri-pxa270.c
+++ b/arch/arm/mach-pxa/colibri-pxa270.c
@@ -23,7 +23,7 @@
 #include <asm/mach-types.h>
 #include <linux/sizes.h>
 
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "colibri.h"
 #include "pxa27x.h"
 
diff --git a/arch/arm/mach-pxa/colibri-pxa300.c b/arch/arm/mach-pxa/colibri-pxa300.c
index 4ceeea142bfd..11ca6c4795e7 100644
--- a/arch/arm/mach-pxa/colibri-pxa300.c
+++ b/arch/arm/mach-pxa/colibri-pxa300.c
@@ -24,7 +24,7 @@
 #include "colibri.h"
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/video-pxafb.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #include "generic.h"
 #include "devices.h"
diff --git a/arch/arm/mach-pxa/colibri-pxa320.c b/arch/arm/mach-pxa/colibri-pxa320.c
index eba917d69c0a..c1e97d4345dc 100644
--- a/arch/arm/mach-pxa/colibri-pxa320.c
+++ b/arch/arm/mach-pxa/colibri-pxa320.c
@@ -24,7 +24,7 @@
 #include "colibri.h"
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "pxa27x-udc.h"
 #include "udc.h"
 
diff --git a/arch/arm/mach-pxa/csb726.c b/arch/arm/mach-pxa/csb726.c
index d48493445ae5..88f2f1d96c7b 100644
--- a/arch/arm/mach-pxa/csb726.c
+++ b/arch/arm/mach-pxa/csb726.c
@@ -22,7 +22,7 @@
 #include "pxa27x.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/smemc.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
index c289a6c2311d..233035e6a2ff 100644
--- a/arch/arm/mach-pxa/devices.c
+++ b/arch/arm/mach-pxa/devices.c
@@ -19,7 +19,7 @@
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/keypad-pxa27x.h>
 #include <linux/platform_data/media/camera-pxa.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/mmp_dma.h>
 #include <linux/platform_data/mtd-nand-pxa3xx.h>
 
diff --git a/arch/arm/mach-pxa/em-x270.c b/arch/arm/mach-pxa/em-x270.c
index d8681a331030..5bb72a41dae2 100644
--- a/arch/arm/mach-pxa/em-x270.c
+++ b/arch/arm/mach-pxa/em-x270.c
@@ -37,7 +37,7 @@
 
 #include "pxa27x.h"
 #include "pxa27x-udc.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/mmc-pxamci.h>
diff --git a/arch/arm/mach-pxa/eseries.c b/arch/arm/mach-pxa/eseries.c
index 91f7c3e40065..d8a87ff66675 100644
--- a/arch/arm/mach-pxa/eseries.c
+++ b/arch/arm/mach-pxa/eseries.c
@@ -34,7 +34,7 @@
 #include "pxa25x.h"
 #include <mach/eseries-gpio.h>
 #include "eseries-irq.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include "udc.h"
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/lpd270.c b/arch/arm/mach-pxa/lpd270.c
index 1b7c2def3033..c59fd2624f91 100644
--- a/arch/arm/mach-pxa/lpd270.c
+++ b/arch/arm/mach-pxa/lpd270.c
@@ -39,7 +39,7 @@
 #include "pxa27x.h"
 #include "lpd270.h"
 #include <mach/addr-map.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/lubbock.c b/arch/arm/mach-pxa/lubbock.c
index 477d144f039c..098605c8eeed 100644
--- a/arch/arm/mach-pxa/lubbock.c
+++ b/arch/arm/mach-pxa/lubbock.c
@@ -45,7 +45,7 @@
 #include <asm/hardware/sa1111.h>
 
 #include "pxa25x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/lubbock.h>
 #include "udc.h"
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/mainstone.c b/arch/arm/mach-pxa/mainstone.c
index 16883c996c45..ed505de6b5d9 100644
--- a/arch/arm/mach-pxa/mainstone.c
+++ b/arch/arm/mach-pxa/mainstone.c
@@ -45,7 +45,7 @@
 
 #include "pxa27x.h"
 #include "mainstone.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/mioa701.c b/arch/arm/mach-pxa/mioa701.c
index c360023a989c..c78d2d245309 100644
--- a/arch/arm/mach-pxa/mioa701.c
+++ b/arch/arm/mach-pxa/mioa701.c
@@ -42,7 +42,7 @@
 #include "udc.h"
 #include "pxa27x-udc.h"
 #include <linux/platform_data/media/camera-pxa.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/smemc.h>
 
 #include "mioa701.h"
diff --git a/arch/arm/mach-pxa/palm27x.c b/arch/arm/mach-pxa/palm27x.c
index 3ad0b3915ae1..a93169a12ad7 100644
--- a/arch/arm/mach-pxa/palm27x.c
+++ b/arch/arm/mach-pxa/palm27x.c
@@ -25,7 +25,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/palmld.c b/arch/arm/mach-pxa/palmld.c
index 5f73716a77f0..d85146957004 100644
--- a/arch/arm/mach-pxa/palmld.c
+++ b/arch/arm/mach-pxa/palmld.c
@@ -29,7 +29,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/palmld.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmt5.c b/arch/arm/mach-pxa/palmt5.c
index 902403367786..4e2cff87deba 100644
--- a/arch/arm/mach-pxa/palmt5.c
+++ b/arch/arm/mach-pxa/palmt5.c
@@ -30,7 +30,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "palmt5.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmtc.c b/arch/arm/mach-pxa/palmtc.c
index f52bd155e825..71917127dfdd 100644
--- a/arch/arm/mach-pxa/palmtc.c
+++ b/arch/arm/mach-pxa/palmtc.c
@@ -30,7 +30,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa25x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/palmtc.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmte2.c b/arch/arm/mach-pxa/palmte2.c
index a92b9665f425..1621d3d3f76f 100644
--- a/arch/arm/mach-pxa/palmte2.c
+++ b/arch/arm/mach-pxa/palmte2.c
@@ -30,7 +30,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa25x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "palmte2.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmtreo.c b/arch/arm/mach-pxa/palmtreo.c
index 2bf0f7f3ea24..d6d5b90d9578 100644
--- a/arch/arm/mach-pxa/palmtreo.c
+++ b/arch/arm/mach-pxa/palmtreo.c
@@ -29,7 +29,7 @@
 
 #include "pxa27x.h"
 #include "pxa27x-udc.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "palmtreo.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmtx.c b/arch/arm/mach-pxa/palmtx.c
index 926593ecf1c9..eed25d09dfb2 100644
--- a/arch/arm/mach-pxa/palmtx.c
+++ b/arch/arm/mach-pxa/palmtx.c
@@ -33,7 +33,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/palmtx.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/palmz72.c b/arch/arm/mach-pxa/palmz72.c
index 77fe2e367324..1bf11c888b4e 100644
--- a/arch/arm/mach-pxa/palmz72.c
+++ b/arch/arm/mach-pxa/palmz72.c
@@ -35,7 +35,7 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "palmz72.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/pcm990-baseboard.c b/arch/arm/mach-pxa/pcm990-baseboard.c
index cb1c56769fbc..84af112fa819 100644
--- a/arch/arm/mach-pxa/pcm990-baseboard.c
+++ b/arch/arm/mach-pxa/pcm990-baseboard.c
@@ -30,7 +30,7 @@
 #include <linux/platform_data/media/camera-pxa.h>
 #include <asm/mach/map.h>
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include "pcm990_baseboard.h"
diff --git a/arch/arm/mach-pxa/tosa.c b/arch/arm/mach-pxa/tosa.c
index f537ff1c3ba7..23da9568c520 100644
--- a/arch/arm/mach-pxa/tosa.c
+++ b/arch/arm/mach-pxa/tosa.c
@@ -46,7 +46,7 @@
 #include <linux/platform_data/mmc-pxamci.h>
 #include "udc.h"
 #include "tosa_bt.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/smemc.h>
 
 #include <asm/mach/arch.h>
diff --git a/arch/arm/mach-pxa/trizeps4.c b/arch/arm/mach-pxa/trizeps4.c
index f76f8be09554..1337008cc760 100644
--- a/arch/arm/mach-pxa/trizeps4.c
+++ b/arch/arm/mach-pxa/trizeps4.c
@@ -41,7 +41,7 @@
 
 #include "pxa27x.h"
 #include <mach/trizeps4.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/viper.c b/arch/arm/mach-pxa/viper.c
index 16f33e576902..7d1cb2c2dfa1 100644
--- a/arch/arm/mach-pxa/viper.c
+++ b/arch/arm/mach-pxa/viper.c
@@ -46,7 +46,7 @@
 #include <linux/syscore_ops.h>
 
 #include "pxa25x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include "regs-uart.h"
 #include <linux/platform_data/pcmcia-pxa2xx_viper.h>
diff --git a/arch/arm/mach-pxa/vpac270.c b/arch/arm/mach-pxa/vpac270.c
index 26a5ebc00069..7abbebc5d455 100644
--- a/arch/arm/mach-pxa/vpac270.c
+++ b/arch/arm/mach-pxa/vpac270.c
@@ -30,7 +30,7 @@
 #include <asm/mach/arch.h>
 
 #include "pxa27x.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/vpac270.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
diff --git a/arch/arm/mach-pxa/zeus.c b/arch/arm/mach-pxa/zeus.c
index 239faff71a1f..6652b1e5978e 100644
--- a/arch/arm/mach-pxa/zeus.c
+++ b/arch/arm/mach-pxa/zeus.c
@@ -46,7 +46,7 @@
 #include "udc.h"
 #include <linux/platform_data/video-pxafb.h>
 #include "pm.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/pcmcia-pxa2xx_viper.h>
 #include "zeus.h"
 #include <mach/smemc.h>
diff --git a/arch/arm/mach-pxa/zylonite.c b/arch/arm/mach-pxa/zylonite.c
index c56c86b35025..e3ae45f444d5 100644
--- a/arch/arm/mach-pxa/zylonite.c
+++ b/arch/arm/mach-pxa/zylonite.c
@@ -25,7 +25,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
 #include "pxa3xx.h"
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include "zylonite.h"
 #include <linux/platform_data/mmc-pxamci.h>
diff --git a/arch/arm/mach-pxa/include/mach/audio.h b/include/linux/platform_data/asoc-pxa.h
similarity index 93%
rename from arch/arm/mach-pxa/include/mach/audio.h
rename to include/linux/platform_data/asoc-pxa.h
index 7beebf7297b5..327454cd8246 100644
--- a/arch/arm/mach-pxa/include/mach/audio.h
+++ b/include/linux/platform_data/asoc-pxa.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __ASM_ARCH_AUDIO_H__
-#define __ASM_ARCH_AUDIO_H__
+#ifndef __SOC_PXA_AUDIO_H__
+#define __SOC_PXA_AUDIO_H__
 
 #include <sound/core.h>
 #include <sound/pcm.h>
diff --git a/sound/arm/pxa2xx-ac97-lib.c b/sound/arm/pxa2xx-ac97-lib.c
index 84d5f85073b9..9b5c1f0f8998 100644
--- a/sound/arm/pxa2xx-ac97-lib.c
+++ b/sound/arm/pxa2xx-ac97-lib.c
@@ -23,7 +23,7 @@
 
 #include <mach/irqs.h>
 #include <mach/regs-ac97.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 static DEFINE_MUTEX(car_mutex);
 static DECLARE_WAIT_QUEUE_HEAD(gsr_wq);
diff --git a/sound/arm/pxa2xx-ac97.c b/sound/arm/pxa2xx-ac97.c
index acfaf1d4ec25..2e99232028ac 100644
--- a/sound/arm/pxa2xx-ac97.c
+++ b/sound/arm/pxa2xx-ac97.c
@@ -22,7 +22,7 @@
 #include <sound/dmaengine_pcm.h>
 
 #include <mach/regs-ac97.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 static void pxa2xx_ac97_legacy_reset(struct snd_ac97 *ac97)
 {
diff --git a/sound/soc/pxa/corgi.c b/sound/soc/pxa/corgi.c
index d81082323fb4..47647a1c3124 100644
--- a/sound/soc/pxa/corgi.c
+++ b/sound/soc/pxa/corgi.c
@@ -22,7 +22,7 @@
 
 #include <asm/mach-types.h>
 #include <mach/corgi.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #include "../codecs/wm8731.h"
 #include "pxa2xx-i2s.h"
diff --git a/sound/soc/pxa/e740_wm9705.c b/sound/soc/pxa/e740_wm9705.c
index eafa1482afbe..f922be7e0016 100644
--- a/sound/soc/pxa/e740_wm9705.c
+++ b/sound/soc/pxa/e740_wm9705.c
@@ -13,7 +13,7 @@
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/eseries-gpio.h>
 
 #include <asm/mach-types.h>
diff --git a/sound/soc/pxa/e750_wm9705.c b/sound/soc/pxa/e750_wm9705.c
index d75510d7b16b..308828cd736b 100644
--- a/sound/soc/pxa/e750_wm9705.c
+++ b/sound/soc/pxa/e750_wm9705.c
@@ -13,7 +13,7 @@
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/eseries-gpio.h>
 
 #include <asm/mach-types.h>
diff --git a/sound/soc/pxa/e800_wm9712.c b/sound/soc/pxa/e800_wm9712.c
index 56d543da938a..d74fcceef687 100644
--- a/sound/soc/pxa/e800_wm9712.c
+++ b/sound/soc/pxa/e800_wm9712.c
@@ -14,7 +14,7 @@
 #include <sound/soc.h>
 
 #include <asm/mach-types.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/eseries-gpio.h>
 
 static int e800_spk_amp_event(struct snd_soc_dapm_widget *w,
diff --git a/sound/soc/pxa/em-x270.c b/sound/soc/pxa/em-x270.c
index 9076ea7e9339..b59ec22e1e7e 100644
--- a/sound/soc/pxa/em-x270.c
+++ b/sound/soc/pxa/em-x270.c
@@ -23,7 +23,7 @@
 #include <sound/soc.h>
 
 #include <asm/mach-types.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 SND_SOC_DAILINK_DEFS(ac97,
 	DAILINK_COMP_ARRAY(COMP_CPU("pxa2xx-ac97")),
diff --git a/sound/soc/pxa/mioa701_wm9713.c b/sound/soc/pxa/mioa701_wm9713.c
index 129eb5251a5f..f78ab7ce8fc7 100644
--- a/sound/soc/pxa/mioa701_wm9713.c
+++ b/sound/soc/pxa/mioa701_wm9713.c
@@ -33,7 +33,7 @@
 #include <linux/platform_device.h>
 
 #include <asm/mach-types.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
diff --git a/sound/soc/pxa/palm27x.c b/sound/soc/pxa/palm27x.c
index b92ea1a0453f..275c86379e88 100644
--- a/sound/soc/pxa/palm27x.c
+++ b/sound/soc/pxa/palm27x.c
@@ -20,7 +20,7 @@
 #include <sound/jack.h>
 
 #include <asm/mach-types.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/asoc-palm27x.h>
 
 static struct snd_soc_jack hs_jack;
diff --git a/sound/soc/pxa/poodle.c b/sound/soc/pxa/poodle.c
index 48d5c2252b10..f289c089aede 100644
--- a/sound/soc/pxa/poodle.c
+++ b/sound/soc/pxa/poodle.c
@@ -22,7 +22,7 @@
 #include <asm/mach-types.h>
 #include <asm/hardware/locomo.h>
 #include <mach/poodle.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #include "../codecs/wm8731.h"
 #include "pxa2xx-i2s.h"
diff --git a/sound/soc/pxa/pxa2xx-ac97.c b/sound/soc/pxa/pxa2xx-ac97.c
index eb99e01ee26f..2138106fed23 100644
--- a/sound/soc/pxa/pxa2xx-ac97.c
+++ b/sound/soc/pxa/pxa2xx-ac97.c
@@ -23,7 +23,7 @@
 
 #include <mach/pxa-regs.h>
 #include <mach/regs-ac97.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 static void pxa2xx_ac97_warm_reset(struct ac97_controller *adrv)
 {
diff --git a/sound/soc/pxa/pxa2xx-i2s.c b/sound/soc/pxa/pxa2xx-i2s.c
index e7c43fe46dff..583b2de897c7 100644
--- a/sound/soc/pxa/pxa2xx-i2s.c
+++ b/sound/soc/pxa/pxa2xx-i2s.c
@@ -22,7 +22,7 @@
 #include <sound/dmaengine_pcm.h>
 
 #include <mach/pxa-regs.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #include "pxa2xx-i2s.h"
 
diff --git a/sound/soc/pxa/tosa.c b/sound/soc/pxa/tosa.c
index b429db25f884..81ee1bcf4c44 100644
--- a/sound/soc/pxa/tosa.c
+++ b/sound/soc/pxa/tosa.c
@@ -24,7 +24,7 @@
 
 #include <asm/mach-types.h>
 #include <mach/tosa.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 
 #define TOSA_HP        0
 #define TOSA_MIC_INT   1
diff --git a/sound/soc/pxa/z2.c b/sound/soc/pxa/z2.c
index 8f121ca13eee..1fb3e7ac42fa 100644
--- a/sound/soc/pxa/z2.c
+++ b/sound/soc/pxa/z2.c
@@ -21,7 +21,7 @@
 #include <sound/jack.h>
 
 #include <asm/mach-types.h>
-#include <mach/audio.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include <mach/z2.h>
 
 #include "../codecs/wm8750.h"
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
