Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF41EBDB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n9oCPsExohN3eNYTXVv4tg3cQuK4hy8P4lc82fKB4no=; b=IsDU/cBDM8+MDdTtcWpJdqVvpI
	irVFNb1zMVvjycCh8V/0So2NYwsSKkcDx6KoONUTXcEepDDauLdaBKgu3g7qLfnACIAwNGg/VoF2h
	y6OYUxAjOgKKPo1ZB7udja4+CBTPvQwSAaTqpukQtXgvbUQxhB2SfLnEz1HRfj+lPG2YKE6zBtX0W
	CHojEe6gdXksHXbNUki3exa5QK4aYQQS/de+Rhl+MCE02aGZ8Lu6fCVaqpbqXMjCMKquQeNP9zkB5
	FExDX8F8vqlO0hsfj2//5qptc+d7pJsL1pXIVWYbM/K62FaZ4TM0q0pB9XnUnyq0cFGCKxDTHI8Xz
	QjidZcqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQDm-0000Zw-E2; Fri, 01 Nov 2019 06:15:42 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQD0-0007LV-6C
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:14:57 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id xA16ELBd016348;
 Fri, 1 Nov 2019 15:14:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com xA16ELBd016348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572588863;
 bh=i3mAUJKjHAwllmd7KANZFUaKrxZfgZZBSwsGJnV7Xbc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KPc3vgN83gq/1DFpYm2jc42MVPmVXAyW/Lg2mxWgvu1ZAu0bN1KYxqRvmNONYWFk3
 gaUQbkdfqWaDEZ2BcXD9Si4l6mpnff26BF+UBdrTZLRrMCTujMwF3QcBsWjbcgkcOF
 2XbnAVCrdwv3ty0YJtZg3c+4DVaAZKk3gkjpX0FwnK4VsdT89nJli9OWVsMEH9B2G4
 hss+ENiiJCQFP5NOVFqIIOBCByvo34NugeyFLi+nkDC66Xc3GjYRkp6KQ2rDBUrSMD
 JlBahWfNsllQ39/AajGZsAZRYAix+l2RjQ37GhjRbqpYTT/40NjdAoGwDVMHt+Y2WS
 XMwjT6UgHMK7w==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 1/3] libfdt: add SPDX-License-Identifier to libfdt wrappers
Date: Fri,  1 Nov 2019 15:14:09 +0900
Message-Id: <20191101061411.16988-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101061411.16988-1-yamada.masahiro@socionext.com>
References: <20191101061411.16988-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_231454_466751_37287A91 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 David Gibson <david@gibson.dropbear.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are kernel source code even though they are just two-line wrappers.

Files without explicit license information fall back to GPL-2.0-only,
which is the project default.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 lib/fdt.c            | 1 +
 lib/fdt_empty_tree.c | 1 +
 lib/fdt_ro.c         | 1 +
 lib/fdt_rw.c         | 1 +
 lib/fdt_strerror.c   | 1 +
 lib/fdt_sw.c         | 1 +
 lib/fdt_wip.c        | 1 +
 7 files changed, 7 insertions(+)

diff --git a/lib/fdt.c b/lib/fdt.c
index 97f20069fc37..041f8922a23c 100644
--- a/lib/fdt.c
+++ b/lib/fdt.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt.c"
diff --git a/lib/fdt_empty_tree.c b/lib/fdt_empty_tree.c
index 5d30c58150ad..452221227bf3 100644
--- a/lib/fdt_empty_tree.c
+++ b/lib/fdt_empty_tree.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_empty_tree.c"
diff --git a/lib/fdt_ro.c b/lib/fdt_ro.c
index f73c04ea7be4..9f696d19f060 100644
--- a/lib/fdt_ro.c
+++ b/lib/fdt_ro.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_ro.c"
diff --git a/lib/fdt_rw.c b/lib/fdt_rw.c
index 0c1f0f4a4b13..2a61e9c6dd44 100644
--- a/lib/fdt_rw.c
+++ b/lib/fdt_rw.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_rw.c"
diff --git a/lib/fdt_strerror.c b/lib/fdt_strerror.c
index 8713e3ff4707..4554e5fdac12 100644
--- a/lib/fdt_strerror.c
+++ b/lib/fdt_strerror.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_strerror.c"
diff --git a/lib/fdt_sw.c b/lib/fdt_sw.c
index 9ac7e50c76ce..d3345ca399cf 100644
--- a/lib/fdt_sw.c
+++ b/lib/fdt_sw.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_sw.c"
diff --git a/lib/fdt_wip.c b/lib/fdt_wip.c
index 45b3fc3d3ba1..9674d4c3b115 100644
--- a/lib/fdt_wip.c
+++ b/lib/fdt_wip.c
@@ -1,2 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_wip.c"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
