Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E89149B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzwLi43Aj7HY5orTbRiLaoIv7Y8m1ZuTHXeuj6N4Gx0=; b=XPlI0C4T2oT591
	OfqvePyv1kAFTBuG5XFz82+mgt4f6q4Yr4NNnqkf2MwiHiKl1LGPP2s9Bsf/3FI6b+yiSURfvI8zl
	d5i9rmy2t87A82h/ZLv6vOWzTjw0e7a2yaiefwNH+EYIJKFfTluBWMlYJ5oy3Miq05Tb1etwXIp5V
	zHQk8VoaluV/4p5iRHSxz5NhL3EEOoObGMbrtsSN9ROP4jvtck7RlwCRehvd7Z2YzSpyXvgK1pcA8
	EadK4hiW38HpK+CyyozN5RezgAXDfhByzTN3D9too8fm3QTVEv0LYKyixIyv+ZMoRNrTKTqTnfu7Y
	MlxoGJAiz+YQv1XVkfaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcqX-0007va-T8; Mon, 06 May 2019 12:35:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcpu-0007HF-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:35:23 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CZB56066992;
 Mon, 6 May 2019 07:35:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557146111;
 bh=R+4xLScppirK/oMAIaF0dkxInQhmCtwXPdBc+l1BPPk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=iKh4iuJiGwKIG70iDlObydap25AQZJZNimaU+zGORXntMxk3VlsYM/VCejY1vs50j
 POzU/8g0LGPvFRh37gHesh3hJjut1dhgl+t4FrGeJVH/Himzxk09vswPSnIQFGvrMy
 EfeafJZ6yI5CA1qm19K682uiL/uyRhSvpNb62L5A=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CZARE035519
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:35:11 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:35:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:35:10 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CYpUB110286;
 Mon, 6 May 2019 07:35:07 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH 05/16] dmaengine: Add metadata_ops for dma_async_tx_descriptor
Date: Mon, 6 May 2019 15:34:45 +0300
Message-ID: <20190506123456.6777-6-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-1-peter.ujfalusi@ti.com>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053515_395399_A38568B3 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The metadata is best described as side band data or parameters traveling
alongside the data DMAd by the DMA engine. It is data
which is understood by the peripheral and the peripheral driver only, the
DMA engine see it only as data block and it is not interpreting it in any
way.

The metadata can be different per descriptor as it is a parameter for the
data being transferred.

If the DMA supports per descriptor metadata it can implement the attach,
get_ptr/set_len callbacks.

Client drivers must only use either attach or get_ptr/set_len to avoid
misconfiguration.

Client driver can check if a given metadata mode is supported by the
channel during probe time with
dmaengine_is_metadata_mode_supported(chan, DESC_METADATA_CLIENT);
dmaengine_is_metadata_mode_supported(chan, DESC_METADATA_ENGINE);

and based on this information can use either mode.

Wrappers are also added for the metadata_ops.

To be used in DESC_METADATA_CLIENT mode:
dmaengine_desc_attach_metadata()

To be used in DESC_METADATA_ENGINE mode:
dmaengine_desc_get_metadata_ptr()
dmaengine_desc_set_metadata_len()

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/dmaengine.c   |  73 ++++++++++++++++++++++++++
 include/linux/dmaengine.h | 108 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 181 insertions(+)

diff --git a/drivers/dma/dmaengine.c b/drivers/dma/dmaengine.c
index 3a11b1092e80..8eed5ff0fc01 100644
--- a/drivers/dma/dmaengine.c
+++ b/drivers/dma/dmaengine.c
@@ -1308,6 +1308,79 @@ void dma_async_tx_descriptor_init(struct dma_async_tx_descriptor *tx,
 }
 EXPORT_SYMBOL(dma_async_tx_descriptor_init);
 
