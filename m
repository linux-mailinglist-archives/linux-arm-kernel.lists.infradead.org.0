Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9654F1F02D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BfhrsATbseGXZnWPIsNTeeOM8dpXFPnzTZ4KZmHTO2g=; b=TZUq7M5nDtXTFP
	MtpSzTTYJfkqvm8qsq+EA4X1C4HH6+CR4IBs914mdS+JNSXR6bVfj7+B/DXq/O5yom1oZyMGCcl2w
	+k+4SEsp/j6o71inC5lPeuV9cgHp9N701GdM7BgZiI5FSeZ4IzWoe7NuapI0JAZr+V2VbDgFSIPWq
	J+kPuKRv9FGXgXdAA2fnUkcBTFx6d12dIzhXufz8WBdFXvBSUNjNZ2DeR7J66myraeQEJ1ya9f7h6
	nN8K/px24s5QltKyQ/00vnvy6/+cm/38lVEtBK2pcTesMciYHPEg9ipJxOoetp/7UgKnYSOz2Euzq
	66S8eQBWT80okLsCPWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhKk1-0001W1-Nc; Fri, 05 Jun 2020 22:23:09 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhKjv-0001VO-7E
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:23:04 +0000
Received: by mail-qt1-x84a.google.com with SMTP id y5so9870151qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 15:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=g8wUYzJxwqEdeLQuYq3Z4wuiM6LmXBTk7eDuhBcuoac=;
 b=MPywCG4zD6BzkmLVmLLJbxmgBjhtMsvoEptj4ECwrStlopTOnR4b+2tWAG2RV2sQ0d
 ZCOgi0a9f5LL9+JEDvPOPKZP/uV1l7em3zpKvbPy37vET3XY8Bt5IzHg2bVSfBlsccd+
 z6aOc8cHkaUViwK7hiQRlfcW0DJIIas8fDhnFlLaPLvSSgH2GdnAoS8waehku2aX0XHg
 xxg0nJBiuQNSN3ZoHEQgdoa298Tp6SpR3lrqvaBMO29iBuxQ/J8ruGbrDG/bZ272exQF
 17G/oXy/OoYhU0r3ZSFoi7dhvFuXMQz3t6S9Stn6hELyRWz7HIwRze3pszKCL/Vz9nQS
 k5BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=g8wUYzJxwqEdeLQuYq3Z4wuiM6LmXBTk7eDuhBcuoac=;
 b=J81L1rEh4A1KpviCnnuQ01oJtTnfwMwLdEu6kArhPeM7nAFemXRbkzsaSMFCMi56Zf
 3gPTFtHT65fSiR3gWXfsOHVXtNU0J53r1QhIbPbQCZSdZrXzY4cXZKhmDYJtCI/QJQLJ
 qpwfHuCHuG2v94MAT0kzvzJMvVBBbg0bw77ImvqqBCybynLbLSzBiJYas83GAuWk5thk
 ZVb210L7m8GWYvAnDnyWOveTwjV0SobWaW15prb+Afelrdvu1jYaJL3Ix+28lwYjHEtQ
 Ox44hkTx75dlRQFutg6b4lt+U3iVCXIa99ZDEw7SVELK2hdnkTgbnwNOuRGwzH5XNuBf
 Vn+A==
X-Gm-Message-State: AOAM531LqV5sx6dY8PN9N7EBkh4+Y36k8H/yJYE4eaXsX3xh8bUI4TWb
 GwvULElzGLl2YbgAKJ2nllxaHag4aiNSEVw=
X-Google-Smtp-Source: ABdhPJy9xsGvQ3FcFyxdc4urjtdmOuNSTDFHGQNV7/WnosCyTKQoBghmNEBxUWK13LyaED521Di4YE/HyfxXlYg=
X-Received: by 2002:a0c:dd8e:: with SMTP id v14mr11491437qvk.169.1591395781085; 
 Fri, 05 Jun 2020 15:23:01 -0700 (PDT)
Date: Fri,  5 Jun 2020 15:22:57 -0700
Message-Id: <20200605222257.44882-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v1] arm64/module: Optimize module load time by optimizing PLT
 counting
