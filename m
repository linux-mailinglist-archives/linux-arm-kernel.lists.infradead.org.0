Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFD1174277
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBVPi+Gn5Xbe9LQiXDyJp1VhtgCcmMlRidIjKl5yLfI=; b=C6Lml53KVcL/++
	kX8KTSK9YHT3D6VxD3KXK2awrpopLTv8pf7PFyXTo1n4C8sHz/0V3NaOXJ+VdyL9rqGQD+W4tgE6s
	dztrzdkaaapfscYGdjqMqr1BYu8h6rjpTS8cWuXSqoxM6JRe7Bj7prwf2iO10LjW9j0eWHENdOSLg
	nCF5LBR5Pb80y/Rav0psKcsnTBPJCC3QSM5GsgHd7QNafofqRWshF3B394ZVpV9QlnyiNDcvTO8Uk
	InxYt+KvX/0P+V2M8IA8APBQ10aUg+BxJ0++THtKRqQYvizKgOkptrPjekmCPWr5lcaDi2LAdGCvR
	0of2yZxsFj5CCwcrqaqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oPL-0008OC-VL; Fri, 28 Feb 2020 22:46:59 +0000
Received: from mail-yw1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oL3-0003sr-Kz
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:52 +0000
Received: by mail-yw1-xc33.google.com with SMTP id y72so4964765ywg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/vLFgITHO46tQ4Pw4XuNCTfPDwjorL+Dk9e9duKCHA0=;
 b=sjTeUbP9rz4S4vk6Xv4/qrmO3vvGJZ0C6GNSb4FMn83dzTtIGXWL+DZxVGFSjTaVjz
 zRKbB9nMjTp0H/fi9S3EZXtPwUDiNIEsTxREQpLUrNyCGiaZu0zN0GZjLYbd533mLAm1
 0MCd014kvUf73v8O1ERSCT3/Z26/tIPkcaOj0L1uBub9x02wssn2N7KxlsQiJ+zQ0jry
 tVpuaudzkVN2YB2XO73fJZsrEzX+pMghLz/kJX6VE5p+rKR5g2XqXzP0gDhqfDyn0ifK
 B2MlkoT9zwzsj2IPoCKrjn9uZhIoTzd+b3dyuF0+VlhX25PMWX0fFgTbk2EV92tpXzN1
 qwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/vLFgITHO46tQ4Pw4XuNCTfPDwjorL+Dk9e9duKCHA0=;
 b=bI2bqYCU0mcoOdGwL90oR24gvPQ9tPQSripHZfMdwNRjRRsX75NLlnpNesSWOGEb3Z
 61dnD3cJShdzdNnHXQOp4mAxweHuthgoNhlD5WIGAD1nEJqLxeXiH/4XTcJjDlsRMfAp
 qAk2xbO1KskNjkYsI0K3GiYmL6Kvw024ZxLVr0op0Eotc/mEFKEpaxmIhcgKNMR2ObGi
 qkXUX6F2GGGB0MU4nkqGmOr6AkIzV5pza84ddxuqP4+wYd3ld4vSsrvlL7xZlwuhN1Yu
 KwmZEYRR41yR+dTHwlNRCWiFNaml8bazQimjlGARs+4OHwV1t598Tf001C25054ybYfm
 juxA==
X-Gm-Message-State: APjAAAUcfKGcUMlYjNGZ5PYORmsaQgKE85R9POkZghrl5qMVmPDNkH1K
 WvvX9BeMblbhMRlK6RVeL2IQqg==
X-Google-Smtp-Source: APXvYqy5lc/5/HJUEEM/eaTT6Zl5gyZ2GD67R2KtFeK3qa3T7ev0VtSImVNBvuRXmKhLt5dJS9qVVQ==
X-Received: by 2002:a25:4e08:: with SMTP id c8mr5733226ybb.329.1582929751255; 
 Fri, 28 Feb 2020 14:42:31 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:30 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 10/17] soc: qcom: ipa: IPA endpoints
Date: Fri, 28 Feb 2020 16:41:57 -0600
Message-Id: <20200228224204.17746-11-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144233_854654_E3E93BF6 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch includes the code implementing an IPA endpoint.  This is
the primary abstraction implemented by the IPA.  An endpoint is one
end of a network connection between two entities physically
connected to the IPA.  Specifically, the AP and the modem implement
endpoints, and an (AP endpoint, modem endpoint) pair implements the
transfer of network data in one direction between the AP and modem.

Endpoints are built on top of GSI channels, but IPA endpoints
represent the higher-level functionality that the IPA provides.
Data can be sent through a GSI channel, but it is the IPA endpoint
that represents what is on the "other end" to receive that data.
Other functionality, including aggregation, checksum offload and
(at some future date) IP routing and filtering are all associated
with the IPA endpoint.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_endpoint.c | 1706 ++++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_endpoint.h |  110 ++
 2 files changed, 1816 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_endpoint.c
 create mode 100644 drivers/net/ipa/ipa_endpoint.h

