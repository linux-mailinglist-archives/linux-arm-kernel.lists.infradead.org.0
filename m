Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600A832A8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3wF39fT6ilCESmNasngDrY+dK1pAQ4wT64Bhm6RdPEE=; b=Hh10TWbve+GDIIU6g6uo6pASx3
	9f9CanRlUN57bwcFBOqUw1HuW/akURFg9v/Oun8hfkA3cjq0usxme9FVCWY8ea15bGbve2zxif2pW
	VRaQew/117ClWscoq2y4/dOfAYwB4JUsS/aazqmFEaBpAsK/5eCSUgkB8pRV7MBTkDZ6q5+li11/f
	YtNnNbxHL3KUByfXeZXVroK1UOp7XhJzVgWUAOhEQbVRIPc9YRDHzr7oARWlCIH5S2Pgp0ofGTU7h
	SSbp8b4EXxqjLTRvsF90RUUVRV064H0ynbCn/kiIaO5jHjna5eCPWRooTiw8zMZ/RRCNN+AyOrFOx
	0YWTdo2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXi6G-0006i5-Jr; Mon, 03 Jun 2019 08:13:48 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXi5p-0006Md-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:13:24 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x538Cdor002048;
 Mon, 3 Jun 2019 17:12:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x538Cdor002048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559549562;
 bh=p//No+hpKX3bBuChWljMBq7O7wxZpa31Ei+M+7TG65Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KqwWUkpSXMd92pSxF2HHBDB61ZSrRw+BjVwv+W5EF2BsU5V0Zx4yxckLK5wu6dE+n
 dRVMiWIZY96EGO5/vH0gbYT35oCsyXoUCY9Kpr42u8RlPCVh/3KJCKI2VhMnYaUxB1
 XZpxXl4kBtiC217nMC6Vl1Y7NxryhBrUASviXra3ycmubs32Bn9W232B6RWK+SIjgy
 7BzS3L/A4YZ9l2RU8rTu+NyCa6VVzQLfhojLBzhq3a5GQO4v8XAB6lfFWWkydl03do
 KSwEHwKwWDslw4Sx5OWy6HoRM40uKD+GrSika+cA1gZh3S07MZoQve2U9/ASMZmTGX
 fxSJlpmD2FtxA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: arm@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [RESEND PATCH 2/2] memory: move jedec_ddr.h from include/memory to
 drivers/memory/
Date: Mon,  3 Jun 2019 17:12:33 +0900
Message-Id: <20190603081233.17394-3-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603081233.17394-1-yamada.masahiro@socionext.com>
References: <20190603081233.17394-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_011321_876142_11059703 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that jedec_ddr_data.c was moved from lib/ to drivers/memory/,
<memory/jedec_ddr.h> is included only from drivers/memory/.

Make it a local header of drivers/memory/.

The directory include/memory is now gone.

While I am here, I also changed #include <linux/module.h> to
<linux/export.h>. Because CONFIG_DDR is bool, jedec_ddr_data.c is
never compiled as a module.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/memory/emif.c                   | 3 ++-
 {include => drivers}/memory/jedec_ddr.h | 6 +++---
 drivers/memory/jedec_ddr_data.c         | 5 +++--
 drivers/memory/of_memory.c              | 3 ++-
 4 files changed, 10 insertions(+), 7 deletions(-)
 rename {include => drivers}/memory/jedec_ddr.h (97%)

diff --git a/drivers/memory/emif.c b/drivers/memory/emif.c
index 2f214440008c..32cad7540d78 100644
--- a/drivers/memory/emif.c
+++ b/drivers/memory/emif.c
@@ -26,8 +26,9 @@
 #include <linux/list.h>
 #include <linux/spinlock.h>
 #include <linux/pm.h>
-#include <memory/jedec_ddr.h>
+
 #include "emif.h"
+#include "jedec_ddr.h"
 #include "of_memory.h"
 
 /**
diff --git a/include/memory/jedec_ddr.h b/drivers/memory/jedec_ddr.h
similarity index 97%
rename from include/memory/jedec_ddr.h
rename to drivers/memory/jedec_ddr.h
index ddad0f870e5d..a2094a9a588e 100644
--- a/include/memory/jedec_ddr.h
+++ b/drivers/memory/jedec_ddr.h
@@ -9,8 +9,8 @@
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
  */
-#ifndef __LINUX_JEDEC_DDR_H
-#define __LINUX_JEDEC_DDR_H
+#ifndef __JEDEC_DDR_H
+#define __JEDEC_DDR_H
 
 #include <linux/types.h>
 
@@ -172,4 +172,4 @@ extern const struct lpddr2_timings
 	lpddr2_jedec_timings[NUM_DDR_TIMING_TABLE_ENTRIES];
 extern const struct lpddr2_min_tck lpddr2_jedec_min_tck;
 
-#endif /* __LINUX_JEDEC_DDR_H */
+#endif /* __JEDEC_DDR_H */
diff --git a/drivers/memory/jedec_ddr_data.c b/drivers/memory/jedec_ddr_data.c
index 6d2cbf1d567f..1f9ca0f23407 100644
--- a/drivers/memory/jedec_ddr_data.c
+++ b/drivers/memory/jedec_ddr_data.c
@@ -10,8 +10,9 @@
  * published by the Free Software Foundation.
  */
 
-#include <memory/jedec_ddr.h>
-#include <linux/module.h>
+#include <linux/export.h>
+
+#include "jedec_ddr.h"
 
 /* LPDDR2 addressing details from JESD209-2 section 2.4 */
 const struct lpddr2_addressing
diff --git a/drivers/memory/of_memory.c b/drivers/memory/of_memory.c
index 12a61f558644..46539b27a3fb 100644
--- a/drivers/memory/of_memory.c
+++ b/drivers/memory/of_memory.c
@@ -10,8 +10,9 @@
 #include <linux/list.h>
 #include <linux/of.h>
 #include <linux/gfp.h>
-#include <memory/jedec_ddr.h>
 #include <linux/export.h>
+
+#include "jedec_ddr.h"
 #include "of_memory.h"
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