+static inline int desc_check_and_set_metadata_mode(
+	struct dma_async_tx_descriptor *desc, enum dma_desc_metadata_mode mode)
+{
+	/* Make sure that the metadata mode is not mixed */
+	if (!desc->desc_metadata_mode) {
+		if (dmaengine_is_metadata_mode_supported(desc->chan, mode))
+			desc->desc_metadata_mode = mode;
+		else
+			return -ENOTSUPP;
+	} else if (desc->desc_metadata_mode != mode) {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
+				   void *data, size_t len)
+{
+	int ret;
+
+	if (!desc)
+		return -EINVAL;
+
+	ret = desc_check_and_set_metadata_mode(desc, DESC_METADATA_CLIENT);
+	if (ret)
+		return ret;
+
+	if (!desc->metadata_ops || !desc->metadata_ops->attach)
+		return -ENOTSUPP;
+
+	return desc->metadata_ops->attach(desc, data, len);
+}
+EXPORT_SYMBOL_GPL(dmaengine_desc_attach_metadata);
+
+void *dmaengine_desc_get_metadata_ptr(struct dma_async_tx_descriptor *desc,
+				      size_t *payload_len, size_t *max_len)
+{
+	int ret;
+
+	if (!desc)
+		return ERR_PTR(-EINVAL);
+
+	ret = desc_check_and_set_metadata_mode(desc, DESC_METADATA_ENGINE);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (!desc->metadata_ops || !desc->metadata_ops->get_ptr)
+		return ERR_PTR(-ENOTSUPP);
+
+	return desc->metadata_ops->get_ptr(desc, payload_len, max_len);
+}
+EXPORT_SYMBOL_GPL(dmaengine_desc_get_metadata_ptr);
+
+int dmaengine_desc_set_metadata_len(struct dma_async_tx_descriptor *desc,
+				    size_t payload_len)
+{
+	int ret;
+
+	if (!desc)
+		return -EINVAL;
+
+	ret = desc_check_and_set_metadata_mode(desc, DESC_METADATA_ENGINE);
+	if (ret)
+		return ret;
+
+	if (!desc->metadata_ops || !desc->metadata_ops->set_len)
+		return -ENOTSUPP;
+
+	return desc->metadata_ops->set_len(desc, payload_len);
+}
+EXPORT_SYMBOL_GPL(dmaengine_desc_set_metadata_len);
+
 /* dma_wait_for_async_tx - spin wait for a transaction to complete
  * @tx: in-flight transaction to wait on
  */
diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 3db833a8c542..10ff71b13eef 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -231,6 +231,58 @@ typedef struct { DECLARE_BITMAP(bits, DMA_TX_TYPE_END); } dma_cap_mask_t;
  * @bytes_transferred: byte counter
  */
 
+/**
+ * enum dma_desc_metadata_mode - per descriptor metadata mode types supported
+ * @DESC_METADATA_CLIENT - the metadata buffer is allocated/provided by the
+ *  client driver and it is attached (via the dmaengine_desc_attach_metadata()
+ *  helper) to the descriptor.
+ *
+ * Client drivers interested to use this mode can follow:
+ * - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
+ *   1. prepare the descriptor (dmaengine_prep_*)
+ *	construct the metadata in the client's buffer
+ *   2. use dmaengine_desc_attach_metadata() to attach the buffer to the
+ *	descriptor
+ *   3. submit the transfer
+ * - DMA_DEV_TO_MEM:
+ *   1. prepare the descriptor (dmaengine_prep_*)
+ *   2. use dmaengine_desc_attach_metadata() to attach the buffer to the
+ *	descriptor
+ *   3. submit the transfer
+ *   4. when the transfer is completed, the metadata should be available in the
+ *	attached buffer
+ *
+ * @DESC_METADATA_ENGINE - the metadata buffer is allocated/managed by the DMA
+ *  driver. The client driver can ask for the pointer, maximum size and the
+ *  currently used size of the metadata and can directly update or read it.
+ *  dmaengine_desc_get_metadata_ptr() and dmaengine_desc_set_metadata_len() is
+ *  provided as helper functions.
+ *
+ * Client drivers interested to use this mode can follow:
+ * - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
+ *   1. prepare the descriptor (dmaengine_prep_*)
+ *   2. use dmaengine_desc_get_metadata_ptr() to get the pointer to the engine's
+ *	metadata area
+ *   3. update the metadata at the pointer
+ *   4. use dmaengine_desc_set_metadata_len()  to tell the DMA engine the amount
+ *	of data the client has placed into the metadata buffer
+ *   5. submit the transfer
+ * - DMA_DEV_TO_MEM:
+ *   1. prepare the descriptor (dmaengine_prep_*)
+ *   2. submit the transfer
+ *   3. on transfer completion, use dmaengine_desc_get_metadata_ptr() to get the
+ *	pointer to the engine's metadata are
+ *   4. Read out the metadate from the pointer
+ *
+ * Note: the two mode is not compatible and clients must use one mode for a
+ * descriptor.
+ */
+enum dma_desc_metadata_mode {
+	DESC_METADATA_NONE = 0,
+	DESC_METADATA_CLIENT = BIT(0),
+	DESC_METADATA_ENGINE = BIT(1),
+};
+
 struct dma_chan_percpu {
 	/* stats */
 	unsigned long memcpy_count;
@@ -494,6 +546,18 @@ struct dmaengine_unmap_data {
 	dma_addr_t addr[0];
 };
 
+struct dma_async_tx_descriptor;
+
+struct dma_descriptor_metadata_ops {
+	int (*attach)(struct dma_async_tx_descriptor *desc, void *data,
+		      size_t len);
+
+	void *(*get_ptr)(struct dma_async_tx_descriptor *desc,
+			 size_t *payload_len, size_t *max_len);
+	int (*set_len)(struct dma_async_tx_descriptor *desc,
+		       size_t payload_len);
+};
+
 /**
  * struct dma_async_tx_descriptor - async transaction descriptor
  * ---dma generic offload fields---
@@ -507,6 +571,11 @@ struct dmaengine_unmap_data {
  * descriptor pending. To be pushed on .issue_pending() call
  * @callback: routine to call after this operation is complete
  * @callback_param: general parameter to pass to the callback routine
+ * @desc_metadata_mode: core managed metadata mode to protect mixed use of
+ *	DESC_METADATA_CLIENT or DESC_METADATA_ENGINE. Otherwise
+ *	DESC_METADATA_NONE
+ * @metadata_ops: DMA driver provided metadata mode ops, need to be set by the
+ *	DMA driver if metadata mode is supported with the descriptor
  * ---async_tx api specific fields---
  * @next: at completion submit this descriptor
  * @parent: pointer to the next level up in the dependency chain
@@ -523,6 +592,8 @@ struct dma_async_tx_descriptor {
 	dma_async_tx_callback_result callback_result;
 	void *callback_param;
 	struct dmaengine_unmap_data *unmap;
+	enum dma_desc_metadata_mode desc_metadata_mode;
+	struct dma_descriptor_metadata_ops *metadata_ops;
 #ifdef CONFIG_ASYNC_TX_ENABLE_CHANNEL_SWITCH
 	struct dma_async_tx_descriptor *next;
 	struct dma_async_tx_descriptor *parent;
@@ -685,6 +756,7 @@ struct dma_filter {
  * @global_node: list_head for global dma_device_list
  * @filter: information for device/slave to filter function/param mapping
  * @cap_mask: one or more dma_capability flags
+ * @desc_metadata_modes: supported metadata modes by the DMA device
  * @max_xor: maximum number of xor sources, 0 if no capability
  * @max_pq: maximum number of PQ sources and PQ-continue capability
  * @copy_align: alignment shift for memcpy operations
@@ -749,6 +821,7 @@ struct dma_device {
 	struct list_head global_node;
 	struct dma_filter filter;
 	dma_cap_mask_t  cap_mask;
+	enum dma_desc_metadata_mode desc_metadata_modes;
 	unsigned short max_xor;
 	unsigned short max_pq;
 	enum dmaengine_alignment copy_align;
@@ -935,6 +1008,41 @@ static inline struct dma_async_tx_descriptor *dmaengine_prep_dma_memcpy(
 						    len, flags);
 }
 
+static inline bool dmaengine_is_metadata_mode_supported(struct dma_chan *chan,
+		enum dma_desc_metadata_mode mode)
+{
+	if (!chan)
+		return false;
+
+	return !!(chan->device->desc_metadata_modes & mode);
+}
+
+#ifdef CONFIG_DMA_ENGINE
+int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
+				   void *data, size_t len);
+void *dmaengine_desc_get_metadata_ptr(struct dma_async_tx_descriptor *desc,
+				      size_t *payload_len, size_t *max_len);
+int dmaengine_desc_set_metadata_len(struct dma_async_tx_descriptor *desc,
+				    size_t payload_len);
+#else /* CONFIG_DMA_ENGINE */
+static inline int dmaengine_desc_attach_metadata(
+		struct dma_async_tx_descriptor *desc, void *data, size_t len)
+{
+	return -EINVAL;
+}
+static inline void *dmaengine_desc_get_metadata_ptr(
+		struct dma_async_tx_descriptor *desc, size_t *payload_len,
+		size_t *max_len)
+{
+	return NULL;
+}
+static inline int dmaengine_desc_set_metadata_len(
+		struct dma_async_tx_descriptor *desc, size_t payload_len)
+{
+	return -EINVAL;
+}
+#endif /* CONFIG_DMA_ENGINE */
+
 /**
  * dmaengine_terminate_all() - Terminate all active DMA transfers
  * @chan: The channel for which to terminate the transfers
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
