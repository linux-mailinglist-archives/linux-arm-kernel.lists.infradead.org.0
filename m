Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10B3598CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ysI57YyVppwfKOWgUhF1t1iqPTgAzgs9P5URsIqVfCc=; b=rpRbREUYKgrmjd
	weVUEY+wnoNs7bvVqGx/NYs7KE536Q8g9n49Q7pfsRVHnsuPlZux2o1qoebS1sZ2Bt025N+tCtV+D
	TmQxbldWiHmjb2oUU0TMcrrC32c9KYBFG9ZoZaO+cofrv5WYSpMck9omM0scuweSdSOkIiHxCRhiE
	BrURapot00ynmr2rVYl2IYlfvwo5CRBHUCSUnvu/rB70sD+v5cnAilcUhb4dSypL+CptOWC1tLFRf
	t913yqzK6YHcpRIRczKu5iwuEypZHSCacMXfRYu2vD6DQV7x21miUB+vAOwZIpR+WI5t0JWummeou
	wUZknftcG+AeNvTq9EyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoU0-00067Q-MT; Fri, 28 Jun 2019 10:51:56 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoTm-00066y-MT
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:51:44 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MrhHm-1iJ7tB3TDo-00nh66; Fri, 28 Jun 2019 12:51:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: davinci-vpbe: remove obsolete includes
Date: Fri, 28 Jun 2019 12:51:05 +0200
Message-Id: <20190628105131.3130257-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:nxX3U+4ZM9iM1SCOcgx45eYQB4Et4Zv/+leVO4gmMA7AI92jFeX
 TYGYg/KjFOoYbfz/uKsDqrS2TIiaCqmwoOagcExglGofX8Pe5Q5Q+piltjM8iQ/ePFYc09Y
 Js7LavsFql/6kHhwBZc4/XHcizswY5N9/SJxP4Ya5T9kIXDiGLQmRtHP3uJZpIItAMfAVVs
 ctdRcJdy8VKHxLPbygNwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r3l2W5Lr0F0=:V0QAAh8URiEwDA35SCFCAZ
 3ibhnFD1gMsYiK/bmbzf71iEyf6jkeKI/yBqBP0KrAh04KR8+eFWm5+7B3GClLjeiIefc1Y1A
 Jb44Bc9XXldLHvAZuKcLbHtLXV6nU6QBF9KAUHajuwHV1Q6by5huuU2b11btJ8pRg+MbWQBMH
 uetx8yXyV50c4tH/dmwZsBFDUq+u+KgGTzzZ1OOWsxDq3Iv4h/ZBYHhm5eEPeMF3zoMR04se/
 +X7Y/K8LsWg2z6HvI0HjUxpDnnujn9cUkITIxFyo62zo3i8MZk4iNejWYmMTfsE95duhHznEZ
 q1dYhDtEPWjl9RN25PCFdwFUlkGf54SGLCQXyXcGYE21Zx9nCRQSDD69jiWvXVXuslPmd432O
 yyv5jzvquaE69rEHXnAtqgJWzyTryFXEjAuFk5S/Mqyc2j6lYXdDE9Lv2L2ynvUGRrlOcEqIQ
 SIgvvX54zgTnHNxv/XhBRoRrtGKJ9Y81skLorqoRXtmk9ZidOiFXHz9yJu3gkdMmQQfyG8pSd
 mdFGLVFJuMk7LHq0Z4eVTfqmdVllWh1mxddxyqkTZoV/8cDXpuhR3NTHFw8xRZF2EoeBEJGsU
 Oq8N4I02cm4kBtxNoNIisoWQEZ1GdIhua2sAlB+lCj9HvELj+ZqnVnkSstY1G+K8z5KjrNxte
 cabT/ytf8GK06GTtYayqDXsO5BWKHwayfmrYKMtMZmRKaVTZSzO/46y3ExxKEvt3oaJNbVUQh
 9liPHNqbMJnFO3B3MVbyhZR76NPLXF8xPqOpQA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_035143_029701_976BC4FB 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver builds fine without these, and they cause build
problems once davinci multiplatform support is enabled.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/media/platform/davinci/vpbe_display.c | 4 ----
 drivers/media/platform/davinci/vpbe_osd.c     | 5 -----
 drivers/media/platform/davinci/vpbe_venc.c    | 5 -----
 3 files changed, 14 deletions(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index 000b191c42d8..18f9408013d1 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -19,10 +19,6 @@
 
 #include <asm/pgtable.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/cputype.h>
-#endif
-
 #include <media/v4l2-dev.h>
 #include <media/v4l2-common.h>
 #include <media/v4l2-ioctl.h>
diff --git a/drivers/media/platform/davinci/vpbe_osd.c b/drivers/media/platform/davinci/vpbe_osd.c
index 491842ef33c5..91b571a0ac2c 100644
--- a/drivers/media/platform/davinci/vpbe_osd.c
+++ b/drivers/media/platform/davinci/vpbe_osd.c
@@ -16,11 +16,6 @@
 #include <linux/clk.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/cputype.h>
-#include <mach/hardware.h>
-#endif
-
 #include <media/davinci/vpss.h>
 #include <media/v4l2-device.h>
 #include <media/davinci/vpbe_types.h>
diff --git a/drivers/media/platform/davinci/vpbe_venc.c b/drivers/media/platform/davinci/vpbe_venc.c
index 425f91f07165..8caa084e5704 100644
--- a/drivers/media/platform/davinci/vpbe_venc.c
+++ b/drivers/media/platform/davinci/vpbe_venc.c
@@ -14,11 +14,6 @@
 #include <linux/videodev2.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/hardware.h>
-#include <mach/mux.h>
-#endif
-
 #include <linux/platform_data/i2c-davinci.h>
 
 #include <linux/io.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
