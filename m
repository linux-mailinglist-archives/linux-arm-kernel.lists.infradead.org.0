Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C71415B122
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 20:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gviYTNE7ybLmdmWcxVIWLhajwt+/9IKQj9Nw70BPDTQ=; b=h00NV1kBDS7ich
	/qL78UjYpDKkzRSjQxLZx8MLBJQLEZ3ginoxw4MMioNy3OW0QvjKDmo9Wb7frTv0GsGIJBLL+PDBX
	sk1BZiHzNFFaq7eImPGhTRtjylPgLf/PHZITFHBqX/eIASoHZYLvuNgRcWmkoRpCrqS1TyolH/PBu
	6kPmm8v5EsLaFIK413avL+sJcE2NtnQje9obSmtLT9MEdqKVUvKjldsF0H1wS8WBNcTksbziGYPi5
	j4qlieJ12WaPan1uXr2aBF/ERAxvK01XMJ2O77qYzXedcMohkqvLyq1Nw297z+lZzCUR1kfL1/rUK
	iP8xz1aGdDGXvmqsBCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xiS-0001fP-Im; Wed, 12 Feb 2020 19:30:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xhJ-0007vY-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 19:29:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDC4B30E;
 Wed, 12 Feb 2020 11:29:20 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E4CA3F68E;
 Wed, 12 Feb 2020 11:29:20 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v6 04/11] elf: Allow arch to tweak initial mmap prot flags
Date: Wed, 12 Feb 2020 19:28:59 +0000
Message-Id: <20200212192906.53366-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200212192906.53366-1-broonie@kernel.org>
References: <20200212192906.53366-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_112921_569204_CF09CA6E 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

An arch may want to tweak the mmap prot flags for an
ELFexecutable's initial mappings.  For example, arm64 is going to
need to add PROT_BTI for executable pages in an ELF process whose
executable is marked as using Branch Target Identification (an
ARMv8.5-A control flow integrity feature).

So that this can be done in a generic way, add a hook
arch_elf_adjust_prot() to modify the prot flags as desired: arches
can select CONFIG_HAVE_ELF_PROT and implement their own backend
where necessary.

By default, leave the prot flags unchanged.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 fs/Kconfig.binfmt   |  3 +++
 fs/binfmt_elf.c     | 18 ++++++++++++------
 include/linux/elf.h | 12 ++++++++++++
 3 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index d2cfe0729a73..2358368319b8 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -36,6 +36,9 @@ config COMPAT_BINFMT_ELF
 config ARCH_BINFMT_ELF_STATE
 	bool
 
+config ARCH_HAVE_ELF_PROT
+	bool
+
 config ARCH_USE_GNU_PROPERTY
 	bool
 
diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 1fb67e506b68..cceb29d6ef1d 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -544,7 +544,8 @@ static inline int arch_check_elf(struct elfhdr *ehdr, bool has_interp,
 
 #endif /* !CONFIG_ARCH_BINFMT_ELF_STATE */
 
-static inline int make_prot(u32 p_flags)
+static inline int make_prot(u32 p_flags, struct arch_elf_state *arch_state,
+			    bool has_interp, bool is_interp)
 {
 	int prot = 0;
 
@@ -554,7 +555,8 @@ static inline int make_prot(u32 p_flags)
 		prot |= PROT_WRITE;
 	if (p_flags & PF_X)
 		prot |= PROT_EXEC;
-	return prot;
+
+	return arch_elf_adjust_prot(prot, arch_state, has_interp, is_interp);
 }
 
 /* This is much more generalized than the library routine read function,
@@ -564,7 +566,8 @@ static inline int make_prot(u32 p_flags)
 
 static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
 		struct file *interpreter,
-		unsigned long no_base, struct elf_phdr *interp_elf_phdata)
+		unsigned long no_base, struct elf_phdr *interp_elf_phdata,
+		struct arch_elf_state *arch_state)
 {
 	struct elf_phdr *eppnt;
 	unsigned long load_addr = 0;
@@ -596,7 +599,8 @@ static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
 	for (i = 0; i < interp_elf_ex->e_phnum; i++, eppnt++) {
 		if (eppnt->p_type == PT_LOAD) {
 			int elf_type = MAP_PRIVATE | MAP_DENYWRITE;
-			int elf_prot = make_prot(eppnt->p_flags);
+			int elf_prot = make_prot(eppnt->p_flags, arch_state,
+						 true, true);
 			unsigned long vaddr = 0;
 			unsigned long k, map_addr;
 
@@ -1041,7 +1045,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
 			}
 		}
 
-		elf_prot = make_prot(elf_ppnt->p_flags);
+		elf_prot = make_prot(elf_ppnt->p_flags, &arch_state,
+				     !!interpreter, false);
 
 		elf_flags = MAP_PRIVATE | MAP_DENYWRITE | MAP_EXECUTABLE;
 
@@ -1184,7 +1189,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
 	if (interpreter) {
 		elf_entry = load_elf_interp(&loc->interp_elf_ex,
 					    interpreter,
-					    load_bias, interp_elf_phdata);
+					    load_bias, interp_elf_phdata,
+					    &arch_state);
 		if (!IS_ERR((void *)elf_entry)) {
 			/*
 			 * load_elf_interp() returns relocation
diff --git a/include/linux/elf.h b/include/linux/elf.h
index 7bdc6da160c7..1b6e8955c597 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -83,4 +83,16 @@ extern int arch_parse_elf_property(u32 type, const void *data, size_t datasz,
 				   bool compat, struct arch_elf_state *arch);
 #endif
 
+#ifdef CONFIG_ARCH_HAVE_ELF_PROT
+int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
+			 bool has_interp, bool is_interp);
+#else
+static inline int arch_elf_adjust_prot(int prot,
+				       const struct arch_elf_state *state,
+				       bool has_interp, bool is_interp)
+{
+	return prot;
+}
+#endif
+
 #endif /* _LINUX_ELF_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
