Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2C5295B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yOaXwmiQgpO+FcqtVShaR59F+BE7b4GNwJdZUo1l6aM=; b=oR7r6KkdyNjLt92/cEwroGcbEJ
	9xHgvBJB23G1luJhds186xHNH2sl31YrjC3/IT035ilVVjxBkTer0R0q8yEA9Dto0jYzMnNznMCBC
	9/yxYMeExXC0458s5UP6LRPW6vYxSKiWgs0AJPK78H+VZLATkvKo5mvu9NvyPweffB/fWDFf0khlm
	NGbbHaTkPogSlLSSNXgcM+NRonyk+7JZlCaUuDiyycw+r0toMIpcf7snwousvTE4opoSsV+SSDm5V
	CJ9q93lnnmPcNo7CEUviqq6VYuuUUOEKIgikoXFcUiO5IYarXL0LjYxuBePnJLMNC6LoXSEUv1g7h
	2tq/5g2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7Pt-0001aE-5N; Fri, 24 May 2019 10:27:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7PG-0000z7-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E3541682;
 Fri, 24 May 2019 03:26:34 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C9DF43F703;
 Fri, 24 May 2019 03:26:31 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] elf: Parse program properties before destroying the old
 process
Date: Fri, 24 May 2019 11:25:30 +0100
Message-Id: <1558693533-13465-6-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032634_893935_671CCE78 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we try to read program properties from
NT_GNU_PROPERTY_TYPE_0 ELF notes.  However, we do this too late to
either report failures cleanly or influence certain aspects of
process setup such as the default mmap permissions for the new
executable's pages (which will matter for arm64 for example).

So, split parsing of the notes from use: rename
arch_setup_property() to arch_parse_property() to make the intent
clear, and hoist it before flush_old_exec() so that we can still
bail out gracefully if needed.

Also propagate arch_state into the call so that the arch backend
has somewhere to stash information for later use.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 fs/binfmt_elf.c     | 26 +++++++++++++-------------
 include/linux/elf.h | 15 +++++++++++----
 2 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 18015fc..32c9c13 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -851,6 +851,19 @@ static int load_elf_binary(struct linux_binprm *bprm)
 			}
 	}
 
+	if (interpreter) {
+		retval = arch_parse_property(&loc->interp_elf_ex,
+					     interp_elf_phdata,
+					     interpreter, true, &arch_state);
+	} else {
+		retval = arch_parse_property(&loc->elf_ex,
+					     elf_phdata,
+					     bprm->file, false, &arch_state);
+	}
+
+	if (retval < 0)
+		goto out_free_dentry;
+
 	/*
 	 * Allow arch code to reject the ELF at this point, whilst it's
 	 * still possible to return an error to the code that invoked
@@ -1080,19 +1093,6 @@ static int load_elf_binary(struct linux_binprm *bprm)
 	}
 
 	if (interpreter) {
-		retval = arch_setup_property(&loc->interp_elf_ex,
-					     interp_elf_phdata,
-					     interpreter, true);
-	} else {
-		retval = arch_setup_property(&loc->elf_ex,
-					     elf_phdata,
-					     bprm->file, false);
-	}
-
-	if (retval < 0)
-		goto out_free_dentry;
-
-	if (interpreter) {
 		unsigned long interp_map_addr = 0;
 
 		elf_entry = load_elf_interp(&loc->interp_elf_ex,
diff --git a/include/linux/elf.h b/include/linux/elf.h
index c15febe..cfcf154 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -57,14 +57,21 @@ extern int elf_coredump_extra_notes_size(void);
 extern int elf_coredump_extra_notes_write(struct coredump_params *cprm);
 #endif
 
+struct arch_elf_state;
+
 #ifdef CONFIG_ARCH_USE_GNU_PROPERTY
-extern int arch_setup_property(void *ehdr, void *phdr, struct file *f,
-			       bool interp);
+extern int arch_parse_property(void *ehdr, void *phdr, struct file *f,
+			       bool interp, struct arch_elf_state *arch_state);
 extern int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
 			    u32 pr_type, u32 *feature);
 #else
-static inline int arch_setup_property(void *ehdr, void *phdr, struct file *f,
-				      bool interp) { return 0; }
+static inline int arch_parse_property(void *ehdr, void *phdr, struct file *f,
+				      bool interp,
+				      struct arch_elf_state *arch_state)
+{
+	return 0;
+}
+
 static inline int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
 				   u32 pr_type, u32 *feature) { return 0; }
 #endif
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
