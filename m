Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5882B1E4460
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qQzv5xI2jOX6+s8Lzz3vklqwuKx5inHTfi3jfnhd8FU=; b=V0VgWI0NF4NGqm
	42p++dDPUz9ha+XR/xGZApYvH60ZMi2mOwBOExUOK80iw1uyUZCH3zoHdoksQZlSsudP7SZgRXmCp
	uFFg7Ridh+Hr+6uuQwtyJQL34RNxw4OV0yxJVyP5i7BSyx6Yv2z+ZRDqdWsd+LYd3hUp9sppATrZh
	xz4lTmD80a8PDUWsomlXPX1umSQMJ5A550EgXouhwxvYXC4jwIRRLyOxCUG+IKLzOY0yMtDHVUj2y
	YOnf+/VJpICw/YibmnJICqptriuKMytS5Q91d71Ut6g1grBT7cj9w67P/7xtpPDhGCKst6ChGdD/R
	pHRqxr7XdTC/sc2U601g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwRh-0002c9-4P; Wed, 27 May 2020 13:50:13 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwRM-0002bR-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:49:53 +0000
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MeToK-1j3mD13omq-00aStF; Wed, 27 May 2020 15:49:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: pass -msoft-float to gcc earlier
Date: Wed, 27 May 2020 15:49:34 +0200
Message-Id: <20200527134946.1034391-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:G5fO0GvXqQ7URCOK275565svfOfjD5zjWbghoAyYqsXD61NGPPV
 K3P+UcFTh2o/d8MI/VsrOcbfFksMEw7u1v2KFJI6nP+xf/v/qOU6RVa+Pu5ZZg2ZtebjVaW
 tsb2V6RQplKSQTiTvuvi5WkDqZy6qzEGPwloEkwqKHfbICW6mNJObm/mwqBT1AGpuNNM43i
 vEz1YQwWcfzoziXlzOepQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F/gBf8yOHW8=:5cuOcmDhdtzCJCm0zoNZgt
 ZtF8+oGlZwNWTXQJqiHCMjNXmEsfdwmft9cA4rbnXJs9aM7km6WYRsyc6oz9js5S1d3sh/aye
 xnogOzfSLlw+BYYo/c4AzbyxQgxv4OKSMa+RisnP8LfBCwUO980XTUQV5zRKqWw8IZn+FMPmB
 WtZhDlM9utEQyHFrPLej3hA/59gBS9ly0J0hXKZJRAvsykz8CzxVdtB639NywEP24FtN7cth6
 bWHBzJeTfzu/4dB6UWULId8FwI0XShfSfurO6JXs7gLBUJMruxzK9t8Y7WnCWnJY5e6q+GtOv
 +Mv0p6hs0+HsDU1jJRyQXtAbdAWJ92FMIaBptBuDogpASSMz2MwT2XeL6XXFAwJ+ndY/WBfbz
 SP3HS5MpUbA06oumhVdpuZR2WY8I3DxrmL5XYz9SXyJrr9PnEvcyrUwVjyK9dYSVvQhiLKfi1
 szwpcnObSPKcbdjQkxZSQ6WNJ73zQxmBtiqUjSZoy3FAxEvaGu23bH6+gRn2oFkkd0/M5R7UC
 Gs8rPkNeFdnDTpOeJOUXlD4t/AbqNafO0auZuWwnmvA9dRBiJfVj/Y63/XIkstvjBbTWx9GjG
 aUoPZpu+wffPiTB/0WCY3K4EQn5S0XwRXYYKHfypFtctx52XbI9G2utzxW4henz2dE4/gvxFa
 +3ZNgLhUBk1iDMWpzcERcAgRiGTX+Uxwk9yimIb1V6k4SUnoH6rKXG91EPLsNHPr54fMeJvF5
 3lu5tOCJzhS33qiU2PAupR2XFh93FPWVYvs55jwY0OiFTlqbH9DoBINICzuivzM3NVBPRryvJ
 KywP/UlNgPerwZHcHme3CXB1FxX6+wGwHYyoiXy3Lac0wX7lfM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064952_560593_7AEC1327 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Szabolcs Nagy ran into a kernel build failure with a custom gcc
toochain that sets -mfpu=auto -mfloat-abi-hard:

 /tmp/ccmNdcdf.s:1898: Error: selected processor does not support `cpsid i' in ARM mode

The problem is that $(call cc-option, -march=armv7-a) fails before the
kernel overrides the gcc options to also pass -msoft-float.

Move the option to the beginning the Makefile, before we call
cc-option for the first time.

Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87302
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fcd40c5bfd94..9804f8f61e67 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,8 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+KBUILD_CFLAGS	+= -msoft-float
+
 ifeq ($(CONFIG_CPU_32v4),y)
 LDFLAGS_vmlinux	+= $(call ld-option,--fix-v4bx)
 LDFLAGS_MODULE	+= $(call ld-option,--fix-v4bx)
@@ -138,7 +140,7 @@ AFLAGS_ISA	:=$(CFLAGS_ISA)
 endif
 
 # Need -Uarm for gcc < 3.x
-KBUILD_CFLAGS	+=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
+KBUILD_CFLAGS	+=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -Uarm
 KBUILD_AFLAGS	+=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
 
 CHECKFLAGS	+= -D__arm__
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
