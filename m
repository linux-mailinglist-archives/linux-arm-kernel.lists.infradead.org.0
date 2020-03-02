Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CEB17577E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zs0xtek4wk2vp4/U641ZgksJ+eQQKB93yRm/42FyO5A=; b=G+aMhKaunIy6ovHVQ/ZqOl3K5a
	TK1POSF8vyuYlVsAv74jwOTlJXlsMCRlTqT4vP+3cUpY/Bi/gc3fg+/3rA5tHlU4aksPWNS7Mf2o6
	ipMQ3n2vAV8D1+FKTfsRNJvXRdXYRILtCx6plkkTUhKrbPGi8xbR8Wr9HrgvRnifU5VV6BevwmcYK
	a5cuZ1cpr7SegKCMshjHX4f9UUF2pjPY7K/7GsS66pnTwYKsP5hPLn5kRdgK4SA0ymmAeqcvYKtN6
	TfSwjaMXx4qoEI8y1K5ICqe/PWjaAHIxjHwqnA7SdB1a0HJnwKx9/ezIBc3tKmjfyIsTxmGS7Zssq
	OxNWx6AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hZe-0005Y8-1I; Mon, 02 Mar 2020 09:41:18 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXh-0002f1-75
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id DFA1627E0868;
 Mon,  2 Mar 2020 10:39:15 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cRD-Pe2jNdhl; Mon,  2 Mar 2020 10:39:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D7CE627E0847;
 Mon,  2 Mar 2020 10:39:14 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D7CE627E0847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141954;
 bh=95dvDymMnFJ2+FdEuOoZYnsV6EL0OGOG5YdgDxFljiU=;
 h=From:To:Date:Message-Id;
 b=OKzzeQVFkRrFaur+17Ag28/4qeK4wwikU+lUcGgkLcV6fOMma8xXOY594olADsko/
 de5TLjI7d029IGhCsWdp1kwR3jWOdr2dYJLWaMGynYELjJkvdT8ZUZr8wZLU6UPz/2
 dAUTHwlStdH9ny0DVJ3nMsYtDN/NVFYKx6IjH0vs=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id C4XY5Toi_hu5; Mon,  2 Mar 2020 10:39:14 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B04E927E0840;
 Mon,  2 Mar 2020 10:39:14 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 6/8] remoteproc: Add elf64 support in elf loader
Date: Mon,  2 Mar 2020 10:39:00 +0100
Message-Id: <20200302093902.27849-7-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013917_649314_A1D52293 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, s-anna <s-anna@ti.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support elf64, use macros from remoteproc_elf_helpers.h
to access elf headers depending on elf class.
To allow new drivers to support elf64, add rproc_elf_sanity_check
function which make more sense than adding a elf64 named one since
it will support both elf versions.
Driver which need to support both elf32/elf64 should use this new
function for elf sanity check instead of the elf32 one.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Tested-by: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
---
 Documentation/remoteproc.txt               |   2 +-
 drivers/remoteproc/remoteproc_elf_loader.c | 186 ++++++++++++++++++++---------
 drivers/remoteproc/remoteproc_internal.h   |  10 ++
 3 files changed, 141 insertions(+), 57 deletions(-)

diff --git a/Documentation/remoteproc.txt b/Documentation/remoteproc.txt
index 03c3d2e568b0..2be1147256e0 100644
--- a/Documentation/remoteproc.txt
+++ b/Documentation/remoteproc.txt
@@ -230,7 +230,7 @@ in the used rings.
 Binary Firmware Structure
 =========================
 
-At this point remoteproc only supports ELF32 firmware binaries. However,
+At this point remoteproc supports ELF32 and ELF64 firmware binaries. However,
 it is quite expected that other platforms/devices which we'd want to
 support with this framework will be based on different binary formats.
 
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 5a67745f2638..4869fb7d8fe4 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -23,20 +23,29 @@
 #include <linux/elf.h>
 
 #include "remoteproc_internal.h"
+#include "remoteproc_elf_helpers.h"
 
 /**
- * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
+ * rproc_elf_sanity_check() - Sanity Check for ELF32/ELF64 firmware image
  * @rproc: the remote processor handle
  * @fw: the ELF firmware image
  *
- * Make sure this fw image is sane.
+ * Make sure this fw image is sane (ie a correct ELF32/ELF64 file).
  */
