Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543901169DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoKzOdZhxVnW4/2BkbYg8lRId3B74weR+oaAaBcvqwc=; b=MBAQRphapKCVDt
	ZUT30k6AhBlzl7I4kcEwyQNq56Bk8ZFCOAhCxCfOVG2i4H6e1Apcu1wQku9K0yXknUIs3I6kCjftv
	+cEnZdmOAZCKcpVMJUWCa5lLOFKHvnJ8X2tcXQ9DX9nSQer6dpxFqsu9mI/BBJ7pOHr8pQX0DaH0+
	aHKXGsOKjRXepMCeA+f5BMxnqpAJJ0IR37XMyrHzyRXWkVGpahg9CK2RCVUhMKoVbBV3JKwpx/30v
	xWLte1dViCLBZxUJAsB0SZAdTL+OIJvCEzWvEElAMoXUOKWCR3ftJPCSur0IYxpAiDqaGLkC4WnlX
	j+rXose8bryKcxDnbJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFc9-0007vq-Mm; Mon, 09 Dec 2019 09:46:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFaC-0005D9-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:44:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB99htbe088383;
 Mon, 9 Dec 2019 03:43:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575884635;
 bh=IqNMdb5/H4jTPqBFCv7ppLA0yFcpOlst6ArJK8zOukc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=yqm0nRpKLfpnj2cBi+kzQYWLbTEqrpXbmBf0dpkD7Vd1oFXODtOfyEQSo3+O9Q52T
 L2kBXsJDeiGy8FFHH8Z8uoup+w6EDENjoYJXq0Iir2Y/aiYoeNVo5VGwXps5ezQgNP
 ZSaSkH5Gck0HFc1kLEfBNlDc6xV8mfc4bAxzx72I=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB99httZ076979
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Dec 2019 03:43:55 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Dec
 2019 03:43:53 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Dec 2019 03:43:53 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB99hOWn080263;
 Mon, 9 Dec 2019 03:43:49 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v7 06/12] dmaengine: ti: Add cppi5 header for K3 NAVSS/UDMA
Date: Mon, 9 Dec 2019 11:43:26 +0200
Message-ID: <20191209094332.4047-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209094332.4047-1-peter.ujfalusi@ti.com>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_014400_491702_25E14C06 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The K3 DMA architecture uses CPPI5 (Communications Port Programming
Interface) specified descriptors over PSI-L bus within NAVSS.

The header provides helpers, macros to work with these descriptors in a
consistent way.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 include/linux/dma/ti-cppi5.h | 1061 ++++++++++++++++++++++++++++++++++
 1 file changed, 1061 insertions(+)
 create mode 100644 include/linux/dma/ti-cppi5.h

