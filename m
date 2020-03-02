Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A58817577F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BC8tPULPTq7Hw8ZkolnPLdxhgqzRdrWJiRT2nW5ddsk=; b=TnC7EsRsyvYflTbZPDI3Zlq+mh
	EsiyoQvUR8KbCttsj6GSjIi7HTazX8RMvxruJ0HEBQNmayWfCNMmC+1kOwPJ+IwwAYkxF9Jz8P0dW
	TBS+ReQb1S95Zj1bttkf1TYE/24ByZRTOiRWaLiwxgmJWf47r9WGs5IcTcWVAXnHJMDUfjeL/nxwN
	j8oyJ19EI0Fapr/u7W04B+hUE+h45Hsr5/OzFR8e47rvQY11/2eGp48fPiLiUzsB1WQXDV+qurY9o
	N7hqM1uVQqGAvDQRaQqFLPJtzw+mZZArTs3vAefzhDXcrqXDf35Djoa7cgfQZI1woKZtSatpqVCDB
	2A8eb/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hZz-0005t0-3g; Mon, 02 Mar 2020 09:41:39 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXi-0002fE-G8
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 106AD27E0309;
 Mon,  2 Mar 2020 10:39:17 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nc5a8eIJ_HwZ; Mon,  2 Mar 2020 10:39:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9049927E0840;
 Mon,  2 Mar 2020 10:39:16 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9049927E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141956;
 bh=48mi7x4bCN7yqgjHbqTaXzKazUYBXLtlOhmsUXsci1c=;
 h=From:To:Date:Message-Id;
 b=JT6yPurMOcEqLQ2UjVWACF5oLP7slJJR/hNEOkAx1IsM4PtQ8HMr/m8Qqr1s4XAAF
 Kv8/pMOQIrE6dxpr5W3uvqHJ3YBXDJ0oMY/vwS7pFo5jeB3nhA5EX9iOwHzDp0kP6f
 IBxWUB0+n3hn/AZ6juisKNgusof6TMVfEgTFOY1k=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hU2U5C94PFv2; Mon,  2 Mar 2020 10:39:16 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6DC7C27E0309;
 Mon,  2 Mar 2020 10:39:16 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 8/8] remoteproc: Adapt coredump to generate correct elf type
Date: Mon,  2 Mar 2020 10:39:02 +0100
Message-Id: <20200302093902.27849-9-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013918_893834_CA4FFDE7 
X-CRM114-Status: GOOD (  14.67  )
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

Now that remoteproc can load an elf64, coredump elf class should be
the same as the loaded elf class. In order to do that, add a
elf_class field to rproc with default values. If an elf is loaded
successfully, this field will be updated with the loaded elf class.
Then, the coredump core code has been modified to use the generic elf
macro in order to create an elf file with correct class.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_core.c       | 67 ++++++++++++++++--------------
 drivers/remoteproc/remoteproc_elf_loader.c |  3 ++
 include/linux/remoteproc.h                 |  1 +
 3 files changed, 39 insertions(+), 32 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index b932a64a2be2..f923355aa3f9 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -38,6 +38,7 @@
 #include <linux/platform_device.h>
 
 #include "remoteproc_internal.h"
+#include "remoteproc_elf_helpers.h"
 
 #define HIGH_BITS_MASK 0xFFFFFFFF00000000ULL
 
