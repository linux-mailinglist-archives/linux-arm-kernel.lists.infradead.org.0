Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F14FDC91C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ocbt31mreHC2cbNtoqiHAXHw29SyyyU20EDOlJiUtg=; b=Mb9Pk8XGu8FMJf
	BScViTVH+vokChLFoZjuFClsu6U8EGyeg0pEgGYNLagpjfQp0mkzeNmL5RYRbL0G6uXl3f//sdsby
	crrNRvGlytYdwB5MSXwTwQwdy46bdmx+g/BEnTXCdkP2rJC3pOhrcG7eWtdv3B/eT2I4HUf5X79e5
	6e3+gapYAkeIj4NuZEbGZlzzfAuPtcI5m1JYwyeiQobZSdqSPIHht0HFT/QzuY+0dlJ43mUjRk5/5
	AhyjVcTes7yc5bcmpt9eItbbwpPfJBCXRFih0Ubm4We2XATCxIxWpwbd+IvojEqA5sBWqRvq4zCGI
	7gapRdKZW6U+//FaLm1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUQZ-0000jS-Hx; Fri, 18 Oct 2019 15:44:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOS-0007vp-LJ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N4yyQ-1hw0zj14Bo-010v3h; Fri, 18 Oct 2019 17:42:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 02/46] ARM: pxa: make mainstone.h private
Date: Fri, 18 Oct 2019 17:41:17 +0200
Message-Id: <20191018154201.1276638-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Udhcyk5JTS+ruoRMUBkQ73+mMSZy0d6F8odqYEMh7EWVHlDFzur
 YAEHqgrq+6iEyuzDWfYlOEdN39pwhvaBUi+HBb9kxUqrvfJlTjXn855pEb+7YSKgIprottH
 MbhG5NkvUIaQ0ECtq/JAjNi+AVRlCOLCRx/ZN6koBpNCOTmwQ3P79YeKdno98qrVG5s8Yi6
 Y3HbEZGQiC3QS33gy/aTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:w/pvqB/8ZjQ=:HM9Y+saKdz/Ra2pTCD68uI
 ez8gWpTbJGikKnT+7vjNu9KlZgCm57FRFctO5LdaDPs/nfVNYJNQpv7I48UW+xU1bdTTiCGSL
 mFjuUrBG0wfWKCNSuywhTdM6U8rNyteawBB0kUjCJCmYTfosBm1iXOEYa4ETxDLT6z557dg+g
 oLO6yuYuJNWtH6sytz0F9v1JvwrhodqorHtNdsqVeH8RHGTkjGP7krcBCsok9WFVttCRsX1mC
 gjaLi2849Qu9qm/F9H7yWcqfP4iW1axKXxS7q1E1zKAxPdfO+pT0H6xKae62ZvnFU6wCIQQb8
 bbEd9cgwOoH8fWDKWFdtAwEt1rwwW0RBGyOCtIhDiUpYvOSNOR/lh5mWAQDc42rndghO/ocLc
 hErANl15R+1R+4kNCIQOcSa4YGZbDXhd6Xb8ocWo53R3S0yINI9lHY6NZ8xId9Xum+2I8NK/C
 DlZj6hiZ9bWV6NP4w9b6XfqYLlNNuYNMGWG3t0U45GN36HGJAa6HoxfMm144/sflj/wYW7r3S
 TrFjNe451sLWiNeY1NzlJxUUf9TQMPcjPIjtjfUnPKDIT0xNxz9TE4snvpy0cDh7Fr863oKqd
 w9YmLnRJhTf2ldm3UMtodbPAcivqYyW2fje4RkW1HT2u8ipb2JzMJQSzdoku4KKysXxlBg46f
 A23w7eririCR+9cZllRIEIMUHtOHYAHIbGC+dVwjPBGLvV5mxeXYNDJXODUL4exuOiSPsTCyp
 8xG2F809Az1b8mmfrswFOqZofNtU0ZKWSMcR0hyWyuR9FWJjpEu+I7AIJnD/iIp8W1J4DUWNr
 dcIObRIUANNlFD5FFVkIzNXzCfFep8CNEMJEahXFxTZ3HOr7Fu0FO+zgCIx9Ho2YG9lyfT9ny
 iTsG2Rj0l1hzZUzZhrEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084221_006099_F55A6CC8 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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

No driver includes this any more, so don't expose it globally.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/mainstone.c                    | 2 +-
 arch/arm/mach-pxa/{include/mach => }/mainstone.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/mainstone.h (99%)

diff --git a/arch/arm/mach-pxa/mainstone.c b/arch/arm/mach-pxa/mainstone.c
index 1b7882920164..ef79417ca001 100644
--- a/arch/arm/mach-pxa/mainstone.c
+++ b/arch/arm/mach-pxa/mainstone.c
@@ -45,7 +45,7 @@
 #include <asm/mach/flash.h>
 
 #include "pxa27x.h"
-#include <mach/mainstone.h>
+#include "mainstone.h"
 #include <mach/audio.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
diff --git a/arch/arm/mach-pxa/include/mach/mainstone.h b/arch/arm/mach-pxa/mainstone.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/mainstone.h
rename to arch/arm/mach-pxa/mainstone.h
index 1698f2ffd7c7..ba003742e003 100644
--- a/arch/arm/mach-pxa/include/mach/mainstone.h
+++ b/arch/arm/mach-pxa/mainstone.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- *  arch/arm/mach-pxa/include/mach/mainstone.h
- *
  *  Author:	Nicolas Pitre
  *  Created:	Nov 14, 2002
  *  Copyright:	MontaVista Software Inc.
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