-int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
+int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
 {
 	const char *name = rproc->firmware;
 	struct device *dev = &rproc->dev;
+	/*
+	 * Elf files are beginning with the same structure. Thus, to simplify
+	 * header parsing, we can use the elf32_hdr one for both elf64 and
+	 * elf32.
+	 */
 	struct elf32_hdr *ehdr;
+	u32 elf_shdr_get_size;
+	u64 phoff, shoff;
 	char class;
+	u16 phnum;
 
 	if (!fw) {
 		dev_err(dev, "failed to load %s\n", name);
@@ -50,13 +59,22 @@ int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
 
 	ehdr = (struct elf32_hdr *)fw->data;
 
-	/* We only support ELF32 at this point */
+	if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG)) {
+		dev_err(dev, "Image is corrupted (bad magic)\n");
+		return -EINVAL;
+	}
+
 	class = ehdr->e_ident[EI_CLASS];
-	if (class != ELFCLASS32) {
+	if (class != ELFCLASS32 && class != ELFCLASS64) {
 		dev_err(dev, "Unsupported class: %d\n", class);
 		return -EINVAL;
 	}
 
+	if (class == ELFCLASS64 && fw->size < sizeof(struct elf64_hdr)) {
+		dev_err(dev, "elf64 header is too small\n");
+		return -EINVAL;
+	}
+
 	/* We assume the firmware has the same endianness as the host */
 # ifdef __LITTLE_ENDIAN
 	if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) {
@@ -67,28 +85,52 @@ int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
 		return -EINVAL;
 	}
 
-	if (fw->size < ehdr->e_shoff + sizeof(struct elf32_shdr)) {
-		dev_err(dev, "Image is too small\n");
-		return -EINVAL;
-	}
+	phoff = elf_hdr_get_e_phoff(class, fw->data);
+	shoff = elf_hdr_get_e_shoff(class, fw->data);
+	phnum =  elf_hdr_get_e_phnum(class, fw->data);
+	elf_shdr_get_size = elf_size_of_shdr(class);
 
