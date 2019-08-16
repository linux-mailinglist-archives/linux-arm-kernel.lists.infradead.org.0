Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C59016A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6X3MJPsxnfL9weSX5kdZzHh+mNLOx5ev5/DNNg/1BKM=; b=bPPJbawsDpdeyjDjCaaOPq6Vvi
	uEofRbXgufRU65yK0+2Yw6QgrVomr2E5JOeLtcZLiYtGbfR8WKK9T3c50YPtTJ4Z/d4jEb9Uxgb+l
	O/D8MXP/s+X7rQbA+K3jUtPAmd9Tki2f6iVTd1p57+K+dFi4w6lGi71XSPMhoLH3CAxG6o6qGKMgp
	/KMcwFYMXeULux6QpGrNOR97LZ5rV4LDD7yU0tQpV4NepvDYFV2H7Z531Jo+eNf64ZwIJZ7MzdVk2
	X+tKKaWAq2HkQ0bBVNB0IL9CkLf4dUtQvbLRxPxtiFjdG9MHU1dIdJjT6KUVnCjmZu+Fkv3GHeXpU
	H8ZWqldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybJQ-0006mt-A8; Fri, 16 Aug 2019 12:26:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHj-0004MZ-Ot
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 147AC360;
 Fri, 16 Aug 2019 05:24:47 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF0CD3F706;
 Fri, 16 Aug 2019 05:24:45 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 05/18] objtool: special: Adapt special section handling
Date: Fri, 16 Aug 2019 13:23:50 +0100
Message-Id: <20190816122403.14994-6-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052448_091078_9567ADF3 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch abstracts the few architecture dependent tests that are
perform when handling special section and switch tables. It enables any
architecture to ignore a particular CPU feature or not to handle switch
tables.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 tools/objtool/arch/arm64/Build                |  1 +
 tools/objtool/arch/arm64/arch_special.c       | 22 +++++++++++++++
 .../objtool/arch/arm64/include/arch_special.h | 10 +++++--
 tools/objtool/arch/x86/Build                  |  1 +
 tools/objtool/arch/x86/arch_special.c         | 28 +++++++++++++++++++
 tools/objtool/arch/x86/include/arch_special.h |  9 ++++++
 tools/objtool/check.c                         | 24 ++++++++++++++--
 tools/objtool/special.c                       |  9 ++----
 tools/objtool/special.h                       |  3 ++
 9 files changed, 96 insertions(+), 11 deletions(-)
 create mode 100644 tools/objtool/arch/arm64/arch_special.c
 create mode 100644 tools/objtool/arch/x86/arch_special.c

diff --git a/tools/objtool/arch/arm64/Build b/tools/objtool/arch/arm64/Build
index bf7a32c2b9e9..3d09be745a84 100644
--- a/tools/objtool/arch/arm64/Build
+++ b/tools/objtool/arch/arm64/Build
@@ -1,3 +1,4 @@
+objtool-y += arch_special.o
 objtool-y += decode.o
 objtool-y += orc_dump.o
 objtool-y += orc_gen.o
diff --git a/tools/objtool/arch/arm64/arch_special.c b/tools/objtool/arch/arm64/arch_special.c
new file mode 100644
index 000000000000..a21d28876317
--- /dev/null
+++ b/tools/objtool/arch/arm64/arch_special.c
@@ -0,0 +1,22 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+#include "../../special.h"
+#include "arch_special.h"
+
+void arch_force_alt_path(unsigned short feature,
+			 bool uaccess,
+			 struct special_alt *alt)
+{
+}
diff --git a/tools/objtool/arch/arm64/include/arch_special.h b/tools/objtool/arch/arm64/include/arch_special.h
index 63da775d0581..185103be8a51 100644
--- a/tools/objtool/arch/arm64/include/arch_special.h
+++ b/tools/objtool/arch/arm64/include/arch_special.h
@@ -30,7 +30,13 @@
 #define ALT_ORIG_LEN_OFFSET	10
 #define ALT_NEW_LEN_OFFSET	11
 
-#define X86_FEATURE_POPCNT (4 * 32 + 23)
-#define X86_FEATURE_SMAP   (9 * 32 + 20)
+static inline bool arch_should_ignore_feature(unsigned short feature)
+{
+	return false;
+}
 
+static inline bool arch_support_switch_table(void)
+{
+	return false;
+}
 #endif /* _ARM64_ARCH_SPECIAL_H */
diff --git a/tools/objtool/arch/x86/Build b/tools/objtool/arch/x86/Build
index 1f11b45999d0..63e167775bc8 100644
--- a/tools/objtool/arch/x86/Build
+++ b/tools/objtool/arch/x86/Build
@@ -1,3 +1,4 @@
+objtool-y += arch_special.o
 objtool-y += decode.o
 objtool-y += orc_dump.o
 objtool-y += orc_gen.o
