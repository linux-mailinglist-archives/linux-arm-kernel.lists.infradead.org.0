Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441876F22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoKVajLTSNsjUERr1sspSTU93vyjrvkz3sgS1fYTicg=; b=upiuR0aWwiEbSg
	8deK8ECp9ds7gglU/Xwr0ruVpsiES8RnTi0CtmnpGH7Y6IsmQdYiAhoM3kv35fbyzwBybvpvMWKoI
	4ugJSdhx7R155GopbxYOaHKQT9m+mzmK7M0cvU3P6/zyQxuO4nxmhfsDX0sbthWn15yekNHOkNrQE
	0HRgATatNiuS0Zrp028dQ++DP/aIJxbkXMF2kvFsVgnIwP/3toBnxfhat4XT1U+mkYCEpRgniPfbB
	A1GMalHewOaDH5fh3+oSvqx4nEATz2st7vvcs6EgY5Qrs86nNZF5wbwXJZ6jdCji2EnQgTDJA9R8j
	Q3dqoChpPVDX1stBoa3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr377-0002mq-TV; Fri, 26 Jul 2019 16:30:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr36Z-0001mn-SY
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:30:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58A15152D;
 Fri, 26 Jul 2019 09:30:03 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5A603F71F;
 Fri, 26 Jul 2019 09:30:00 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH 1/2] mips: vdso: Fix source path
Date: Fri, 26 Jul 2019 17:29:43 +0100
Message-Id: <20190726162944.12149-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726162944.12149-1-vincenzo.frascino@arm.com>
References: <MWHPR2201MB1277C33D971A9C8945812CFCC1C00@MWHPR2201MB1277.namprd22.prod.outlook.com>
 <20190726162944.12149-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_093003_987225_0714643E 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shuah@kernel.org, andre.przywara@arm.com, arnd@arndb.de,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux@armlinux.org.uk, ralf@linux-mips.org,
 salyzyn@android.com, luto@kernel.org, paul.burton@mips.com,
 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk, tglx@linutronix.de,
 sthotton@marvell.com, pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vdso library for o32 and n32 does not compile compile correctly
due to a wrong inclusion path for config-n32-o32-env.c resulting in
the error below:

cc1: fatal error: arch/mips/vdso/config-n32-o32-env.c:
No such file or dnirectory
compilation terminated.
arch/mips/vdso/Makefile:153: recipe for target
'arch/mips/vdso/vgettimeofday-o32.o' failed
make[3]: *** [arch/mips/vdso/vgettimeofday-o32.o] Error 1
scripts/Makefile.build:490: recipe for target 'arch/mips/vdso' failed

Fix the config-n32-o32-env.c inclusion path prepending the $(srctree)
variable.

Cc: Paul Burton <paul.burton@mips.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/vdso/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index de853c6aab28..6b482ac52e61 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -40,8 +40,8 @@ CFLAGS_vgettimeofday.o = -include $(c-gettimeofday-y)
 # config-n32-o32-env.c prepares the environment to build a 32bit vDSO
 # library on a 64bit kernel.
 # Note: Needs to be included before than the generic library.
-CFLAGS_vgettimeofday-o32.o = -include $(src)/config-n32-o32-env.c -include $(c-gettimeofday-y)
-CFLAGS_vgettimeofday-n32.o = -include $(src)/config-n32-o32-env.c -include $(c-gettimeofday-y)
+CFLAGS_vgettimeofday-o32.o = -include $(srctree)/$(src)/config-n32-o32-env.c -include $(c-gettimeofday-y)
+CFLAGS_vgettimeofday-n32.o = -include $(srctree)/$(src)/config-n32-o32-env.c -include $(c-gettimeofday-y)
 endif
 
 CFLAGS_REMOVE_vgettimeofday.o = -pg
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