From: Saravana Kannan <saravanak@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_152303_376445_3EA6AF02 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, Saravana Kannan <saravanak@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When loading a module, module_frob_arch_sections() tries to figure out
the number of PLTs that'll be needed to handle all the RELAs. While
doing this, it tries to dedupe PLT allocations for multiple
R_AARCH64_CALL26 relocations to the same symbol. It does the same for
R_AARCH64_JUMP26 relocations too.

To make checks for duplicates easier/faster, it sorts the relocation
list by type, symbol and addend. That way, to check for a duplicate
relocation, it just needs to compare with the previous entry.

However, sorting the entire relocation array is unnecessary and
expensive (O(n log n)) because there are a lot of other relocation types
that don't need deduping or can't be deduped.

So this commit partitions the array into entries that need deduping and
those that don't. And then sorts just the part that needs deduping. And
when CONFIG_RANDOMIZE_BASE is disabled, the sorting is skipped entirely
because PLTs are not allocated for R_AARCH64_CALL26 and R_AARCH64_JUMP26
if it's disabled.

This gives significant reduction in module load time for modules with
large number of relocations with no measurable impact on modules with a
small number of relocations. In my test setup with CONFIG_RANDOMIZE_BASE
enabled, the load time for one module went down from 268ms to 100ms.
Another module went down from 143ms to 83ms.

This commit also disables the sorting if CONFIG_RANDOMIZE_BASE is
disabled because it looks like PLTs are not allocated for
R_AARCH64_CALL26 and R_AARCH64_JUMP26 if it's disabled.

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 arch/arm64/kernel/module-plts.c | 37 ++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
index 65b08a74aec6..bf5118b3b828 100644
--- a/arch/arm64/kernel/module-plts.c
+++ b/arch/arm64/kernel/module-plts.c
@@ -253,6 +253,36 @@ static unsigned int count_plts(Elf64_Sym *syms, Elf64_Rela *rela, int num,
 	return ret;
 }
 
+static bool rela_needs_dedup(Elf64_Rela *rela)
+{
+	return ELF64_R_TYPE(rela->r_info) == R_AARCH64_JUMP26
+	       || ELF64_R_TYPE(rela->r_info) == R_AARCH64_CALL26;
+}
+
+/* Group the CALL26/JUMP26 relas toward the beginning of the array. */
+static int partition_dedup_relas(Elf64_Rela *rela, int numrels)
+{
+	int i = 0, j = numrels - 1;
+	Elf64_Rela t;
+
+	while (i < j) {
+		while (rela_needs_dedup(rela + i) && i < j)
+			i++;
+		while (!rela_needs_dedup(rela + j) && i < j)
+			j--;
+		if (i < j) {
+			t = *(rela + j);
+			*(rela + j) = *(rela + i);
+			*(rela + i) = t;
+		}
+	}
+	/* If the entire array needs dedup, make sure i == numrels */
+	if (rela_needs_dedup(rela + i))
+		i++;
+
+	return i;
+}
+
 int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 			      char *secstrings, struct module *mod)
 {
@@ -291,6 +321,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 	for (i = 0; i < ehdr->e_shnum; i++) {
 		Elf64_Rela *rels = (void *)ehdr + sechdrs[i].sh_offset;
 		int numrels = sechdrs[i].sh_size / sizeof(Elf64_Rela);
+		int num_dedup_rels = 0;
 		Elf64_Shdr *dstsec = sechdrs + sechdrs[i].sh_info;
 
 		if (sechdrs[i].sh_type != SHT_RELA)
@@ -300,8 +331,12 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		if (!(dstsec->sh_flags & SHF_EXECINSTR))
 			continue;
 
+		if (IS_ENABLED(CONFIG_RANDOMIZE_BASE))
+			num_dedup_rels = partition_dedup_relas(rels, numrels);
 		/* sort by type, symbol index and addend */
-		sort(rels, numrels, sizeof(Elf64_Rela), cmp_rela, NULL);
+		if (num_dedup_rels)
+			sort(rels, num_dedup_rels, sizeof(Elf64_Rela),
+			     cmp_rela, NULL);
 
 		if (!str_has_prefix(secstrings + dstsec->sh_name, ".init"))
 			core_plts += count_plts(syms, rels, numrels,
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
