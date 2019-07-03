Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F575EDF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHb2tvASRpdHLEnDJ0Fw/qaWEGClLxa+++0oUIar2LI=; b=eS7Rnom72WeNnT
	HK27XEJkfJcKURw5Y0e6tVyO0FP3VB9v+fHbdNJvejNWv1ddlx211llBov4jxsAtoY+HWxngq1DPl
	by3ath286z+XXzjOhOJS2Ju4Y4hkiwrJPtjiC2SjaqENrg8+icpN2ETdp4ZZ4dpJgCDWjccvKt7F9
	hQOrmURKak9YvEvrJwr0OhOW55wSpqKFGEQnyK3cj2zLN4c2KGStgwcT6Z0hrtEn+VFV7mQCjOelK
	bLw8BDg1Uz/+O1JTyWtOjr84QaVomoh2m20PdVy7FJzayRikgiOdWz4sdZV6jRcmzqw5LS/Xyuv4G
	KjVtjOgqHHidQ3dauNFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himIr-0005eM-Fo; Wed, 03 Jul 2019 20:56:33 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himIg-0005dc-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:56:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MqbDs-1iMWxP2do8-00masw; Wed, 03 Jul 2019 22:56:03 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 2/3] kasan: disable CONFIG_KASAN_STACK with clang on arm32
Date: Wed,  3 Jul 2019 22:54:37 +0200
Message-Id: <20190703205527.955320-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190703205527.955320-1-arnd@arndb.de>
References: <20190703205527.955320-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:dVu6TB6bK7PiXC0nWCBWTtH4+VmEpXav81wxunH7qxb9O8LK6xY
 9t1OBqgcoNKISokDJOGEmpsK9Olw4WiYxv3R4Yk0VHCPHCwbE5CfGGDvCGKORzYaTcZzpMZ
 m0fJ4OWUu8fhsgmIFep0j6SXmG5L3NTwAgbpxGDx8Qj04BISYNu2I01zggQ4J9AyAUBAt5n
 camESeoPyJjNiAUdUlgtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BtQ+/a+4hxk=:BXsO/jIoni0w1uZ5xMb/V6
 h3BmSvC14FIsrbv1u2lvwtgR132tDDF864k1Mm0/o1613vabZUA4IFS/P8E4jRRI6wzptV5lM
 jniEHTkB7qHeV/3lCntpeY7GYB4gr9Vvv+AKKRatXz3x21fZBGm2/fGSYXAXY+ZYcmSlQRb0Z
 3uc+P/LLZG12LdSV4N+0Jdl/ijlnTXia0VndfpbgkK0UMbzs9GaMSjIuFE72esecJiyh9QXlC
 jNr2Bequ/b5BgqDk6YfU+QnZsfElwGyaURabVnt6B5C4Ohxqk07JXMFYf1RDOphcRy1RG3a7g
 cX1kSgnBkWa6c7lXaA5Hp4HJ+c0RNNy3WS5G15hdnR29brBeN7LGOMTBv+bUvZj2fKB9A8rcd
 xDU4aHuOfToN3Mi0jKRBJbkqfK4pL2GQiLvrctVa9OboD57iyUbUJJQxSc64DPWyyv/TwAWg+
 4rlCQYskxhnYiA1upHe0T38dZpE4V+pDZ9UUdpPEEC+JaKy0Z7hPP3gDh8UQUk7wDeMlx43Ma
 Nj2f2RvuW0zBufN7CCC1gzXZZ7yj6LKcva/a4KeZ+T9LAHp/QTc4vBkJmaBeQePNHF7pDF9ty
 lgByqBiJ5vNeyY0IYOTYOX5SjHBdj73WL+AOjE6+yMAAfu05z4cLAPM2ewhkYRfsv/UNbfGFL
 1jdoMMETbefmQEsOxl2/ok8E/gLyIPPUwGrnjqGFE8jZCT2/J0FOdGzP9k7kfPWx7NIPnmgMn
 vIN90lJ0ZDhmHtW8bJnYoKFXqd3tUJdj5FcRRA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135622_535551_26AF4BA8 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Abbott Liu <liuwenliang@huawei.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CONFIG_KASAN_STACK symbol tells us whether we should be using the
asan-stack=1 parameter. On clang-8, this causes explosive kernel stack
frame growth, so it is currently disabled, hopefully to be turned back
on when a future clang version is fixed. Examples include

drivers/media/dvb-frontends/mb86a20s.c:1942:12: error: stack frame size of 4128 bytes in function
drivers/net/wireless/atmel/atmel.c:1307:5: error: stack frame size of 4928 bytes in function 'atmel_open'
drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c:1521:1: error: stack frame size of 5440 bytes in function
drivers/media/i2c/mt9t112.c:670:12: error: stack frame size of 9344 bytes in function 'mt9t112_init_camera'
drivers/video/fbdev/omap2/omapfb/displays/panel-tpo-td028ttec1.c:185:12: error: stack frame size of 10048 bytes

For the 32-bit ARM build, the logic I introduced earlier does
not work because $(CFLAGS_KASAN_SHADOW) is empty, and we don't add
those flags.

Moving the asan-stack= parameter down fixes this. No idea of any
of the other parameters should also be moved though.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/Makefile.kasan | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
index 6410bd22fe38..fc57fcf49722 100644
--- a/scripts/Makefile.kasan
+++ b/scripts/Makefile.kasan
@@ -26,10 +26,11 @@ else
 	CFLAGS_KASAN := $(CFLAGS_KASAN_SHADOW) \
 	 $(call cc-param,asan-globals=1) \
 	 $(call cc-param,asan-instrumentation-with-call-threshold=$(call_threshold)) \
-	 $(call cc-param,asan-stack=$(CONFIG_KASAN_STACK)) \
 	 $(call cc-param,asan-instrument-allocas=1)
 endif
 
+CFLAGS_KASAN += $(call cc-param,asan-stack=$(CONFIG_KASAN_STACK))
+
 endif # CONFIG_KASAN_GENERIC
 
 ifdef CONFIG_KASAN_SW_TAGS
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
