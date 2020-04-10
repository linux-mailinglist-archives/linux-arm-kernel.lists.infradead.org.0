Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EF81A4537
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fYgXRPDARq/+ALiPOytOIWL4kqkFVmFs0DNjURaJsLo=; b=ghGyAkfk0WK4jkK/HKchE1vZx6
	B9Vjuprmo6wItBounzmeD1E53gmwqzJz1kC917QZkluYNXM8CBjSttDvBb553QrW3Bzfhh/fr0PxT
	j9bH2xmmCY9rvwj6i5/WFyfE4LBu8OEXoCl877B9kzom/VgZAek4U1Xo8+WS0OjTUfhOPiCTfh2tC
	sTFMwVXvPiSX54T50pBUqatPumS7r0UGh80mSb3f7Vbkbt3lMv1miWtZBOOzcjmsg5CPk875JCNIe
	URMGgzBFCjYdU7pMfeDOyz1J8vbVRdLWUPR6BZDFZJvEN0GUCWfOb+VozqWRxiQJzVXs6+D7E14sU
	B+EMzH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqqb-0005wj-Ix; Fri, 10 Apr 2020 10:25:17 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqq5-0005lh-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:24:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CF18527E05D7;
 Fri, 10 Apr 2020 12:24:41 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Tauu7QdF0F_V; Fri, 10 Apr 2020 12:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5F82627E0589;
 Fri, 10 Apr 2020 12:24:41 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 5F82627E0589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1586514281;
 bh=HcxJ6DLN3dQyTIH886Czrjj7+pb+tkaU97+d+7JF+Kw=;
 h=From:To:Date:Message-Id;
 b=e9YOgxQ8KJK6iwGyl1wfGlIJ0sLD7SiyWn2pMxn7C1ovz2yJb3Hl1rCwFRccJ/Y1s
 JWfbH24nceHgj7R/r/bM0QFcsdVvDeth3WhaHsUIRXR5pFybGaXU2AAOeQEtYly8hb
 HhsUqc4dazZ1HMMAD/ECiOSyKjP6auN3wz3G7HKI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XktIL38oOsdu; Fri, 10 Apr 2020 12:24:41 +0200 (CEST)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 44BEC27E039A;
 Fri, 10 Apr 2020 12:24:41 +0200 (CEST)
From: Clement Leger <cleger@kalray.eu>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 1/2] remoteproc: add rproc_coredump_set_elf_info
Date: Fri, 10 Apr 2020 12:24:32 +0200
Message-Id: <20200410102433.2672-2-cleger@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410102433.2672-1-cleger@kalray.eu>
References: <20200410102433.2672-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_032445_517237_B1D6C5BF 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function allows drivers to correctly setup the coredump output
elf information.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_core.c       | 32 ++++++++++++++++++++--
 drivers/remoteproc/remoteproc_elf_loader.c |  3 --
 include/linux/remoteproc.h                 |  2 ++
 3 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index a9ac1d01e09b..382443bab583 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1562,6 +1562,28 @@ int rproc_coredump_add_custom_segment(struct rproc *rproc,
 }
 EXPORT_SYMBOL(rproc_coredump_add_custom_segment);
 
+/**
+ * rproc_coredump_set_elf_info() - set coredump elf information
+ * @rproc:	handle of a remote processor
+ * @class:	elf class for coredump elf file
+ * @size:	elf machine for coredump elf file
+ *
+ * Set elf information which will be used for coredump elf file.
+ *
+ * Return: 0 on success, negative errno on error.
+ */
+int rproc_coredump_set_elf_info(struct rproc *rproc, u8 class, u16 machine)
+{
+	if (class != ELFCLASS64 && class != ELFCLASS32)
+		return -EINVAL;
+
+	rproc->elf_class = class;
+	rproc->elf_machine = machine;
+
+	return 0;
+}
+EXPORT_SYMBOL(rproc_coredump_set_elf_info);
+
 /**
  * rproc_coredump() - perform coredump
  * @rproc:	rproc handle
@@ -1584,6 +1606,11 @@ static void rproc_coredump(struct rproc *rproc)
 	if (list_empty(&rproc->dump_segments))
 		return;
 
+	if (class == ELFCLASSNONE) {
+		dev_err(&rproc->dev, "Elf class is not set\n");
+		return;
+	}
+
 	data_size = elf_size_of_hdr(class);
 	list_for_each_entry(segment, &rproc->dump_segments, node) {
 		data_size += elf_size_of_phdr(class) + segment->size;
@@ -1602,7 +1629,7 @@ static void rproc_coredump(struct rproc *rproc)
 	elf_hdr_init_ident(ehdr, class);
 
 	elf_hdr_set_e_type(class, ehdr, ET_CORE);
-	elf_hdr_set_e_machine(class, ehdr, EM_NONE);
+	elf_hdr_set_e_machine(class, ehdr, rproc->elf_machine);
 	elf_hdr_set_e_version(class, ehdr, EV_CURRENT);
 	elf_hdr_set_e_entry(class, ehdr, rproc->bootaddr);
 	elf_hdr_set_e_phoff(class, ehdr, elf_size_of_hdr(class));
@@ -2043,7 +2070,8 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 	rproc->name = name;
 	rproc->priv = &rproc[1];
 	rproc->auto_boot = true;
-	rproc->elf_class = ELFCLASS32;
+	rproc->elf_class = ELFCLASSNONE;
+	rproc->elf_machine = EM_NONE;
 
 	device_initialize(&rproc->dev);
 	rproc->dev.parent = dev;
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 16e2c496fd45..4869fb7d8fe4 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -248,9 +248,6 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 			memset(ptr + filesz, 0, memsz - filesz);
 	}
 
-	if (ret == 0)
-		rproc->elf_class = class;
-
 	return ret;
 }
 EXPORT_SYMBOL(rproc_elf_load_segments);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index ed127b2d35ca..d67eb5a40476 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -515,6 +515,7 @@ struct rproc {
 	struct list_head dump_segments;
 	int nb_vdev;
 	u8 elf_class;
+	u16 elf_machine;
 };
 
 /**
@@ -619,6 +620,7 @@ int rproc_coredump_add_custom_segment(struct rproc *rproc,
 						     struct rproc_dump_segment *segment,
 						     void *dest),
 				      void *priv);
+int rproc_coredump_set_elf_info(struct rproc *rproc, u8 class, u16 machine);
 
 static inline struct rproc_vdev *vdev_to_rvdev(struct virtio_device *vdev)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
