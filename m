Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FF175769
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CV21D2yji4IrU8eal6gEVHUnhDmi8DhV1uqciKU+TG0=; b=EHEw6g4z0JH7k+r6VaXXtLBzRG
	ozFZOAjq3npDzUPdCHUunY1+n7tTEyQ2mQdUkCGrfbabvp4fHrC2PdxZ+uf2So+dSVCJwZGN2Nc9F
	5ODiqb5oyYnkas+GPEN+nyK1mLv3h0ls4SjHXutHT18RGK7Opc5bpB4M5DZTlgDWlKG9U7sjHk0BH
	9Dwh88f5D9u9Vwx2wfT0RSNV+mqe+fzQnvnWMa0mmgImo3dMu2s46EXmonX/jJ1rUoMRyJMmroc2z
	/NNkIfD5ZZyr2HjR/i9pb4fD0U3dQVlP+bmEaqpgV2KfO8gG/0CIEzsMaFTDlPlMOiX61YBrhaV4e
	tjxXt8+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hYI-00038W-Fm; Mon, 02 Mar 2020 09:39:54 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXe-0002dK-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1513D27E083D;
 Mon,  2 Mar 2020 10:39:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VjQZ6XBHqgnt; Mon,  2 Mar 2020 10:39:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 981DC27E0840;
 Mon,  2 Mar 2020 10:39:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 981DC27E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141952;
 bh=W+DBp3Kdqtq/tZ/GwGHqju2JIwVWvf3NKbxPUqbSl0U=;
 h=From:To:Date:Message-Id;
 b=m5C12GROg4L7Huuk9KbevfVcjP5fFuW5IhoA2fYRJn7x4ICmpowKefnkN9KndB49E
 OtuITiNlvjFvBAtbbFb9o7fu4UfNI+Vm0b08E924B9D5fIdHt7YvK7OAbsiDR+ULxr
 3vHa9U0sko72xL+ouajRgbe85Zepceq4An7S7mgQ=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FJxtIRFFr0pO; Mon,  2 Mar 2020 10:39:12 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 76BF627E083D;
 Mon,  2 Mar 2020 10:39:12 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 4/8] remoteproc: Add elf helpers to access elf64 and elf32
 fields
Date: Mon,  2 Mar 2020 10:38:58 +0100
Message-Id: <20200302093902.27849-5-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013914_760710_CC458E23 
X-CRM114-Status: GOOD (  10.26  )
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

elf32 and elf64 mainly differ by their types. In order to avoid
copy/pasting the whole loader code, generate static inline functions
which will access values according to the elf class. It allows to
keep a common loader basis.
In order to accommodate both elf types sizes, the maximum size for a
elf header member is chosen using the maximum value of the field for
both elf class.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_elf_helpers.h | 96 +++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h

diff --git a/drivers/remoteproc/remoteproc_elf_helpers.h b/drivers/remoteproc/remoteproc_elf_helpers.h
new file mode 100644
index 000000000000..4b6be7b6bf4d
--- /dev/null
+++ b/drivers/remoteproc/remoteproc_elf_helpers.h
@@ -0,0 +1,96 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Remote processor elf helpers defines
+ *
+ * Copyright (C) 2020 Kalray, Inc.
+ */
+
+#ifndef REMOTEPROC_ELF_LOADER_H
+#define REMOTEPROC_ELF_LOADER_H
+
+#include <linux/elf.h>
+#include <linux/types.h>
+
+/**
+ * fw_elf_get_class - Get elf class
+ * @fw: the ELF firmware image
+ *
+ * Note that we use and elf32_hdr to access the class since the start of the
+ * struct is the same for both elf class
+ *
+ * Return: elf class of the firmware
+ */
+static inline u8 fw_elf_get_class(const struct firmware *fw)
+{
+	struct elf32_hdr *ehdr = (struct elf32_hdr *)fw->data;
+
+	return ehdr->e_ident[EI_CLASS];
+}
+
+static inline void elf_hdr_init_ident(struct elf32_hdr *hdr, u8 class)
+{
+	memcpy(hdr->e_ident, ELFMAG, SELFMAG);
+	hdr->e_ident[EI_CLASS] = class;
+	hdr->e_ident[EI_DATA] = ELFDATA2LSB;
+	hdr->e_ident[EI_VERSION] = EV_CURRENT;
+	hdr->e_ident[EI_OSABI] = ELFOSABI_NONE;
+}
+
+/* Generate getter and setter for a specific elf struct/field */
+#define ELF_GEN_FIELD_GET_SET(__s, __field, __type) \
+static inline __type elf_##__s##_get_##__field(u8 class, const void *arg) \
+{ \
+	if (class == ELFCLASS32) \
+		return (__type) ((const struct elf32_##__s *) arg)->__field; \
+	else \
+		return (__type) ((const struct elf64_##__s *) arg)->__field; \
+} \
+static inline void elf_##__s##_set_##__field(u8 class, void *arg, \
+					     __type value) \
+{ \
+	if (class == ELFCLASS32) \
+		((struct elf32_##__s *) arg)->__field = (__type) value; \
+	else \
+		((struct elf64_##__s *) arg)->__field = (__type) value; \
+}
+
+ELF_GEN_FIELD_GET_SET(hdr, e_entry, u64)
+ELF_GEN_FIELD_GET_SET(hdr, e_phnum, u16)
+ELF_GEN_FIELD_GET_SET(hdr, e_shnum, u16)
+ELF_GEN_FIELD_GET_SET(hdr, e_phoff, u64)
+ELF_GEN_FIELD_GET_SET(hdr, e_shoff, u64)
+ELF_GEN_FIELD_GET_SET(hdr, e_shstrndx, u16)
+ELF_GEN_FIELD_GET_SET(hdr, e_machine, u16)
+ELF_GEN_FIELD_GET_SET(hdr, e_type, u16)
+ELF_GEN_FIELD_GET_SET(hdr, e_version, u32)
+ELF_GEN_FIELD_GET_SET(hdr, e_ehsize, u32)
+ELF_GEN_FIELD_GET_SET(hdr, e_phentsize, u16)
+
+ELF_GEN_FIELD_GET_SET(phdr, p_paddr, u64)
+ELF_GEN_FIELD_GET_SET(phdr, p_vaddr, u64)
+ELF_GEN_FIELD_GET_SET(phdr, p_filesz, u64)
+ELF_GEN_FIELD_GET_SET(phdr, p_memsz, u64)
+ELF_GEN_FIELD_GET_SET(phdr, p_type, u32)
+ELF_GEN_FIELD_GET_SET(phdr, p_offset, u64)
+ELF_GEN_FIELD_GET_SET(phdr, p_flags, u32)
+ELF_GEN_FIELD_GET_SET(phdr, p_align, u64)
+
+ELF_GEN_FIELD_GET_SET(shdr, sh_size, u64)
+ELF_GEN_FIELD_GET_SET(shdr, sh_offset, u64)
+ELF_GEN_FIELD_GET_SET(shdr, sh_name, u32)
+ELF_GEN_FIELD_GET_SET(shdr, sh_addr, u64)
+
+#define ELF_STRUCT_SIZE(__s) \
+static inline unsigned long elf_size_of_##__s(u8 class) \
+{ \
+	if (class == ELFCLASS32)\
+		return sizeof(struct elf32_##__s); \
+	else \
+		return sizeof(struct elf64_##__s); \
+}
+
+ELF_STRUCT_SIZE(shdr)
+ELF_STRUCT_SIZE(phdr)
+ELF_STRUCT_SIZE(hdr)
+
+#endif /* REMOTEPROC_ELF_LOADER_H */
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
