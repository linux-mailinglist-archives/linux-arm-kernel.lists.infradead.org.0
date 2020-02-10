Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E4157FB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jPQPlYlfAdzYmwzsn5EuQRmskKSsuvghjJnA5FBcuUE=; b=W50kcW69cUje9CgEjMC1J6Zp8a
	h4uu5vkK9pnl+SYs5GfM0zCkHwrrGiMd6YSbRq+Dv+zowRZjV6Y+Kk8NV1Tncf1wN0aGmGH5jhAB2
	rlzKOd6jjLx7m0Uoyk/G1nnURRl4w3J1Oa3MQnNNzR9o5lvN4uwAzlwrBMSVVA/nIS54srapFekhE
	0lt0G3EwZgqAhlbvEg2gGzo+zsOb8xrAaga6VkOMn+L2fEp9YDzMEL7IF2dvAjA9BpClO/USOlMv0
	AImjJiDaaIuzD3JVqZZqc20ddJmYw6ncSVvh+i/RVPA7uPmG+RQndgVSUtUGq1hXbiM4C8s+ELOM8
	SnrgbA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Brx-0005gB-6G; Mon, 10 Feb 2020 16:25:09 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Bqt-0004y5-Bc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:24:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 36E2127E079C;
 Mon, 10 Feb 2020 17:23:58 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tmX7p0hWeVXR; Mon, 10 Feb 2020 17:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C7C0627E081F;
 Mon, 10 Feb 2020 17:23:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C7C0627E081F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1581351837;
 bh=lbGrzt+EeUkdMfPQfhAHlwY5IQfWOsG9uidshk6KgKw=;
 h=From:To:Date:Message-Id;
 b=HVcomNbs+t3vyBltSMKBnSeAfWkcbn809nStrCoRo1zwD7AxO5LP0L0ZuvUAH4ckL
 GNXCOiAGhaRvmcuCrO7REaBqtHf3b2obA8OYdZAiSEXNw+Uf/DzfUHZ2nTtcgbiCtg
 K8rlWDge9d16banmYXi9qd1Ds196myNy92nYJ2Y0=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4SYyeIE-rC0J; Mon, 10 Feb 2020 17:23:57 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A6DCE27E079C;
 Mon, 10 Feb 2020 17:23:57 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v4 3/5] remoteproc: Add elf helpers to access elf64 and elf32
 fields
Date: Mon, 10 Feb 2020 17:22:07 +0100
Message-Id: <20200210162209.23149-4-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200210162209.23149-1-cleger@kalray.eu>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_082403_790460_FBAB3B59 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/remoteproc/remoteproc_elf_helpers.h | 95 +++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h

diff --git a/drivers/remoteproc/remoteproc_elf_helpers.h b/drivers/remoteproc/remoteproc_elf_helpers.h
new file mode 100644
index 000000000000..a29c17aaedb7
--- /dev/null
+++ b/drivers/remoteproc/remoteproc_elf_helpers.h
@@ -0,0 +1,95 @@
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
+static inline void elf_##__s##_set_##__field(u8 class, void *arg, __type value) \
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
