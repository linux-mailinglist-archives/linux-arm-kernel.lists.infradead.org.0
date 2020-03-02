Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FD617577A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJF+4YaBMOJ2Ysi99hKxhIF/ptpmlENltWsKQZKj5wQ=; b=gSVEGO7Qf7C0YKDtd5LWO4fW9N
	oER1BiCZEzVp8kEALV96dBHOln0oNFx4WwiO24mIYugE/iF5S4hBj/4+DxNs/VSQ7Q77iU2DGHSwp
	XC7u1rRrifvOUk5EgOXdZRnbNcfSg9VDDsCBGQAUhn6YGjx8cHl4uBAh29vJnxedVBuonMAr75nHv
	99CBB9fAo9IpTf2uwNJ4PTpCgItJflswWOv/IzIvctFUOrrM22TA8QX34vviDKNXg0K6Bgj7V1RKn
	qBls3PcsxNIbyDr343pN4IXx0yBjMvotwWzjkuE5GjiUzDam01DG5ngSilssFb7zT/By/h5D+8gFr
	cNqKwskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hYf-0003N6-4D; Mon, 02 Mar 2020 09:40:17 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXe-0002d8-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 80EEF27E035B;
 Mon,  2 Mar 2020 10:39:11 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id bKKY0UHzKeSw; Mon,  2 Mar 2020 10:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0FBFD27E079B;
 Mon,  2 Mar 2020 10:39:11 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0FBFD27E079B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141951;
 bh=GRI3oX4uG0cEVxAj24tEPMFmakjV1WImXf0p2FoLcCE=;
 h=From:To:Date:Message-Id;
 b=O2r1POWvwKzGj1POh2FCpmmloQP7Yj1vs/D/OQY8AodUBDjuotiTNHbgPto3vVzXT
 gLi7vhHeb/bSFY9rfyDVoZL4yG3o5jgt+8H2ODs+L0qSBQuCN8D579MzppahIvXmkn
 7IuWkzaGYKpsd+s7djReNhPKRR6vCWzxRfg+iF3Y=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XpHiTCGQ0-Ad; Mon,  2 Mar 2020 10:39:10 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D6DFD27E035B;
 Mon,  2 Mar 2020 10:39:10 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 2/8] remoteproc: Use size_t instead of int for
 rproc_mem_entry len
Date: Mon,  2 Mar 2020 10:38:56 +0100
Message-Id: <20200302093902.27849-3-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013914_919237_05D5E211 
X-CRM114-Status: GOOD (  12.30  )
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

Now that rproc_da_to_va uses a size_t for length, use a size_t for len field
of rproc_mem_entry. Function used to create such structures now takes
a size_t instead of int to allow full size range to be handled.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_core.c    | 14 ++++++++------
 drivers/remoteproc/remoteproc_debugfs.c |  2 +-
 include/linux/remoteproc.h              |  6 +++---
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 5ab094fc1b55..4bfaf4a3c4a3 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -318,8 +318,9 @@ int rproc_alloc_vring(struct rproc_vdev *rvdev, int i)
 	struct device *dev = &rproc->dev;
 	struct rproc_vring *rvring = &rvdev->vring[i];
 	struct fw_rsc_vdev *rsc;
-	int ret, size, notifyid;
+	int ret, notifyid;
 	struct rproc_mem_entry *mem;
+	size_t size;
 
 	/* actual size of vring (in bytes) */
 	size = PAGE_ALIGN(vring_size(rvring->len, rvring->align));
@@ -746,11 +747,12 @@ static int rproc_alloc_carveout(struct rproc *rproc,
 	va = dma_alloc_coherent(dev->parent, mem->len, &dma, GFP_KERNEL);
 	if (!va) {
 		dev_err(dev->parent,
-			"failed to allocate dma memory: len 0x%x\n", mem->len);
+			"failed to allocate dma memory: len 0x%zx\n",
+			mem->len);
 		return -ENOMEM;
 	}
 
-	dev_dbg(dev, "carveout va %pK, dma %pad, len 0x%x\n",
+	dev_dbg(dev, "carveout va %pK, dma %pad, len 0x%zx\n",
 		va, &dma, mem->len);
 
 	if (mem->da != FW_RSC_ADDR_ANY && !rproc->domain) {
@@ -957,7 +959,7 @@ EXPORT_SYMBOL(rproc_add_carveout);
  */
 struct rproc_mem_entry *
 rproc_mem_entry_init(struct device *dev,
-		     void *va, dma_addr_t dma, int len, u32 da,
+		     void *va, dma_addr_t dma, size_t len, u32 da,
 		     int (*alloc)(struct rproc *, struct rproc_mem_entry *),
 		     int (*release)(struct rproc *, struct rproc_mem_entry *),
 		     const char *name, ...)
@@ -999,7 +1001,7 @@ EXPORT_SYMBOL(rproc_mem_entry_init);
  * provided by client.
  */
 struct rproc_mem_entry *
-rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
+rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
 			     u32 da, const char *name, ...)
 {
 	struct rproc_mem_entry *mem;
@@ -1270,7 +1272,7 @@ static void rproc_resource_cleanup(struct rproc *rproc)
 		unmapped = iommu_unmap(rproc->domain, entry->da, entry->len);
 		if (unmapped != entry->len) {
 			/* nothing much to do besides complaining */
-			dev_err(dev, "failed to unmap %u/%zu\n", entry->len,
+			dev_err(dev, "failed to unmap %zx/%zu\n", entry->len,
 				unmapped);
 		}
 
diff --git a/drivers/remoteproc/remoteproc_debugfs.c b/drivers/remoteproc/remoteproc_debugfs.c
index dd93cf04e17f..82dc34b819df 100644
--- a/drivers/remoteproc/remoteproc_debugfs.c
+++ b/drivers/remoteproc/remoteproc_debugfs.c
@@ -293,7 +293,7 @@ static int rproc_carveouts_show(struct seq_file *seq, void *p)
 		seq_printf(seq, "\tVirtual address: %pK\n", carveout->va);
 		seq_printf(seq, "\tDMA address: %pad\n", &carveout->dma);
 		seq_printf(seq, "\tDevice address: 0x%x\n", carveout->da);
-		seq_printf(seq, "\tLength: 0x%x Bytes\n\n", carveout->len);
+		seq_printf(seq, "\tLength: 0x%zx Bytes\n\n", carveout->len);
 	}
 
 	return 0;
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 89215798eaea..bee559330204 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -329,7 +329,7 @@ struct rproc;
 struct rproc_mem_entry {
 	void *va;
 	dma_addr_t dma;
-	int len;
+	size_t len;
 	u32 da;
 	void *priv;
 	char name[32];
@@ -599,13 +599,13 @@ void rproc_add_carveout(struct rproc *rproc, struct rproc_mem_entry *mem);
 
 struct rproc_mem_entry *
 rproc_mem_entry_init(struct device *dev,
-		     void *va, dma_addr_t dma, int len, u32 da,
+		     void *va, dma_addr_t dma, size_t len, u32 da,
 		     int (*alloc)(struct rproc *, struct rproc_mem_entry *),
 		     int (*release)(struct rproc *, struct rproc_mem_entry *),
 		     const char *name, ...);
 
 struct rproc_mem_entry *
-rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
+rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
 			     u32 da, const char *name, ...);
 
 int rproc_boot(struct rproc *rproc);
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
