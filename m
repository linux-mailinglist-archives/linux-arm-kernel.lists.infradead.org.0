Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB8D135D91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3P9MAzqiCyxNvu+8B7kgQIBObrs4lVnaqLSY9jJsQ5c=; b=CkTabWD7FUxfuG
	68w/DFgNaOD3+dk7fpMnAlMS0fSAc0IXLiHYHsMyUuJS3vcXTFjJzdLRklXBAYl4z1lr+phojMjbq
	FtJAfK5FWQnZgT6e6pGvw4t9v5woaM4v7RJe+H2YMpaIdtVJljIljNcMuYZW5+QTUvke5hX5tAPkq
	Xx1LBDhOeQBf2SoIHn3ifmIiXksIlefzQhu3UHJoXN86A7wc8LoFiL+V0PNtHyy7n7pgyxl03PdeG
	cS1dUgNGjnQIe34qEMxnjvUc0Xaqs9nzYcN54fTDaMeY3Avh5oql2Qm09JsCKrzIm6r8ov+JTkPAp
	4YdZNtaQBTo50ohNrlzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaK7-0007Yu-3p; Thu, 09 Jan 2020 16:06:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIS-00057R-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=85A3jXho/OiEn29VGhQa36f2B6U6e4WqdxbgEUrqO6w=;
 b=fUVxxrcCgcz2xz/NsGBHtBdcgX2atWiRxpoZbjnVKg/KCjRrv8P4LLwnUZiYS2QyttvKSg
 EBTf75PSGMDKKgqRKcrHBuXIk+ruHXoZ9D3l9SjfoAoh0bD9lhpjdbkr666nFOo0p3FCtx
 fPA1Fh9JwQDVH1lo9Rngzeqkd1KP6O0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-i2OAVtuCO5uLd393UWjt1Q-1; Thu, 09 Jan 2020 11:04:29 -0500
Received: by mail-wr1-f69.google.com with SMTP id f15so3075165wrr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:04:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LKRV6Dbt/iehaVr8Oe5+bZly0BQdm7b+eiiMLnIM3KI=;
 b=oS6LoY19l9iraUJnlQ+cFaV9iCdvqRzOlbMlAjW/hyiegoMlww9xtXaun+homdos/x
 TPriJuuc26sZnHqA3GtYSjvhukulPyLzrUwEbRvQ9rZxYTtPx+HBh8ZCYt6UmWXI3yO+
 FRkGzYaitQ5e/al30py5n3i4ifzgRX2VHNIXWwVnGkdhH6T371Hctzb6o+j/j6MhpZPj
 Eeeuqz1xqUG/pk4LHT+QTfcsIq6aveO79U9POlLE43npPuGeLJ1FqBYaiWlQJcFz/oBr
 fA3a/N9gbzOhUWidFKDD0qJA6MSEGUHxf7rNKEuJPofgkNc4ev1+CaPycaij5pw9OeqM
 iGhw==
X-Gm-Message-State: APjAAAUYF5QD13oi6FalchGEgpZstDS4sLd68FE+LvpGrQEUMT9Ybs3x
 LiQg1xL31bSgX7wJvsjYLris6hWH5bIfVnXCmXYH4rQ69Hsilzo5uajDnaEmo0f8DkiIn1GYzbz
 1Py5VWxOzWuFqyloozlUnHvty0H0sXO9B8Ws=
X-Received: by 2002:a05:6000:149:: with SMTP id
 r9mr11718060wrx.147.1578585867816; 
 Thu, 09 Jan 2020 08:04:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwE3TyBDC9AqG/yX8Wr+TMrqckkMWTYZH3Gv26HTZhn0fYryvFxFkZBJQubZ1op9IAokDJnzw==
X-Received: by 2002:a05:6000:149:: with SMTP id
 r9mr11718025wrx.147.1578585867532; 
 Thu, 09 Jan 2020 08:04:27 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id b17sm8615898wrp.49.2020.01.09.08.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:04:27 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 11/57] objtool: Abstract alternative special case handling
Date: Thu,  9 Jan 2020 16:02:14 +0000
Message-Id: <20200109160300.26150-12-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: i2OAVtuCO5uLd393UWjt1Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080432_949897_273FD079 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some alternatives associated with a specific feature need to be treated
in a special way. Since the features and how to treat them vary from one
architecture to another, move the special case handling to arch specific
code.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/x86/Build                  |  1 +
 tools/objtool/arch/x86/arch_special.c         | 34 +++++++++++++++++++
 tools/objtool/arch/x86/include/arch_special.h |  5 +++
 tools/objtool/special.c                       | 25 +-------------
 tools/objtool/special.h                       |  8 +++++
 5 files changed, 49 insertions(+), 24 deletions(-)
 create mode 100644 tools/objtool/arch/x86/arch_special.c