diff --git a/drivers/net/ipa/ipa_endpoint.c b/drivers/net/ipa/ipa_endpoint.c
new file mode 100644
index 000000000000..1ec5b48da6c8
--- /dev/null
+++ b/drivers/net/ipa/ipa_endpoint.c
@@ -0,0 +1,1706 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+
+#include <linux/types.h>
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/bitfield.h>
+#include <linux/if_rmnet.h>
+#include <linux/version.h>
+#include <linux/dma-direction.h>
+
+#include "gsi.h"
+#include "gsi_trans.h"
+#include "ipa.h"
+#include "ipa_data.h"
+#include "ipa_endpoint.h"
+#include "ipa_cmd.h"
+#include "ipa_mem.h"
+#include "ipa_modem.h"
+#include "ipa_table.h"
+#include "ipa_gsi.h"
+
+#define atomic_dec_not_zero(v)	atomic_add_unless((v), -1, 0)
+
+#define IPA_REPLENISH_BATCH	16
+
+#define IPA_RX_BUFFER_SIZE	(PAGE_SIZE << IPA_RX_BUFFER_ORDER)
+#define IPA_RX_BUFFER_ORDER	1	/* 8KB endpoint RX buffers (2 pages) */
+
+/* The amount of RX buffer space consumed by standard skb overhead */
+#define IPA_RX_BUFFER_OVERHEAD	(PAGE_SIZE - SKB_MAX_ORDER(NET_SKB_PAD, 0))
+
+#define IPA_ENDPOINT_STOP_RETRY_MAX		10
+#define IPA_ENDPOINT_STOP_RX_SIZE		1	/* bytes */
+
+#define IPA_ENDPOINT_RESET_AGGR_RETRY_MAX	3
+#define IPA_AGGR_TIME_LIMIT_DEFAULT		1000	/* microseconds */
+
+#define ENDPOINT_STOP_DMA_TIMEOUT		15	/* milliseconds */
+
+/** enum ipa_status_opcode - status element opcode hardware values */
+enum ipa_status_opcode {
+	IPA_STATUS_OPCODE_PACKET		= 0x01,
+	IPA_STATUS_OPCODE_NEW_FRAG_RULE		= 0x02,
+	IPA_STATUS_OPCODE_DROPPED_PACKET	= 0x04,
+	IPA_STATUS_OPCODE_SUSPENDED_PACKET	= 0x08,
+	IPA_STATUS_OPCODE_LOG			= 0x10,
+	IPA_STATUS_OPCODE_DCMP			= 0x20,
+	IPA_STATUS_OPCODE_PACKET_2ND_PASS	= 0x40,
+};
+
+/** enum ipa_status_exception - status element exception type */
+enum ipa_status_exception {
+	/* 0 means no exception */
+	IPA_STATUS_EXCEPTION_DEAGGR		= 0x01,
+	IPA_STATUS_EXCEPTION_IPTYPE		= 0x04,
+	IPA_STATUS_EXCEPTION_PACKET_LENGTH	= 0x08,
+	IPA_STATUS_EXCEPTION_FRAG_RULE_MISS	= 0x10,
+	IPA_STATUS_EXCEPTION_SW_FILT		= 0x20,
+	/* The meaning of the next value depends on whether the IP version */
+	IPA_STATUS_EXCEPTION_NAT		= 0x40,		/* IPv4 */
+	IPA_STATUS_EXCEPTION_IPV6CT		= IPA_STATUS_EXCEPTION_NAT,
+};
+
+/* Status element provided by hardware */
+struct ipa_status {
+	u8 opcode;		/* enum ipa_status_opcode */
+	u8 exception;		/* enum ipa_status_exception */
+	__le16 mask;
+	__le16 pkt_len;
+	u8 endp_src_idx;
+	u8 endp_dst_idx;
+	__le32 metadata;
+	__le32 flags1;
+	__le64 flags2;
+	__le32 flags3;
+	__le32 flags4;
+};
+
+/* Field masks for struct ipa_status structure fields */
+
+#define IPA_STATUS_SRC_IDX_FMASK		GENMASK(4, 0)
+
+#define IPA_STATUS_DST_IDX_FMASK		GENMASK(4, 0)
+
+#define IPA_STATUS_FLAGS1_FLT_LOCAL_FMASK	GENMASK(0, 0)
+#define IPA_STATUS_FLAGS1_FLT_HASH_FMASK	GENMASK(1, 1)
+#define IPA_STATUS_FLAGS1_FLT_GLOBAL_FMASK	GENMASK(2, 2)
+#define IPA_STATUS_FLAGS1_FLT_RET_HDR_FMASK	GENMASK(3, 3)
+#define IPA_STATUS_FLAGS1_FLT_RULE_ID_FMASK	GENMASK(13, 4)
+#define IPA_STATUS_FLAGS1_RT_LOCAL_FMASK	GENMASK(14, 14)
+#define IPA_STATUS_FLAGS1_RT_HASH_FMASK		GENMASK(15, 15)
+#define IPA_STATUS_FLAGS1_UCP_FMASK		GENMASK(16, 16)
+#define IPA_STATUS_FLAGS1_RT_TBL_IDX_FMASK	GENMASK(21, 17)
+#define IPA_STATUS_FLAGS1_RT_RULE_ID_FMASK	GENMASK(31, 22)
+
+#define IPA_STATUS_FLAGS2_NAT_HIT_FMASK		GENMASK_ULL(0, 0)
+#define IPA_STATUS_FLAGS2_NAT_ENTRY_IDX_FMASK	GENMASK_ULL(13, 1)
+#define IPA_STATUS_FLAGS2_NAT_TYPE_FMASK	GENMASK_ULL(15, 14)
+#define IPA_STATUS_FLAGS2_TAG_INFO_FMASK	GENMASK_ULL(63, 16)
+
+#define IPA_STATUS_FLAGS3_SEQ_NUM_FMASK		GENMASK(7, 0)
+#define IPA_STATUS_FLAGS3_TOD_CTR_FMASK		GENMASK(31, 8)
+
+#define IPA_STATUS_FLAGS4_HDR_LOCAL_FMASK	GENMASK(0, 0)
+#define IPA_STATUS_FLAGS4_HDR_OFFSET_FMASK	GENMASK(10, 1)
+#define IPA_STATUS_FLAGS4_FRAG_HIT_FMASK	GENMASK(11, 11)
+#define IPA_STATUS_FLAGS4_FRAG_RULE_FMASK	GENMASK(15, 12)
+#define IPA_STATUS_FLAGS4_HW_SPECIFIC_FMASK	GENMASK(31, 16)
+
+#ifdef IPA_VALIDATE
+
+static void ipa_endpoint_validate_build(void)
+{
+	/* The aggregation byte limit defines the point at which an
+	 * aggregation window will close.  It is programmed into the
+	 * IPA hardware as a number of KB.  We don't use "hard byte
+	 * limit" aggregation, which means that we need to supply
+	 * enough space in a receive buffer to hold a complete MTU
+	 * plus normal skb overhead *after* that aggregation byte
+	 * limit has been crossed.
+	 *
+	 * This check just ensures we don't define a receive buffer
+	 * size that would exceed what we can represent in the field
+	 * that is used to program its size.
+	 */
+	BUILD_BUG_ON(IPA_RX_BUFFER_SIZE >
+		     field_max(AGGR_BYTE_LIMIT_FMASK) * SZ_1K +
+		     IPA_MTU + IPA_RX_BUFFER_OVERHEAD);
+
+	/* I honestly don't know where this requirement comes from.  But
+	 * it holds, and if we someday need to loosen the constraint we
+	 * can try to track it down.
+	 */
+	BUILD_BUG_ON(sizeof(struct ipa_status) % 4);
+}
+
+static bool ipa_endpoint_data_valid_one(struct ipa *ipa, u32 count,
+			    const struct ipa_gsi_endpoint_data *all_data,
+			    const struct ipa_gsi_endpoint_data *data)
+{
+	const struct ipa_gsi_endpoint_data *other_data;
+	struct device *dev = &ipa->pdev->dev;
+	enum ipa_endpoint_name other_name;
+
+	if (ipa_gsi_endpoint_data_empty(data))
+		return true;
+
+	if (!data->toward_ipa) {
+		if (data->endpoint.filter_support) {
+			dev_err(dev, "filtering not supported for "
+					"RX endpoint %u\n",
+				data->endpoint_id);
+			return false;
+		}
+
+		return true;	/* Nothing more to check for RX */
+	}
+
+	if (data->endpoint.config.status_enable) {
+		other_name = data->endpoint.config.tx.status_endpoint;
+		if (other_name >= count) {
+			dev_err(dev, "status endpoint name %u out of range "
+					"for endpoint %u\n",
+				other_name, data->endpoint_id);
+			return false;
+		}
+
+		/* Status endpoint must be defined... */
+		other_data = &all_data[other_name];
+		if (ipa_gsi_endpoint_data_empty(other_data)) {
+			dev_err(dev, "DMA endpoint name %u undefined "
+					"for endpoint %u\n",
+				other_name, data->endpoint_id);
+			return false;
+		}
+
+		/* ...and has to be an RX endpoint... */
+		if (other_data->toward_ipa) {
+			dev_err(dev,
+				"status endpoint for endpoint %u not RX\n",
+				data->endpoint_id);
+			return false;
+		}
+
+		/* ...and if it's to be an AP endpoint... */
+		if (other_data->ee_id == GSI_EE_AP) {
+			/* ...make sure it has status enabled. */
+			if (!other_data->endpoint.config.status_enable) {
+				dev_err(dev,
+					"status not enabled for endpoint %u\n",
+					other_data->endpoint_id);
+				return false;
+			}
+		}
+	}
+
+	if (data->endpoint.config.dma_mode) {
+		other_name = data->endpoint.config.dma_endpoint;
+		if (other_name >= count) {
+			dev_err(dev, "DMA endpoint name %u out of range "
+					"for endpoint %u\n",
+				other_name, data->endpoint_id);
+			return false;
+		}
+
+		other_data = &all_data[other_name];
+		if (ipa_gsi_endpoint_data_empty(other_data)) {
+			dev_err(dev, "DMA endpoint name %u undefined "
+					"for endpoint %u\n",
+				other_name, data->endpoint_id);
+			return false;
+		}
+	}
+
+	return true;
+}
+
+static bool ipa_endpoint_data_valid(struct ipa *ipa, u32 count,
+				    const struct ipa_gsi_endpoint_data *data)
+{
+	const struct ipa_gsi_endpoint_data *dp = data;
+	struct device *dev = &ipa->pdev->dev;
+	enum ipa_endpoint_name name;
+
+	ipa_endpoint_validate_build();
+
+	if (count > IPA_ENDPOINT_COUNT) {
+		dev_err(dev, "too many endpoints specified (%u > %u)\n",
+			count, IPA_ENDPOINT_COUNT);
+		return false;
+	}
+
+	/* Make sure needed endpoints have defined data */
+	if (ipa_gsi_endpoint_data_empty(&data[IPA_ENDPOINT_AP_COMMAND_TX])) {
+		dev_err(dev, "command TX endpoint not defined\n");
+		return false;
+	}
+	if (ipa_gsi_endpoint_data_empty(&data[IPA_ENDPOINT_AP_LAN_RX])) {
+		dev_err(dev, "LAN RX endpoint not defined\n");
+		return false;
+	}
+	if (ipa_gsi_endpoint_data_empty(&data[IPA_ENDPOINT_AP_MODEM_TX])) {
+		dev_err(dev, "AP->modem TX endpoint not defined\n");
+		return false;
+	}
+	if (ipa_gsi_endpoint_data_empty(&data[IPA_ENDPOINT_AP_MODEM_RX])) {
+		dev_err(dev, "AP<-modem RX endpoint not defined\n");
+		return false;
+	}
+
+	for (name = 0; name < count; name++, dp++)
+		if (!ipa_endpoint_data_valid_one(ipa, count, data, dp))
+			return false;
+
+	return true;
+}
+
+#else /* !IPA_VALIDATE */
+
+static bool ipa_endpoint_data_valid(struct ipa *ipa, u32 count,
+				    const struct ipa_gsi_endpoint_data *data)
+{
+	return true;
+}
+
+#endif /* !IPA_VALIDATE */
+
+/* Allocate a transaction to use on a non-command endpoint */
+static struct gsi_trans *ipa_endpoint_trans_alloc(struct ipa_endpoint *endpoint,
+						  u32 tre_count)
+{
+	struct gsi *gsi = &endpoint->ipa->gsi;
+	u32 channel_id = endpoint->channel_id;
+	enum dma_data_direction direction;
+
+	direction = endpoint->toward_ipa ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
+
+	return gsi_channel_trans_alloc(gsi, channel_id, tre_count, direction);
+}
+
+/* suspend_delay represents suspend for RX, delay for TX endpoints.
+ * Note that suspend is not supported starting with IPA v4.0.
+ */
+static int
+ipa_endpoint_init_ctrl(struct ipa_endpoint *endpoint, bool suspend_delay)
+{
+	u32 offset = IPA_REG_ENDP_INIT_CTRL_N_OFFSET(endpoint->endpoint_id);
+	struct ipa *ipa = endpoint->ipa;
+	u32 mask;
+	u32 val;
+
+	/* assert(ipa->version == IPA_VERSION_3_5_1 */
+	mask = endpoint->toward_ipa ? ENDP_DELAY_FMASK : ENDP_SUSPEND_FMASK;
+
+	val = ioread32(ipa->reg_virt + offset);
+	if (suspend_delay == !!(val & mask))
+		return -EALREADY;	/* Already set to desired state */
+
+	val ^= mask;
+	iowrite32(val, ipa->reg_virt + offset);
+
+	return 0;
+}
+
+/* Enable or disable delay or suspend mode on all modem endpoints */
+void ipa_endpoint_modem_pause_all(struct ipa *ipa, bool enable)
+{
+	bool support_suspend;
+	u32 endpoint_id;
+
+	/* DELAY mode doesn't work right on IPA v4.2 */
+	if (ipa->version == IPA_VERSION_4_2)
+		return;
+
+	/* Only IPA v3.5.1 supports SUSPEND mode on RX endpoints */
+	support_suspend = ipa->version == IPA_VERSION_3_5_1;
+
+	for (endpoint_id = 0; endpoint_id < IPA_ENDPOINT_MAX; endpoint_id++) {
+		struct ipa_endpoint *endpoint = &ipa->endpoint[endpoint_id];
+
+		if (endpoint->ee_id != GSI_EE_MODEM)
+			continue;
+
+		/* Set TX delay mode, or for IPA v3.5.1 RX suspend mode */
+		if (endpoint->toward_ipa || support_suspend)
+			(void)ipa_endpoint_init_ctrl(endpoint, enable);
+	}
+}
+
+/* Reset all modem endpoints to use the default exception endpoint */
+int ipa_endpoint_modem_exception_reset_all(struct ipa *ipa)
+{
+	u32 initialized = ipa->initialized;
+	struct gsi_trans *trans;
+	u32 count;
+
+	/* We need one command per modem TX endpoint.  We can get an upper
+	 * bound on that by assuming all initialized endpoints are modem->IPA.
+	 * That won't happen, and we could be more precise, but this is fine
+	 * for now.  We need to end the transactio with a "tag process."
+	 */
+	count = hweight32(initialized) + ipa_cmd_tag_process_count();
+	trans = ipa_cmd_trans_alloc(ipa, count);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev,
+			"no transaction to reset modem exception endpoints\n");
+		return -EBUSY;
+	}
+
+	while (initialized) {
+		u32 endpoint_id = __ffs(initialized);
+		struct ipa_endpoint *endpoint;
+		u32 offset;
+
+		initialized ^= BIT(endpoint_id);
+
+		/* We only reset modem TX endpoints */
+		endpoint = &ipa->endpoint[endpoint_id];
+		if (!(endpoint->ee_id == GSI_EE_MODEM && endpoint->toward_ipa))
+			continue;
+
+		offset = IPA_REG_ENDP_STATUS_N_OFFSET(endpoint_id);
+
+		/* Value written is 0, and all bits are updated.  That
+		 * means status is disabled on the endpoint, and as a
+		 * result all other fields in the register are ignored.
+		 */
+		ipa_cmd_register_write_add(trans, offset, 0, ~0, false);
+	}
+
+	ipa_cmd_tag_process_add(trans);
+
+	/* XXX This should have a 1 second timeout */
+	gsi_trans_commit_wait(trans);
+
+	return 0;
+}
+
+static void ipa_endpoint_init_cfg(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_CFG_N_OFFSET(endpoint->endpoint_id);
+	u32 val = 0;
+
+	/* FRAG_OFFLOAD_EN is 0 */
+	if (endpoint->data->checksum) {
+		if (endpoint->toward_ipa) {
+			u32 checksum_offset;
+
+			val |= u32_encode_bits(IPA_CS_OFFLOAD_UL,
+					       CS_OFFLOAD_EN_FMASK);
+			/* Checksum header offset is in 4-byte units */
+			checksum_offset = sizeof(struct rmnet_map_header);
+			checksum_offset /= sizeof(u32);
+			val |= u32_encode_bits(checksum_offset,
+					       CS_METADATA_HDR_OFFSET_FMASK);
+		} else {
+			val |= u32_encode_bits(IPA_CS_OFFLOAD_DL,
+					       CS_OFFLOAD_EN_FMASK);
+		}
+	} else {
+		val |= u32_encode_bits(IPA_CS_OFFLOAD_NONE,
+				       CS_OFFLOAD_EN_FMASK);
+	}
+	/* CS_GEN_QMB_MASTER_SEL is 0 */
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+static void ipa_endpoint_init_hdr(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_HDR_N_OFFSET(endpoint->endpoint_id);
+	u32 val = 0;
+
+	if (endpoint->data->qmap) {
+		size_t header_size = sizeof(struct rmnet_map_header);
+
+		if (endpoint->toward_ipa && endpoint->data->checksum)
+			header_size += sizeof(struct rmnet_map_ul_csum_header);
+
+		val |= u32_encode_bits(header_size, HDR_LEN_FMASK);
+		/* metadata is the 4 byte rmnet_map header itself */
+		val |= HDR_OFST_METADATA_VALID_FMASK;
+		val |= u32_encode_bits(0, HDR_OFST_METADATA_FMASK);
+		/* HDR_ADDITIONAL_CONST_LEN is 0; (IPA->AP only) */
+		if (!endpoint->toward_ipa) {
+			u32 size_offset = offsetof(struct rmnet_map_header,
+						   pkt_len);
+
+			val |= HDR_OFST_PKT_SIZE_VALID_FMASK;
+			val |= u32_encode_bits(size_offset,
+					       HDR_OFST_PKT_SIZE_FMASK);
+		}
+		/* HDR_A5_MUX is 0 */
+		/* HDR_LEN_INC_DEAGG_HDR is 0 */
+		/* HDR_METADATA_REG_VALID is 0; (AP->IPA only) */
+	}
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+static void ipa_endpoint_init_hdr_ext(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_HDR_EXT_N_OFFSET(endpoint->endpoint_id);
+	u32 pad_align = endpoint->data->rx.pad_align;
+	u32 val = 0;
+
+	val |= HDR_ENDIANNESS_FMASK;		/* big endian */
+	val |= HDR_TOTAL_LEN_OR_PAD_VALID_FMASK;
+	/* HDR_TOTAL_LEN_OR_PAD is 0 (pad, not total_len) */
+	/* HDR_PAYLOAD_LEN_INC_PADDING is 0 */
+	/* HDR_TOTAL_LEN_OR_PAD_OFFSET is 0 */
+	if (!endpoint->toward_ipa)
+		val |= u32_encode_bits(pad_align, HDR_PAD_TO_ALIGNMENT_FMASK);
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+/**
+ * Generate a metadata mask value that will select only the mux_id
+ * field in an rmnet_map header structure.  The mux_id is at offset
+ * 1 byte from the beginning of the structure, but the metadata
+ * value is treated as a 4-byte unit.  So this mask must be computed
+ * with endianness in mind.  Note that ipa_endpoint_init_hdr_metadata_mask()
+ * will convert this value to the proper byte order.
+ *
+ * Marked __always_inline because this is really computing a
+ * constant value.
+ */
+static __always_inline __be32 ipa_rmnet_mux_id_metadata_mask(void)
+{
+	size_t mux_id_offset = offsetof(struct rmnet_map_header, mux_id);
+	u32 mux_id_mask = 0;
+	u8 *bytes;
+
+	bytes = (u8 *)&mux_id_mask;
+	bytes[mux_id_offset] = 0xff;	/* mux_id is 1 byte */
+
+	return cpu_to_be32(mux_id_mask);
+}
+
+static void ipa_endpoint_init_hdr_metadata_mask(struct ipa_endpoint *endpoint)
+{
+	u32 endpoint_id = endpoint->endpoint_id;
+	u32 val = 0;
+	u32 offset;
+
+	offset = IPA_REG_ENDP_INIT_HDR_METADATA_MASK_N_OFFSET(endpoint_id);
+
+	if (!endpoint->toward_ipa && endpoint->data->qmap)
+		val = ipa_rmnet_mux_id_metadata_mask();
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+static void ipa_endpoint_init_mode(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_MODE_N_OFFSET(endpoint->endpoint_id);
+	u32 val;
+
+	if (endpoint->toward_ipa && endpoint->data->dma_mode) {
+		enum ipa_endpoint_name name = endpoint->data->dma_endpoint;
+		u32 dma_endpoint_id;
+
+		dma_endpoint_id = endpoint->ipa->name_map[name]->endpoint_id;
+
+		val = u32_encode_bits(IPA_DMA, MODE_FMASK);
+		val |= u32_encode_bits(dma_endpoint_id, DEST_PIPE_INDEX_FMASK);
+	} else {
+		val = u32_encode_bits(IPA_BASIC, MODE_FMASK);
+	}
+	/* Other bitfields unspecified (and 0) */
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+/* Compute the aggregation size value to use for a given buffer size */
+static u32 ipa_aggr_size_kb(u32 rx_buffer_size)
+{
+	/* We don't use "hard byte limit" aggregation, so we define the
+	 * aggregation limit such that our buffer has enough space *after*
+	 * that limit to receive a full MTU of data, plus overhead.
+	 */
+	rx_buffer_size -= IPA_MTU + IPA_RX_BUFFER_OVERHEAD;
+
+	return rx_buffer_size / SZ_1K;
+}
+
+static void ipa_endpoint_init_aggr(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_AGGR_N_OFFSET(endpoint->endpoint_id);
+	u32 val = 0;
+
+	if (endpoint->data->aggregation) {
+		if (!endpoint->toward_ipa) {
+			u32 aggr_size = ipa_aggr_size_kb(IPA_RX_BUFFER_SIZE);
+			u32 limit;
+
+			val |= u32_encode_bits(IPA_ENABLE_AGGR, AGGR_EN_FMASK);
+			val |= u32_encode_bits(IPA_GENERIC, AGGR_TYPE_FMASK);
+			val |= u32_encode_bits(aggr_size,
+					       AGGR_BYTE_LIMIT_FMASK);
+			limit = IPA_AGGR_TIME_LIMIT_DEFAULT;
+			val |= u32_encode_bits(limit / IPA_AGGR_GRANULARITY,
+					       AGGR_TIME_LIMIT_FMASK);
+			val |= u32_encode_bits(0, AGGR_PKT_LIMIT_FMASK);
+			if (endpoint->data->rx.aggr_close_eof)
+				val |= AGGR_SW_EOF_ACTIVE_FMASK;
+			/* AGGR_HARD_BYTE_LIMIT_ENABLE is 0 */
+		} else {
+			val |= u32_encode_bits(IPA_ENABLE_DEAGGR,
+					       AGGR_EN_FMASK);
+			val |= u32_encode_bits(IPA_QCMAP, AGGR_TYPE_FMASK);
+			/* other fields ignored */
+		}
+		/* AGGR_FORCE_CLOSE is 0 */
+	} else {
+		val |= u32_encode_bits(IPA_BYPASS_AGGR, AGGR_EN_FMASK);
+		/* other fields ignored */
+	}
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+/* A return value of 0 indicates an error */
+static u32 ipa_reg_init_hol_block_timer_val(struct ipa *ipa, u32 microseconds)
+{
+	u32 scale;
+	u32 base;
+	u32 val;
+
+	if (!microseconds)
+		return 0;	/* invalid delay */
+
+	/* Timer is represented in units of clock ticks. */
+	if (ipa->version < IPA_VERSION_4_2)
+		return microseconds;	/* XXX Needs to be computed */
+
+	/* IPA v4.2 represents the tick count as base * scale */
+	scale = 1;			/* XXX Needs to be computed */
+	if (scale > field_max(SCALE_FMASK))
+		return 0;		/* scale too big */
+
+	base = DIV_ROUND_CLOSEST(microseconds, scale);
+	if (base > field_max(BASE_VALUE_FMASK))
+		return 0;		/* microseconds too big */
+
+	val = u32_encode_bits(scale, SCALE_FMASK);
+	val |= u32_encode_bits(base, BASE_VALUE_FMASK);
+
+	return val;
+}
+
+static int ipa_endpoint_init_hol_block_timer(struct ipa_endpoint *endpoint,
+					     u32 microseconds)
+{
+	u32 endpoint_id = endpoint->endpoint_id;
+	struct ipa *ipa = endpoint->ipa;
+	u32 offset;
+	u32 val;
+
+	/* XXX We'll fix this when the register definition is clear */
+	if (microseconds) {
+		struct device *dev = &ipa->pdev->dev;
+
+		dev_err(dev, "endpoint %u non-zero HOLB period (ignoring)\n",
+			endpoint_id);
+		microseconds = 0;
+	}
+
+	if (microseconds) {
+		val = ipa_reg_init_hol_block_timer_val(ipa, microseconds);
+		if (!val)
+			return -EINVAL;
+	} else {
+		val = 0;	/* timeout is immediate */
+	}
+	offset = IPA_REG_ENDP_INIT_HOL_BLOCK_TIMER_N_OFFSET(endpoint_id);
+	iowrite32(val, ipa->reg_virt + offset);
+
+	return 0;
+}
+
+static void
+ipa_endpoint_init_hol_block_enable(struct ipa_endpoint *endpoint, bool enable)
+{
+	u32 endpoint_id = endpoint->endpoint_id;
+	u32 offset;
+	u32 val;
+
+	val = u32_encode_bits(enable ? 1 : 0, HOL_BLOCK_EN_FMASK);
+	offset = IPA_REG_ENDP_INIT_HOL_BLOCK_EN_N_OFFSET(endpoint_id);
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+void ipa_endpoint_modem_hol_block_clear_all(struct ipa *ipa)
+{
+	u32 i;
+
+	for (i = 0; i < IPA_ENDPOINT_MAX; i++) {
+		struct ipa_endpoint *endpoint = &ipa->endpoint[i];
+
+		if (endpoint->ee_id != GSI_EE_MODEM)
+			continue;
+
+		(void)ipa_endpoint_init_hol_block_timer(endpoint, 0);
+		ipa_endpoint_init_hol_block_enable(endpoint, true);
+	}
+}
+
+static void ipa_endpoint_init_deaggr(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_DEAGGR_N_OFFSET(endpoint->endpoint_id);
+	u32 val = 0;
+
+	/* DEAGGR_HDR_LEN is 0 */
+	/* PACKET_OFFSET_VALID is 0 */
+	/* PACKET_OFFSET_LOCATION is ignored (not valid) */
+	/* MAX_PACKET_LEN is 0 (not enforced) */
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+static void ipa_endpoint_init_seq(struct ipa_endpoint *endpoint)
+{
+	u32 offset = IPA_REG_ENDP_INIT_SEQ_N_OFFSET(endpoint->endpoint_id);
+	u32 seq_type = endpoint->seq_type;
+	u32 val = 0;
+
+	val |= u32_encode_bits(seq_type & 0xf, HPS_SEQ_TYPE_FMASK);
+	val |= u32_encode_bits((seq_type >> 4) & 0xf, DPS_SEQ_TYPE_FMASK);
+	/* HPS_REP_SEQ_TYPE is 0 */
+	/* DPS_REP_SEQ_TYPE is 0 */
+
+	iowrite32(val, endpoint->ipa->reg_virt + offset);
+}
+
+/**
+ * ipa_endpoint_skb_tx() - Transmit a socket buffer
+ * @endpoint:	Endpoint pointer
+ * @skb:	Socket buffer to send
+ *
+ * Returns:	0 if successful, or a negative error code
+ */
+int ipa_endpoint_skb_tx(struct ipa_endpoint *endpoint, struct sk_buff *skb)
+{
+	struct gsi_trans *trans;
+	u32 nr_frags;
+	int ret;
+
+	/* Make sure source endpoint's TLV FIFO has enough entries to
+	 * hold the linear portion of the skb and all its fragments.
+	 * If not, see if we can linearize it before giving up.
+	 */
+	nr_frags = skb_shinfo(skb)->nr_frags;
+	if (1 + nr_frags > endpoint->trans_tre_max) {
+		if (skb_linearize(skb))
+			return -E2BIG;
+		nr_frags = 0;
+	}
+
+	trans = ipa_endpoint_trans_alloc(endpoint, 1 + nr_frags);
+	if (!trans)
+		return -EBUSY;
+
+	ret = gsi_trans_skb_add(trans, skb);
+	if (ret)
+		goto err_trans_free;
+	trans->data = skb;	/* transaction owns skb now */
+
+	gsi_trans_commit(trans, !netdev_xmit_more());
+
+	return 0;
+
+err_trans_free:
+	gsi_trans_free(trans);
+
+	return -ENOMEM;
+}
+
+static void ipa_endpoint_status(struct ipa_endpoint *endpoint)
+{
+	u32 endpoint_id = endpoint->endpoint_id;
+	struct ipa *ipa = endpoint->ipa;
+	u32 val = 0;
+	u32 offset;
+
+	offset = IPA_REG_ENDP_STATUS_N_OFFSET(endpoint_id);
+
+	if (endpoint->data->status_enable) {
+		val |= STATUS_EN_FMASK;
+		if (endpoint->toward_ipa) {
+			enum ipa_endpoint_name name;
+			u32 status_endpoint_id;
+
+			name = endpoint->data->tx.status_endpoint;
+			status_endpoint_id = ipa->name_map[name]->endpoint_id;
+
+			val |= u32_encode_bits(status_endpoint_id,
+					       STATUS_ENDP_FMASK);
+		}
+		/* STATUS_LOCATION is 0 (status element precedes packet) */
+		/* The next field is present for IPA v4.0 and above */
+		/* STATUS_PKT_SUPPRESS_FMASK is 0 */
+	}
+
+	iowrite32(val, ipa->reg_virt + offset);
+}
+
+static int ipa_endpoint_replenish_one(struct ipa_endpoint *endpoint)
+{
+	struct gsi_trans *trans;
+	bool doorbell = false;
+	struct page *page;
+	u32 offset;
+	u32 len;
+	int ret;
+
+	page = dev_alloc_pages(IPA_RX_BUFFER_ORDER);
+	if (!page)
+		return -ENOMEM;
+
+	trans = ipa_endpoint_trans_alloc(endpoint, 1);
+	if (!trans)
+		goto err_free_pages;
+
+	/* Offset the buffer to make space for skb headroom */
+	offset = NET_SKB_PAD;
+	len = IPA_RX_BUFFER_SIZE - offset;
+
+	ret = gsi_trans_page_add(trans, page, len, offset);
+	if (ret)
+		goto err_trans_free;
+	trans->data = page;	/* transaction owns page now */
+
+	if (++endpoint->replenish_ready == IPA_REPLENISH_BATCH) {
+		doorbell = true;
+		endpoint->replenish_ready = 0;
+	}
+
+	gsi_trans_commit(trans, doorbell);
+
+	return 0;
+
+err_trans_free:
+	gsi_trans_free(trans);
+err_free_pages:
+	__free_pages(page, IPA_RX_BUFFER_ORDER);
+
+	return -ENOMEM;
+}
+
+/**
+ * ipa_endpoint_replenish() - Replenish the Rx packets cache.
+ *
+ * Allocate RX packet wrapper structures with maximal socket buffers
+ * for an endpoint.  These are supplied to the hardware, which fills
+ * them with incoming data.
+ */
+static void ipa_endpoint_replenish(struct ipa_endpoint *endpoint, bool add_one)
+{
+	struct gsi *gsi;
+	u32 backlog;
+
+	if (!endpoint->replenish_enabled) {
+		if (add_one)
+			atomic_inc(&endpoint->replenish_saved);
+		return;
+	}
+
+	if (add_one)
+		atomic_inc(&endpoint->replenish_backlog);
+
+	while (atomic_dec_not_zero(&endpoint->replenish_backlog))
+		if (ipa_endpoint_replenish_one(endpoint))
+			goto try_again_later;
+
+	return;
+
+try_again_later:
+	/* The last one didn't succeed, so fix the backlog */
+	backlog = atomic_inc_return(&endpoint->replenish_backlog);
+
+	/* Whenever a receive buffer transaction completes we'll try to
+	 * replenish again.  It's unlikely, but if we fail to supply even
+	 * one buffer, nothing will trigger another replenish attempt.
+	 * Receive buffer transactions use one TRE, so schedule work to
+	 * try replenishing again if our backlog is *all* available TREs.
+	 */
+	gsi = &endpoint->ipa->gsi;
+	if (backlog == gsi_channel_tre_max(gsi, endpoint->channel_id))
+		schedule_delayed_work(&endpoint->replenish_work,
+				      msecs_to_jiffies(1));
+}
+
+static void ipa_endpoint_replenish_enable(struct ipa_endpoint *endpoint)
+{
+	struct gsi *gsi = &endpoint->ipa->gsi;
+	u32 max_backlog;
+	u32 saved;
+
+	endpoint->replenish_enabled = true;
+	while ((saved = atomic_xchg(&endpoint->replenish_saved, 0)))
+		atomic_add(saved, &endpoint->replenish_backlog);
+
+	/* Start replenishing if hardware currently has no buffers */
+	max_backlog = gsi_channel_tre_max(gsi, endpoint->channel_id);
+	if (atomic_read(&endpoint->replenish_backlog) == max_backlog) {
+		ipa_endpoint_replenish(endpoint, false);
+		return;
+	}
+}
+
+static void ipa_endpoint_replenish_disable(struct ipa_endpoint *endpoint)
+{
+	u32 backlog;
+
+	endpoint->replenish_enabled = false;
+	while ((backlog = atomic_xchg(&endpoint->replenish_backlog, 0)))
+		atomic_add(backlog, &endpoint->replenish_saved);
+}
+
+static void ipa_endpoint_replenish_work(struct work_struct *work)
+{
+	struct delayed_work *dwork = to_delayed_work(work);
+	struct ipa_endpoint *endpoint;
+
+	endpoint = container_of(dwork, struct ipa_endpoint, replenish_work);
+
+	ipa_endpoint_replenish(endpoint, false);
+}
+
+static void ipa_endpoint_skb_copy(struct ipa_endpoint *endpoint,
+				  void *data, u32 len, u32 extra)
+{
+	struct sk_buff *skb;
+
+	skb = __dev_alloc_skb(len, GFP_ATOMIC);
+	if (skb) {
+		skb_put(skb, len);
+		memcpy(skb->data, data, len);
+		skb->truesize += extra;
+	}
+
+	/* Now receive it, or drop it if there's no netdev */
+	if (endpoint->netdev)
+		ipa_modem_skb_rx(endpoint->netdev, skb);
+	else if (skb)
+		dev_kfree_skb_any(skb);
+}
+
+static bool ipa_endpoint_skb_build(struct ipa_endpoint *endpoint,
+				   struct page *page, u32 len)
+{
+	struct sk_buff *skb;
+
+	/* Nothing to do if there's no netdev */
+	if (!endpoint->netdev)
+		return false;
+
+	/* assert(len <= SKB_WITH_OVERHEAD(IPA_RX_BUFFER_SIZE-NET_SKB_PAD)); */
+	skb = build_skb(page_address(page), IPA_RX_BUFFER_SIZE);
+	if (skb) {
+		/* Reserve the headroom and account for the data */
+		skb_reserve(skb, NET_SKB_PAD);
+		skb_put(skb, len);
+	}
+
+	/* Receive the buffer (or record drop if unable to build it) */
+	ipa_modem_skb_rx(endpoint->netdev, skb);
+
+	return skb != NULL;
+}
+
+/* The format of a packet status element is the same for several status
+ * types (opcodes).  The NEW_FRAG_RULE, LOG, DCMP (decompression) types
+ * aren't currently supported
+ */
+static bool ipa_status_format_packet(enum ipa_status_opcode opcode)
+{
+	switch (opcode) {
+	case IPA_STATUS_OPCODE_PACKET:
+	case IPA_STATUS_OPCODE_DROPPED_PACKET:
+	case IPA_STATUS_OPCODE_SUSPENDED_PACKET:
+	case IPA_STATUS_OPCODE_PACKET_2ND_PASS:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool ipa_endpoint_status_skip(struct ipa_endpoint *endpoint,
+				     const struct ipa_status *status)
+{
+	u32 endpoint_id;
+
+	if (!ipa_status_format_packet(status->opcode))
+		return true;
+	if (!status->pkt_len)
+		return true;
+	endpoint_id = u32_get_bits(status->endp_dst_idx,
+				   IPA_STATUS_DST_IDX_FMASK);
+	if (endpoint_id != endpoint->endpoint_id)
+		return true;
+
+	return false;	/* Don't skip this packet, process it */
+}
+
+/* Return whether the status indicates the packet should be dropped */
+static bool ipa_status_drop_packet(const struct ipa_status *status)
+{
+	u32 val;
+
+	/* Deaggregation exceptions we drop; others we consume */
+	if (status->exception)
+		return status->exception == IPA_STATUS_EXCEPTION_DEAGGR;
+
+	/* Drop the packet if it fails to match a routing rule; otherwise no */
+	val = le32_get_bits(status->flags1, IPA_STATUS_FLAGS1_RT_RULE_ID_FMASK);
+
+	return val == field_max(IPA_STATUS_FLAGS1_RT_RULE_ID_FMASK);
+}
+
+static void ipa_endpoint_status_parse(struct ipa_endpoint *endpoint,
+				      struct page *page, u32 total_len)
+{
+	void *data = page_address(page) + NET_SKB_PAD;
+	u32 unused = IPA_RX_BUFFER_SIZE - total_len;
+	u32 resid = total_len;
+
+	while (resid) {
+		const struct ipa_status *status = data;
+		u32 align;
+		u32 len;
+
+		if (resid < sizeof(*status)) {
+			dev_err(&endpoint->ipa->pdev->dev,
+				"short message (%u bytes < %zu byte status)\n",
+				resid, sizeof(*status));
+			break;
+		}
+
+		/* Skip over status packets that lack packet data */
+		if (ipa_endpoint_status_skip(endpoint, status)) {
+			data += sizeof(*status);
+			resid -= sizeof(*status);
+			continue;
+		}
+
+		/* Compute the amount of buffer space consumed by the
+		 * packet, including the status element.  If the hardware
+		 * is configured to pad packet data to an aligned boundary,
+		 * account for that.  And if checksum offload is is enabled
+		 * a trailer containing computed checksum information will
+		 * be appended.
+		 */
+		align = endpoint->data->rx.pad_align ? : 1;
+		len = le16_to_cpu(status->pkt_len);
+		len = sizeof(*status) + ALIGN(len, align);
+		if (endpoint->data->checksum)
+			len += sizeof(struct rmnet_map_dl_csum_trailer);
+
+		/* Charge the new packet with a proportional fraction of
+		 * the unused space in the original receive buffer.
+		 * XXX Charge a proportion of the *whole* receive buffer?
+		 */
+		if (!ipa_status_drop_packet(status)) {
+			u32 extra = unused * len / total_len;
+			void *data2 = data + sizeof(*status);
+			u32 len2 = le16_to_cpu(status->pkt_len);
+
+			/* Client receives only packet data (no status) */
+			ipa_endpoint_skb_copy(endpoint, data2, len2, extra);
+		}
+
+		/* Consume status and the full packet it describes */
+		data += len;
+		resid -= len;
+	}
+}
+
+/* Complete a TX transaction, command or from ipa_endpoint_skb_tx() */
+static void ipa_endpoint_tx_complete(struct ipa_endpoint *endpoint,
+				     struct gsi_trans *trans)
+{
+}
+
+/* Complete transaction initiated in ipa_endpoint_replenish_one() */
+static void ipa_endpoint_rx_complete(struct ipa_endpoint *endpoint,
+				     struct gsi_trans *trans)
+{
+	struct page *page;
+
+	ipa_endpoint_replenish(endpoint, true);
+
+	if (trans->cancelled)
+		return;
+
+	/* Parse or build a socket buffer using the actual received length */
+	page = trans->data;
+	if (endpoint->data->status_enable)
+		ipa_endpoint_status_parse(endpoint, page, trans->len);
+	else if (ipa_endpoint_skb_build(endpoint, page, trans->len))
+		trans->data = NULL;	/* Pages have been consumed */
+}
+
+void ipa_endpoint_trans_complete(struct ipa_endpoint *endpoint,
+				 struct gsi_trans *trans)
+{
+	if (endpoint->toward_ipa)
+		ipa_endpoint_tx_complete(endpoint, trans);
+	else
+		ipa_endpoint_rx_complete(endpoint, trans);
+}
+
+void ipa_endpoint_trans_release(struct ipa_endpoint *endpoint,
+				struct gsi_trans *trans)
+{
+	if (endpoint->toward_ipa) {
+		struct ipa *ipa = endpoint->ipa;
+
+		/* Nothing to do for command transactions */
+		if (endpoint != ipa->name_map[IPA_ENDPOINT_AP_COMMAND_TX]) {
+			struct sk_buff *skb = trans->data;
+
+			if (skb)
+				dev_kfree_skb_any(skb);
+		}
+	} else {
+		struct page *page = trans->data;
+
+		if (page)
+			__free_pages(page, IPA_RX_BUFFER_ORDER);
+	}
+}
+
+void ipa_endpoint_default_route_set(struct ipa *ipa, u32 endpoint_id)
+{
+	u32 val;
+
+	/* ROUTE_DIS is 0 */
+	val = u32_encode_bits(endpoint_id, ROUTE_DEF_PIPE_FMASK);
+	val |= ROUTE_DEF_HDR_TABLE_FMASK;
+	val |= u32_encode_bits(0, ROUTE_DEF_HDR_OFST_FMASK);
+	val |= u32_encode_bits(endpoint_id, ROUTE_FRAG_DEF_PIPE_FMASK);
+	val |= ROUTE_DEF_RETAIN_HDR_FMASK;
+
+	iowrite32(val, ipa->reg_virt + IPA_REG_ROUTE_OFFSET);
+}
+
+void ipa_endpoint_default_route_clear(struct ipa *ipa)
+{
+	ipa_endpoint_default_route_set(ipa, 0);
+}
+
+static bool ipa_endpoint_aggr_active(struct ipa_endpoint *endpoint)
+{
+	u32 mask = BIT(endpoint->endpoint_id);
+	struct ipa *ipa = endpoint->ipa;
+	u32 offset;
+	u32 val;
+
+	/* assert(mask & ipa->available); */
+	offset = ipa_reg_state_aggr_active_offset(ipa->version);
+	val = ioread32(ipa->reg_virt + offset);
+
+	return !!(val & mask);
+}
+
+static void ipa_endpoint_force_close(struct ipa_endpoint *endpoint)
+{
+	u32 mask = BIT(endpoint->endpoint_id);
+	struct ipa *ipa = endpoint->ipa;
+
+	/* assert(mask & ipa->available); */
+	iowrite32(mask, ipa->reg_virt + IPA_REG_AGGR_FORCE_CLOSE_OFFSET);
+}
+
+/**
+ * ipa_endpoint_reset_rx_aggr() - Reset RX endpoint with aggregation active
+ * @endpoint:	Endpoint to be reset
+ *
+ * If aggregation is active on an RX endpoint when a reset is performed
+ * on its underlying GSI channel, a special sequence of actions must be
+ * taken to ensure the IPA pipeline is properly cleared.
+ *
+ * @Return:	0 if successful, or a negative error code
+ */
+static int ipa_endpoint_reset_rx_aggr(struct ipa_endpoint *endpoint)
+{
+	struct device *dev = &endpoint->ipa->pdev->dev;
+	struct ipa *ipa = endpoint->ipa;
+	bool endpoint_suspended = false;
+	struct gsi *gsi = &ipa->gsi;
+	dma_addr_t addr;
+	bool db_enable;
+	u32 retries;
+	u32 len = 1;
+	void *virt;
+	int ret;
+
+	virt = kzalloc(len, GFP_KERNEL);
+	if (!virt)
+		return -ENOMEM;
+
+	addr = dma_map_single(dev, virt, len, DMA_FROM_DEVICE);
+	if (dma_mapping_error(dev, addr)) {
+		ret = -ENOMEM;
+		goto out_kfree;
+	}
+
+	/* Force close aggregation before issuing the reset */
+	ipa_endpoint_force_close(endpoint);
+
+	/* Reset and reconfigure the channel with the doorbell engine
+	 * disabled.  Then poll until we know aggregation is no longer
+	 * active.  We'll re-enable the doorbell (if appropriate) when
+	 * we reset again below.
+	 */
+	gsi_channel_reset(gsi, endpoint->channel_id, false);
+
+	/* Make sure the channel isn't suspended */
+	if (endpoint->ipa->version == IPA_VERSION_3_5_1)
+		if (!ipa_endpoint_init_ctrl(endpoint, false))
+			endpoint_suspended = true;
+
+	/* Start channel and do a 1 byte read */
+	ret = gsi_channel_start(gsi, endpoint->channel_id);
+	if (ret)
+		goto out_suspend_again;
+
+	ret = gsi_trans_read_byte(gsi, endpoint->channel_id, addr);
+	if (ret)
+		goto err_endpoint_stop;
+
+	/* Wait for aggregation to be closed on the channel */
+	retries = IPA_ENDPOINT_RESET_AGGR_RETRY_MAX;
+	do {
+		if (!ipa_endpoint_aggr_active(endpoint))
+			break;
+		msleep(1);
+	} while (retries--);
+
+	/* Check one last time */
+	if (ipa_endpoint_aggr_active(endpoint))
+		dev_err(dev, "endpoint %u still active during reset\n",
+			endpoint->endpoint_id);
+
+	gsi_trans_read_byte_done(gsi, endpoint->channel_id);
+
+	ret = ipa_endpoint_stop(endpoint);
+	if (ret)
+		goto out_suspend_again;
+
+	/* Finally, reset and reconfigure the channel again (re-enabling the
+	 * the doorbell engine if appropriate).  Sleep for 1 millisecond to
+	 * complete the channel reset sequence.  Finish by suspending the
+	 * channel again (if necessary).
+	 */
+	db_enable = ipa->version == IPA_VERSION_3_5_1;
+	gsi_channel_reset(gsi, endpoint->channel_id, db_enable);
+
+	msleep(1);
+
+	goto out_suspend_again;
+
+err_endpoint_stop:
+	ipa_endpoint_stop(endpoint);
+out_suspend_again:
+	if (endpoint_suspended)
+		(void)ipa_endpoint_init_ctrl(endpoint, true);
+	dma_unmap_single(dev, addr, len, DMA_FROM_DEVICE);
+out_kfree:
+	kfree(virt);
+
+	return ret;
+}
+
+static void ipa_endpoint_reset(struct ipa_endpoint *endpoint)
+{
+	u32 channel_id = endpoint->channel_id;
+	struct ipa *ipa = endpoint->ipa;
+	bool db_enable;
+	bool special;
+	int ret = 0;
+
+	/* On IPA v3.5.1, if an RX endpoint is reset while aggregation
+	 * is active, we need to handle things specially to recover.
+	 * All other cases just need to reset the underlying GSI channel.
+	 *
+	 * IPA v3.5.1 enables the doorbell engine.  Newer versions do not.
+	 */
+	db_enable = ipa->version == IPA_VERSION_3_5_1;
+	special = !endpoint->toward_ipa && endpoint->data->aggregation;
+	if (special && ipa_endpoint_aggr_active(endpoint))
+		ret = ipa_endpoint_reset_rx_aggr(endpoint);
+	else
+		gsi_channel_reset(&ipa->gsi, channel_id, db_enable);
+
+	if (ret)
+		dev_err(&ipa->pdev->dev,
+			"error %d resetting channel %u for endpoint %u\n",
+			ret, endpoint->channel_id, endpoint->endpoint_id);
+}
+
+static int ipa_endpoint_stop_rx_dma(struct ipa *ipa)
+{
+	u16 size = IPA_ENDPOINT_STOP_RX_SIZE;
+	struct gsi_trans *trans;
+	dma_addr_t addr;
+	int ret;
+
+	trans = ipa_cmd_trans_alloc(ipa, 1);
+	if (!trans) {
+		dev_err(&ipa->pdev->dev,
+			"no transaction for RX endpoint STOP workaround\n");
+		return -EBUSY;
+	}
+
+	/* Read into the highest part of the zero memory area */
+	addr = ipa->zero_addr + ipa->zero_size - size;
+
+	ipa_cmd_dma_task_32b_addr_add(trans, size, addr, false);
+
+	ret = gsi_trans_commit_wait_timeout(trans, ENDPOINT_STOP_DMA_TIMEOUT);
+	if (ret)
+		gsi_trans_free(trans);
+
+	return ret;
+}
+
+/**
+ * ipa_endpoint_stop() - Stops a GSI channel in IPA
+ * @client:	Client whose endpoint should be stopped
+ *
+ * This function implements the sequence to stop a GSI channel
+ * in IPA. This function returns when the channel is is STOP state.
+ *
+ * Return value: 0 on success, negative otherwise
+ */
+int ipa_endpoint_stop(struct ipa_endpoint *endpoint)
+{
+	u32 retries = IPA_ENDPOINT_STOP_RETRY_MAX;
+	int ret;
+
+	do {
+		struct ipa *ipa = endpoint->ipa;
+		struct gsi *gsi = &ipa->gsi;
+
+		ret = gsi_channel_stop(gsi, endpoint->channel_id);
+		if (ret != -EAGAIN)
+			break;
+
+		if (endpoint->toward_ipa)
+			continue;
+
+		/* For IPA v3.5.1, send a DMA read task and check again */
+		if (ipa->version == IPA_VERSION_3_5_1) {
+			ret = ipa_endpoint_stop_rx_dma(ipa);
+			if (ret)
+				break;
+		}
+
+		msleep(1);
+	} while (retries--);
+
+	return retries ? ret : -EIO;
+}
+
+static void ipa_endpoint_program(struct ipa_endpoint *endpoint)
+{
+	struct device *dev = &endpoint->ipa->pdev->dev;
+	int ret;
+
+	if (endpoint->toward_ipa) {
+		bool delay_mode = endpoint->data->tx.delay;
+
+		ret = ipa_endpoint_init_ctrl(endpoint, delay_mode);
+		/* Endpoint is expected to not be in delay mode */
+		if (!ret != delay_mode) {
+			dev_warn(dev,
+				"TX endpoint %u was %sin delay mode\n",
+				endpoint->endpoint_id,
+				delay_mode ? "already " : "");
+		}
+		ipa_endpoint_init_hdr_ext(endpoint);
+		ipa_endpoint_init_aggr(endpoint);
+		ipa_endpoint_init_deaggr(endpoint);
+		ipa_endpoint_init_seq(endpoint);
+	} else {
+		if (endpoint->ipa->version == IPA_VERSION_3_5_1) {
+			if (!ipa_endpoint_init_ctrl(endpoint, false))
+				dev_warn(dev,
+					"RX endpoint %u was suspended\n",
+					endpoint->endpoint_id);
+		}
+		ipa_endpoint_init_hdr_ext(endpoint);
+		ipa_endpoint_init_aggr(endpoint);
+	}
+	ipa_endpoint_init_cfg(endpoint);
+	ipa_endpoint_init_hdr(endpoint);
+	ipa_endpoint_init_hdr_metadata_mask(endpoint);
+	ipa_endpoint_init_mode(endpoint);
+	ipa_endpoint_status(endpoint);
+}
+
+int ipa_endpoint_enable_one(struct ipa_endpoint *endpoint)
+{
+	struct ipa *ipa = endpoint->ipa;
+	struct gsi *gsi = &ipa->gsi;
+	int ret;
+
+	ret = gsi_channel_start(gsi, endpoint->channel_id);
+	if (ret) {
+		dev_err(&ipa->pdev->dev,
+			"error %d starting %cX channel %u for endpoint %u\n",
+			endpoint->channel_id, endpoint->toward_ipa ? 'T' : 'R',
+			endpoint->endpoint_id);
+		return ret;
+	}
+
+	if (!endpoint->toward_ipa) {
+		ipa_interrupt_suspend_enable(ipa->interrupt,
+					     endpoint->endpoint_id);
+		ipa_endpoint_replenish_enable(endpoint);
+	}
+
+	ipa->enabled |= BIT(endpoint->endpoint_id);
+
+	return 0;
+}
+
+void ipa_endpoint_disable_one(struct ipa_endpoint *endpoint)
+{
+	u32 mask = BIT(endpoint->endpoint_id);
+	struct ipa *ipa = endpoint->ipa;
+	int ret;
+
+	if (!(endpoint->ipa->enabled & mask))
+		return;
+
+	endpoint->ipa->enabled ^= mask;
+
+	if (!endpoint->toward_ipa) {
+		ipa_endpoint_replenish_disable(endpoint);
+		ipa_interrupt_suspend_disable(ipa->interrupt,
+					      endpoint->endpoint_id);
+	}
+
+	/* Note that if stop fails, the channel's state is not well-defined */
+	ret = ipa_endpoint_stop(endpoint);
+	if (ret)
+		dev_err(&ipa->pdev->dev,
+			"error %d attempting to stop endpoint %u\n", ret,
+			endpoint->endpoint_id);
+}
+
+/**
+ * ipa_endpoint_suspend_aggr() - Emulate suspend interrupt
+ * @endpoint_id:	Endpoint on which to emulate a suspend
+ *
+ *  Emulate suspend IPA interrupt to unsuspend an endpoint suspended
+ *  with an open aggregation frame.  This is to work around a hardware
+ *  issue in IPA version 3.5.1 where the suspend interrupt will not be
+ *  generated when it should be.
+ */
+static void ipa_endpoint_suspend_aggr(struct ipa_endpoint *endpoint)
+{
+	struct ipa *ipa = endpoint->ipa;
+
+	/* assert(ipa->version == IPA_VERSION_3_5_1); */
+
+	if (!endpoint->data->aggregation)
+		return;
+
+	/* Nothing to do if the endpoint doesn't have aggregation open */
+	if (!ipa_endpoint_aggr_active(endpoint))
+		return;
+
+	/* Force close aggregation */
+	ipa_endpoint_force_close(endpoint);
+
+	ipa_interrupt_simulate_suspend(ipa->interrupt);
+}
+
+void ipa_endpoint_suspend_one(struct ipa_endpoint *endpoint)
+{
+	struct device *dev = &endpoint->ipa->pdev->dev;
+	struct gsi *gsi = &endpoint->ipa->gsi;
+	bool stop_channel;
+	int ret;
+
+	if (!(endpoint->ipa->enabled & BIT(endpoint->endpoint_id)))
+		return;
+
+	if (!endpoint->toward_ipa)
+		ipa_endpoint_replenish_disable(endpoint);
+
+	/* IPA v3.5.1 doesn't use channel stop for suspend */
+	stop_channel = endpoint->ipa->version != IPA_VERSION_3_5_1;
+	if (!endpoint->toward_ipa && !stop_channel) {
+		/* Due to a hardware bug, a client suspended with an open
+		 * aggregation frame will not generate a SUSPEND IPA
+		 * interrupt.  We work around this by force-closing the
+		 * aggregation frame, then simulating the arrival of such
+		 * an interrupt.
+		 */
+		WARN_ON(ipa_endpoint_init_ctrl(endpoint, true));
+		ipa_endpoint_suspend_aggr(endpoint);
+	}
+
+	ret = gsi_channel_suspend(gsi, endpoint->channel_id, stop_channel);
+	if (ret)
+		dev_err(dev, "error %d suspending channel %u\n", ret,
+			endpoint->channel_id);
+}
+
+void ipa_endpoint_resume_one(struct ipa_endpoint *endpoint)
+{
+	struct device *dev = &endpoint->ipa->pdev->dev;
+	struct gsi *gsi = &endpoint->ipa->gsi;
+	bool start_channel;
+	int ret;
+
+	if (!(endpoint->ipa->enabled & BIT(endpoint->endpoint_id)))
+		return;
+
+	/* IPA v3.5.1 doesn't use channel start for resume */
+	start_channel = endpoint->ipa->version != IPA_VERSION_3_5_1;
+	if (!endpoint->toward_ipa && !start_channel)
+		WARN_ON(ipa_endpoint_init_ctrl(endpoint, false));
+
+	ret = gsi_channel_resume(gsi, endpoint->channel_id, start_channel);
+	if (ret)
+		dev_err(dev, "error %d resuming channel %u\n", ret,
+			endpoint->channel_id);
+	else if (!endpoint->toward_ipa)
+		ipa_endpoint_replenish_enable(endpoint);
+}
+
+void ipa_endpoint_suspend(struct ipa *ipa)
+{
+	if (ipa->modem_netdev)
+		ipa_modem_suspend(ipa->modem_netdev);
+
+	ipa_endpoint_suspend_one(ipa->name_map[IPA_ENDPOINT_AP_LAN_RX]);
+	ipa_endpoint_suspend_one(ipa->name_map[IPA_ENDPOINT_AP_COMMAND_TX]);
+}
+
+void ipa_endpoint_resume(struct ipa *ipa)
+{
+	ipa_endpoint_resume_one(ipa->name_map[IPA_ENDPOINT_AP_COMMAND_TX]);
+	ipa_endpoint_resume_one(ipa->name_map[IPA_ENDPOINT_AP_LAN_RX]);
+
+	if (ipa->modem_netdev)
+		ipa_modem_resume(ipa->modem_netdev);
+}
+
+static void ipa_endpoint_setup_one(struct ipa_endpoint *endpoint)
+{
+	struct gsi *gsi = &endpoint->ipa->gsi;
+	u32 channel_id = endpoint->channel_id;
+
+	/* Only AP endpoints get set up */
+	if (endpoint->ee_id != GSI_EE_AP)
+		return;
+
+	endpoint->trans_tre_max = gsi_channel_trans_tre_max(gsi, channel_id);
+	if (!endpoint->toward_ipa) {
+		/* RX transactions require a single TRE, so the maximum
+		 * backlog is the same as the maximum outstanding TREs.
+		 */
+		endpoint->replenish_enabled = false;
+		atomic_set(&endpoint->replenish_saved,
+			   gsi_channel_tre_max(gsi, endpoint->channel_id));
+		atomic_set(&endpoint->replenish_backlog, 0);
+		INIT_DELAYED_WORK(&endpoint->replenish_work,
+				  ipa_endpoint_replenish_work);
+	}
+
+	ipa_endpoint_program(endpoint);
+
+	endpoint->ipa->set_up |= BIT(endpoint->endpoint_id);
+}
+
+static void ipa_endpoint_teardown_one(struct ipa_endpoint *endpoint)
+{
+	endpoint->ipa->set_up &= ~BIT(endpoint->endpoint_id);
+
+	if (!endpoint->toward_ipa)
+		cancel_delayed_work_sync(&endpoint->replenish_work);
+
+	ipa_endpoint_reset(endpoint);
+}
+
+void ipa_endpoint_setup(struct ipa *ipa)
+{
+	u32 initialized = ipa->initialized;
+
+	ipa->set_up = 0;
+	while (initialized) {
+		u32 endpoint_id = __ffs(initialized);
+
+		initialized ^= BIT(endpoint_id);
+
+		ipa_endpoint_setup_one(&ipa->endpoint[endpoint_id]);
+	}
+}
+
+void ipa_endpoint_teardown(struct ipa *ipa)
+{
+	u32 set_up = ipa->set_up;
+
+	while (set_up) {
+		u32 endpoint_id = __fls(set_up);
+
+		set_up ^= BIT(endpoint_id);
+
+		ipa_endpoint_teardown_one(&ipa->endpoint[endpoint_id]);
+	}
+	ipa->set_up = 0;
+}
+
+int ipa_endpoint_config(struct ipa *ipa)
+{
+	struct device *dev = &ipa->pdev->dev;
+	u32 initialized;
+	u32 rx_base;
+	u32 rx_mask;
+	u32 tx_mask;
+	int ret = 0;
+	u32 max;
+	u32 val;
+
+	/* Find out about the endpoints supplied by the hardware, and ensure
+	 * the highest one doesn't exceed the number we support.
+	 */
+	val = ioread32(ipa->reg_virt + IPA_REG_FLAVOR_0_OFFSET);
+
+	/* Our RX is an IPA producer */
+	rx_base = u32_get_bits(val, BAM_PROD_LOWEST_FMASK);
+	max = rx_base + u32_get_bits(val, BAM_MAX_PROD_PIPES_FMASK);
+	if (max > IPA_ENDPOINT_MAX) {
+		dev_err(dev, "too many endpoints (%u > %u)\n",
+			max, IPA_ENDPOINT_MAX);
+		return -EINVAL;
+	}
+	rx_mask = GENMASK(max - 1, rx_base);
+
+	/* Our TX is an IPA consumer */
+	max = u32_get_bits(val, BAM_MAX_CONS_PIPES_FMASK);
+	tx_mask = GENMASK(max - 1, 0);
+
+	ipa->available = rx_mask | tx_mask;
+
+	/* Check for initialized endpoints not supported by the hardware */
+	if (ipa->initialized & ~ipa->available) {
+		dev_err(dev, "unavailable endpoint id(s) 0x%08x\n",
+			ipa->initialized & ~ipa->available);
+		ret = -EINVAL;		/* Report other errors too */
+	}
+
+	initialized = ipa->initialized;
+	while (initialized) {
+		u32 endpoint_id = __ffs(initialized);
+		struct ipa_endpoint *endpoint;
+
+		initialized ^= BIT(endpoint_id);
+
+		/* Make sure it's pointing in the right direction */
+		endpoint = &ipa->endpoint[endpoint_id];
+		if ((endpoint_id < rx_base) != !!endpoint->toward_ipa) {
+			dev_err(dev, "endpoint id %u wrong direction\n",
+				endpoint_id);
+			ret = -EINVAL;
+		}
+	}
+
+	return ret;
+}
+
+void ipa_endpoint_deconfig(struct ipa *ipa)
+{
+	ipa->available = 0;	/* Nothing more to do */
+}
+
+static void ipa_endpoint_init_one(struct ipa *ipa, enum ipa_endpoint_name name,
+				  const struct ipa_gsi_endpoint_data *data)
+{
+	struct ipa_endpoint *endpoint;
+
+	endpoint = &ipa->endpoint[data->endpoint_id];
+
+	if (data->ee_id == GSI_EE_AP)
+		ipa->channel_map[data->channel_id] = endpoint;
+	ipa->name_map[name] = endpoint;
+
+	endpoint->ipa = ipa;
+	endpoint->ee_id = data->ee_id;
+	endpoint->seq_type = data->endpoint.seq_type;
+	endpoint->channel_id = data->channel_id;
+	endpoint->endpoint_id = data->endpoint_id;
+	endpoint->toward_ipa = data->toward_ipa;
+	endpoint->data = &data->endpoint.config;
+
+	ipa->initialized |= BIT(endpoint->endpoint_id);
+}
+
+void ipa_endpoint_exit_one(struct ipa_endpoint *endpoint)
+{
+	endpoint->ipa->initialized &= ~BIT(endpoint->endpoint_id);
+
+	memset(endpoint, 0, sizeof(*endpoint));
+}
+
+void ipa_endpoint_exit(struct ipa *ipa)
+{
+	u32 initialized = ipa->initialized;
+
+	while (initialized) {
+		u32 endpoint_id = __fls(initialized);
+
+		initialized ^= BIT(endpoint_id);
+
+		ipa_endpoint_exit_one(&ipa->endpoint[endpoint_id]);
+	}
+	memset(ipa->name_map, 0, sizeof(ipa->name_map));
+	memset(ipa->channel_map, 0, sizeof(ipa->channel_map));
+}
+
+/* Returns a bitmask of endpoints that support filtering, or 0 on error */
+u32 ipa_endpoint_init(struct ipa *ipa, u32 count,
+		      const struct ipa_gsi_endpoint_data *data)
+{
+	enum ipa_endpoint_name name;
+	u32 filter_map;
+
+	if (!ipa_endpoint_data_valid(ipa, count, data))
+		return 0;	/* Error */
+
+	ipa->initialized = 0;
+
+	filter_map = 0;
+	for (name = 0; name < count; name++, data++) {
+		if (ipa_gsi_endpoint_data_empty(data))
+			continue;	/* Skip over empty slots */
+
+		ipa_endpoint_init_one(ipa, name, data);
+
+		if (data->endpoint.filter_support)
+			filter_map |= BIT(data->endpoint_id);
+	}
+
+	if (!ipa_filter_map_valid(ipa, filter_map))
+		goto err_endpoint_exit;
+
+	return filter_map;	/* Non-zero bitmask */
+
+err_endpoint_exit:
+	ipa_endpoint_exit(ipa);
+
+	return 0;	/* Error */
+}
diff --git a/drivers/net/ipa/ipa_endpoint.h b/drivers/net/ipa/ipa_endpoint.h
new file mode 100644
index 000000000000..4b336a1f759d
--- /dev/null
+++ b/drivers/net/ipa/ipa_endpoint.h
@@ -0,0 +1,110 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+#ifndef _IPA_ENDPOINT_H_
+#define _IPA_ENDPOINT_H_
+
+#include <linux/types.h>
+#include <linux/workqueue.h>
+#include <linux/if_ether.h>
+
+#include "gsi.h"
+#include "ipa_reg.h"
+
+struct net_device;
+struct sk_buff;
+
+struct ipa;
+struct ipa_gsi_endpoint_data;
+
+/* Non-zero granularity of counter used to implement aggregation timeout */
+#define IPA_AGGR_GRANULARITY		500	/* microseconds */
+
+#define IPA_MTU			ETH_DATA_LEN
+
+enum ipa_endpoint_name {
+	IPA_ENDPOINT_AP_MODEM_TX	= 0,
+	IPA_ENDPOINT_MODEM_LAN_TX,
+	IPA_ENDPOINT_MODEM_COMMAND_TX,
+	IPA_ENDPOINT_AP_COMMAND_TX,
+	IPA_ENDPOINT_MODEM_AP_TX,
+	IPA_ENDPOINT_AP_LAN_RX,
+	IPA_ENDPOINT_AP_MODEM_RX,
+	IPA_ENDPOINT_MODEM_AP_RX,
+	IPA_ENDPOINT_MODEM_LAN_RX,
+	IPA_ENDPOINT_COUNT,	/* Number of names (not an index) */
+};
+
+#define IPA_ENDPOINT_MAX		32	/* Max supported by driver */
+
+/**
+ * struct ipa_endpoint - IPA endpoint information
+ * @client:	Client associated with the endpoint
+ * @channel_id:	EP's GSI channel
+ * @evt_ring_id: EP's GSI channel event ring
+ */
+struct ipa_endpoint {
+	struct ipa *ipa;
+	enum ipa_seq_type seq_type;
+	enum gsi_ee_id ee_id;
+	u32 channel_id;
+	u32 endpoint_id;
+	bool toward_ipa;
+	const struct ipa_endpoint_config_data *data;
+
+	u32 trans_tre_max;	/* maximum descriptors per transaction */
+	u32 evt_ring_id;
+
+	/* Net device this endpoint is associated with, if any */
+	struct net_device *netdev;
+
+	/* Receive buffer replenishing for RX endpoints */
+	bool replenish_enabled;
+	u32 replenish_ready;
+	atomic_t replenish_saved;
+	atomic_t replenish_backlog;
+	struct delayed_work replenish_work;		/* global wq */
+};
+
+void ipa_endpoint_modem_hol_block_clear_all(struct ipa *ipa);
+
+void ipa_endpoint_modem_pause_all(struct ipa *ipa, bool enable);
+
+int ipa_endpoint_modem_exception_reset_all(struct ipa *ipa);
+
+int ipa_endpoint_skb_tx(struct ipa_endpoint *endpoint, struct sk_buff *skb);
+
+int ipa_endpoint_stop(struct ipa_endpoint *endpoint);
+
+void ipa_endpoint_exit_one(struct ipa_endpoint *endpoint);
+
+int ipa_endpoint_enable_one(struct ipa_endpoint *endpoint);
+void ipa_endpoint_disable_one(struct ipa_endpoint *endpoint);
+
+void ipa_endpoint_suspend_one(struct ipa_endpoint *endpoint);
+void ipa_endpoint_resume_one(struct ipa_endpoint *endpoint);
+
+void ipa_endpoint_suspend(struct ipa *ipa);
+void ipa_endpoint_resume(struct ipa *ipa);
+
+void ipa_endpoint_setup(struct ipa *ipa);
+void ipa_endpoint_teardown(struct ipa *ipa);
+
+int ipa_endpoint_config(struct ipa *ipa);
+void ipa_endpoint_deconfig(struct ipa *ipa);
+
+void ipa_endpoint_default_route_set(struct ipa *ipa, u32 endpoint_id);
+void ipa_endpoint_default_route_clear(struct ipa *ipa);
+
+u32 ipa_endpoint_init(struct ipa *ipa, u32 count,
+		      const struct ipa_gsi_endpoint_data *data);
+void ipa_endpoint_exit(struct ipa *ipa);
+
+void ipa_endpoint_trans_complete(struct ipa_endpoint *ipa,
+				 struct gsi_trans *trans);
+void ipa_endpoint_trans_release(struct ipa_endpoint *ipa,
+				struct gsi_trans *trans);
+
+#endif /* _IPA_ENDPOINT_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
