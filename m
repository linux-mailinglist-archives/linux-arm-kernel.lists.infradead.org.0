Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FADADC8F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+U2uXZQPmXWIwqrdRPDXxsIqHFiABB4Uz/UiwyIImb4=; b=rweG3mNzcsfQ58
	vNbgv0xQUefFdgMz1R/LKLz8ts8Qr4AV3WJ7H5mUw+ehOZbs4vbfuTEvV1nwJ0eV1PbUuo9V08ncW
	CJPkv9FKFqDAdMCYDygxZmdypVkVvlMaZTxk7J6AMViP3pOypZk9Dj5HbFqgAuxL4CZQoXq3AlpV0
	XRcoHiTxY1hWMeuXbUEj3JNaMGUqpwzOxDwiaGyDNI+5iRfioYfvXn9UJxTJKLr7XY1HeTkVzu/R8
	51zL4y1nZ4PmjWr3I52+vAb/ZXSJN0BV8pmryJqSnArREfu5EwV+1gNif9Xois70fw5EgZbFb2gzd
	rlmrVPyvQP0ZTH0wGu1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUPE-0008KX-Iw; Fri, 18 Oct 2019 15:43:08 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOS-0007vo-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:22 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MEmEf-1iFAs82Qix-00GEsw; Fri, 18 Oct 2019 17:42:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 03/46] ARM: pxa: make mach/regs-uart.h private
Date: Fri, 18 Oct 2019 17:41:18 +0200
Message-Id: <20191018154201.1276638-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:VWwIzXDORj0a17r+gbKmSAymG/HQiOvLGrDQVrBqqaWyL+kaOFg
 kz/BJmNkZLMkdXDKomnkUST9RFEVbMmw6Eueu5P+bdIyhmsH0wU6iN0HDnZJnnUUQ+CulUt
 cr9pOSXAqqpiwZVxzmTr09E0aSD/9to7NowPy3VMmmzQYJr6fKEAh49hfq2lNpA5IE72OEh
 ac2JWwNOlJTux1MJ4zDZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/9qNABDzT9Q=:/tbjJ7gi4/f1W3oXPMyS65
 t2hHmsMewJ1IVUSpoCtphMBiTAfDZ5k6gRVR7IEp9xJKuUZBACPp6kJdUhqLqh88JQD/a2gtg
 iz1qnCzCXWtRnbb+qDkp/QeXI6JcZfCpQpdj9P/5JeMSghhR8faRhlm8R63L3iasM4I/sV3FZ
 ZlQOG/ushFXRsWFFTlQlMl/QHfQYaUVFndu9gGGoOXZwTXyGxGr1KGGBIh6rw3g8iwvy897ar
 oPGsZOwKoPl/JHwGAVyyYH3fQnhEEQQ+sv0EUARnv2NzQ0ouafuzb5LZfSBwmGQp3p0MvERXm
 EgE6olH+Hw3smPyjR9Uf32YAg1v9W+JpAAHu6vkIb2DB8J9Zq+B18dQuBG92Mc3N3o3ekDzJf
 r/jvQu97uAeniUDlMwYAc48KbAq91fyjyizPo37FhMvXb4zFIKN7iab6eEOJY6NFaQxgwzZex
 nkTJ8dnUvJszqUF9gxUadvFEsa/XE+6FZDPsLRtLg1BEeXxNQ65/bV7J7KCZstM4OrkNO249Q
 ILOiKPYADMqu8UeTCSeWXKbuOScVVA0YDYUXZo9j1YNfmH1IWmJ5kwYPZtGDotdf+rtn+6k2G
 tix2SNmbuVnrrdWN9HSFVDdCMNGOPuqHu7iVd0BUWYk90uk0YyKs9bt1inwPi2DAy84y4lmJB
 dJCqWR89UrPxF2LD2SZGT8KipgcqMJFA0CW0vnNX7LWYYhPVQvmmVjRYfpdppqSPxJq8C5mPO
 MMfyKDCdIHggXOXafhxAja4preDaRQH0t9+ZItblLfGeIROXMtwfNxbCiPRth6zfLqZdpDiZg
 U9HQ0aoRePdmEHETkgA0aHmLwSq6A+wxCeejah1G1lm5fZ557Tv49Xb2h8T7tb9LrV+aVfN2I
 GokFR5JCL4Z6vWXFvfTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084220_967514_8C61F9FC 
X-CRM114-Status: GOOD (  11.43  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is not used by any drivers, so make it private to the
platform.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/{include/mach => }/regs-uart.h | 0
 arch/arm/mach-pxa/viper.c                        | 2 +-
 arch/arm/mach-pxa/zeus.c                         | 2 +-
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/regs-uart.h (100%)

diff --git a/arch/arm/mach-pxa/include/mach/regs-uart.h b/arch/arm/mach-pxa/regs-uart.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/regs-uart.h
rename to arch/arm/mach-pxa/regs-uart.h
diff --git a/arch/arm/mach-pxa/viper.c b/arch/arm/mach-pxa/viper.c
index c06031da6676..16f33e576902 100644
--- a/arch/arm/mach-pxa/viper.c
+++ b/arch/arm/mach-pxa/viper.c
@@ -48,7 +48,7 @@
 #include "pxa25x.h"
 #include <mach/audio.h>
 #include <linux/platform_data/video-pxafb.h>
-#include <mach/regs-uart.h>
+#include "regs-uart.h"
 #include <linux/platform_data/pcmcia-pxa2xx_viper.h>
 #include "viper.h"
 
diff --git a/arch/arm/mach-pxa/zeus.c b/arch/arm/mach-pxa/zeus.c
index da113c8eefbf..239faff71a1f 100644
--- a/arch/arm/mach-pxa/zeus.c
+++ b/arch/arm/mach-pxa/zeus.c
@@ -39,7 +39,7 @@
 
 #include "pxa27x.h"
 #include "devices.h"
-#include <mach/regs-uart.h>
+#include "regs-uart.h"
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include "pxa27x-udc.h"
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
