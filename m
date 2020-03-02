Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137C017577B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X+BdLWsZV+AHu30g8AXg+ysQciLt8M0Bb6zfy02bdWw=; b=VcQXgPyO9zI4NofeKBsqBPHaFu
	3DJAKgPKIDExEiawZEb76j4dvBzslfBBdQ3YDO6pMiSGwHRr94XNGxKDUMUq5mooW9eZ3V68SC7yE
	lwq8EQM8Ri/Mq8SDu+X7baJINIAAiPOML/hPeIDh561PIiN4tiQ58DSUrDBiu68mHseCsxmVn8HcM
	rN5Qx6YS4N3obnlYEG5qk59kO3jD4IXVSMYHTfRNFohbJybE2XaXm7ZVXrX77gvRVNi0rgWNWcmIs
	MazGH3VimJbxIMF88GEXnitTBir979EnNrBS/12dvDNZuFpNuuvyPdgx5V1fBFO75vMOlQQBQeXaY
	Igz+CI+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hYr-0004pA-JJ; Mon, 02 Mar 2020 09:40:29 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXf-0002dB-4S
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2105627E079B;
 Mon,  2 Mar 2020 10:39:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QN6dY6cKWBYg; Mon,  2 Mar 2020 10:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B55A527E083D;
 Mon,  2 Mar 2020 10:39:11 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B55A527E083D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141951;
 bh=wIY25Crc9LNlgCWJ/g9uTJtUwJKBySkdrV50ZPWaKQw=;
 h=From:To:Date:Message-Id;
 b=hcE2+CjzyAaP7LMPqH4hcIRUbl4L/Tm9o9kzTjsnbv6zQP5fUioM3DYN1kS2JjPH4
 ihc0Aln5zA074cPRgD0mevfjvtkJV7ARSwyxju4YwYyGlxCjeVYZgfAjJQM1ngzV7Q
 YmvsDx+nBD52UUM4I4ZjJ5PZAGltvuN7KHVJUZDA=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id MH7Z2boo6q1d; Mon,  2 Mar 2020 10:39:11 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 951B727E079B;
 Mon,  2 Mar 2020 10:39:11 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 3/8] remoteproc: Use u64 type for boot_addr
Date: Mon,  2 Mar 2020 10:38:57 +0100
Message-Id: <20200302093902.27849-4-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013915_496411_C106175F 
X-CRM114-Status: GOOD (  10.55  )
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

elf64 entry is defined as a u64. Since boot_addr is used to store the
elf entry point, change boot_addr type to u64 to support both elf32
and elf64. In the same time, fix users that were using this variable.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
 drivers/remoteproc/remoteproc_internal.h   | 2 +-
 drivers/remoteproc/st_remoteproc.c         | 2 +-
 include/linux/remoteproc.h                 | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 606aae166eba..c2a9783cfb9a 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -102,7 +102,7 @@ EXPORT_SYMBOL(rproc_elf_sanity_check);
  * Note that the boot address is not a configurable property of all remote
  * processors. Some will always boot at a specific hard-coded address.
  */
-u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
+u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
 {
 	struct elf32_hdr *ehdr  = (struct elf32_hdr *)fw->data;
 
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index 58580210575c..0deae5f237b8 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -55,7 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
 int rproc_trigger_recovery(struct rproc *rproc);
 
 int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
-u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
+u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
 struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
index ee13d23b43a9..a3268d95a50e 100644
--- a/drivers/remoteproc/st_remoteproc.c
+++ b/drivers/remoteproc/st_remoteproc.c
@@ -190,7 +190,7 @@ static int st_rproc_start(struct rproc *rproc)
 		}
 	}
 
-	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
+	dev_info(&rproc->dev, "Started from 0x%llx\n", rproc->bootaddr);
 
 	return 0;
 
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index bee559330204..1683d6c386a6 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -382,7 +382,7 @@ struct rproc_ops {
 				struct rproc *rproc, const struct firmware *fw);
 	int (*load)(struct rproc *rproc, const struct firmware *fw);
 	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
-	u32 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
+	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
 };
 
 /**
@@ -498,7 +498,7 @@ struct rproc {
 	int num_traces;
 	struct list_head carveouts;
 	struct list_head mappings;
-	u32 bootaddr;
+	u64 bootaddr;
 	struct list_head rvdevs;
 	struct list_head subdevs;
 	struct idr notifyids;
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
