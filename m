Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BF330777
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfd3Dl2cjAdsjnosWk3ejO7xJkKwc+6SGP5d6g/Z0jQ=; b=KS8RNz3o9+tBce
	NID82iKszlHqvGtw4nzwOs093Hrf4e+2mFhlWzkdLHvEPgmVgUtTjlnwOO3z6GWk/nBLMdQpgTau8
	DYtwQ9pStUcT7R/8R4iK7tdQHk9HrYKhopV7wi8EhF7J4fjyAWpVBbTjg2IkaF9TA66q4EwL1i4Al
	XsC1s00jC929PSeCIH9lUzAsRlP9/mtyMZMCz5EiLQNv80Ctje0QPuLPGRReHH3OWioAopLUA2aT+
	78wAB8SA/LwH8pGV5cA11NQA3NlL6LMziCQP6X/ubz1pzQ9XvClekO+d5A9gQF7QkT4hgWpfyAVEv
	ZL1x74tr60+qybBveq5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYeW-0006Ho-Gp; Fri, 31 May 2019 03:56:24 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcN-0002oC-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id x24so7020597ion.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n9vDD3Jfc66TNCOaDCzcBm5exj2keDdJZBnw5RzUKQQ=;
 b=BR9ktqiycYFlSF34OpURC2Dc8hB357FeqpzW4RYV68ZQS3SGcwHzd3JRrs+vhYRY3I
 pm8WXGB1L4RnEh+l4UCP6vm5oC/kbSB+KBr7JTX8HA/QoryLYpFrYRNOiGTYsllgD95A
 46a8x5KCYY2KneCZW2Lc7EuHfYT4mudIdh6YLBFl4GyPc9UvPsCJuQ68XzLKRHUZmVGA
 knm+ljF9qiUvUbjyybjsUGmWzVC7+Y3E/wmo8YrEWMEB/ou2ZAZl7qHnDP5fWZWJRQdb
 gMHmNxH+9N2Uo7WwUMYyABOcSYlnNaRqr6tD+jo4JaDW85xLOpz5vURZxXtommdH9R2r
 dNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n9vDD3Jfc66TNCOaDCzcBm5exj2keDdJZBnw5RzUKQQ=;
 b=R2uFBIW5Gu0/jEJSrVFqOgifX32HpYHe6tgjMP/GOW8Mewu/o9I7xSHMXDofQaEnJa
 JNIwkeXow/f+SyEFek95jOAg7kbk2lgxLyOoaNMfSPSRdKKuWG49oE4sDhBv0GqLDuGY
 5jrIaZe8azt1o869DTDKiy6r7UQB/emf8cY0sBXIGecz+91aHLLRyLaP9JbxCtyXpjDl
 EQMMAbcOzpwez6/N2EIF9Qm13xa5a6hOhon0E33ynGAf5lpVyGGdufDwOcLGE4V83ybc
 hpZWZ+9ik9n9nK0ZTKxgSNyGvB+dIp8CIK9vX4EgYV587on5W2LTcUUoLx2xUaRvVxTG
 Mfiw==
X-Gm-Message-State: APjAAAUk+36yqlnz02vBmCB0zYAb2glXY9z8edEIzUwF06lxC9sMsaR7
 qiWEDsBbuljE3IBLp94P5AR1Pg==
X-Google-Smtp-Source: APXvYqwXTdW2ZfmvzR3xAkDbew9bxIw1ENi559vd+t6+3VzNVdO/UH4T9xuIpoC8IiDI1dNvbjr9UQ==
X-Received: by 2002:a05:6602:44:: with SMTP id
 z4mr4495779ioz.180.1559274850612; 
 Thu, 30 May 2019 20:54:10 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:10 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 11/17] soc: qcom: ipa: immediate commands
Date: Thu, 30 May 2019 22:53:42 -0500
Message-Id: <20190531035348.7194-12-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205411_973577_3FFB0496 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One TX endpoint (per EE) is used for issuing immediate commands to
the IPA.  These commands request activites beyond simple data
transfers to be done by the IPA hardware.  For example, the IPA is
able to manage routing packets among endpoints, and immediate commands
are used to configure tables used for that routing.

Immediate commands are built on top of GSI transactions.  They are
different from normal transfers (in that they use a special endpoint,
and their "payload" is interpreted differently), so separate functions
are used to issue immediate command transactions.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_cmd.c | 377 ++++++++++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_cmd.h | 116 ++++++++++++
 2 files changed, 493 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_cmd.c
 create mode 100644 drivers/net/ipa/ipa_cmd.h

