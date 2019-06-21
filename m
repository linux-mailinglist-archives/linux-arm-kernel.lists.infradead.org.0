Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4674ED3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9hqV4d5v0HUB+C+/WFClWVImYx2pCm54nw5AC8U23kw=; b=SsD
	Y6ly1MwK5Sm0zvziKg/sAfLi1gfYr2n7ygMpWq9A2bMmr66IygdGD7ZJu5V3e1Qa3ZA2rbQx/tv16
	Oi8T90r+qhA8eFWlUU+ONPVg5of0GKhNTM5+7RMohPv0RLVbCvmTE5mEYq1qEbJa3alUMjz0nt3Iw
	UXbVOV/ckBSYFv2D+EiIzOESvwmvvolFcAhE5VfUyNAgFiJrVZW6TGuk7u4AbZRJ6V8zSX9ZQob2O
	GynV8BBLAd41riKAxAScYKL72pgE97bsU5Sj32FrP3ScPVb7f9XZBIRe8S2C2bJDw3PYC6NH5OPYX
	fSSSZr3paPxLkoO1qJtagpz0DPDMa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMaF-0005fN-Fs; Fri, 21 Jun 2019 16:40:15 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heMZu-0005e7-68; Fri, 21 Jun 2019 16:39:56 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x5LGdXbA030778;
 Sat, 22 Jun 2019 01:39:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x5LGdXbA030778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561135174;
 bh=ozhNqk/jJbRlOJsA1fVCfpWIUlNkHQWb4qUWtLdFnnk=;
 h=From:To:Cc:Subject:Date:From;
 b=eIkfdIS+O26Z2YOKvyyUQPDJEfS8R4Fhs0ivGILBOqSQUUm5uWKbiPvKnX/+WtwFg
 bR6tU9HZ4+pLdiRnLxprJkokHFgCtkFoMktC1DDnmtum2THZ3CVntvFIDae0PqQwJz
 UKsDDf8vlHPw6lhKvHOC5bPX9K+MKp9Zup6GlavY83airXFt5PwUrWGHKBwQLMLuVU
 kmDNdZ4svkbDbE9jeS3mqKjBXcv5ohpvAiAgS9EWfEq5D4E5/eDRtcyqvkzithnuhb
 xtCZFMEJe7KxegEtkFkx2ypPYLJzg/fgwsSocOPsVDT+rg+2BXnDFsGwl+LcF3XH9e
 bZh+TEYRkfgHg==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: compile-test global headers to ensure they are
 self-contained
Date: Sat, 22 Jun 2019 01:39:31 +0900
Message-Id: <20190621163931.19397-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_093954_556610_37188B3A 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make as many headers self-contained as possible so that they can be
included without relying on a specific include order.

This commit compiles only a few headers, but it is a good start point.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile         |  1 +
 include/Makefile | 31 +++++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 include/Makefile

diff --git a/Makefile b/Makefile
index c23f5e8381ad..82c1722dd9e9 100644
--- a/Makefile
+++ b/Makefile
@@ -610,6 +610,7 @@ drivers-y	:= drivers/ sound/
 drivers-$(CONFIG_SAMPLES) += samples/
 net-y		:= net/
 libs-y		:= lib/
+libs-$(CONFIG_HEADER_TEST) += include/
 core-y		:= usr/
 virt-y		:= virt/
 endif # KBUILD_EXTMOD
diff --git a/include/Makefile b/include/Makefile
new file mode 100644
index 000000000000..68a76ac732c3
--- /dev/null
+++ b/include/Makefile
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# extend the test coverage when existing errors are fixed
+
+header-test += linux/w*.h
+header-test += linux/x*.h
+header-test += linux/y*.h
+header-test += ras/*.h
+header-test += soc/at91/*.h
+header-test += soc/bcm2835/*.h
+header-test += soc/mediatek/*.h
+header-test += soc/sa1100/*.h
+
+all-headers = $(patsubst $(srctree)/include/%,%,\
+	    $(wildcard $(addprefix $(srctree)/include/, $(header-test))))
+
+# Do not include directly
+no-header-test += linux/compiler-clang.h
+no-header-test += linux/compiler-gcc.h
+no-header-test += linux/patchkey.h
+no-header-test += linux/rwlock_api_smp.h
+no-header-test += linux/spinlock_types_up.h
+no-header-test += linux/spinlock_up.h
+no-header-test += linux/wimax/debug.h
+no-header-test += rdma/uverbs_named_ioctl.h
+
+# Conditionally included
+no-header-test += linux/byteorder/big_endian.h
+no-header-test += linux/byteorder/little_endian.h
+
+header-test-y = $(filter-out $(no-header-test), $(all-headers))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
