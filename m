Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E4730742
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/ic0YUN/3+egGw4/AtDf/fM6MnRP5AN5R2SciuwM7Q=; b=Itkscv9YAD4DeW
	r6RcVsoVhL0uwwPwGLeN0pRhXlpoR0mGOX7WG43fJ5lySB9ljnFgtSx/SeXmts/TaGT6euuRDHTzo
	TELjjaa8G6c1SR9SwAEKg22TTItaLfut52ZHSwVgiScOEhexlLiETbPkn43/KNL61v39JHvayvsd+
	ycHBtLoITRSgGPV8O3wOE6cjBW3k0HUyvMnzi+ZD51Knamzkk2lapLBEXqgrPxAAn2JziWdBq7ulA
	OCXe4GCbBCYEsThLeJOOiQ02bkNc6iDcYoUTdj4zpHCcvlpMQYH2nRK8gS+/ul3bVfeWauJQZaJkW
	wNxdCAoj810IkPS8LeeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYd0-0003Jo-2s; Fri, 31 May 2019 03:54:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcD-0002bB-Rt
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so7036926ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O+nUFC6cQZFpp93OxhMjcDjllvqEhXm9UXJsgqoN5M8=;
 b=t+xiYeG8anHFjLUkwJGk5+ry5Yju7kw6g4ta0KSgGAyboGGhrNonV1WkYCfT2/Cj7+
 kYx7zAXF6jQ5qkmTELt7mLjiWTQKU8Cwlo0WdqOj8Dw2rBJZ0k5+0dYpyflOth7WSDpZ
 v11kJH8WYKNmpCoGkOdCOz494Q/0OqgQNO7pWY+vB6wxwDwF3f0/SdwMkQkVsFqCzXoJ
 hGRgN25a4n+oHWcKGVp9/nuhrguNZm+QV9WQLgHlp5LSTGpx0QxY17lTz1pXYEzcTMj4
 n1YFheAA0ZyrKcn32QM3+eHuncDGv4BNp5TAwR39BN1Fkoxfe6QffOEvGgSaM3If4Y0a
 uR/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O+nUFC6cQZFpp93OxhMjcDjllvqEhXm9UXJsgqoN5M8=;
 b=dskAsluuu5elYDSB28DfQnTjf2id9JZGIuKvMlYSlMgL1cHs7Kidl2agpbRNF5jbKC
 a/EfJ9/2wN1VKE+499Uyu66zqSh0EJjZOeYNPnjPIaeywotmpSX7haiqadE3/8bionEs
 +BjUXmfvRTVyvy/zBRzPg9C9FcmCNAvw2gz5fvZ4ZGzcCHOS7sHZcN/P8Rlqb5PMzgnw
 TwEemQNs0GnXZwa1jMaP070a0FNtJq6gXkjUBzCr3dCaf8d64+jxnPa2bWG02a29qD7C
 XY8LVSo3Ks9vZhoxZKM3cXrVvCbBWKgL+7BQGhBnz6mKU+HtNmqy4WRmvavPGXOwf9dz
 eWtQ==
X-Gm-Message-State: APjAAAVCZYy1t5rG+6OM2T/rGMLD/D39Q7htI5gqAR5KeqXuvbQWCqGt
 vX7Ser8VconCscIxgYKh0Fws4w==
X-Google-Smtp-Source: APXvYqwPaTpyJS6BQunaWeVOdY5poJAngFiKLHfA5SdWYvUgoXFnSGVRKnqiMd2Nvh986wNknuTiDw==
X-Received: by 2002:a5d:8357:: with SMTP id q23mr5123411ior.10.1559274841045; 
 Thu, 30 May 2019 20:54:01 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.53.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:00 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 04/17] soc: qcom: ipa: configuration data
Date: Thu, 30 May 2019 22:53:35 -0500
Message-Id: <20190531035348.7194-5-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205402_155358_462607E0 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

This patch defines configuration data that is used to specify some
of the details of IPA hardware supported by the driver.  It is built
as Device Tree match data, discovered at boot time.  Initially the
driver only supports the Qualcomm SDM845 SoC.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_data-sdm845.c | 245 +++++++++++++++++++++++++++
 drivers/net/ipa/ipa_data.h        | 267 ++++++++++++++++++++++++++++++
 2 files changed, 512 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_data-sdm845.c
 create mode 100644 drivers/net/ipa/ipa_data.h