-	if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG)) {
-		dev_err(dev, "Image is corrupted (bad magic)\n");
+	if (fw->size < shoff + elf_shdr_get_size) {
+		dev_err(dev, "Image is too small\n");
 		return -EINVAL;
 	}
 
-	if (ehdr->e_phnum == 0) {
+	if (phnum == 0) {
 		dev_err(dev, "No loadable segments\n");
 		return -EINVAL;
 	}
 
-	if (ehdr->e_phoff > fw->size) {
+	if (phoff > fw->size) {
 		dev_err(dev, "Firmware size is too small\n");
 		return -EINVAL;
 	}
 
+	dev_dbg(dev, "Firmware is an elf%d file\n",
+		class == ELFCLASS32 ? 32 : 64);
+
 	return 0;
 }
+EXPORT_SYMBOL(rproc_elf_sanity_check);
+
+/**
+ * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
+ * @rproc: the remote processor handle
+ * @fw: the ELF32 firmware image
+ *
+ * Make sure this fw image is sane.
+ */
+int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
+{
+	int ret = rproc_elf_sanity_check(rproc, fw);
+
+	if (ret)
+		return ret;
+
+	if (fw_elf_get_class(fw) == ELFCLASS32)
+		return 0;
+
+	return -EINVAL;
+}
 EXPORT_SYMBOL(rproc_elf32_sanity_check);
 
 /**
@@ -104,9 +146,7 @@ EXPORT_SYMBOL(rproc_elf32_sanity_check);
  */
 u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
 {
-	struct elf32_hdr *ehdr  = (struct elf32_hdr *)fw->data;
-
-	return ehdr->e_entry;
+	return elf_hdr_get_e_entry(fw_elf_get_class(fw), fw->data);
 }
 EXPORT_SYMBOL(rproc_elf_get_boot_addr);
 
@@ -137,53 +177,65 @@ EXPORT_SYMBOL(rproc_elf_get_boot_addr);
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 {
 	struct device *dev = &rproc->dev;
-	struct elf32_hdr *ehdr;
-	struct elf32_phdr *phdr;
+	const void *ehdr, *phdr;
 	int i, ret = 0;
+	u16 phnum;
 	const u8 *elf_data = fw->data;
+	u8 class = fw_elf_get_class(fw);
+	u32 elf_phdr_get_size = elf_size_of_phdr(class);
 
-	ehdr = (struct elf32_hdr *)elf_data;
-	phdr = (struct elf32_phdr *)(elf_data + ehdr->e_phoff);
+	ehdr = elf_data;
+	phnum = elf_hdr_get_e_phnum(class, ehdr);
+	phdr = elf_data + elf_hdr_get_e_phoff(class, ehdr);
 
 	/* go through the available ELF segments */
-	for (i = 0; i < ehdr->e_phnum; i++, phdr++) {
-		u32 da = phdr->p_paddr;
-		u32 memsz = phdr->p_memsz;
-		u32 filesz = phdr->p_filesz;
-		u32 offset = phdr->p_offset;
+	for (i = 0; i < phnum; i++, phdr += elf_phdr_get_size) {
+		u64 da = elf_phdr_get_p_paddr(class, phdr);
+		u64 memsz = elf_phdr_get_p_memsz(class, phdr);
+		u64 filesz = elf_phdr_get_p_filesz(class, phdr);
+		u64 offset = elf_phdr_get_p_offset(class, phdr);
+		u32 type = elf_phdr_get_p_type(class, phdr);
 		void *ptr;
 
-		if (phdr->p_type != PT_LOAD)
+		if (type != PT_LOAD)
 			continue;
 
-		dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
-			phdr->p_type, da, memsz, filesz);
+		dev_dbg(dev, "phdr: type %d da 0x%llx memsz 0x%llx filesz 0x%llx\n",
+			type, da, memsz, filesz);
 
 		if (filesz > memsz) {
-			dev_err(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
+			dev_err(dev, "bad phdr filesz 0x%llx memsz 0x%llx\n",
 				filesz, memsz);
 			ret = -EINVAL;
 			break;
 		}
 
 		if (offset + filesz > fw->size) {
-			dev_err(dev, "truncated fw: need 0x%x avail 0x%zx\n",
+			dev_err(dev, "truncated fw: need 0x%llx avail 0x%zx\n",
 				offset + filesz, fw->size);
 			ret = -EINVAL;
 			break;
 		}
 
+		if (!rproc_u64_fit_in_size_t(memsz)) {
+			dev_err(dev, "size (%llx) does not fit in size_t type\n",
+				memsz);
+			ret = -EOVERFLOW;
+			break;
+		}
+
 		/* grab the kernel address for this device address */
 		ptr = rproc_da_to_va(rproc, da, memsz);
 		if (!ptr) {
-			dev_err(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
+			dev_err(dev, "bad phdr da 0x%llx mem 0x%llx\n", da,
+				memsz);
 			ret = -EINVAL;
 			break;
 		}
 
 		/* put the segment where the remote processor expects it */
-		if (phdr->p_filesz)
-			memcpy(ptr, elf_data + phdr->p_offset, filesz);
+		if (filesz)
+			memcpy(ptr, elf_data + offset, filesz);
 
 		/*
 		 * Zero out remaining memory for this segment.
@@ -200,24 +252,35 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 }
 EXPORT_SYMBOL(rproc_elf_load_segments);
 
-static struct elf32_shdr *
-find_table(struct device *dev, struct elf32_hdr *ehdr, size_t fw_size)
+static const void *
+find_table(struct device *dev, const struct firmware *fw)
 {
-	struct elf32_shdr *shdr;
+	const void *shdr, *name_table_shdr;
 	int i;
 	const char *name_table;
 	struct resource_table *table = NULL;
-	const u8 *elf_data = (void *)ehdr;
+	const u8 *elf_data = (void *)fw->data;
+	u8 class = fw_elf_get_class(fw);
+	size_t fw_size = fw->size;
+	const void *ehdr = elf_data;
+	u16 shnum = elf_hdr_get_e_shnum(class, ehdr);
+	u32 elf_shdr_get_size = elf_size_of_shdr(class);
+	u16 shstrndx = elf_hdr_get_e_shstrndx(class, ehdr);
 
 	/* look for the resource table and handle it */
-	shdr = (struct elf32_shdr *)(elf_data + ehdr->e_shoff);
-	name_table = elf_data + shdr[ehdr->e_shstrndx].sh_offset;
-
-	for (i = 0; i < ehdr->e_shnum; i++, shdr++) {
-		u32 size = shdr->sh_size;
-		u32 offset = shdr->sh_offset;
-
-		if (strcmp(name_table + shdr->sh_name, ".resource_table"))
+	/* First, get the section header according to the elf class */
+	shdr = elf_data + elf_hdr_get_e_shoff(class, ehdr);
+	/* Compute name table section header entry in shdr array */
+	name_table_shdr = shdr + (shstrndx * elf_shdr_get_size);
+	/* Finally, compute the name table section address in elf */
+	name_table = elf_data + elf_shdr_get_sh_offset(class, name_table_shdr);
+
+	for (i = 0; i < shnum; i++, shdr += elf_shdr_get_size) {
+		u64 size = elf_shdr_get_sh_size(class, shdr);
+		u64 offset = elf_shdr_get_sh_offset(class, shdr);
+		u32 name = elf_shdr_get_sh_name(class, shdr);
+
+		if (strcmp(name_table + name, ".resource_table"))
 			continue;
 
 		table = (struct resource_table *)(elf_data + offset);
@@ -270,21 +333,21 @@ find_table(struct device *dev, struct elf32_hdr *ehdr, size_t fw_size)
  */
 int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw)
 {
-	struct elf32_hdr *ehdr;
-	struct elf32_shdr *shdr;
+	const void *shdr;
 	struct device *dev = &rproc->dev;
 	struct resource_table *table = NULL;
 	const u8 *elf_data = fw->data;
 	size_t tablesz;
+	u8 class = fw_elf_get_class(fw);
+	u64 sh_offset;
 
-	ehdr = (struct elf32_hdr *)elf_data;
-
-	shdr = find_table(dev, ehdr, fw->size);
+	shdr = find_table(dev, fw);
 	if (!shdr)
 		return -EINVAL;
 
-	table = (struct resource_table *)(elf_data + shdr->sh_offset);
-	tablesz = shdr->sh_size;
+	sh_offset = elf_shdr_get_sh_offset(class, shdr);
+	table = (struct resource_table *)(elf_data + sh_offset);
+	tablesz = elf_shdr_get_sh_size(class, shdr);
 
 	/*
 	 * Create a copy of the resource table. When a virtio device starts
@@ -317,13 +380,24 @@ EXPORT_SYMBOL(rproc_elf_load_rsc_table);
 struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
 						       const struct firmware *fw)
 {
-	struct elf32_hdr *ehdr = (struct elf32_hdr *)fw->data;
-	struct elf32_shdr *shdr;
+	const void *shdr;
+	u64 sh_addr, sh_size;
+	u8 class = fw_elf_get_class(fw);
+	struct device *dev = &rproc->dev;
 
-	shdr = find_table(&rproc->dev, ehdr, fw->size);
+	shdr = find_table(&rproc->dev, fw);
 	if (!shdr)
 		return NULL;
 
-	return rproc_da_to_va(rproc, shdr->sh_addr, shdr->sh_size);
+	sh_addr = elf_shdr_get_sh_addr(class, shdr);
+	sh_size = elf_shdr_get_sh_size(class, shdr);
+
+	if (!rproc_u64_fit_in_size_t(sh_size)) {
+		dev_err(dev, "size (%llx) does not fit in size_t type\n",
+			sh_size);
+		return NULL;
+	}
+
+	return rproc_da_to_va(rproc, sh_addr, sh_size);
 }
 EXPORT_SYMBOL(rproc_elf_find_loaded_rsc_table);
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index 28639c588d58..10bb7f57d54e 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -55,6 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
 int rproc_trigger_recovery(struct rproc *rproc);
 
 int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
+int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
 u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
@@ -119,4 +120,13 @@ struct resource_table *rproc_find_loaded_rsc_table(struct rproc *rproc,
 	return NULL;
 }
 
+static inline
+bool rproc_u64_fit_in_size_t(u64 val)
+{
+	if (sizeof(size_t) == sizeof(u64))
+		return true;
+
+	return (val <= (size_t) -1);
+}
+
 #endif /* REMOTEPROC_INTERNAL_H */
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
