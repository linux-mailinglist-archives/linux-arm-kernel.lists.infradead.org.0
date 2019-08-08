Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F128786C80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YuY/lZAVDTc9XoupbIPmDAx6FIqDXmo9a9kNGqC1KY=; b=WmXyUku8a0QI9Q
	ZMYLwb3QTlSdDIufrvsbtgaaTWjpXH28sKyrSV4vSupAKO41KERdGBpgoEsDLKUGOXkhhuoUHKTpj
	GderNpyka2u16jm7TrhU00hK7KdnfuJ97tOYgPWoEAVndQlhQkpDs3ah24x69gnVJRy4rVigl2PUi
	c3Gzm9qzrc0wqnJp49OUWiH9vQNMHZDMKm6tk9ne04rQabOt0iyYQ9GrEBNXrYlLlq4bTO5fPbmKA
	ds0gS1/PD1E5aApkTj9rAi5rD4rfHgTPV7m74zk9JDo+uLyTm9HrUQwiDVyDbJ55Qwvi/Z0kusk4n
	LmsONOBSWs031I0L0cgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvq2D-0001Ee-RB; Thu, 08 Aug 2019 21:33:21 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvq1x-000145-By
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:33:06 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N2SXX-1iJjYP1UhL-013u5K; Thu, 08 Aug 2019 23:32:46 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH 13/22] input: omap: void using mach/*.h headers
Date: Thu,  8 Aug 2019 23:22:22 +0200
Message-Id: <20190808212234.2213262-14-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:0qwRTzGn4JfIF8ObhfLNMcpu9yXXizpeKZ8JtVuzRlduJYrIrTu
 owiYK1M1BeeoZObfRphHoHoFwE+LOiX1ZpIVXkWVJtlA88FwZOwAIEAQbxkA8rw8748tobB
 L9R6rqG2/KIub8SMBItoK1omiDtfLnP875ZN5v9Eufa/Mx0BciFuGxuBgBOUg7D8lrz107Y
 qJOAe4I7l7LshByQ3Mdow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JgEEBB+Nyt4=:+ecHhOdRNmpMi0QmvTk9tX
 AfQJzmotHNEyy9KCrM19P66/zQDazl3bg2tJ+M+2ZhB3w0Pfi5F2qVquAQWHyea8B6OmOZPJJ
 rMrn2zHs8MJkdSocphIKI+d+42gnDD/CyqvQygING4qU3VnKlyS9aSPz+DHiPY45H5yrXLm4R
 HGhliXsHWLBfBCLLdHBsQBG9Fn7nb9shKsdKUd0RCTc9H+NL0+jvam/J4a/H+wAnaujdU7WkV
 4XjuRJWohQzkqQ2KINCjT11dKquWKHrIDji21hm7+2UL474wQXwVQntB+ITNN2b8MFNzUVZmC
 UzRqTr4p7HYT5+84yk/XS3iOc51ornjSVYNWtH/cl8KUbxTLmKxrej8ueDXXiSeUkdI7Jp2F9
 C8H9xT5Tyu0s/jS8SdeGRPBZaybm2E1MDTXAlAU3xVjqBwTGHtY8955JUx9ZMtj7rj0sbLzEF
 O5hT3csOX0aeCQnPolpQoAYxL4hfwcqxfb+S2tTn86UspX2zS5u08CxVOrMih2QmL3bXFlExH
 +GItpsT+J32ExrxVkIgvPttP0pMM6usCnylxJ0moUaHDYy64nITYpqSLMrMzuSjQt3Od+cqg0
 lbbtxxfp5L2Hm/EcUBx+kjv3Z3UMMWpJlkOAtvoJGRxpFnc7TP0rgTCTE6fFPUNEEE8WtUlyb
 oM6GcEl4frLnerFpxkYM7OPEFP/EzV6XTValbc7jE8p/dVKnk8AyKUhD5CpIQaJsfZX62abRe
 Hnt62LZOJIQW6SH5yDCE75jMXH1QZzmGtmfZNA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_143305_703149_AE215138 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-input@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By using the new linux/soc/ti/omap1-io.h header instead,
compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
conversion of omap1 may eventually be possible.

The warning in the header file gets removed in order to
allow CONFIG_COMPILE_TEST.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/input/keyboard/Kconfig            | 2 +-
 drivers/input/keyboard/omap-keypad.c      | 1 +
 include/linux/platform_data/keypad-omap.h | 5 -----
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 5f1a3b3ee0fb..b454d262906b 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -658,7 +658,7 @@ config KEYBOARD_IPAQ_MICRO
 
 config KEYBOARD_OMAP
 	tristate "TI OMAP keypad support"
-	depends on ARCH_OMAP1
+	depends on ARCH_OMAP1 || COMPILE_TEST
 	select INPUT_MATRIXKMAP
 	help
 	  Say Y here if you want to use the OMAP keypad.
diff --git a/drivers/input/keyboard/omap-keypad.c b/drivers/input/keyboard/omap-keypad.c
index 5fe7a5633e33..31da8e878535 100644
--- a/drivers/input/keyboard/omap-keypad.c
+++ b/drivers/input/keyboard/omap-keypad.c
@@ -24,6 +24,7 @@
 #include <linux/gpio.h>
 #include <linux/platform_data/gpio-omap.h>
 #include <linux/platform_data/keypad-omap.h>
+#include <linux/soc/ti/omap1-io.h>
 
 #undef NEW_BOARD_LEARNING_MODE
 
diff --git a/include/linux/platform_data/keypad-omap.h b/include/linux/platform_data/keypad-omap.h
index 3e7c64c854f4..6f058eb188c4 100644
--- a/include/linux/platform_data/keypad-omap.h
+++ b/include/linux/platform_data/keypad-omap.h
@@ -5,11 +5,6 @@
 #ifndef __KEYPAD_OMAP_H
 #define __KEYPAD_OMAP_H
 
-#ifndef CONFIG_ARCH_OMAP1
-#warning Please update the board to use matrix-keypad driver
-#define omap_readw(reg)		0
-#define omap_writew(val, reg)	do {} while (0)
-#endif
 #include <linux/input/matrix_keypad.h>
 
 struct omap_kp_platform_data {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
