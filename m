Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EB6135E09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j6yoMr0gOd+29V2mIREOatAB37dKLz5D9rNvRtebjk=; b=E9chqJdyazNtKT
	8Nxzw71014T2nUKWPm64OezzrVnUX5+nRX0A/zFLqqYj7kNhEHRF5ks2e2+xCR9PpGrOGHWBPX2P9
	14gDJxedRtxEFz5oOZjDZ0lZsxOFe8+W8X/YC4RKpna4LldCZa87suuqb12kpq2L76G8f1nF/pDOI
	VkYvoVgJ1dD3o5Y1w/M30t5Z8QQqF83sbbbQhRUzygD89Uqlx2Q+CfEwLJ51tTuj0+LS1588ia6b0
	XTWEmM1e3OlTswztxDBFgkENnbjZptxchWicypYKBU6z/nF5M8ZpVjosamadT1M98uUZj0oOQYVqJ
	6EHibI4U0NkILWzzxdFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaW4-0004Le-Jw; Thu, 09 Jan 2020 16:18:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMG-0001QQ-H1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rIO2h9KrEYPabWRX3TDhKhoqSrg8+Z2neV2hGtzX3p0=;
 b=RARJ8a4KEW5xHl9SZK2Fil1zMQgZcN3Ke/qDaVUka6nWDBgWiXCDtmCcEXydtQty2KyA/1
 CoePmhUmH3bK0iOmXL9fRcvxPdZZ0aIcuCSDWWQyo4rORgMABIuR+QNO9p4F4Lc47RRAr0
 7YveBhvAnHJG87+sWw+MU295nAT+Wzo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-fBmF-eNHNtKjLHU0YRWLeQ-1; Thu, 09 Jan 2020 11:08:22 -0500
Received: by mail-wm1-f69.google.com with SMTP id p5so621998wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XdbyLSo/LKwv0IS4UY8BmEznN2tnAhqPqp9PsERe1ZM=;
 b=adFA3jBs+p4rrX2O35Jue7LDwb9/Wd3Ho2Fsi8uPSLXll96u1N/0X/iSVrfTnE3RcF
 EofQQC9PxpPOE5OI3G6X7bKvm7StriAS+dkeDOsiwlj8MI9+l+cLJ72CuGAIvjwiiM4C
 miMM2hvay/Gx/csKQicJqhEY5H1shkYpkUbr8OGdFiJ4NPk8LUck0/LC3IRy7baFmq+0
 y7EMxfT1LAx2ZPNVbIwsahRvqAI056iygok0HsMs5bPc4HGbXj4dkUDvTicDHzvU+yu6
 C+0sDmyBLb8+em/OdFN3EJVMxyIwSrJTfc73EzvzJA7IbsLW3Rev0SeDIh5ZWGl56G9E
 rspQ==
X-Gm-Message-State: APjAAAUiInBplMoSnGU2zzj9+aDCi+UDLDos03O2ozL1TzdXRYumvyNv
 2MzU2Q/twcrZb8ddTybjdmKoJQgk00TFGCtwedvW0l0VbOTrEGwBg4kpzERQz9B1/Z2A92ZkBSR
 2zRLFz044qvQWcwaOgt2D1h1YEBB/EW8tYSI=
X-Received: by 2002:a7b:c935:: with SMTP id h21mr5629101wml.173.1578586100890; 
 Thu, 09 Jan 2020 08:08:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqybaGwF2SifAH/vF/5c/Zg4lZFldMQtCNPmw+l0nkZ5ezrMFKLX54upiO65e6Aqyi7sdLTdig==
X-Received: by 2002:a7b:c935:: with SMTP id h21mr5629084wml.173.1578586100669; 
 Thu, 09 Jan 2020 08:08:20 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m10sm8562605wrx.19.2020.01.09.08.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:20 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 43/57] gcc-plugins: objtool: Add plugin to detect switch
 table on arm64
Date: Thu,  9 Jan 2020 16:02:46 +0000
Message-Id: <20200109160300.26150-44-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: fBmF-eNHNtKjLHU0YRWLeQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080828_700352_36A8A039 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Julien Thierry <jthierry@redhat.com>, linux-kbuild@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com,
 Masahiro Yamada <masahiroy@kernel.org>, kernel-hardening@lists.openwall.com,
 raphael.gault@arm.com, Emese Revfy <re.emese@gmail.com>, jpoimboe@redhat.com,
 will@kernel.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

This plugins comes into play before the final 2 RTL passes of GCC and
detects switch-tables that are to be outputed in the ELF and writes
information in an ".discard.switch_table_info" section which will be
used by objtool.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T.: Change section name to store switch table information,
       Make plugin Kconfig be selected rather than opt-in by user,
       Add a relocation in the switch_table_info that points to
       the jump operation itself]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>
Cc: Kees Cook <keescook@chromium.org>
Cc: Emese Revfy <re.emese@gmail.com>
Cc: linux-kbuild@vger.kernel.org
Cc: kernel-hardening@lists.openwall.com
---
 arch/arm64/Kconfig                            |  1 +
 scripts/Makefile.gcc-plugins                  |  2 +
 scripts/gcc-plugins/Kconfig                   |  4 +
 .../arm64_switch_table_detection_plugin.c     | 94 +++++++++++++++++++
 4 files changed, 101 insertions(+)
 create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..a7b2116d5d13 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -90,6 +90,7 @@ config ARM64
 	select DMA_DIRECT_REMAP
 	select EDAC_SUPPORT
 	select FRAME_POINTER
