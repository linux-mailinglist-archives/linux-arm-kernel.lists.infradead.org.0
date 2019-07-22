Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCB0702B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikQmakY5m6Fg2o/08yptEV69hpzpizIF4oBCM8REyvA=; b=IfihcTzi6cTBtr
	ZUEbJcEQTby3JavSpOOQbt+9IQgzBgwm7Cs9uZHj9oqfzq8bkTWlfKx/5evtZO3BvZveCHT7fiCVf
	7XKE7QJGhW8SNwmjNxtBsCFSTqK7h7drmpwR1yxSVaHRzD5oE4dmYRRyK59qjXg8ypVQ4n7uviJeC
	7glOMGAOTh4gdXLcY19T2azxKseULm22TQEO1pEcWnfwwbRbPRYqbLgevk2/JBjXf+1+vI6Qa4MQg
	trbqJ5Iy+VUmEjHKU2/tdbVASfDjuAU1+z2T5FN9LwAYwd0hin6eoDIo2sJhKFfjNGlB3o/3h0If3
	2E1vJOtGvhjQSoNLvc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZgp-0001NA-F0; Mon, 22 Jul 2019 14:53:23 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZfs-00017p-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:52:25 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M6m5o-1hmpZg2zkM-008LEh; Mon, 22 Jul 2019 16:52:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org,
	Sekhar Nori <nsekhar@ti.com>
Subject: [PATCH] [RESEND] ARM: davinci: fix sleep.S build error on ARMv4
Date: Mon, 22 Jul 2019 16:51:50 +0200
Message-Id: <20190722145211.1154785-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:iAtehMXXYnCWFJ5DNLwBwFTLws99i7fqpxPmtyH/yvfW6H8Ctwi
 Fi0td61Baqu91ONIbhZ60qL+AFXtUkL6w2fLXTYYdGUgr+KMERUmtOldY4oImOCN2gtBYUT
 VDZVT1cOtCr558emYVAisbXf3xuo2stca3tdRs4O93g2DXxsMxUwrBIktSa/7Wz1Apyj1un
 POdBB5yEFLkQJWrFmCzww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ib0Mi+4+ezs=:EsbpZag6xZFGxTQ4oiBoDR
 slk0vaCKD/n0SbnmPoRD1wTO8croA0WgKEYcN322V1kbu8eEqqnInDPjzuhy/VEoHkB6hvuYr
 yHzH2isYcdpIxIEJv4sb3yobdl47QB4wozEpob8Glf+KxRwy62df82t3t+c98Gi577RuskI6N
 VwRlraxQkFPWl3qkMBVQotGMVFT14/8BZUJVedKoqnWafWQ8/wjaPWk6Zmg7mK6eXayXQ9g4S
 gAYZKwULnMzqMEZVO0Ys+iaWaN0rGRmTHknuWy8TEK4VH8KSEQph7utWXwj67pJzesFFYjTKy
 ix8l4M9yjZlTperBVIbO5yAX9Hmvw0bVCYTo+glx6Qo937jys06/Wsh1IGbeIZaqNzR9qMV31
 gKNxLe9BRS8rvpm2pcmiPRtdi2C1R6I0nH/L9LxOJ+/ujgUXaHTXcQMjqr2U802CUoarSwabF
 +WUPS8XoMT0bsG0hgtB7AVjed4b3QW5GYQY6CpEXDQEpkckwVpIBQiCw3y907uBkP3/2lD4H8
 GM/h1Go8BZWshzky3ydC2BXq89GEMPSzS/SUM7xNL66UL00xVnL3ZbwsqUL2rEi875sgaiWcT
 0p7DSh8Nn4fC4XaCR5DFf6XUeVKPeGQn5njpQvYQgLXDB0wgUZTn9cL1yCZ3gpvVQhnvcHeTg
 MnCOSgnzpt+4rt73V1ylSFTjHSU/HbvqKwlqqQwhgBW+NtUqIEj4u7i10phtWdRKBzMaIEfIa
 lNSDYK5+g4pNM+7gFadRP+vot3w3vfOX4aTymQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075224_639253_658AA994 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building a multiplatform kernel that includes armv4 support,
the default target CPU does not support the blx instruction,
which leads to a build failure:

arch/arm/mach-davinci/sleep.S: Assembler messages:
arch/arm/mach-davinci/sleep.S:56: Error: selected processor does not support `blx ip' in ARM mode

Add a .arch statement in the sources to make this file build.

Acked-by: Sekhar Nori <nsekhar@ti.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I forgot to pick this up for arm-soc, sending again so it
ends up in the inbox
---
 arch/arm/mach-davinci/sleep.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-davinci/sleep.S b/arch/arm/mach-davinci/sleep.S
index 05d03f09ff54..71262dcdbca3 100644
--- a/arch/arm/mach-davinci/sleep.S
+++ b/arch/arm/mach-davinci/sleep.S
@@ -24,6 +24,7 @@
 #define DEEPSLEEP_SLEEPENABLE_BIT	BIT(31)
 
 	.text
+	.arch	armv5te
 /*
  * Move DaVinci into deep sleep state
  *
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