diff --git a/drivers/net/ipa/ipa_data-sdm845.c b/drivers/net/ipa/ipa_data-sdm845.c
new file mode 100644
index 000000000000..62c0f25f5161
--- /dev/null
+++ b/drivers/net/ipa/ipa_data-sdm845.c
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+
+#include <linux/log2.h>
+
+#include "gsi.h"
+#include "ipa_data.h"
+#include "ipa_endpoint.h"
+
+/* Differentiate Boolean from numerical options */
+#define NO	0
+#define YES	1
+
+/* Endpoint configuration for the SDM845 SoC. */
+static const struct gsi_ipa_endpoint_data gsi_ipa_endpoint_data[] = {
+	{
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 4,
+		.endpoint_id	= IPA_ENDPOINT_AP_COMMAND_TX,
+		.toward_ipa	= YES,
+		.channel = {
+			.tlv_count	= 20,
+			.wrr_priority	= YES,
+			.tre_count	= 256,
+			.event_count	= 512,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_DMA_ONLY,
+			.config = {
+				.dma_mode	= YES,
+				.dma_endpoint	= IPA_ENDPOINT_AP_LAN_RX,
+			},
+		},
+	},
+	{
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 5,
+		.endpoint_id	= IPA_ENDPOINT_AP_LAN_RX,
+		.toward_ipa	= NO,
+		.channel = {
+			.tlv_count	= 8,
+			.tre_count	= 256,
+			.event_count	= 256,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.checksum	= YES,
+				.aggregation	= YES,
+				.status_enable	= YES,
+				.rx = {
+					.pad_align	= ilog2(sizeof(u32)),
+				},
+			},
+		},
+	},
+	{
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 3,
+		.endpoint_id	= IPA_ENDPOINT_AP_MODEM_TX,
+		.toward_ipa	= YES,
+		.channel = {
+			.tlv_count	= 16,
+			.tre_count	= 512,
+			.event_count	= 512,
+		},
+		.endpoint = {
+			.support_flt	= YES,
+			.seq_type	=
+				IPA_SEQ_2ND_PKT_PROCESS_PASS_NO_DEC_UCP,
+			.config = {
+				.checksum	= YES,
+				.qmap		= YES,
+				.status_enable	= YES,
+				.tx = {
+					.delay	= YES,
+					.status_endpoint =
+						IPA_ENDPOINT_MODEM_AP_RX,
+				},
+			},
+		},
+	},
+	{
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 6,
+		.endpoint_id	= IPA_ENDPOINT_AP_MODEM_RX,
+		.toward_ipa	= NO,
+		.channel = {
+			.tlv_count	= 8,
+			.tre_count	= 256,
+			.event_count	= 256,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.checksum	= YES,
+				.qmap		= YES,
+				.aggregation	= YES,
+				.rx = {
+					.aggr_close_eof	= YES,
+				},
+			},
+		},
+	},
+	{
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 1,
+		.endpoint_id	= IPA_ENDPOINT_MODEM_COMMAND_TX,
+		.toward_ipa	= YES,
+		.endpoint = {
+			.seq_type	= IPA_SEQ_PKT_PROCESS_NO_DEC_UCP,
+		},
+	},
+	{
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 0,
+		.endpoint_id	= IPA_ENDPOINT_MODEM_LAN_TX,
+		.toward_ipa	= YES,
+		.endpoint = {
+			.support_flt	= YES,
+		},
+	},
+	{
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 3,
+		.endpoint_id	= IPA_ENDPOINT_MODEM_LAN_RX,
+		.toward_ipa	= NO,
+	},
+	{
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 4,
+		.endpoint_id	= IPA_ENDPOINT_MODEM_AP_TX,
+		.toward_ipa	= YES,
+		.endpoint = {
+			.support_flt	= YES,
+		},
+	},
+	{
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 2,
+		.endpoint_id	= IPA_ENDPOINT_MODEM_AP_RX,
+		.toward_ipa	= NO,
+	},
+};
+
+static const struct ipa_resource_src ipa_resource_src[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_PKT_CONTEXTS,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 1,
+			.max = 63,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 1,
+			.max = 63,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_LISTS,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 10,
+			.max = 10,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 10,
+			.max = 10,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_BUFF,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 12,
+			.max = 12,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 14,
+			.max = 14,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_HPS_DMARS,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 0,
+			.max = 63,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 0,
+			.max = 63,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_ACK_ENTRIES,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 14,
+			.max = 14,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 20,
+			.max = 20,
+		},
+	},
+};
+
+static const struct ipa_resource_dst ipa_resource_dst[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DATA_SECTORS,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 4,
+			.max = 4,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 4,
+			.max = 4,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DPS_DMARS,
+		.limits[IPA_RESOURCE_GROUP_LWA_DL] = {
+			.min = 2,
+			.max = 63,
+		},
+		.limits[IPA_RESOURCE_GROUP_UL_DL] = {
+			.min = 1,
+			.max = 63,
+		},
+	},
+};
+
+/* Resource configuration for the SDM845 SoC. */
+static const struct ipa_resource_data ipa_resource_data = {
+	.resource_src		= ipa_resource_src,
+	.resource_src_count	= ARRAY_SIZE(ipa_resource_src),
+	.resource_dst		= ipa_resource_dst,
+	.resource_dst_count	= ARRAY_SIZE(ipa_resource_dst),
+};
+
+/* Configuration data for the SDM845 SoC. */
+const struct ipa_data ipa_data_sdm845 = {
+	.endpoint_data		= gsi_ipa_endpoint_data,
+	.endpoint_data_count	= ARRAY_SIZE(gsi_ipa_endpoint_data),
+	.resource_data		= &ipa_resource_data,
+};
diff --git a/drivers/net/ipa/ipa_data.h b/drivers/net/ipa/ipa_data.h
new file mode 100644
index 000000000000..f7669f73efc3
--- /dev/null
+++ b/drivers/net/ipa/ipa_data.h
@@ -0,0 +1,267 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+#ifndef _IPA_DATA_H_
+#define _IPA_DATA_H_
+
+#include <linux/types.h>
+
+#include "ipa_endpoint.h"
+
+/**
+ * DOC: IPA/GSI Configuration Data
+ *
+ * Boot-time configuration data is used to define the configuration of the
+ * IPA and GSI resources to use for a given platform.  This data is supplied
+ * via the Device Tree match table, associated with a particular compatible
+ * string.  The data defines information about resources, endpoints, and
+ * channels.  For endpoints and channels, the configuration data defines how
+ * these hardware entities are initially configured, but in almost all cases,
+ * this configuration never changes.
+ *
+ * Resources are data structures used internally by the IPA hardware.  The
+ * configuration data defines the number (or limits of the number) of various
+ * types of these resources.
+ *
+ * Endpoint configuration data defines properties of both IPA endpoints and
+ * GSI channels.  A channel is a GSI construct, and represents a single
+ * communication path between the IPA and a particular execution environment
+ * (EE), such as the AP or Modem.  Each EE has a set of channels associated
+ * with it, and each channel has an ID unique for that EE.  Only GSI channels
+ * associated with the AP are of concern to this driver.
+ *
+ * An endpoint is an IPA construct representing a single channel anywhere
+ * within the system.  As such, an IPA endpoint ID maps directly to an
+ * (EE, channel_id) pair.  Generally, this driver is concerned with only
+ * endpoints associated with the AP, however this will change when support
+ * for routing (etc.) is added.  IPA endpoint and GSI channel configuration
+ * data are defined together, establishing the endpoint_id->(EE, channel_id)
+ * mapping.
+ *
+ * Endpoint configuration data consists of three parts:  properties that
+ * are common to IPA and GSI (EE ID, channel ID, endpoint ID, and direction);
+ * properties associated with the GSI channel; and properties associated with
+ * the IPA endpoint.
+ */
+
+/**
+ * struct gsi_channel_data - GSI channel configuration data
+ * @tlv_count:		number of entries in channel's TLV FIFO
+ * @wrr_priority:	whether channel gets priority (AP command TX only)
+ * @tre_count:		number of TREs in the channel ring
+ * @event_count:	number of slots in the associated event ring
+ *
+ * A GSI channel is a unidirectional means of transferring data to or from
+ * (and through) the IPA.  A GSI channel has a fixed number of "transfer
+ * elements" (TREs) that specify individual commands.  A set of commands
+ * are provided to a GSI channel, and when they complete the GSI generates
+ * an event (and an interrupt) to signal their completion.  These event
+ * structures are managed in a fixed-size event ring.
+ *
+ * Each GSI channel is fed by a FIFO if type/length/value (TLV) structures,
+ * and the number of entries in this FIFO limits the number of TREs that can
+ * be included in a single transaction.
+ *
+ * The GSI does weighted round-robin servicing of its channels, and it's
+ * possible to adjust a channel's priority of service.  Only the AP command
+ * TX channel specifies that it should get priority.
+ */
+struct gsi_channel_data {
+	u32 tlv_count;
+
+	u32 wrr_priority;
+	u32 tre_count;
+	u32 event_count;
+};
+
+/**
+ * struct ipa_endpoint_tx_data - configuration data for TX endpoints
+ * @delay:		whether endpoint starts in delay mode
+ * @status_endpoint:	endpoint to which status elements are sent
+ *
+ * Delay mode prevents an endpoint from transmitting anything, even if
+ * commands have been presented to the hardware.  Once the endpoint exits
+ * delay mode, queued transfer commands are sent.
+ *
+ * The @status_endpoint is only valid if the endpoint's @status_enable
+ * flag is set.
+ */
+struct ipa_endpoint_tx_data {
+	u32 delay;
+	enum ipa_endpoint_id status_endpoint;
+};
+
+/**
+ * struct ipa_endpoint_rx_data - configuration data for RX endpoints
+ * @pad_align:	power-of-2 boundary to which packet payload is aligned
+ * @aggr_close_eof: whether aggregation closes on end-of-frame
+ *
+ * With each packet it transfers, the IPA hardware can perform certain
+ * transformations of its packet data.  One of these is adding pad bytes
+ * to the end of the packet data so the result ends on a power-of-2 boundary.
+ *
+ * It is also able to aggregate multiple packets into a single receive buffer.
+ * Aggregation is "open" while a buffer is being filled, and "closes" when
+ * certain criteria are met.  One of those criteria is the sender indicating
+ * a "frame" consisting of several transfers has ended.
+ */
+struct ipa_endpoint_rx_data {
+	u32 pad_align;
+	u32 aggr_close_eof;
+};
+
+/**
+ * struct ipa_endpoint_config_data - IPA endpoint hardware configuration
+ * @checksum:		whether checksum offload is enabled
+ * @qmap:		whether endpoint uses QMAP protocol
+ * @aggregation:	whether endpoint supports aggregation
+ * @dma_mode:		whether endpoint operates in DMA mode
+ * @dma_endpoint:	peer endpoint, if operating in DMA mode
+ * @status_enable:	whether status elements are generated for endpoint
+ * @tx:			TX-specific endpoint information (see above)
+ * @rx:			RX-specific endpoint information (see above)
+ */
+struct ipa_endpoint_config_data {
+	u32 checksum;
+	u32 qmap;
+	u32 aggregation;
+	u32 dma_mode;
+	enum ipa_endpoint_id dma_endpoint;
+	u32 status_enable;
+	union {
+		struct ipa_endpoint_tx_data tx;
+		struct ipa_endpoint_rx_data rx;
+	};
+};
+
+/**
+ * struct ipa_endpoint_data - IPA endpoint configuration data
+ * @support_flt:	whether endpoint supports filtering
+ * @seq_type:		hardware sequencer type used for endpoint
+ * @config:		hardware configuration (see above)
+ *
+ * Not all endpoints support the IPA filtering capability.  A filter table
+ * defines the filters to apply for those endpoints that support it.  The
+ * AP is responsible for initializing this table, and it must include entries
+ * for non-AP endpoints.  For this reason we define *all* endpoints used
+ * in the system, and indicate whether they support filtering.
+ *
+ * The remaining endpoint configuration data applies only to AP endpoints.
+ * The IPA hardware is implemented by sequencers, and the AP must program
+ * the type(s) of these sequencers at initialization time.  The remaining
+ * endpoint configuration data is defined above.
+ */
+struct ipa_endpoint_data {
+	u32 support_flt;
+	/* The rest are specified only for AP endpoints */
+	enum ipa_seq_type seq_type;
+	struct ipa_endpoint_config_data config;
+};
+
+/**
+ * struct gsi_ipa_endpoint_data - GSI channel/IPA endpoint data
+ * ee:		GSI execution environment ID
+ * channel_id:	GSI channel ID
+ * endpoint_id:	IPA endpoint ID
+ * toward_ipa:	direction of data transfer
+ * gsi:		GSI channel configuration data (see above)
+ * ipa:		IPA endpoint configuration data (see above)
+ */
+struct gsi_ipa_endpoint_data {
+	u32 ee_id;
+	u32 channel_id;
+	enum ipa_endpoint_id endpoint_id;
+	u32 toward_ipa;
+
+	struct gsi_channel_data channel;
+	struct ipa_endpoint_data endpoint;
+};
+
+/** enum ipa_resource_group - IPA resource group */
+enum ipa_resource_group {
+	IPA_RESOURCE_GROUP_LWA_DL,	/* currently not used */
+	IPA_RESOURCE_GROUP_UL_DL,
+	IPA_RESOURCE_GROUP_MAX,
+};
+
+/** enum ipa_resource_type_src - source resource types */
+enum ipa_resource_type_src {
+	IPA_RESOURCE_TYPE_SRC_PKT_CONTEXTS,
+	IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_LISTS,
+	IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_BUFF,
+	IPA_RESOURCE_TYPE_SRC_HPS_DMARS,
+	IPA_RESOURCE_TYPE_SRC_ACK_ENTRIES,
+};
+
+/** enum ipa_resource_type_dst - destination resource types */
+enum ipa_resource_type_dst {
+	IPA_RESOURCE_TYPE_DST_DATA_SECTORS,
+	IPA_RESOURCE_TYPE_DST_DPS_DMARS,
+};
+
+/**
+ * struct ipa_resource_limits - minimum and maximum resource counts
+ * @min:	minimum number of resources of a given type
+ * @max:	maximum number of resources of a given type
+ */
+struct ipa_resource_limits {
+	u32 min;
+	u32 max;
+};
+
+/**
+ * struct ipa_resource_src - source endpoint group resource usage
+ * @type:	source group resource type
+ * @limits:	array of limits to use for each resource group
+ */
+struct ipa_resource_src {
+	enum ipa_resource_type_src type;
+	struct ipa_resource_limits limits[IPA_RESOURCE_GROUP_MAX];
+};
+
+/**
+ * struct ipa_resource_dst - destination endpoint group resource usage
+ * @type:	destination group resource type
+ * @limits:	array of limits to use for each resource group
+ */
+struct ipa_resource_dst {
+	enum ipa_resource_type_dst type;
+	struct ipa_resource_limits limits[IPA_RESOURCE_GROUP_MAX];
+};
+
+/**
+ * struct ipa_resource_data - IPA resource configuration data
+ * @resource_src:	source endpoint group resources
+ * @resource_src_count:	number of entries in the resource_src array
+ * @resource_dst:	destination endpoint group resources
+ * @resource_dst_count:	number of entries in the resource_dst array
+ *
+ * In order to manage quality of service between endpoints, certain resources
+ * required for operation are allocated to groups of endpoints.  Generally
+ * this information is invisible to the AP, but the AP is responsible for
+ * programming it at initialization time, so we specify it here.
+ */
+struct ipa_resource_data {
+	const struct ipa_resource_src *resource_src;
+	u32 resource_src_count;
+	const struct ipa_resource_dst *resource_dst;
+	u32 resource_dst_count;
+};
+
+/**
+ * struct ipa_data - combined IPA/GSI configuration data
+ * @resource_data:		IPA resource configuration data
+ * @endpoint_data:		IPA endpoint/GSI channel data
+ * @endpoint_data_count:	number of entries in endpoint_data array
+ */
+struct ipa_data {
+	const struct ipa_resource_data *resource_data;
+	const struct gsi_ipa_endpoint_data *endpoint_data;
+	u32 endpoint_data_count;	/* # entries in endpoint_data[] */
+};
+
+extern const struct ipa_data ipa_data_sdm845;
+
+#endif /* _IPA_DATA_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
