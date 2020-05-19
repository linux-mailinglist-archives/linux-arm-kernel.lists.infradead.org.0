Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517661DA44B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w+rYRm8HhmDVbKELYQa9bD1tACyjR6XZ7S8FS+UV07g=; b=NRrcu5XkyUwlUC
	5DI6Thh+RBOIEwbA0QuUwV23zs0WnTY5eczxScFjrF95rHb4wCKqlNOZQq+K3JEB+flaRKxyy2uJ7
	lYFV18Ated3UJ83yfzoQ7F9b7o6smLlpSD2/59barm3DLOC+DWRbH+EqhBHSjyViR2JDeqZwkU6ND
	MFGBM2oBR240UMwLHGCWhfUsNqWyhDfXQvam7bsP43ADTyqZVmNSlPukCQUZaLqpG+Rd98dnzdjx6
	aJMJwCAWsuPAPMtSxLFzEg1Po/HhiSxeHUTZuQ+BHXwpyyjIGgyq9ZJAvaBNfmnrUyL5z49Ze9JDA
	4Cr2nB+4m2D28yGisPGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAQw-0005oZ-At; Tue, 19 May 2020 22:09:58 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAQh-0005j9-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:09:45 +0000
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mj8Vx-1j5fUO0KHd-00f6z6; Wed, 20 May 2020 00:09:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: pass -msoft-float to gcc earlier
Date: Wed, 20 May 2020 00:08:55 +0200
Message-Id: <20200519220923.1601303-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:wV6x9QxzVEAmfgleaEmiJ1+1+ez2lYlhCOI97T7b7A0kktn7leA
 eBNumwgh0dBbKPKtn+41PyK6S+nmES2j2TmO36+gTiFDUB/N9XddcQFPMmz0U7D1mTzzSNb
 MwAp6ICoc/0TD2RKRnDzTHm40zeWhHHW8hv+m2V0GAYVT2cZple0hKqcb0wjc6uJwUU/wnR
 R7UKIdUdosSPE8YD7owUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GczoRTp8Z20=:oElP6mJ4TmvCNUchkcksR+
 2pwnLqRT4T0zcnrSMOQAFu7G6tdX+3MyhN1+8omC9LGIJxSQiiaexTqh/czy/LPRJBRdnS8ui
 htb14BcwzwvGw2tj1DXBpJKDpevif5iU+0qbrryfIi7NkHIzn0E/e91JmBhkMGpA9aDK7qAOv
 DJDEtKvfFevGRlBnstNBQ+TW7jSjky8y3ZxwG3nbOPiJgHwmP12HXHCfEvkQm1hrIDg1ALQjq
 4L4AdTyNNTb2EQMMZ1QVCAHFXL0NbZCYIwUaHtRnD8gWqqb5wZLwyX+JodAUZW/URv/1NmL5e
 Z/Gg0NdIP0yp/PVRrW9ls+JtzAShB9ZwDjacH3GDnr7JZAquKFKUMGJWJLQ/d+gz9pXrbkkr4
 ykAJZE1qB1c7ih2GorSojElV/e+l3U7bKWmkuhCRsF7zsXTNarcj4fxXT+RG5AsBXQLQUvmkm
 LJdit0f/yLMwg3YKC1kEV5y9/l2pRbyeCpvd5ym72EiXbVVulipUn6zrocaWTC8TcCXRLzzHz
 n/PgxQ2QpySb0I30DTW3/RU2FZFoAq0xp/WouJLJLjQnCT33b+u3U5vDrTwU4aN0Mv9+mSYzz
 vBtTbcE3fC23Mbv5a+PuVXZfS1Z0bTau4l915odZjay8hFi95vPbMpFry8dYWzR+qp19gbWcq
 K/tleul1NYY8t+UU/5rY8skb7kPpeSbyf8cLg0wIOJBIvds1qNbMsGv5kcQXqvUJleNaodBp6
 +Hgj2ERR/vpeJj1hwCpA8rD1xLe+cn8Kw9BHMRo6h5hqQOX80F6d/EmFMwFDNPP89H4d88Q0m
 JVNGe4G5fxQLSpcuvoc6hAabeqVMPMT30WUTInGbL2lHjVL8Hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_150943_814400_F30EAE11 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Szabolcs Nagy ran into a kernel build failure with a custom gcc
toochain that sets -mfpu=auto -mfloat-abi=hard:

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
index 7d5cd0f85461..e428ea6eb0fa 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,8 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+KBUILD_CFLAGS	+= -msoft-float
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
@@ -135,7 +137,7 @@ AFLAGS_ISA	:=$(CFLAGS_ISA)
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