+	select GCC_PLUGIN_SWITCH_TABLES if STACK_VALIDATION
 	select GENERIC_ALLOCATOR
 	select GENERIC_ARCH_TOPOLOGY
 	select GENERIC_CLOCKEVENTS
diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
index 5f7df50cfe7a..a56736df9dc2 100644
--- a/scripts/Makefile.gcc-plugins
+++ b/scripts/Makefile.gcc-plugins
@@ -44,6 +44,8 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
 endif
 export DISABLE_ARM_SSP_PER_TASK_PLUGIN

+gcc-plugin-$(CONFIG_GCC_PLUGIN_SWITCH_TABLES)	+= arm64_switch_table_detection_plugin.so
+
 # All the plugin CFLAGS are collected here in case a build target needs to
 # filter them out of the KBUILD_CFLAGS.
 GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index e3569543bdac..f50047939660 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -112,4 +112,8 @@ config GCC_PLUGIN_ARM_SSP_PER_TASK
 	bool
 	depends on GCC_PLUGINS && ARM

+config GCC_PLUGIN_SWITCH_TABLES
+	bool
+	depends on GCC_PLUGINS && ARM64
+
 endif
diff --git a/scripts/gcc-plugins/arm64_switch_table_detection_plugin.c b/scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
new file mode 100644
index 000000000000..9b8b2ec6a3c8
--- /dev/null
+++ b/scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <stdio.h>
+#include "gcc-common.h"
+
+__visible int plugin_is_GPL_compatible;
+
+#define GEN_QUAD(rtx)	assemble_integer_with_op(".quad ", rtx)
+
+/*
+ * Create an array of metadata for each jump table found in the rtl.
+ * The metadata contains:
+ * - A pointer to the table of offsets used for the actual branch
+ * - A pointer to first instruction of the group getting expanded into an
+ *   acutal jump
+ * - The number of entries in the table of offsets
+ * - Whether the offsets in the table are signed or not
+ */
+static unsigned int arm64_switchtbl_rtl_execute(void)
+{
+	rtx_insn *insn;
+	rtx_insn *labelp = NULL;
+	rtx_jump_table_data *tablep = NULL;
+	section *swt_sec;
+	section *curr_sec = current_function_section();
+
+	swt_sec = get_section(".discard.switch_table_info",
+			      SECTION_EXCLUDE | SECTION_COMMON, NULL);
+
+	for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
+		/*
+		 * Find a tablejump_p INSN (using a dispatch table)
+		 */
+		if (!tablejump_p(insn, &labelp, &tablep))
+			continue;
+
+		if (labelp && tablep) {
+			rtx_code_label *label_to_jump;
+
+			/*
+			 * GCC is a bit touchy about adding the label right
+			 * before the jump rtx_insn as it modifies the
+			 * basic_block created for the jump table.
+			 * Make sure we create the label before the whole
+			 * basic_block of the jump table.
+			 */
+			label_to_jump = gen_label_rtx();
+			SET_LABEL_KIND(label_to_jump, LABEL_NORMAL);
+			emit_label_before(label_to_jump, insn);
+			/* Force label to be kept, apparently LABEL_PRESERVE_P is an rvalue :) */
+			LABEL_PRESERVE_P(label_to_jump) = 1;
+
+			switch_to_section(swt_sec);
+			GEN_QUAD(gen_rtx_LABEL_REF(Pmode, labelp));
+			GEN_QUAD(gen_rtx_LABEL_REF(Pmode, label_to_jump));
+			GEN_QUAD(GEN_INT(GET_NUM_ELEM(tablep->get_labels())));
+			GEN_QUAD(GEN_INT(ADDR_DIFF_VEC_FLAGS(tablep).offset_unsigned));
+			switch_to_section(curr_sec);
+
+			/*
+			 * Scheduler isn't very happy about leaving labels in
+			 * the middle of jump table basic blocks.
+			 */
+			delete_insn(label_to_jump);
+		}
+	}
+	return 0;
+}
+
+#define PASS_NAME arm64_switchtbl_rtl
+
+#define NO_GATE
+#include "gcc-generate-rtl-pass.h"
+
+__visible int plugin_init(struct plugin_name_args *plugin_info,
+			  struct plugin_gcc_version *version)
+{
+	const char * const plugin_name = plugin_info->base_name;
+	int tso = 0;
+	int i;
+
+	if (!plugin_default_version_check(version, &gcc_version)) {
+		error(G_("incompatible gcc/plugin versions"));
+		return 1;
+	}
+
+	PASS_INFO(arm64_switchtbl_rtl, "expand", 1,
+		  PASS_POS_INSERT_AFTER);
+
+	register_callback(plugin_info->base_name, PLUGIN_PASS_MANAGER_SETUP,
+			  NULL, &arm64_switchtbl_rtl_pass_info);
+
+	return 0;
+}
--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