diff --git a/include/linux/dma/ti-cppi5.h b/include/linux/dma/ti-cppi5.h
new file mode 100644
index 000000000000..ed08a23cf322
--- /dev/null
+++ b/include/linux/dma/ti-cppi5.h
@@ -0,0 +1,1061 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * CPPI5 descriptors interface
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
+ */
+
+#ifndef __TI_CPPI5_H__
+#define __TI_CPPI5_H__
+
+#include <linux/bitops.h>
+#include <linux/printk.h>
+#include <linux/bug.h>
+
+/**
+ * struct cppi5_desc_hdr_t - Descriptor header, present in all types of
+ *			     descriptors
+ * @pkt_info0:		Packet info word 0 (n/a in Buffer desc)
+ * @pkt_info0:		Packet info word 1 (n/a in Buffer desc)
+ * @pkt_info0:		Packet info word 2 (n/a in Buffer desc)
+ * @src_dst_tag:	Packet info word 3 (n/a in Buffer desc)
+ */
+struct cppi5_desc_hdr_t {
+	u32 pkt_info0;
+	u32 pkt_info1;
+	u32 pkt_info2;
+	u32 src_dst_tag;
+} __packed;
+
+/**
+ * struct cppi5_host_desc_t - Host-mode packet and buffer descriptor definition
+ * @hdr:		Descriptor header
+ * @next_desc:		word 4/5: Linking word
+ * @buf_ptr:		word 6/7: Buffer pointer
+ * @buf_info1:		word 8: Buffer valid data length
+ * @org_buf_len:	word 9: Original buffer length
+ * @org_buf_ptr:	word 10/11: Original buffer pointer
+ * @epib[0]:		Extended Packet Info Data (optional, 4 words), and/or
+ *			Protocol Specific Data (optional, 0-128 bytes in
+ *			multiples of 4), and/or
+ *			Other Software Data (0-N bytes, optional)
+ */
+struct cppi5_host_desc_t {
+	struct cppi5_desc_hdr_t hdr;
+	u64 next_desc;
+	u64 buf_ptr;
+	u32 buf_info1;
+	u32 org_buf_len;
+	u64 org_buf_ptr;
+	u32 epib[0];
+} __packed;
+
+#define CPPI5_DESC_MIN_ALIGN			(16U)
+
+#define CPPI5_INFO0_HDESC_EPIB_SIZE		(16U)
+#define CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE	(128U)
+
+#define CPPI5_INFO0_HDESC_TYPE_SHIFT		(30U)
+#define CPPI5_INFO0_HDESC_TYPE_MASK		GENMASK(31, 30)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_HOST	(1U)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_MONO	(2U)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_TR		(3U)
+#define CPPI5_INFO0_HDESC_EPIB_PRESENT		BIT(29)
+/*
+ * Protocol Specific Words location:
+ * 0 - located in the descriptor,
+ * 1 = located in the SOP Buffer immediately prior to the data.
+ */
+#define CPPI5_INFO0_HDESC_PSINFO_LOCATION	BIT(28)
+#define CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT	(22U)
+#define CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK	GENMASK(27, 22)
+#define CPPI5_INFO0_HDESC_PKTLEN_SHIFT		(0)
+#define CPPI5_INFO0_HDESC_PKTLEN_MASK		GENMASK(21, 0)
+
+#define CPPI5_INFO1_DESC_PKTERROR_SHIFT		(28U)
+#define CPPI5_INFO1_DESC_PKTERROR_MASK		GENMASK(31, 28)
+#define CPPI5_INFO1_HDESC_PSFLGS_SHIFT		(24U)
+#define CPPI5_INFO1_HDESC_PSFLGS_MASK		GENMASK(27, 24)
+#define CPPI5_INFO1_DESC_PKTID_SHIFT		(14U)
+#define CPPI5_INFO1_DESC_PKTID_MASK		GENMASK(23, 14)
+#define CPPI5_INFO1_DESC_FLOWID_SHIFT		(0)
+#define CPPI5_INFO1_DESC_FLOWID_MASK		GENMASK(13, 0)
+
+#define CPPI5_INFO2_HDESC_PKTTYPE_SHIFT		(27U)
+#define CPPI5_INFO2_HDESC_PKTTYPE_MASK		GENMASK(31, 27)
+/* Return Policy: 0 - Entire packet 1 - Each buffer */
+#define CPPI5_INFO2_HDESC_RETPOLICY		BIT(18)
+/*
+ * Early Return:
+ * 0 = desc pointers should be returned after all reads have been completed
+ * 1 = desc pointers should be returned immediately upon fetching
+ * the descriptor and beginning to transfer data.
+ */
+#define CPPI5_INFO2_HDESC_EARLYRET		BIT(17)
+/*
+ * Return Push Policy:
+ * 0 = Descriptor must be returned to tail of queue
+ * 1 = Descriptor must be returned to head of queue
+ */
+#define CPPI5_INFO2_DESC_RETPUSHPOLICY		BIT(16)
+#define CPPI5_INFO2_DESC_RETP_MASK		GENMASK(18, 16)
+
+#define CPPI5_INFO2_DESC_RETQ_SHIFT		(0)
+#define CPPI5_INFO2_DESC_RETQ_MASK		GENMASK(15, 0)
+
+#define CPPI5_INFO3_DESC_SRCTAG_SHIFT		(16U)
+#define CPPI5_INFO3_DESC_SRCTAG_MASK		GENMASK(31, 16)
+#define CPPI5_INFO3_DESC_DSTTAG_SHIFT		(0)
+#define CPPI5_INFO3_DESC_DSTTAG_MASK		GENMASK(15, 0)
+
+#define CPPI5_BUFINFO1_HDESC_DATA_LEN_SHIFT	(0)
+#define CPPI5_BUFINFO1_HDESC_DATA_LEN_MASK	GENMASK(27, 0)
+
+#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_SHIFT	(0)
+#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK	GENMASK(27, 0)
+
+/**
+ * struct cppi5_desc_epib_t - Host Packet Descriptor Extended Packet Info Block
+ * @timestamp:		word 0: application specific timestamp
+ * @sw_info0:		word 1: Software Info 0
+ * @sw_info1:		word 1: Software Info 1
+ * @sw_info2:		word 1: Software Info 2
+ */
+struct cppi5_desc_epib_t {
+	u32 timestamp;	/* w0: application specific timestamp */
+	u32 sw_info0;	/* w1: Software Info 0 */
+	u32 sw_info1;	/* w2: Software Info 1 */
+	u32 sw_info2;	/* w3: Software Info 2 */
+};
+
+/**
+ * struct cppi5_monolithic_desc_t - Monolithic-mode packet descriptor
+ * @hdr:		Descriptor header
+ * @epib[0]:		Extended Packet Info Data (optional, 4 words), and/or
+ *			Protocol Specific Data (optional, 0-128 bytes in
+ *			multiples of 4), and/or
+ *			Other Software Data (0-N bytes, optional)
+ */
+struct cppi5_monolithic_desc_t {
+	struct cppi5_desc_hdr_t hdr;
+	u32 epib[0];
+};
+
+#define CPPI5_INFO2_MDESC_DATA_OFFSET_SHIFT	(18U)
+#define CPPI5_INFO2_MDESC_DATA_OFFSET_MASK	GENMASK(26, 18)
+
+/*
+ * Reload Count:
+ * 0 = Finish the packet and place the descriptor back on the return queue
+ * 1-0x1ff = Vector to the Reload Index and resume processing
+ * 0x1ff indicates perpetual loop, infinite reload until the channel is stopped
+ */
+#define CPPI5_INFO0_TRDESC_RLDCNT_SHIFT		(20U)
+#define CPPI5_INFO0_TRDESC_RLDCNT_MASK		GENMASK(28, 20)
+#define CPPI5_INFO0_TRDESC_RLDCNT_MAX		(0x1ff)
+#define CPPI5_INFO0_TRDESC_RLDCNT_INFINITE	CPPI5_INFO0_TRDESC_RLDCNT_MAX
+#define CPPI5_INFO0_TRDESC_RLDIDX_SHIFT		(14U)
+#define CPPI5_INFO0_TRDESC_RLDIDX_MASK		GENMASK(19, 14)
+#define CPPI5_INFO0_TRDESC_RLDIDX_MAX		(0x3f)
+#define CPPI5_INFO0_TRDESC_LASTIDX_SHIFT	(0)
+#define CPPI5_INFO0_TRDESC_LASTIDX_MASK		GENMASK(13, 0)
+
+#define CPPI5_INFO1_TRDESC_RECSIZE_SHIFT	(24U)
+#define CPPI5_INFO1_TRDESC_RECSIZE_MASK		GENMASK(26, 24)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_16B	(0)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_32B	(1U)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_64B	(2U)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_128B	(3U)
+
+static inline void cppi5_desc_dump(void *desc, u32 size)
+{
+	print_hex_dump(KERN_ERR, "dump udmap_desc: ", DUMP_PREFIX_NONE,
+		       32, 4, desc, size, false);
+}
+
+#define CPPI5_TDCM_MARKER			(0x1)
+/**
+ * cppi5_desc_is_tdcm - check if the paddr indicates Teardown Complete Message
+ * @paddr: Physical address of the packet popped from the ring
+ *
+ * Returns true if the address indicates TDCM
+ */
+static inline bool cppi5_desc_is_tdcm(dma_addr_t paddr)
+{
+	return (paddr & CPPI5_TDCM_MARKER) ? true : false;
+}
+
+/**
+ * cppi5_desc_get_type - get descriptor type
+ * @desc_hdr: packet descriptor/TR header
+ *
+ * Returns descriptor type:
+ * CPPI5_INFO0_DESC_TYPE_VAL_HOST
+ * CPPI5_INFO0_DESC_TYPE_VAL_MONO
+ * CPPI5_INFO0_DESC_TYPE_VAL_TR
+ */
+static inline u32 cppi5_desc_get_type(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	return (desc_hdr->pkt_info0 & CPPI5_INFO0_HDESC_TYPE_MASK) >>
+		CPPI5_INFO0_HDESC_TYPE_SHIFT;
+}
+
+/**
+ * cppi5_desc_get_errflags - get Error Flags from Desc
+ * @desc_hdr: packet/TR descriptor header
+ *
+ * Returns Error Flags from Packet/TR Descriptor
+ */
+static inline u32 cppi5_desc_get_errflags(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	return (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_PKTERROR_MASK) >>
+		CPPI5_INFO1_DESC_PKTERROR_SHIFT;
+}
+
+/**
+ * cppi5_desc_get_pktids - get Packet and Flow ids from Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @pkt_id: Packet ID
+ * @flow_id: Flow ID
+ *
+ * Returns Packet and Flow ids from packet/TR descriptor
+ */
+static inline void cppi5_desc_get_pktids(struct cppi5_desc_hdr_t *desc_hdr,
+					 u32 *pkt_id, u32 *flow_id)
+{
+	*pkt_id = (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_PKTID_MASK) >>
+		   CPPI5_INFO1_DESC_PKTID_SHIFT;
+	*flow_id = (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_FLOWID_MASK) >>
+		    CPPI5_INFO1_DESC_FLOWID_SHIFT;
+}
+
+/**
+ * cppi5_desc_set_pktids - set Packet and Flow ids in Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @pkt_id: Packet ID
+ * @flow_id: Flow ID
+ */
+static inline void cppi5_desc_set_pktids(struct cppi5_desc_hdr_t *desc_hdr,
+					 u32 pkt_id, u32 flow_id)
+{
+	desc_hdr->pkt_info1 &= ~(CPPI5_INFO1_DESC_PKTID_MASK |
+				 CPPI5_INFO1_DESC_FLOWID_MASK);
+	desc_hdr->pkt_info1 |= (pkt_id << CPPI5_INFO1_DESC_PKTID_SHIFT) &
+				CPPI5_INFO1_DESC_PKTID_MASK;
+	desc_hdr->pkt_info1 |= (flow_id << CPPI5_INFO1_DESC_FLOWID_SHIFT) &
+				CPPI5_INFO1_DESC_FLOWID_MASK;
+}
+
+/**
+ * cppi5_desc_set_retpolicy - set Packet Return Policy in Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @flags: fags, supported values
+ *  CPPI5_INFO2_HDESC_RETPOLICY
+ *  CPPI5_INFO2_HDESC_EARLYRET
+ *  CPPI5_INFO2_DESC_RETPUSHPOLICY
+ * @return_ring_id: Packet Return Queue/Ring id, value 0xFFFF reserved
+ */
+static inline void cppi5_desc_set_retpolicy(struct cppi5_desc_hdr_t *desc_hdr,
+					    u32 flags, u32 return_ring_id)
+{
+	desc_hdr->pkt_info2 &= ~(CPPI5_INFO2_DESC_RETP_MASK |
+				 CPPI5_INFO2_DESC_RETQ_MASK);
+	desc_hdr->pkt_info2 |= flags & CPPI5_INFO2_DESC_RETP_MASK;
+	desc_hdr->pkt_info2 |= return_ring_id & CPPI5_INFO2_DESC_RETQ_MASK;
+}
+
+/**
+ * cppi5_desc_get_tags_ids - get Packet Src/Dst Tags from Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @src_tag_id: Source Tag
+ * @dst_tag_id: Dest Tag
+ *
+ * Returns Packet Src/Dst Tags from packet/TR descriptor
+ */
+static inline void cppi5_desc_get_tags_ids(struct cppi5_desc_hdr_t *desc_hdr,
+					   u32 *src_tag_id, u32 *dst_tag_id)
+{
+	if (src_tag_id)
+		*src_tag_id = (desc_hdr->src_dst_tag &
+			      CPPI5_INFO3_DESC_SRCTAG_MASK) >>
+			      CPPI5_INFO3_DESC_SRCTAG_SHIFT;
+	if (dst_tag_id)
+		*dst_tag_id = desc_hdr->src_dst_tag &
+			      CPPI5_INFO3_DESC_DSTTAG_MASK;
+}
+
+/**
+ * cppi5_desc_set_tags_ids - set Packet Src/Dst Tags in HDesc
+ * @desc_hdr: packet/TR descriptor header
+ * @src_tag_id: Source Tag
+ * @dst_tag_id: Dest Tag
+ *
+ * Returns Packet Src/Dst Tags from packet/TR descriptor
+ */
+static inline void cppi5_desc_set_tags_ids(struct cppi5_desc_hdr_t *desc_hdr,
+					   u32 src_tag_id, u32 dst_tag_id)
+{
+	desc_hdr->src_dst_tag = (src_tag_id << CPPI5_INFO3_DESC_SRCTAG_SHIFT) &
+				CPPI5_INFO3_DESC_SRCTAG_MASK;
+	desc_hdr->src_dst_tag |= dst_tag_id & CPPI5_INFO3_DESC_DSTTAG_MASK;
+}
+
+/**
+ * cppi5_hdesc_calc_size - Calculate Host Packet Descriptor size
+ * @epib: is EPIB present
+ * @psdata_size: PSDATA size
+ * @sw_data_size: SWDATA size
+ *
+ * Returns required Host Packet Descriptor size
+ * 0 - if PSDATA > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE
+ */
+static inline u32 cppi5_hdesc_calc_size(bool epib, u32 psdata_size,
+					u32 sw_data_size)
+{
+	u32 desc_size;
+
+	if (psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE)
+		return 0;
+
+	desc_size = sizeof(struct cppi5_host_desc_t) + psdata_size +
+		    sw_data_size;
+
+	if (epib)
+		desc_size += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	return ALIGN(desc_size, CPPI5_DESC_MIN_ALIGN);
+}
+
+/**
+ * cppi5_hdesc_init - Init Host Packet Descriptor size
+ * @desc: Host packet descriptor
+ * @flags: supported values
+ *	CPPI5_INFO0_HDESC_EPIB_PRESENT
+ *	CPPI5_INFO0_HDESC_PSINFO_LOCATION
+ * @psdata_size: PSDATA size
+ *
+ * Returns required Host Packet Descriptor size
+ * 0 - if PSDATA > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE
+ */
+static inline void cppi5_hdesc_init(struct cppi5_host_desc_t *desc, u32 flags,
+				    u32 psdata_size)
+{
+	desc->hdr.pkt_info0 = (CPPI5_INFO0_DESC_TYPE_VAL_HOST <<
+			       CPPI5_INFO0_HDESC_TYPE_SHIFT) | (flags);
+	desc->hdr.pkt_info0 |= ((psdata_size >> 2) <<
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT) &
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+	desc->next_desc = 0;
+}
+
+/**
+ * cppi5_hdesc_update_flags - Replace descriptor flags
+ * @desc: Host packet descriptor
+ * @flags: supported values
+ *	CPPI5_INFO0_HDESC_EPIB_PRESENT
+ *	CPPI5_INFO0_HDESC_PSINFO_LOCATION
+ */
+static inline void cppi5_hdesc_update_flags(struct cppi5_host_desc_t *desc,
+					    u32 flags)
+{
+	desc->hdr.pkt_info0 &= ~(CPPI5_INFO0_HDESC_EPIB_PRESENT |
+				 CPPI5_INFO0_HDESC_PSINFO_LOCATION);
+	desc->hdr.pkt_info0 |= flags;
+}
+
+/**
+ * cppi5_hdesc_update_psdata_size - Replace PSdata size
+ * @desc: Host packet descriptor
+ * @psdata_size: PSDATA size
+ */
+static inline void cppi5_hdesc_update_psdata_size(
+		struct cppi5_host_desc_t *desc, u32 psdata_size)
+{
+	desc->hdr.pkt_info0 &= ~CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+	desc->hdr.pkt_info0 |= ((psdata_size >> 2) <<
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT) &
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+}
+
+/**
+ * cppi5_hdesc_get_psdata_size - get PSdata size in bytes
+ * @desc: Host packet descriptor
+ */
+static inline u32 cppi5_hdesc_get_psdata_size(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size = 0;
+
+	if (!(desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION))
+		psdata_size = (desc->hdr.pkt_info0 &
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	return (psdata_size << 2);
+}
+
+/**
+ * cppi5_hdesc_get_pktlen - get Packet Length from HDesc
+ * @desc: Host packet descriptor
+ *
+ * Returns Packet Length from Host Packet Descriptor
+ */
+static inline u32 cppi5_hdesc_get_pktlen(struct cppi5_host_desc_t *desc)
+{
+	return (desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PKTLEN_MASK);
+}
+
+/**
+ * cppi5_hdesc_set_pktlen - set Packet Length in HDesc
+ * @desc: Host packet descriptor
+ */
+static inline void cppi5_hdesc_set_pktlen(struct cppi5_host_desc_t *desc,
+					  u32 pkt_len)
+{
+	desc->hdr.pkt_info0 &= ~CPPI5_INFO0_HDESC_PKTLEN_MASK;
+	desc->hdr.pkt_info0 |= (pkt_len & CPPI5_INFO0_HDESC_PKTLEN_MASK);
+}
+
+/**
+ * cppi5_hdesc_get_psflags - get Protocol Specific Flags from HDesc
+ * @desc: Host packet descriptor
+ *
+ * Returns Protocol Specific Flags from Host Packet Descriptor
+ */
+static inline u32 cppi5_hdesc_get_psflags(struct cppi5_host_desc_t *desc)
+{
+	return (desc->hdr.pkt_info1 & CPPI5_INFO1_HDESC_PSFLGS_MASK) >>
+		CPPI5_INFO1_HDESC_PSFLGS_SHIFT;
+}
+
+/**
+ * cppi5_hdesc_set_psflags - set Protocol Specific Flags in HDesc
+ * @desc: Host packet descriptor
+ */
+static inline void cppi5_hdesc_set_psflags(struct cppi5_host_desc_t *desc,
+					   u32 ps_flags)
+{
+	desc->hdr.pkt_info1 &= ~CPPI5_INFO1_HDESC_PSFLGS_MASK;
+	desc->hdr.pkt_info1 |= (ps_flags <<
+				CPPI5_INFO1_HDESC_PSFLGS_SHIFT) &
+				CPPI5_INFO1_HDESC_PSFLGS_MASK;
+}
+
+/**
+ * cppi5_hdesc_get_errflags - get Packet Type from HDesc
+ * @desc: Host packet descriptor
+ */
+static inline u32 cppi5_hdesc_get_pkttype(struct cppi5_host_desc_t *desc)
+{
+	return (desc->hdr.pkt_info2 & CPPI5_INFO2_HDESC_PKTTYPE_MASK) >>
+		CPPI5_INFO2_HDESC_PKTTYPE_SHIFT;
+}
+
+/**
+ * cppi5_hdesc_get_errflags - set Packet Type in HDesc
+ * @desc: Host packet descriptor
+ * @pkt_type: Packet Type
+ */
+static inline void cppi5_hdesc_set_pkttype(struct cppi5_host_desc_t *desc,
+					   u32 pkt_type)
+{
+	desc->hdr.pkt_info2 &= ~CPPI5_INFO2_HDESC_PKTTYPE_MASK;
+	desc->hdr.pkt_info2 |=
+			(pkt_type << CPPI5_INFO2_HDESC_PKTTYPE_SHIFT) &
+			 CPPI5_INFO2_HDESC_PKTTYPE_MASK;
+}
+
+/**
+ * cppi5_hdesc_attach_buf - attach buffer to HDesc
+ * @desc: Host packet descriptor
+ * @buf: Buffer physical address
+ * @buf_data_len: Buffer length
+ * @obuf: Original Buffer physical address
+ * @obuf_len: Original Buffer length
+ *
+ * Attaches buffer to Host Packet Descriptor
+ */
+static inline void cppi5_hdesc_attach_buf(struct cppi5_host_desc_t *desc,
+					  dma_addr_t buf, u32 buf_data_len,
+					  dma_addr_t obuf, u32 obuf_len)
+{
+	desc->buf_ptr = buf;
+	desc->buf_info1 = buf_data_len & CPPI5_BUFINFO1_HDESC_DATA_LEN_MASK;
+	desc->org_buf_ptr = obuf;
+	desc->org_buf_len = obuf_len & CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK;
+}
+
+static inline void cppi5_hdesc_get_obuf(struct cppi5_host_desc_t *desc,
+					dma_addr_t *obuf, u32 *obuf_len)
+{
+	*obuf = desc->org_buf_ptr;
+	*obuf_len = desc->org_buf_len & CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK;
+}
+
+static inline void cppi5_hdesc_reset_to_original(struct cppi5_host_desc_t *desc)
+{
+	desc->buf_ptr = desc->org_buf_ptr;
+	desc->buf_info1 = desc->org_buf_len;
+}
+
+/**
+ * cppi5_hdesc_link_hbdesc - link Host Buffer Descriptor to HDesc
+ * @desc: Host Packet Descriptor
+ * @buf_desc: Host Buffer Descriptor physical address
+ *
+ * add and link Host Buffer Descriptor to HDesc
+ */
+static inline void cppi5_hdesc_link_hbdesc(struct cppi5_host_desc_t *desc,
+					   dma_addr_t hbuf_desc)
+{
+	desc->next_desc = hbuf_desc;
+}
+
+static inline dma_addr_t cppi5_hdesc_get_next_hbdesc(
+		struct cppi5_host_desc_t *desc)
+{
+	return (dma_addr_t)desc->next_desc;
+}
+
+static inline void cppi5_hdesc_reset_hbdesc(struct cppi5_host_desc_t *desc)
+{
+	desc->hdr = (struct cppi5_desc_hdr_t) { 0 };
+	desc->next_desc = 0;
+}
+
+/**
+ * cppi5_hdesc_epib_present -  check if EPIB present
+ * @desc_hdr: packet descriptor/TR header
+ *
+ * Returns true if EPIB present in the packet
+ */
+static inline bool cppi5_hdesc_epib_present(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	return !!(desc_hdr->pkt_info0 & CPPI5_INFO0_HDESC_EPIB_PRESENT);
+}
+
+/**
+ * cppi5_hdesc_get_psdata -  Get pointer on PSDATA
+ * @desc: Host packet descriptor
+ *
+ * Returns pointer on PSDATA in HDesc.
+ * NULL - if ps_data placed at the start of data buffer.
+ */
+static inline void *cppi5_hdesc_get_psdata(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size;
+	void *psdata;
+
+	if (desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION)
+		return NULL;
+
+	psdata_size = (desc->hdr.pkt_info0 &
+		       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+		       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	if (!psdata_size)
+		return NULL;
+
+	psdata = &desc->epib;
+
+	if (cppi5_hdesc_epib_present(&desc->hdr))
+		psdata += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	return psdata;
+}
+
+static inline u32 *cppi5_hdesc_get_psdata32(struct cppi5_host_desc_t *desc)
+{
+	return (u32 *)cppi5_hdesc_get_psdata(desc);
+}
+
+/**
+ * cppi5_hdesc_get_swdata -  Get pointer on swdata
+ * @desc: Host packet descriptor
+ *
+ * Returns pointer on SWDATA in HDesc.
+ * NOTE. It's caller responsibility to be sure hdesc actually has swdata.
+ */
+static inline void *cppi5_hdesc_get_swdata(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size = 0;
+	void *swdata;
+
+	if (!(desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION))
+		psdata_size = (desc->hdr.pkt_info0 &
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	swdata = &desc->epib;
+
+	if (cppi5_hdesc_epib_present(&desc->hdr))
+		swdata += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	swdata += (psdata_size << 2);
+
+	return swdata;
+}
+
+/* ================================== TR ================================== */
+
+#define CPPI5_TR_TYPE_SHIFT			(0U)
+#define CPPI5_TR_TYPE_MASK			GENMASK(3, 0)
+#define CPPI5_TR_STATIC				BIT(4)
+#define CPPI5_TR_WAIT				BIT(5)
+#define CPPI5_TR_EVENT_SIZE_SHIFT		(6U)
+#define CPPI5_TR_EVENT_SIZE_MASK		GENMASK(7, 6)
+#define CPPI5_TR_TRIGGER0_SHIFT			(8U)
+#define CPPI5_TR_TRIGGER0_MASK			GENMASK(9, 8)
+#define CPPI5_TR_TRIGGER0_TYPE_SHIFT		(10U)
+#define CPPI5_TR_TRIGGER0_TYPE_MASK		GENMASK(11, 10)
+#define CPPI5_TR_TRIGGER1_SHIFT			(12U)
+#define CPPI5_TR_TRIGGER1_MASK			GENMASK(13, 12)
+#define CPPI5_TR_TRIGGER1_TYPE_SHIFT		(14U)
+#define CPPI5_TR_TRIGGER1_TYPE_MASK		GENMASK(15, 14)
+#define CPPI5_TR_CMD_ID_SHIFT			(16U)
+#define CPPI5_TR_CMD_ID_MASK			GENMASK(23, 16)
+#define CPPI5_TR_CSF_FLAGS_SHIFT		(24U)
+#define CPPI5_TR_CSF_FLAGS_MASK			GENMASK(31, 24)
+#define   CPPI5_TR_CSF_SA_INDIRECT		BIT(0)
+#define   CPPI5_TR_CSF_DA_INDIRECT		BIT(1)
+#define   CPPI5_TR_CSF_SUPR_EVT			BIT(2)
+#define   CPPI5_TR_CSF_EOL_ADV_SHIFT		(4U)
+#define   CPPI5_TR_CSF_EOL_ADV_MASK		GENMASK(6, 4)
+#define   CPPI5_TR_CSF_EOP			BIT(7)
+
+/**
+ * enum cppi5_tr_types - TR types
+ * @CPPI5_TR_TYPE0:	One dimensional data move
+ * @CPPI5_TR_TYPE1:	Two dimensional data move
+ * @CPPI5_TR_TYPE2:	Three dimensional data move
+ * @CPPI5_TR_TYPE3:	Four dimensional data move
+ * @CPPI5_TR_TYPE4:	Four dimensional data move with data formatting
+ * @CPPI5_TR_TYPE5:	Four dimensional Cache Warm
+ * @CPPI5_TR_TYPE8:	Four Dimensional Block Move
+ * @CPPI5_TR_TYPE9:	Four Dimensional Block Move with Repacking
+ * @CPPI5_TR_TYPE10:	Two Dimensional Block Move
+ * @CPPI5_TR_TYPE11:	Two Dimensional Block Move with Repacking
+ * @CPPI5_TR_TYPE15:	Four Dimensional Block Move with Repacking and
+ *			Indirection
+ */
+enum cppi5_tr_types {
+	CPPI5_TR_TYPE0 = 0,
+	CPPI5_TR_TYPE1,
+	CPPI5_TR_TYPE2,
+	CPPI5_TR_TYPE3,
+	CPPI5_TR_TYPE4,
+	CPPI5_TR_TYPE5,
+	/* type6-7: Reserved */
+	CPPI5_TR_TYPE8 = 8,
+	CPPI5_TR_TYPE9,
+	CPPI5_TR_TYPE10,
+	CPPI5_TR_TYPE11,
+	/* type12-14: Reserved */
+	CPPI5_TR_TYPE15 = 15,
+	CPPI5_TR_TYPE_MAX
+};
+
+/**
+ * enum cppi5_tr_event_size - TR Flags EVENT_SIZE field specifies when an event
+ *			      is generated for each TR.
+ * @CPPI5_TR_EVENT_SIZE_COMPLETION:	When TR is complete and all status for
+ * 					the TR has been received
+ * @CPPI5_TR_EVENT_SIZE_ICNT1_DEC:	Type 0: when the last data transaction
+ *					is sent for the TR
+ *					Type 1-11: when ICNT1 is decremented
+ * @CPPI5_TR_EVENT_SIZE_ICNT2_DEC:	Type 0-1,10-11: when the last data
+ *					transaction is sent for the TR
+ *					All other types: when ICNT2 is
+ *					decremented
+ * @CPPI5_TR_EVENT_SIZE_ICNT3_DEC:	Type 0-2,10-11: when the last data
+ *					transaction is sent for the TR
+ *					All other types: when ICNT3 is
+ *					decremented
+ */
+enum cppi5_tr_event_size {
+	CPPI5_TR_EVENT_SIZE_COMPLETION,
+	CPPI5_TR_EVENT_SIZE_ICNT1_DEC,
+	CPPI5_TR_EVENT_SIZE_ICNT2_DEC,
+	CPPI5_TR_EVENT_SIZE_ICNT3_DEC,
+	CPPI5_TR_EVENT_SIZE_MAX
+};
+
+/**
+ * enum cppi5_tr_trigger - TR Flags TRIGGERx field specifies the type of trigger
+ *			   used to enable the TR to transfer data as specified
+ *			   by TRIGGERx_TYPE field.
+ * @CPPI5_TR_TRIGGER_NONE:		No trigger
+ * @CPPI5_TR_TRIGGER_GLOBAL0:		Global trigger 0
+ * @CPPI5_TR_TRIGGER_GLOBAL1:		Global trigger 1
+ * @CPPI5_TR_TRIGGER_LOCAL_EVENT:	Local Event
+ */
+enum cppi5_tr_trigger {
+	CPPI5_TR_TRIGGER_NONE,
+	CPPI5_TR_TRIGGER_GLOBAL0,
+	CPPI5_TR_TRIGGER_GLOBAL1,
+	CPPI5_TR_TRIGGER_LOCAL_EVENT,
+	CPPI5_TR_TRIGGER_MAX
+};
+
+/**
+ * enum cppi5_tr_trigger_type - TR Flags TRIGGERx_TYPE field specifies the type
+ *				of data transfer that will be enabled by
+ *				receiving a trigger as specified by TRIGGERx.
+ * @CPPI5_TR_TRIGGER_TYPE_ICNT1_DEC:	The second inner most loop (ICNT1) will
+ *					be decremented by 1
+ * @CPPI5_TR_TRIGGER_TYPE_ICNT2_DEC:	The third inner most loop (ICNT2) will
+ *					be decremented by 1
+ * @CPPI5_TR_TRIGGER_TYPE_ICNT3_DEC:	The outer most loop (ICNT3) will be
+ *					decremented by 1
+ * @CPPI5_TR_TRIGGER_TYPE_ALL:		The entire TR will be allowed to
+ *					complete
+ */
+enum cppi5_tr_trigger_type {
+	CPPI5_TR_TRIGGER_TYPE_ICNT1_DEC,
+	CPPI5_TR_TRIGGER_TYPE_ICNT2_DEC,
+	CPPI5_TR_TRIGGER_TYPE_ICNT3_DEC,
+	CPPI5_TR_TRIGGER_TYPE_ALL,
+	CPPI5_TR_TRIGGER_TYPE_MAX
+};
+
+typedef u32 cppi5_tr_flags_t;
+
+/**
+ * struct cppi5_tr_type0_t - Type 0 (One dimensional data move) TR (16 byte)
+ * @flags:		TR flags (type, triggers, event, configuration)
+ * @icnt0:		Total loop iteration count for level 0 (innermost)
+ * @_reserved:		Not used
+ * @addr:		Starting address for the source data or destination data
+ */
+struct cppi5_tr_type0_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 _reserved;
+	u64 addr;
+} __aligned(16) __packed;
+
+/**
+ * struct cppi5_tr_type1_t - Type 1 (Two dimensional data move) TR (32 byte)
+ * @flags:		TR flags (type, triggers, event, configuration)
+ * @icnt0:		Total loop iteration count for level 0 (innermost)
+ * @icnt1:		Total loop iteration count for level 1
+ * @addr:		Starting address for the source data or destination data
+ * @dim1:		Signed dimension for loop level 1
+ */
+struct cppi5_tr_type1_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+} __aligned(32) __packed;
+
+/**
+ * struct cppi5_tr_type2_t - Type 2 (Three dimensional data move) TR (32 byte)
+ * @flags:		TR flags (type, triggers, event, configuration)
+ * @icnt0:		Total loop iteration count for level 0 (innermost)
+ * @icnt1:		Total loop iteration count for level 1
+ * @addr:		Starting address for the source data or destination data
+ * @dim1:		Signed dimension for loop level 1
+ * @icnt2:		Total loop iteration count for level 2
+ * @_reserved:		Not used
+ * @dim2:		Signed dimension for loop level 2
+ */
+struct cppi5_tr_type2_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 _reserved;
+	s32 dim2;
+} __aligned(32) __packed;
+
+/**
+ * struct cppi5_tr_type3_t - Type 3 (Four dimensional data move) TR (32 byte)
+ * @flags:		TR flags (type, triggers, event, configuration)
+ * @icnt0:		Total loop iteration count for level 0 (innermost)
+ * @icnt1:		Total loop iteration count for level 1
+ * @addr:		Starting address for the source data or destination data
+ * @dim1:		Signed dimension for loop level 1
+ * @icnt2:		Total loop iteration count for level 2
+ * @icnt3:		Total loop iteration count for level 3 (outermost)
+ * @dim2:		Signed dimension for loop level 2
+ * @dim3:		Signed dimension for loop level 3
+ */
+struct cppi5_tr_type3_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 icnt3;
+	s32 dim2;
+	s32 dim3;
+} __aligned(32) __packed;
+
+/**
+ * struct cppi5_tr_type15_t - Type 15 (Four Dimensional Block Copy with
+ *			      Repacking and Indirection Support) TR (64 byte)
+ * @flags:		TR flags (type, triggers, event, configuration)
+ * @icnt0:		Total loop iteration count for level 0 (innermost) for
+ *			source
+ * @icnt1:		Total loop iteration count for level 1 for source
+ * @addr:		Starting address for the source data
+ * @dim1:		Signed dimension for loop level 1 for source
+ * @icnt2:		Total loop iteration count for level 2 for source
+ * @icnt3:		Total loop iteration count for level 3 (outermost) for
+ *			source
+ * @dim2:		Signed dimension for loop level 2 for source
+ * @dim3:		Signed dimension for loop level 3 for source
+ * @_reserved:		Not used
+ * @ddim1:		Signed dimension for loop level 1 for destination
+ * @daddr:		Starting address for the destination data
+ * @ddim2:		Signed dimension for loop level 2 for destination
+ * @ddim3:		Signed dimension for loop level 3 for destination
+ * @dicnt0:		Total loop iteration count for level 0 (innermost) for
+ *			destination
+ * @dicnt1:		Total loop iteration count for level 1 for destination
+ * @dicnt2:		Total loop iteration count for level 2 for destination
+ * @sicnt3:		Total loop iteration count for level 3 (outermost) for
+ *			destination
+ */
+struct cppi5_tr_type15_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 icnt3;
+	s32 dim2;
+	s32 dim3;
+	u32 _reserved;
+	s32 ddim1;
+	u64 daddr;
+	s32 ddim2;
+	s32 ddim3;
+	u16 dicnt0;
+	u16 dicnt1;
+	u16 dicnt2;
+	u16 dicnt3;
+} __aligned(64) __packed;
+
+/**
+ * struct cppi5_tr_resp_t - TR response record
+ * @status:		Status type and info
+ * @_reserved:		Not used
+ * @cmd_id:		Command ID for the TR for TR identification
+ * @flags:		Configuration Specific Flags
+ */
+struct cppi5_tr_resp_t {
+	u8 status;
+	u8 _reserved;
+	u8 cmd_id;
+	u8 flags;
+} __packed;
+
+#define CPPI5_TR_RESPONSE_STATUS_TYPE_SHIFT	(0U)
+#define CPPI5_TR_RESPONSE_STATUS_TYPE_MASK	GENMASK(3, 0)
+#define CPPI5_TR_RESPONSE_STATUS_INFO_SHIFT	(4U)
+#define CPPI5_TR_RESPONSE_STATUS_INFO_MASK	GENMASK(7, 4)
+#define CPPI5_TR_RESPONSE_CMDID_SHIFT		(16U)
+#define CPPI5_TR_RESPONSE_CMDID_MASK		GENMASK(23, 16)
+#define CPPI5_TR_RESPONSE_CFG_SPECIFIC_SHIFT	(24U)
+#define CPPI5_TR_RESPONSE_CFG_SPECIFIC_MASK	GENMASK(31, 24)
+
+/**
+ * enum cppi5_tr_resp_status_type - TR Response Status Type field is used to
+ *				    determine what type of status is being
+ *				    returned.
+ * @CPPI5_TR_RESPONSE_STATUS_NONE:		No error, completion: completed
+ * @CPPI5_TR_RESPONSE_STATUS_TRANSFER_ERR:	Transfer Error, completion: none
+ *						or partially completed
+ * @CPPI5_TR_RESPONSE_STATUS_ABORTED_ERR:	Aborted Error, completion: none
+ *						or partially completed
+ * @CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ERR:	Submission Error, completion:
+ *						none
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ERR:	Unsupported Error, completion:
+ *						none
+ * @CPPI5_TR_RESPONSE_STATUS_TRANSFER_EXCEPTION: Transfer Exception, completion:
+ *						partially completed
+ * @CPPI5_TR_RESPONSE_STATUS__TEARDOWN_FLUSH:	Teardown Flush, completion: none
+ */
+enum cppi5_tr_resp_status_type {
+	CPPI5_TR_RESPONSE_STATUS_NONE,
+	CPPI5_TR_RESPONSE_STATUS_TRANSFER_ERR,
+	CPPI5_TR_RESPONSE_STATUS_ABORTED_ERR,
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ERR,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ERR,
+	CPPI5_TR_RESPONSE_STATUS_TRANSFER_EXCEPTION,
+	CPPI5_TR_RESPONSE_STATUS__TEARDOWN_FLUSH,
+	CPPI5_TR_RESPONSE_STATUS_MAX
+};
+
+/**
+ * enum cppi5_tr_resp_status_submission - TR Response Status field values which
+ *					  corresponds Submission Error
+ * @CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ICNT0:	ICNT0 was 0
+ * @CPPI5_TR_RESPONSE_STATUS_SUBMISSION_FIFO_FULL: Channel FIFO was full when TR
+ *						received
+ * @CPPI5_TR_RESPONSE_STATUS_SUBMISSION_OWN:	Channel is not owned by the
+ *						submitter
+ */
+enum cppi5_tr_resp_status_submission {
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ICNT0,
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_FIFO_FULL,
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_OWN,
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_MAX
+};
+
+/**
+ * enum cppi5_tr_resp_status_unsupported - TR Response Status field values which
+ *					   corresponds Unsupported Error
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_TR_TYPE:	TR Type not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_STATIC:	STATIC not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_EOL:		EOL not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_CFG_SPECIFIC:	CONFIGURATION SPECIFIC
+ *							not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE:		AMODE not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ELTYPE:	ELTYPE not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_DFMT:		DFMT not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_SECTR:		SECTR not supported
+ * @CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE_SPECIFIC: AMODE SPECIFIC field
+ *							not supported
+ */
+enum cppi5_tr_resp_status_unsupported {
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_TR_TYPE,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_STATIC,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_EOL,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_CFG_SPECIFIC,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ELTYPE,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_DFMT,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_SECTR,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE_SPECIFIC,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_MAX
+};
+
+/**
+ * cppi5_trdesc_calc_size - Calculate TR Descriptor size
+ * @tr_count: number of TR records
+ * @tr_size: Nominal size of TR record (max) [16, 32, 64, 128]
+ *
+ * Returns required TR Descriptor size
+ */
+static inline size_t cppi5_trdesc_calc_size(u32 tr_count, u32 tr_size)
+{
+	/*
+	 * The Size of a TR descriptor is:
+	 * 1 x tr_size : the first 16 bytes is used by the packet info block +
+	 * tr_count x tr_size : Transfer Request Records +
+	 * tr_count x sizeof(struct cppi5_tr_resp_t) : Transfer Response Records
+	 */
+	return tr_size * (tr_count + 1) +
+		sizeof(struct cppi5_tr_resp_t) * tr_count;
+}
+
+/**
+ * cppi5_trdesc_init - Init TR Descriptor
+ * @desc: TR Descriptor
+ * @tr_count: number of TR records
+ * @tr_size: Nominal size of TR record (max) [16, 32, 64, 128]
+ * @reload_idx: Absolute index to jump to on the 2nd and following passes
+ *		through the TR packet.
+ * @reload_count: Number of times to jump from last entry to reload_idx. 0x1ff
+ *		  indicates infinite looping.
+ *
+ * Init TR Descriptor
+ */
+static inline void cppi5_trdesc_init(struct cppi5_desc_hdr_t *desc_hdr,
+				     u32 tr_count, u32 tr_size, u32 reload_idx,
+				     u32 reload_count)
+{
+	desc_hdr->pkt_info0 = CPPI5_INFO0_DESC_TYPE_VAL_TR <<
+			      CPPI5_INFO0_HDESC_TYPE_SHIFT;
+	desc_hdr->pkt_info0 |= (reload_count << CPPI5_INFO0_TRDESC_RLDCNT_SHIFT) &
+			       CPPI5_INFO0_TRDESC_RLDCNT_MASK;
+	desc_hdr->pkt_info0 |= (reload_idx << CPPI5_INFO0_TRDESC_RLDIDX_SHIFT) &
+			       CPPI5_INFO0_TRDESC_RLDIDX_MASK;
+	desc_hdr->pkt_info0 |= (tr_count - 1) & CPPI5_INFO0_TRDESC_LASTIDX_MASK;
+
+	desc_hdr->pkt_info1 |= ((ffs(tr_size >> 4) - 1) <<
+				CPPI5_INFO1_TRDESC_RECSIZE_SHIFT) &
+				CPPI5_INFO1_TRDESC_RECSIZE_MASK;
+}
+
+/**
+ * cppi5_tr_init - Init TR record
+ * @flags: Pointer to the TR's flags
+ * @type: TR type
+ * @static_tr: TR is static
+ * @wait: Wait for TR completion before allow the next TR to start
+ * @event_size: output event generation cfg
+ * @cmd_id: TR identifier (application specifics)
+ *
+ * Init TR record
+ */
+static inline void cppi5_tr_init(cppi5_tr_flags_t *flags,
+				 enum cppi5_tr_types type, bool static_tr,
+				 bool wait, enum cppi5_tr_event_size event_size,
+				 u32 cmd_id)
+{
+	*flags = type;
+	*flags |= (event_size << CPPI5_TR_EVENT_SIZE_SHIFT) &
+		  CPPI5_TR_EVENT_SIZE_MASK;
+
+	*flags |= (cmd_id << CPPI5_TR_CMD_ID_SHIFT) &
+		  CPPI5_TR_CMD_ID_MASK;
+
+	if (static_tr && (type == CPPI5_TR_TYPE8 || type == CPPI5_TR_TYPE9))
+		*flags |= CPPI5_TR_STATIC;
+
+	if (wait)
+		*flags |= CPPI5_TR_WAIT;
+}
+
+/**
+ * cppi5_tr_set_trigger - Configure trigger0/1 and trigger0/1_type
+ * @flags: Pointer to the TR's flags
+ * @trigger0: trigger0 selection
+ * @trigger0_type: type of data transfer that will be enabled by trigger0
+ * @trigger1: trigger1 selection
+ * @trigger1_type: type of data transfer that will be enabled by trigger1
+ *
+ * Configure the triggers for the TR
+ */
+static inline void cppi5_tr_set_trigger(cppi5_tr_flags_t *flags,
+		enum cppi5_tr_trigger trigger0,
+		enum cppi5_tr_trigger_type trigger0_type,
+		enum cppi5_tr_trigger trigger1,
+		enum cppi5_tr_trigger_type trigger1_type)
+{
+	*flags &= ~(CPPI5_TR_TRIGGER0_MASK | CPPI5_TR_TRIGGER0_TYPE_MASK |
+		    CPPI5_TR_TRIGGER1_MASK | CPPI5_TR_TRIGGER1_TYPE_MASK);
+	*flags |= (trigger0 << CPPI5_TR_TRIGGER0_SHIFT) &
+		  CPPI5_TR_TRIGGER0_MASK;
+	*flags |= (trigger0_type << CPPI5_TR_TRIGGER0_TYPE_SHIFT) &
+		  CPPI5_TR_TRIGGER0_TYPE_MASK;
+
+	*flags |= (trigger1 << CPPI5_TR_TRIGGER1_SHIFT) &
+		  CPPI5_TR_TRIGGER1_MASK;
+	*flags |= (trigger1_type << CPPI5_TR_TRIGGER1_TYPE_SHIFT) &
+		  CPPI5_TR_TRIGGER1_TYPE_MASK;
+}
+
+/**
+ * cppi5_tr_cflag_set - Update the Configuration specific flags
+ * @flags: Pointer to the TR's flags
+ * @csf: Configuration specific flags
+ *
+ * Set a bit in Configuration Specific Flags section of the TR flags.
+ */
+static inline void cppi5_tr_csf_set(cppi5_tr_flags_t *flags, u32 csf)
+{
+	*flags &= ~CPPI5_TR_CSF_FLAGS_MASK;
+	*flags |= (csf << CPPI5_TR_CSF_FLAGS_SHIFT) &
+		  CPPI5_TR_CSF_FLAGS_MASK;
+}
+
+#endif /* __TI_CPPI5_H__ */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