@@ -1566,20 +1567,21 @@ EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
 static void rproc_coredump(struct rproc *rproc)
 {
 	struct rproc_dump_segment *segment;
-	struct elf32_phdr *phdr;
-	struct elf32_hdr *ehdr;
+	void *phdr;
+	void *ehdr;
 	size_t data_size;
 	size_t offset;
 	void *data;
 	void *ptr;
+	u8 class = rproc->elf_class;
 	int phnum = 0;
 
 	if (list_empty(&rproc->dump_segments))
 		return;
 
-	data_size = sizeof(*ehdr);
+	data_size = elf_size_of_hdr(class);
 	list_for_each_entry(segment, &rproc->dump_segments, node) {
-		data_size += sizeof(*phdr) + segment->size;
+		data_size += elf_size_of_phdr(class) + segment->size;
 
 		phnum++;
 	}
@@ -1590,33 +1592,33 @@ static void rproc_coredump(struct rproc *rproc)
 
 	ehdr = data;
 
-	memset(ehdr, 0, sizeof(*ehdr));
-	memcpy(ehdr->e_ident, ELFMAG, SELFMAG);
-	ehdr->e_ident[EI_CLASS] = ELFCLASS32;
-	ehdr->e_ident[EI_DATA] = ELFDATA2LSB;
-	ehdr->e_ident[EI_VERSION] = EV_CURRENT;
-	ehdr->e_ident[EI_OSABI] = ELFOSABI_NONE;
-	ehdr->e_type = ET_CORE;
-	ehdr->e_machine = EM_NONE;
-	ehdr->e_version = EV_CURRENT;
-	ehdr->e_entry = rproc->bootaddr;
-	ehdr->e_phoff = sizeof(*ehdr);
-	ehdr->e_ehsize = sizeof(*ehdr);
-	ehdr->e_phentsize = sizeof(*phdr);
-	ehdr->e_phnum = phnum;
-
-	phdr = data + ehdr->e_phoff;
-	offset = ehdr->e_phoff + sizeof(*phdr) * ehdr->e_phnum;
+	memset(ehdr, 0, elf_size_of_hdr(class));
+	/* e_ident field is common for both elf32 and elf64 */
+	elf_hdr_init_ident(ehdr, class);
+
+	elf_hdr_set_e_type(class, ehdr, ET_CORE);
+	elf_hdr_set_e_machine(class, ehdr, EM_NONE);
+	elf_hdr_set_e_version(class, ehdr, EV_CURRENT);
+	elf_hdr_set_e_entry(class, ehdr, rproc->bootaddr);
+	elf_hdr_set_e_phoff(class, ehdr, elf_size_of_hdr(class));
+	elf_hdr_set_e_ehsize(class, ehdr, elf_size_of_hdr(class));
+	elf_hdr_set_e_phentsize(class, ehdr, elf_size_of_phdr(class));
+	elf_hdr_set_e_phnum(class, ehdr, phnum);
+
+	phdr = data + elf_hdr_get_e_phoff(class, ehdr);
+	offset = elf_hdr_get_e_phoff(class, ehdr);
+	offset += elf_size_of_phdr(class) * elf_hdr_get_e_phnum(class, ehdr);
+
 	list_for_each_entry(segment, &rproc->dump_segments, node) {
-		memset(phdr, 0, sizeof(*phdr));
-		phdr->p_type = PT_LOAD;
-		phdr->p_offset = offset;
-		phdr->p_vaddr = segment->da;
-		phdr->p_paddr = segment->da;
-		phdr->p_filesz = segment->size;
-		phdr->p_memsz = segment->size;
-		phdr->p_flags = PF_R | PF_W | PF_X;
-		phdr->p_align = 0;
+		memset(phdr, 0, elf_size_of_phdr(class));
+		elf_phdr_set_p_type(class, phdr, PT_LOAD);
+		elf_phdr_set_p_offset(class, phdr, offset);
+		elf_phdr_set_p_vaddr(class, phdr, segment->da);
+		elf_phdr_set_p_paddr(class, phdr, segment->da);
+		elf_phdr_set_p_filesz(class, phdr, segment->size);
+		elf_phdr_set_p_memsz(class, phdr, segment->size);
+		elf_phdr_set_p_flags(class, phdr, PF_R | PF_W | PF_X);
+		elf_phdr_set_p_align(class, phdr, 0);
 
 		if (segment->dump) {
 			segment->dump(rproc, segment, data + offset);
@@ -1632,8 +1634,8 @@ static void rproc_coredump(struct rproc *rproc)
 			}
 		}
 
-		offset += phdr->p_filesz;
-		phdr++;
+		offset += elf_phdr_get_p_filesz(class, phdr);
+		phdr += elf_size_of_phdr(class);
 	}
 
 	dev_coredumpv(&rproc->dev, data, data_size, GFP_KERNEL);
@@ -2031,6 +2033,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 	rproc->name = name;
 	rproc->priv = &rproc[1];
 	rproc->auto_boot = true;
+	rproc->elf_class = ELFCLASS32;
 
 	device_initialize(&rproc->dev);
 	rproc->dev.parent = dev;
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 4869fb7d8fe4..16e2c496fd45 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -248,6 +248,9 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 			memset(ptr + filesz, 0, memsz - filesz);
 	}
 
+	if (ret == 0)
+		rproc->elf_class = class;
+
 	return ret;
 }
 EXPORT_SYMBOL(rproc_elf_load_segments);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 1683d6c386a6..ed127b2d35ca 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -514,6 +514,7 @@ struct rproc {
 	bool auto_boot;
 	struct list_head dump_segments;
 	int nb_vdev;
+	u8 elf_class;
 };
 
 /**
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