diff --git a/tools/objtool/arch/x86/arch_special.c b/tools/objtool/arch/x86/arch_special.c
new file mode 100644
index 000000000000..6583a1770bb2
--- /dev/null
+++ b/tools/objtool/arch/x86/arch_special.c
@@ -0,0 +1,28 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see <http://www.gnu.org/licenses/>.
+ */
+#include "../../special.h"
+#include "arch_special.h"
+
+void arch_force_alt_path(unsigned short feature,
+			 bool uaccess,
+			 struct special_alt *alt)
+{
+		if (feature == X86_FEATURE_SMAP) {
+			if (uaccess)
+				alt->skip_orig = true;
+			else
+				alt->skip_alt = true;
+		}
+}
diff --git a/tools/objtool/arch/x86/include/arch_special.h b/tools/objtool/arch/x86/include/arch_special.h
index 424ce47013e3..fce2b1193194 100644
--- a/tools/objtool/arch/x86/include/arch_special.h
+++ b/tools/objtool/arch/x86/include/arch_special.h
@@ -33,4 +33,13 @@
 #define X86_FEATURE_POPCNT (4 * 32 + 23)
 #define X86_FEATURE_SMAP   (9 * 32 + 20)
 
+static inline bool arch_should_ignore_feature(unsigned short feature)
+{
+	return feature == X86_FEATURE_POPCNT;
+}
+
+static inline bool arch_support_switch_table(void)
+{
+	return true;
+}
 #endif /* _X86_ARCH_SPECIAL_H */
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 30e147391dcb..4af6422d3428 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -729,7 +729,7 @@ static int handle_group_alt(struct objtool_file *file,
 		last_orig_insn = insn;
 	}
 
-	if (next_insn_same_sec(file, last_orig_insn)) {
+	if (last_orig_insn && next_insn_same_sec(file, last_orig_insn)) {
 		fake_jump = malloc(sizeof(*fake_jump));
 		if (!fake_jump) {
 			WARN("malloc failed");
@@ -1061,6 +1061,26 @@ static struct rela *find_jump_table(struct objtool_file *file,
 		table_rela = find_rela_by_dest(table_sec, table_offset);
 		if (!table_rela)
 			continue;
+		/*
+		 * If we are on arm64 architecture, we now that we
+		 * are in presence of a switch table thanks to
+		 * the `br <Xn>` insn. but we can't retrieve it yet.
+		 * So we just ignore unreachable for this file.
+		 */
+		if (!arch_support_switch_table()) {
+			file->ignore_unreachables = true;
+			return NULL;
+		}
+
+		rodata_rela = find_rela_by_dest(rodata_sec, table_offset);
+		if (rodata_rela) {
+			/*
+			 * Use of RIP-relative switch jumps is quite rare, and
+			 * indicates a rare GCC quirk/bug which can leave dead
+			 * code behind.
+			 */
+			if (text_rela->type == R_X86_64_PC32)
+				file->ignore_unreachables = true;
 
 		/*
 		 * Use of RIP-relative switch jumps is quite rare, and
@@ -1864,7 +1884,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 	insn = first;
 	sec = insn->sec;
 
-	if (insn->alt_group && list_empty(&insn->alts)) {
+	if (!insn->visited && insn->alt_group && list_empty(&insn->alts)) {
 		WARN_FUNC("don't know how to handle branch to middle of alternative instruction group",
 			  sec, insn->offset);
 		return 1;
diff --git a/tools/objtool/special.c b/tools/objtool/special.c
index b8ccee1b5382..7a0092d6e5b3 100644
--- a/tools/objtool/special.c
+++ b/tools/objtool/special.c
@@ -81,7 +81,7 @@ static int get_alt_entry(struct elf *elf, struct special_entry *entry,
 		 * feature path which is a "very very small percentage of
 		 * machines".
 		 */
-		if (feature == X86_FEATURE_POPCNT)
+		if (arch_should_ignore_feature(feature))
 			alt->skip_orig = true;
 
 		/*
@@ -93,12 +93,7 @@ static int get_alt_entry(struct elf *elf, struct special_entry *entry,
 		 * find paths that see the STAC but take the NOP instead of
 		 * CLAC and the other way around.
 		 */
-		if (feature == X86_FEATURE_SMAP) {
-			if (uaccess)
-				alt->skip_orig = true;
-			else
-				alt->skip_alt = true;
-		}
+		arch_force_alt_path(feature, uaccess, alt);
 	}
 
 	orig_rela = find_rela_by_dest(sec, offset + entry->orig);
diff --git a/tools/objtool/special.h b/tools/objtool/special.h
index 35061530e46e..90626a7e41cf 100644
--- a/tools/objtool/special.h
+++ b/tools/objtool/special.h
@@ -27,5 +27,8 @@ struct special_alt {
 };
 
 int special_get_alts(struct elf *elf, struct list_head *alts);
+void arch_force_alt_path(unsigned short feature,
+			 bool uaccess,
+			 struct special_alt *alt);
 
 #endif /* _SPECIAL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