diff --git a/tools/objtool/arch/x86/Build b/tools/objtool/arch/x86/Build
index e43fd6fa0ee1..971f9fa90a3c 100644
--- a/tools/objtool/arch/x86/Build
+++ b/tools/objtool/arch/x86/Build
@@ -1,3 +1,4 @@
+objtool-y += arch_special.o
 objtool-y += decode.o
 objtool-y += orc_dump.o
 objtool-y += orc_gen.o
diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
new file mode 100644
index 000000000000..6dba31f419d0
--- /dev/null
+++ b/tools/objtool/arch/x86/arch_special.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+#include "../../special.h"
+#include "../../builtin.h"
+
+void arch_handle_alternative(unsigned short feature, struct special_alt *alt)
+{
+	/*
+	 * If UACCESS validation is enabled; force that alternative;
+	 * otherwise force it the other way.
+	 *
+	 * What we want to avoid is having both the original and the
+	 * alternative code flow at the same time, in that case we can
+	 * find paths that see the STAC but take the NOP instead of
+	 * CLAC and the other way around.
+	 */
+	switch (feature) {
+	case X86_FEATURE_SMAP:
+		if (uaccess)
+			alt->skip_orig = true;
+		else
+			alt->skip_alt = true;
+		break;
+	case X86_FEATURE_POPCNT:
+		/*
+		 * It has been requested that we don't validate the !POPCNT
+		 * feature path which is a "very very small percentage of
+		 * machines".
+		 */
+		alt->skip_orig = true;
+		break;
+	default:
+		break;
+	}
+}
diff --git a/tools/objtool/arch/x86/include/arch_special.h b/tools/objtool/arch/x86/include/arch_special.h
index 426178d504a8..3ab2dc32424b 100644
--- a/tools/objtool/arch/x86/include/arch_special.h
+++ b/tools/objtool/arch/x86/include/arch_special.h
@@ -20,4 +20,9 @@
 #define X86_FEATURE_POPCNT (4 * 32 + 23)
 #define X86_FEATURE_SMAP   (9 * 32 + 20)
 
+struct special_alt;
+
+#define arch_handle_alternative arch_handle_alternative
+void arch_handle_alternative(unsigned short feature, struct special_alt *alt);
+
 #endif /* _X86_ARCH_SPECIAL_H */
diff --git a/tools/objtool/special.c b/tools/objtool/special.c
index b8ccee1b5382..67461b25e649 100644
--- a/tools/objtool/special.c
+++ b/tools/objtool/special.c
@@ -75,30 +75,7 @@ static int get_alt_entry(struct elf *elf, struct special_entry *entry,
 
 		feature = *(unsigned short *)(sec->data->d_buf + offset +
 					      entry->feature);
-
-		/*
-		 * It has been requested that we don't validate the !POPCNT
-		 * feature path which is a "very very small percentage of
-		 * machines".
-		 */
-		if (feature == X86_FEATURE_POPCNT)
-			alt->skip_orig = true;
-
-		/*
-		 * If UACCESS validation is enabled; force that alternative;
-		 * otherwise force it the other way.
-		 *
-		 * What we want to avoid is having both the original and the
-		 * alternative code flow at the same time, in that case we can
-		 * find paths that see the STAC but take the NOP instead of
-		 * CLAC and the other way around.
-		 */
-		if (feature == X86_FEATURE_SMAP) {
-			if (uaccess)
-				alt->skip_orig = true;
-			else
-				alt->skip_alt = true;
-		}
+		arch_handle_alternative(feature, alt);
 	}
 
 	orig_rela = find_rela_by_dest(sec, offset + entry->orig);
diff --git a/tools/objtool/special.h b/tools/objtool/special.h
index 35061530e46e..738a05bc6d3a 100644
--- a/tools/objtool/special.h
+++ b/tools/objtool/special.h
@@ -8,6 +8,7 @@
 
 #include <stdbool.h>
 #include "elf.h"
+#include "arch_special.h"
 
 struct special_alt {
 	struct list_head list;
@@ -28,4 +29,11 @@ struct special_alt {
 
 int special_get_alts(struct elf *elf, struct list_head *alts);
 
+#ifndef arch_handle_alternative
+static inline void arch_handle_alternative(unsigned short feature,
+					   struct special_alt *alt)
+{
+}
+#endif
+
 #endif /* _SPECIAL_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