diff --git a/drivers/net/ipa/ipa_cmd.c b/drivers/net/ipa/ipa_cmd.c
new file mode 100644
index 000000000000..32b11941436d
--- /dev/null
+++ b/drivers/net/ipa/ipa_cmd.c
@@ -0,0 +1,377 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+
+#include <linux/types.h>
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/bitfield.h>
+
+#include "gsi.h"
+#include "gsi_trans.h"
+#include "ipa.h"
+#include "ipa_endpoint.h"
+#include "ipa_cmd.h"
+#include "ipa_mem.h"
+
+/**
+ * DOC:  IPA Immediate Commands
+ *
+ * The AP command TX endpoint is used to issue immediate commands to the IPA.
+ * An immediate command is generally used to request the IPA do something
+ * other than data transfer to another endpoint.
+ *
+ * Immediate commands are represented by GSI transactions just like other
+ * transfer requests, represented by a single GSI TRE.  Each immediate
+ * command has a well-defined format, having a payload of a known length.
+ * This allows the transfer element's length field to be used to hold an
+ * immediate command's opcode.  The payload for a command resides in DRAM
+ * and is described by a single scatterlist entry in its transaction.
+ * Commands do not require a transaction completion callback.  To commit
+ * an immediate command transaction, either gsi_trans_commit_command() or
+ * gsi_trans_commit_command_timeout() is used.
+ */
+
+#define IPA_GSI_DMA_TASK_TIMEOUT	15	/* milliseconds */
+
+/**
+ * __ipa_cmd_timeout() - Send an immediate command with timeout
+ * @ipa:	IPA structure
+ * @opcode:	Immediate command opcode (must not be IPA_CMD_NONE)
+ * @payload:	Pointer to command payload
+ * @size:	Size of payload
+ * @timeout:	Milliseconds to wait for completion (0 waits indefinitely)
+ *
+ * This common function implements ipa_cmd() and ipa_cmd_timeout().  It
+ * allocates, initializes, and commits a transaction for the immediate
+ * command.  The transaction is committed using gsi_trans_commit_command(),
+ * or if a non-zero timeout is supplied, gsi_trans_commit_command_timeout().
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+static int __ipa_cmd_timeout(struct ipa *ipa, enum ipa_cmd_opcode opcode,
+			     void *payload, size_t size, u32 timeout)
+{
+	struct ipa_endpoint *endpoint = ipa->command_endpoint;
+	struct gsi_trans *trans;
+	int ret;
+
+	/* assert(opcode != IPA_CMD_NONE) */
+	trans = gsi_channel_trans_alloc(&ipa->gsi, endpoint->channel_id, 1);
+	if (!trans)
+		return -EBUSY;
+
+	sg_init_one(trans->sgl, payload, size);
+
+	if (timeout)
+		ret = gsi_trans_commit_command_timeout(trans, opcode, timeout);
+	else
+		ret = gsi_trans_commit_command(trans, opcode);
+	if (ret)
+		goto err_trans_free;
+
+	return 0;
+
+err_trans_free:
+	gsi_trans_free(trans);
+
+	return ret;
+}
+
+static int
+ipa_cmd(struct ipa *ipa, enum ipa_cmd_opcode opcode, void *payload, size_t size)
+{
+	return __ipa_cmd_timeout(ipa, opcode, payload, size, 0);
+}
+
+static int ipa_cmd_timeout(struct ipa *ipa, enum ipa_cmd_opcode opcode,
+			   void *payload, size_t size)
+{
+	return __ipa_cmd_timeout(ipa, opcode, payload, size,
+				 IPA_GSI_DMA_TASK_TIMEOUT);
+}
+
+/* Field masks for ipa_imm_cmd_hw_hdr_init_local structure fields */
+#define IPA_CMD_HDR_INIT_FLAGS_TABLE_SIZE_FMASK	GENMASK(11, 0)
+#define IPA_CMD_HDR_INIT_FLAGS_HDR_ADDR_FMASK	GENMASK(27, 12)
+#define IPA_CMD_HDR_INIT_FLAGS_RESERVED_FMASK	GENMASK(28, 31)
+
+struct ipa_imm_cmd_hw_hdr_init_local {
+	u64 hdr_table_addr;
+	u32 flags;
+	u32 reserved;
+};
+
+/* Initialize header space in IPA-local memory */
+int ipa_cmd_hdr_init_local(struct ipa *ipa, u32 offset, u32 size)
+{
+	struct ipa_imm_cmd_hw_hdr_init_local *payload;
+	struct device *dev = &ipa->pdev->dev;
+	dma_addr_t addr;
+	void *virt;
+	u32 flags;
+	u32 max;
+	int ret;
+
+	if (size > field_max(IPA_CMD_HDR_INIT_FLAGS_TABLE_SIZE_FMASK))
+		return -EINVAL;
+
+	max = field_max(IPA_CMD_HDR_INIT_FLAGS_HDR_ADDR_FMASK);
+	if (offset > max || ipa->shared_offset > max - offset)
+		return -EINVAL;
+	offset += ipa->shared_offset;
+
+	/* With this command we tell the IPA where in its local memory the
+	 * header tables reside.  We also supply a (host) buffer whose
+	 * content is copied via DMA into that table space.  We just want
+	 * to zero fill it, so a zeroed DMA buffer is all that's required
+	 * The IPA owns the table, but the AP must initialize it.
+	 */
+	virt = dma_alloc_coherent(dev, size, &addr, GFP_KERNEL);
+	if (!virt)
+		return -ENOMEM;
+
+	payload = kzalloc(sizeof(*payload), GFP_KERNEL);
+	if (!payload) {
+		ret = -ENOMEM;
+		goto out_dma_free;
+	}
+
+	payload->hdr_table_addr = addr;
+	flags = u32_encode_bits(size, IPA_CMD_HDR_INIT_FLAGS_TABLE_SIZE_FMASK);
+	flags |= u32_encode_bits(offset, IPA_CMD_HDR_INIT_FLAGS_HDR_ADDR_FMASK);
+	payload->flags = flags;
+
+	ret = ipa_cmd(ipa, IPA_CMD_HDR_INIT_LOCAL, payload, sizeof(*payload));
+
+	kfree(payload);
+out_dma_free:
+	dma_free_coherent(dev, size, virt, addr);
+
+	return ret;
+}
+
+enum ipahal_pipeline_clear_option {
+	IPAHAL_HPS_CLEAR		= 0,
+	IPAHAL_SRC_GRP_CLEAR		= 1,
+	IPAHAL_FULL_PIPELINE_CLEAR	= 2,
+};
+
+/* Field masks for ipa_imm_cmd_hw_dma_shared_mem structure fields */
+#define IPA_CMD_DMA_SHARED_FLAGS_DIRECTION_FMASK	GENMASK(0, 0)
+#define IPA_CMD_DMA_SHARED_FLAGS_SKIP_CLEAR_FMASK	GENMASK(1, 1)
+#define IPA_CMD_DMA_SHARED_FLAGS_CLEAR_OPTIONS_FMASK	GENMASK(3, 2)
+
+struct ipa_imm_cmd_hw_dma_shared_mem {
+	u16 sw_reserved;
+	u16 size;
+	u16 local_addr;
+	u16 flags;
+	u64 system_addr;
+};
+
+/* Use a DMA command to zero a block of memory */
+int ipa_cmd_smem_dma_zero(struct ipa *ipa, u32 offset, u32 size)
+{
+	struct ipa_imm_cmd_hw_dma_shared_mem *payload;
+	struct device *dev = &ipa->pdev->dev;
+	dma_addr_t addr;
+	void *virt;
+	u32 val;
+	int ret;
+
+	/* size must be non-zero, and must fit in a 16 bit field */
+	if (!size || size > U16_MAX)
+		return -EINVAL;
+
+	/* offset must fit in a 16 bit local_addr field */
+	if (offset > U16_MAX || ipa->shared_offset > U16_MAX - offset)
+		return -EINVAL;
+	offset += ipa->shared_offset;
+
+	/* A zero-filled buffer of the right size is all that's required */
+	virt = dma_alloc_coherent(dev, size, &addr, GFP_KERNEL);
+	if (!virt)
+		return -ENOMEM;
+
+	payload = kzalloc(sizeof(*payload), GFP_KERNEL);
+	if (!payload) {
+		ret = -ENOMEM;
+		goto out_dma_free;
+	}
+
+	payload->size = size;
+	payload->local_addr = offset;
+	/* direction: 0 = write to IPA; skip clear: 0 = don't wait */
+	val = u16_encode_bits(IPAHAL_HPS_CLEAR,
+			      IPA_CMD_DMA_SHARED_FLAGS_CLEAR_OPTIONS_FMASK);
+	payload->flags = val;
+	payload->system_addr = addr;
+
+	ret = ipa_cmd(ipa, IPA_CMD_DMA_SHARED_MEM, payload, sizeof(*payload));
+
+	kfree(payload);
+out_dma_free:
+	dma_free_coherent(dev, size, virt, addr);
+
+	return ret;
+}
+
+/* Field masks for ipa_imm_cmd_hw_ip_fltrt_init structure fields */
+#define IPA_CMD_IP_FLTRT_FLAGS_HASH_SIZE_FMASK	GENMASK_ULL(11, 0)
+#define IPA_CMD_IP_FLTRT_FLAGS_HASH_ADDR_FMASK	GENMASK_ULL(27, 12)
+#define IPA_CMD_IP_FLTRT_FLAGS_NHASH_SIZE_FMASK	GENMASK_ULL(39, 28)
+#define IPA_CMD_IP_FLTRT_FLAGS_NHASH_ADDR_FMASK	GENMASK_ULL(55, 40)
+
+struct ipa_imm_cmd_hw_ip_fltrt_init {
+	u64 hash_rules_addr;
+	u64 flags;
+	u64 nhash_rules_addr;
+};
+
+/* Configure a routing or filter table, for IPv4 or IPv6 */
+static int ipa_cmd_table_config(struct ipa *ipa, enum ipa_cmd_opcode opcode,
+				dma_addr_t addr, size_t size, u32 hash_offset,
+				u32 nhash_offset)
+{
+	struct ipa_imm_cmd_hw_ip_fltrt_init *payload;
+	u64 val;
+	u32 max;
+	int ret;
+
+	if (size > field_max(IPA_CMD_IP_FLTRT_FLAGS_HASH_SIZE_FMASK))
+		return -EINVAL;
+	if (size > field_max(IPA_CMD_IP_FLTRT_FLAGS_NHASH_SIZE_FMASK))
+		return -EINVAL;
+
+	max = field_max(IPA_CMD_IP_FLTRT_FLAGS_HASH_ADDR_FMASK);
+	if (hash_offset > max || ipa->shared_offset > max - hash_offset)
+		return -EINVAL;
+	hash_offset += ipa->shared_offset;
+
+	max = field_max(IPA_CMD_IP_FLTRT_FLAGS_NHASH_ADDR_FMASK);
+	if (nhash_offset > max || ipa->shared_offset > max - nhash_offset)
+		return -EINVAL;
+	nhash_offset += ipa->shared_offset;
+
+	payload = kzalloc(sizeof(*payload), GFP_KERNEL);
+	if (!payload)
+		return -ENOMEM;
+
+	payload->hash_rules_addr = addr;
+	val = u64_encode_bits(size, IPA_CMD_IP_FLTRT_FLAGS_HASH_SIZE_FMASK);
+	val |= u64_encode_bits(hash_offset,
+			       IPA_CMD_IP_FLTRT_FLAGS_HASH_ADDR_FMASK);
+	val |= u64_encode_bits(size, IPA_CMD_IP_FLTRT_FLAGS_NHASH_SIZE_FMASK);
+	val |= u64_encode_bits(nhash_offset,
+			       IPA_CMD_IP_FLTRT_FLAGS_NHASH_ADDR_FMASK);
+	payload->flags = val;
+	payload->nhash_rules_addr = addr;
+
+	ret = ipa_cmd(ipa, opcode, payload, sizeof(*payload));
+
+	kfree(payload);
+
+	return ret;
+}
+
+/* Configure IPv4 routing table */
+int ipa_cmd_route_config_ipv4(struct ipa *ipa, size_t size)
+{
+	enum ipa_cmd_opcode opcode = IPA_CMD_IP_V4_ROUTING_INIT;
+	u32 nhash_offset = IPA_SMEM_V4_RT_NHASH_OFFSET;
+	u32 hash_offset = IPA_SMEM_V4_RT_HASH_OFFSET;
+	dma_addr_t addr = ipa->route_addr;
+
+	return ipa_cmd_table_config(ipa, opcode, addr, size, hash_offset,
+				    nhash_offset);
+}
+
+/* Configure IPv6 routing table */
+int ipa_cmd_route_config_ipv6(struct ipa *ipa, size_t size)
+{
+	enum ipa_cmd_opcode opcode = IPA_CMD_IP_V6_ROUTING_INIT;
+	u32 nhash_offset = IPA_SMEM_V6_RT_NHASH_OFFSET;
+	u32 hash_offset = IPA_SMEM_V6_RT_HASH_OFFSET;
+	dma_addr_t addr = ipa->route_addr;
+
+	return ipa_cmd_table_config(ipa, opcode, addr, size, hash_offset,
+				    nhash_offset);
+}
+
+/* Configure IPv4 filter table */
+int ipa_cmd_filter_config_ipv4(struct ipa *ipa, size_t size)
+{
+	enum ipa_cmd_opcode opcode = IPA_CMD_IP_V4_FILTER_INIT;
+	u32 nhash_offset = IPA_SMEM_V4_FLT_NHASH_OFFSET;
+	u32 hash_offset = IPA_SMEM_V4_FLT_HASH_OFFSET;
+	dma_addr_t addr = ipa->filter_addr;
+
+	return ipa_cmd_table_config(ipa, opcode, addr, size, hash_offset,
+				    nhash_offset);
+}
+
+/* Configure IPv6 filter table */
+int ipa_cmd_filter_config_ipv6(struct ipa *ipa, size_t size)
+{
+	enum ipa_cmd_opcode opcode = IPA_CMD_IP_V6_FILTER_INIT;
+	u32 nhash_offset = IPA_SMEM_V6_FLT_NHASH_OFFSET;
+	u32 hash_offset = IPA_SMEM_V6_FLT_HASH_OFFSET;
+	dma_addr_t addr = ipa->filter_addr;
+
+	return ipa_cmd_table_config(ipa, opcode, addr, size, hash_offset,
+				    nhash_offset);
+}
+
+/* Field masks for ipa_imm_cmd_hw_dma_task_32b_addr structure fields */
+#define IPA_CMD_DMA32_TASK_SW_RSVD_FMASK	GENMASK(10, 0)
+#define IPA_CMD_DMA32_TASK_CMPLT_FMASK		GENMASK(11, 11)
+#define IPA_CMD_DMA32_TASK_EOF_FMASK		GENMASK(12, 12)
+#define IPA_CMD_DMA32_TASK_FLSH_FMASK		GENMASK(13, 13)
+#define IPA_CMD_DMA32_TASK_LOCK_FMASK		GENMASK(14, 14)
+#define IPA_CMD_DMA32_TASK_UNLOCK_FMASK		GENMASK(15, 15)
+#define IPA_CMD_DMA32_SIZE1_FMASK		GENMASK(31, 16)
+#define IPA_CMD_DMA32_PACKET_SIZE_FMASK		GENMASK(15, 0)
+
+struct ipa_imm_cmd_hw_dma_task_32b_addr {
+	u32 size1_flags;
+	u32 addr1;
+	u32 packet_size;
+	u32 reserved;
+};
+
+/* Use a 32-bit DMA command to zero a block of memory */
+int ipa_cmd_dma_task_32(struct ipa *ipa, size_t size, dma_addr_t addr)
+{
+	struct ipa_imm_cmd_hw_dma_task_32b_addr *payload;
+	u32 size1_flags;
+	int ret;
+
+	if (size > field_max(IPA_CMD_DMA32_SIZE1_FMASK))
+		return -EINVAL;
+	if (size > field_max(IPA_CMD_DMA32_PACKET_SIZE_FMASK))
+		return -EINVAL;
+
+	payload = kzalloc(sizeof(*payload), GFP_KERNEL);
+	if (!payload)
+		return -ENOMEM;
+
+	/* complete: 0 = don't interrupt; eof: 0 = don't assert eot */
+	size1_flags = IPA_CMD_DMA32_TASK_FLSH_FMASK;
+	/* lock: 0 = don't lock endpoint; unlock: 0 = don't unlock */
+	size1_flags |= u32_encode_bits(size, IPA_CMD_DMA32_SIZE1_FMASK);
+
+	payload->size1_flags = size1_flags;
+	payload->addr1 = addr;
+	payload->packet_size =
+			u32_encode_bits(size, IPA_CMD_DMA32_PACKET_SIZE_FMASK);
+
+	ret = ipa_cmd_timeout(ipa, IPA_CMD_DMA_TASK_32B_ADDR, payload,
+			      sizeof(payload));
+
+	kfree(payload);
+
+	return ret;
+}
diff --git a/drivers/net/ipa/ipa_cmd.h b/drivers/net/ipa/ipa_cmd.h
new file mode 100644
index 000000000000..f69d2eaddd53
--- /dev/null
+++ b/drivers/net/ipa/ipa_cmd.h
@@ -0,0 +1,116 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+#ifndef _IPA_CMD_H_
+#define _IPA_CMD_H_
+
+#include <linux/types.h>
+
+struct sk_buff;
+
+struct ipa;
+
+/**
+ * enum ipa_cmd_opcode:	IPA immediate commands
+ *
+ * All immediate commands are issued using the AP command TX endpoint.
+ * The numeric values here are the opcodes for IPA v3.5.1 hardware.
+ *
+ * IPA_CMD_NONE is a special (invalid) value that's used to indicate
+ * a request is *not* an immediate command.
+ */
+enum ipa_cmd_opcode {
+	IPA_CMD_NONE			= 0,
+	IPA_CMD_IP_V4_FILTER_INIT	= 3,
+	IPA_CMD_IP_V6_FILTER_INIT	= 4,
+	IPA_CMD_IP_V4_ROUTING_INIT	= 7,
+	IPA_CMD_IP_V6_ROUTING_INIT	= 8,
+	IPA_CMD_HDR_INIT_LOCAL		= 9,
+	IPA_CMD_DMA_TASK_32B_ADDR	= 17,
+	IPA_CMD_DMA_SHARED_MEM		= 19,
+};
+
+/**
+ * ipa_cmd_hdr_init_local() - Initialize header space in IPA-local memory
+ * @ipa:	IPA structure
+ * @offset:	Offset of memory to be initialized
+ * @size:	Size of memory to be initialized
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Defines the location of a block of local memory to use for
+ * headers and fills it with zeroes.
+ */
+int ipa_cmd_hdr_init_local(struct ipa *ipa, u32 offset, u32 size);
+
+/**
+ * ipa_cmd_smem_dma_zero() - Use a DMA command to zero a block of memory
+ * @ipa:	IPA structure
+ * @offset:	Offset of memory to be zeroed
+ * @size:	Size in bytes of memory to be zeroed
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+int ipa_cmd_smem_dma_zero(struct ipa *ipa, u32 offset, u32 size);
+
+/**
+ * ipa_cmd_route_config_ipv4() - Configure IPv4 routing table
+ * @ipa:	IPA structure
+ * @size:	Size in bytes of table
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Defines the location and size of the IPv4 routing table and
+ * zeroes its content.
+ */
+int ipa_cmd_route_config_ipv4(struct ipa *ipa, size_t size);
+
+/**
+ * ipa_cmd_route_config_ipv6() - Configure IPv6 routing table
+ * @ipa:	IPA structure
+ * @size:	Size in bytes of table
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Defines the location and size of the IPv6 routing table and
+ * zeroes its content.
+ */
+int ipa_cmd_route_config_ipv6(struct ipa *ipa, size_t size);
+
+/**
+ * ipa_cmd_filter_config_ipv4() - Configure IPv4 filter table
+ * @ipa:	IPA structure
+ * @size:	Size in bytes of table
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Defines the location and size of the IPv4 filter table and
+ * zeroes its content.
+ */
+int ipa_cmd_filter_config_ipv4(struct ipa *ipa, size_t size);
+
+/**
+ * ipa_cmd_filter_config_ipv6() - Configure IPv6 filter table
+ * @ipa:	IPA structure
+ * @size:	Size in bytes of table
+ *
+ * @Return:	0 if successful, or a negative error code
+ *
+ * Defines the location and size of the IPv6 filter table and
+ * zeroes its content.
+ */
+int ipa_cmd_filter_config_ipv6(struct ipa *ipa, size_t size);
+
+/**
+ * ipa_cmd_dma_task_32() - Use a 32-bit DMA command to zero a block of memory
+ * @ipa:	IPA structure
+ * @size:	Size of memory to be zeroed
+ * @addr:	DMA address defining start of range to be zeroed
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+int ipa_cmd_dma_task_32(struct ipa *ipa, size_t size, dma_addr_t addr);
+
+#endif /* _IPA_CMD_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
