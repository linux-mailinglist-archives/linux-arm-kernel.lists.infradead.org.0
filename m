Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBF295B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yoaw9wSp8sD85BlRERZEcp6N1/Nfg6ZYUGmCymIBJl8=; b=nDgMRSzN1LuR+U/maGPjTe1gSe
	vFR82yekcgOO/mE/5BvLONhHbsDr7hzy+aeIYlymizoNClwPf0lo+Ao05Y8COeutDpb8o5H1STPhT
	Hysmak2eXpzNzw0ELCIgypnrnxmdorSEBve/5TuSURQHyqJH03endqHyEHAX6MowVvoVh77v+40WN
	UyjCrIJyq6jxW0lK3EWubbnr/mrk1mw0JStebdCFd+v3g8dC44uJiiEoTideXP2vgGPi8aAVfsM/M
	3YQU6ay4YpkeK4Kg6J61+SdkS6/2zWFDEMqc7M+07XnfIxuR2SPjMygy436UW05RI+nQMagqY3zDF
	ai03PcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7QE-00022z-4H; Fri, 24 May 2019 10:27:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7PJ-00013A-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8939DA78;
 Fri, 24 May 2019 03:26:36 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4E3FF3F703;
 Fri, 24 May 2019 03:26:34 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] elf: Allow arch to tweak initial mmap prot flags
Date: Fri, 24 May 2019 11:25:31 +0100
Message-Id: <1558693533-13465-7-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032637_185321_EB6DFE97 
X-CRM114-Status: GOOD (  15.23  )
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

An arch may want to tweak the mmap prot flags for an ELF
executable's initial mappings.  For example, arm64 is going to need
to add PROT_BTI_GUARDED for executable pages in an ELF process
whose executable is marked as using Branch Target Identification
(an ARMv8.5-A control flow integrity feature).

So that this can be done in a generic way, add a hook
arch_elf_adjust_prot() to modify the prot flags as desired: arches
can select CONFIG_HAVE_ELF_PROT and implement their own backend
where necessary.

By default, leave the prot flags unchanged.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 fs/Kconfig.binfmt   |  3 +++
 fs/binfmt_elf.c     | 18 ++++++++++++------
 include/linux/elf.h | 13 +++++++++++++
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 175a1f5..cd3d315 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -35,6 +35,9 @@ config COMPAT_BINFMT_ELF
 config ARCH_BINFMT_ELF_STATE
 	bool
 
+config ARCH_HAVE_ELF_PROT
+	bool
+
 config ARCH_USE_GNU_PROPERTY
 	bool
 	depends on 64BIT
diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 32c9c13..3d88dcc 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -524,7 +524,8 @@ static inline int arch_check_elf(struct elfhdr *ehdr, bool has_interp,
 
 #endif /* !CONFIG_ARCH_BINFMT_ELF_STATE */
 
-static inline int make_prot(u32 p_flags)
+static inline int make_prot(u32 p_flags, struct arch_elf_state *arch_state,
+			    bool has_interp, bool is_interp)
 {
 	int prot = 0;
 
@@ -534,7 +535,8 @@ static inline int make_prot(u32 p_flags)
 		prot |= PROT_WRITE;
 	if (p_flags & PF_X)
 		prot |= PROT_EXEC;
-	return prot;
+
+	return arch_elf_adjust_prot(prot, arch_state, has_interp, is_interp);
 }
 
 /* This is much more generalized than the library routine read function,
@@ -544,7 +546,8 @@ static inline int make_prot(u32 p_flags)
 
 static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
 		struct file *interpreter, unsigned long *interp_map_addr,
-		unsigned long no_base, struct elf_phdr *interp_elf_phdata)
+		unsigned long no_base, struct elf_phdr *interp_elf_phdata,
+		struct arch_elf_state *arch_state)
 {
 	struct elf_phdr *eppnt;
 	unsigned long load_addr = 0;
@@ -576,7 +579,8 @@ static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
 	for (i = 0; i < interp_elf_ex->e_phnum; i++, eppnt++) {
 		if (eppnt->p_type == PT_LOAD) {
 			int elf_type = MAP_PRIVATE | MAP_DENYWRITE;
-			int elf_prot = make_prot(eppnt->p_flags);
+			int elf_prot = make_prot(eppnt->p_flags, arch_state,
+						 true, true);
 			unsigned long vaddr = 0;
 			unsigned long k, map_addr;
 
@@ -952,7 +956,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
 			elf_fixed = MAP_FIXED;
 		}
 
-		elf_prot = make_prot(elf_ppnt->p_flags);
+		elf_prot = make_prot(elf_ppnt->p_flags, &arch_state,
+				     !!interpreter, false);
 
 		elf_flags = MAP_PRIVATE | MAP_DENYWRITE | MAP_EXECUTABLE;
 
@@ -1098,7 +1103,8 @@ static int load_elf_binary(struct linux_binprm *bprm)
 		elf_entry = load_elf_interp(&loc->interp_elf_ex,
 					    interpreter,
 					    &interp_map_addr,
-					    load_bias, interp_elf_phdata);
+					    load_bias, interp_elf_phdata,
+					    &arch_state);
 		if (!IS_ERR((void *)elf_entry)) {
 			/*
 			 * load_elf_interp() returns relocation
diff --git a/include/linux/elf.h b/include/linux/elf.h
index cfcf154..2057187 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -75,4 +75,17 @@ static inline int arch_parse_property(void *ehdr, void *phdr, struct file *f,
 static inline int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
 				   u32 pr_type, u32 *feature) { return 0; }
 #endif
+
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
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
