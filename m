Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9DF174253
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1pWuPtxT1Yyuq2pYdZC9Y0Df3bSmCDi/xvsMp6Rl+8=; b=Jt872bi4uTcyJC
	omOVzzP9Yis3kWG0gTbEB8DPPYUHH/rAcdWQeA4Pd1gW+TvxJn4/iYu88MJYOeAu+T6zfrTkl7oNy
	v7njos0yvpMEc+w72BqA64JfnvEI3Od42BZfCDeGzqOpiz8OgNs3vy7ggLIMrRvr3tYRynqxu1B8T
	ivRCA2dTDnuwZlFDoPhBY3hPTZKWwSztHJ4LgcfFJ+C79JLbHuaI6AoEgRrrtDP1zU6siFcn4R1Fy
	KeQX20tMxQjkViNVVFqKpc6kRJ4L1jO6pjXZ0FT+Xts/eO3QoM4Vn0YTzUjdZLgW/LOovT66rNO0w
	aaO/t7a+//OoeLJmyvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oMn-0004qs-1P; Fri, 28 Feb 2020 22:44:21 +0000
Received: from mail-yw1-xc32.google.com ([2607:f8b0:4864:20::c32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKq-0003ji-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:23 +0000
Received: by mail-yw1-xc32.google.com with SMTP id d206so4890231ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N0JA1jVQWs/bwF31BbpAQ6qu/wg1v384KBX/XRnY+Z4=;
 b=tDkTIPjThAk7QX5UUYbLzxQuuZ0/RSw7B8gpvbyNa7gTpeFxVKq1GMoisKehdaItsu
 OmKy5O0T1WhcBQ4QLAyTDKG7n9eR2NjAvHwarAcVsEVzaJzSsd4UGvzE8RJ/zyOtKE1g
 yF4xgtQ4ujV8Ao/e4STJa0rM2bSaRAnv++7wSG5SiSAD4RzPN2AoeFFu4QEHrk8ajpGD
 F9lSzF5M9eN69218cZyfVoHlBkwpdsyJ01GWboQP7zqIcLx7DMgSpepH7EyPmA8Ydwlu
 I0WOG6UGzNEt6s/wuxnu0i8y5OIGU9bnzz+J0ZoWFPKh0BEaYqVay9oze3N5iSmAi/2K
 pb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N0JA1jVQWs/bwF31BbpAQ6qu/wg1v384KBX/XRnY+Z4=;
 b=cFuys2eHHELl/8XFeDf19iI6ZBb13voaNmuSd0zivl+Xj8A9SSgNFLd12zAD29KoHO
 2/dJe6zafNGQO07QTTnRfpCwnW/rigzhMrc7jGVryMBb7mOfoUTBu9kGeMXRonyTk1fq
 LURU/G/eBZzD2ZF6aUct+0wP9KPmzErBcxIvcG1WkqoOY2xVrngCgzXEm4AeCSf11o1j
 i775wii8KnKvyOZRDJKafJgIPZoNKECfBsQq5Qqf2hROTBlk2uL4LI9gq4HbIin0JzYT
 rMJmhXaNvwvecaDq+y07Qbjsl0WXm10CmLROqQg58/SuLWy8mFB6YRA6TB5GBQmnjsES
 CoPg==
X-Gm-Message-State: APjAAAVbIcllF+3LgLOUNSg+zRX1xWSf1bm4nsTShXU2BSlsdAvHQr9R
 AU1NTdU/nAPoZYHKMNk9JhFWZw==
X-Google-Smtp-Source: APXvYqwO2UDNS9wj/Int/im9d98qw56XdCPeNJ0JRccePqLKUjJlJUflAQOcLqNpogcn+ch+tby1kw==
X-Received: by 2002:a25:c902:: with SMTP id z2mr5625145ybf.425.1582929738057; 
 Fri, 28 Feb 2020 14:42:18 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:17 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 04/17] soc: qcom: ipa: configuration data
Date: Fri, 28 Feb 2020 16:41:51 -0600
Message-Id: <20200228224204.17746-5-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144220_288238_E9645B1C 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c32 listed in]
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

This patch defines configuration data that is used to specify some
of the details of IPA hardware supported by the driver.  It is built
as Device Tree match data, discovered at boot time.  The driver
supports the Qualcomm SDM845 SoC.  Data for the Qualcomm SC7180 is
also defined here, but it is not yet completely supported.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_data-sc7180.c | 307 ++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_data-sdm845.c | 329 ++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_data.h        | 280 +++++++++++++++++++++++++
 3 files changed, 916 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_data-sc7180.c
 create mode 100644 drivers/net/ipa/ipa_data-sdm845.c
 create mode 100644 drivers/net/ipa/ipa_data.h

diff --git a/drivers/net/ipa/ipa_data-sc7180.c b/drivers/net/ipa/ipa_data-sc7180.c
new file mode 100644
index 000000000000..042b5fc3c135
--- /dev/null
+++ b/drivers/net/ipa/ipa_data-sc7180.c
@@ -0,0 +1,307 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (C) 2019-2020 Linaro Ltd. */
+
+#include <linux/log2.h>
+
+#include "gsi.h"
+#include "ipa_data.h"
+#include "ipa_endpoint.h"
+#include "ipa_mem.h"
+
+/* Endpoint configuration for the SC7180 SoC. */
+static const struct ipa_gsi_endpoint_data ipa_gsi_endpoint_data[] = {
+	[IPA_ENDPOINT_AP_COMMAND_TX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 1,
+		.endpoint_id	= 6,
+		.toward_ipa	= true,
+		.channel = {
+			.tre_count	= 256,
+			.event_count	= 256,
+			.tlv_count	= 20,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_DMA_ONLY,
+			.config = {
+				.dma_mode	= true,
+				.dma_endpoint	= IPA_ENDPOINT_AP_LAN_RX,
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_LAN_RX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 2,
+		.endpoint_id	= 8,
+		.toward_ipa	= false,
+		.channel = {
+			.tre_count	= 256,
+			.event_count	= 256,
+			.tlv_count	= 6,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.aggregation	= true,
+				.status_enable	= true,
+				.rx = {
+					.pad_align	= ilog2(sizeof(u32)),
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_MODEM_TX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 0,
+		.endpoint_id	= 1,
+		.toward_ipa	= true,
+		.channel = {
+			.tre_count	= 512,
+			.event_count	= 512,
+			.tlv_count	= 8,
+		},
+		.endpoint = {
+			.filter_support	= true,
+			.seq_type	=
+				IPA_SEQ_PKT_PROCESS_NO_DEC_NO_UCP_DMAP,
+			.config = {
+				.checksum	= true,
+				.qmap		= true,
+				.status_enable	= true,
+				.tx = {
+					.status_endpoint =
+						IPA_ENDPOINT_MODEM_AP_RX,
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_MODEM_RX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 3,
+		.endpoint_id	= 9,
+		.toward_ipa	= false,
+		.channel = {
+			.tre_count	= 256,
+			.event_count	= 256,
+			.tlv_count	= 6,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.checksum	= true,
+				.qmap		= true,
+				.aggregation	= true,
+				.rx = {
+					.aggr_close_eof	= true,
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_MODEM_COMMAND_TX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 1,
+		.endpoint_id	= 5,
+		.toward_ipa	= true,
+	},
+	[IPA_ENDPOINT_MODEM_LAN_RX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 3,
+		.endpoint_id	= 13,
+		.toward_ipa	= false,
+	},
+	[IPA_ENDPOINT_MODEM_AP_TX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 0,
+		.endpoint_id	= 4,
+		.toward_ipa	= true,
+		.endpoint = {
+			.filter_support	= true,
+		},
+	},
+	[IPA_ENDPOINT_MODEM_AP_RX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 2,
+		.endpoint_id	= 10,
+		.toward_ipa	= false,
+	},
+};
+
+/* For the SC7180, resource groups are allocated this way:
+ *   group 0:	UL_DL
+ */
+static const struct ipa_resource_src ipa_resource_src[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_PKT_CONTEXTS,
+		.limits[0] = {
+			.min = 3,
+			.max = 63,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_LISTS,
+		.limits[0] = {
+			.min = 3,
+			.max = 3,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_BUFF,
+		.limits[0] = {
+			.min = 10,
+			.max = 10,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_HPS_DMARS,
+		.limits[0] = {
+			.min = 1,
+			.max = 1,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_ACK_ENTRIES,
+		.limits[0] = {
+			.min = 5,
+			.max = 5,
+		},
+	},
+};
+
+static const struct ipa_resource_dst ipa_resource_dst[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DATA_SECTORS,
+		.limits[0] = {
+			.min = 3,
+			.max = 3,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DPS_DMARS,
+		.limits[0] = {
+			.min = 1,
+			.max = 63,
+		},
+	},
+};
+
+/* Resource configuration for the SC7180 SoC. */
+static const struct ipa_resource_data ipa_resource_data = {
+	.resource_src_count	= ARRAY_SIZE(ipa_resource_src),
+	.resource_src		= ipa_resource_src,
+	.resource_dst_count	= ARRAY_SIZE(ipa_resource_dst),
+	.resource_dst		= ipa_resource_dst,
+};
+
+/* IPA-resident memory region configuration for the SC7180 SoC. */
+static const struct ipa_mem ipa_mem_data[] = {
+	[IPA_MEM_UC_SHARED] = {
+		.offset		= 0x0000,
+		.size		= 0x0080,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_UC_INFO] = {
+		.offset		= 0x0080,
+		.size		= 0x0200,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_FILTER_HASHED] = {
+		.offset		= 0x0288,
+		.size		= 0,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_FILTER] = {
+		.offset		= 0x0290,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_FILTER_HASHED] = {
+		.offset		= 0x0310,
+		.size		= 0,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_FILTER] = {
+		.offset		= 0x0318,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_ROUTE_HASHED] = {
+		.offset		= 0x0398,
+		.size		= 0,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_ROUTE] = {
+		.offset		= 0x03a0,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_ROUTE_HASHED] = {
+		.offset		= 0x0420,
+		.size		= 0,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_ROUTE] = {
+		.offset		= 0x0428,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_MODEM_HEADER] = {
+		.offset		= 0x04a8,
+		.size		= 0x0140,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_AP_HEADER] = {
+		.offset		= 0x05e8,
+		.size		= 0x0000,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_MODEM_PROC_CTX] = {
+		.offset		= 0x05f0,
+		.size		= 0x0200,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_AP_PROC_CTX] = {
+		.offset		= 0x07f0,
+		.size		= 0x0200,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_PDN_CONFIG] = {
+		.offset		= 0x09f8,
+		.size		= 0x0050,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_STATS_QUOTA] = {
+		.offset		= 0x0a50,
+		.size		= 0x0060,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_STATS_TETHERING] = {
+		.offset		= 0x0ab0,
+		.size		= 0x0140,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_STATS_DROP] = {
+		.offset		= 0x0bf0,
+		.size		= 0,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_MODEM] = {
+		.offset		= 0x0bf0,
+		.size		= 0x140c,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_UC_EVENT_RING] = {
+		.offset		= 0x2000,
+		.size		= 0,
+		.canary_count	= 1,
+	},
+};
+
+/* Configuration data for the SC7180 SoC. */
+const struct ipa_data ipa_data_sc7180 = {
+	.version	= IPA_VERSION_4_2,
+	.endpoint_count	= ARRAY_SIZE(ipa_gsi_endpoint_data),
+	.endpoint_data	= ipa_gsi_endpoint_data,
+	.resource_data	= &ipa_resource_data,
+	.mem_count	= ARRAY_SIZE(ipa_mem_data),
+	.mem_data	= ipa_mem_data,
+};
diff --git a/drivers/net/ipa/ipa_data-sdm845.c b/drivers/net/ipa/ipa_data-sdm845.c
new file mode 100644
index 000000000000..0d9c36e1e806
--- /dev/null
+++ b/drivers/net/ipa/ipa_data-sdm845.c
@@ -0,0 +1,329 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+
+#include <linux/log2.h>
+
+#include "gsi.h"
+#include "ipa_data.h"
+#include "ipa_endpoint.h"
+#include "ipa_mem.h"
+
+/* Endpoint configuration for the SDM845 SoC. */
+static const struct ipa_gsi_endpoint_data ipa_gsi_endpoint_data[] = {
+	[IPA_ENDPOINT_AP_COMMAND_TX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 4,
+		.endpoint_id	= 5,
+		.toward_ipa	= true,
+		.channel = {
+			.tre_count	= 512,
+			.event_count	= 256,
+			.tlv_count	= 20,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_DMA_ONLY,
+			.config = {
+				.dma_mode	= true,
+				.dma_endpoint	= IPA_ENDPOINT_AP_LAN_RX,
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_LAN_RX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 5,
+		.endpoint_id	= 9,
+		.toward_ipa	= false,
+		.channel = {
+			.tre_count	= 256,
+			.event_count	= 256,
+			.tlv_count	= 8,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.checksum	= true,
+				.aggregation	= true,
+				.status_enable	= true,
+				.rx = {
+					.pad_align	= ilog2(sizeof(u32)),
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_MODEM_TX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 3,
+		.endpoint_id	= 2,
+		.toward_ipa	= true,
+		.channel = {
+			.tre_count	= 512,
+			.event_count	= 512,
+			.tlv_count	= 16,
+		},
+		.endpoint = {
+			.filter_support	= true,
+			.seq_type	=
+				IPA_SEQ_2ND_PKT_PROCESS_PASS_NO_DEC_UCP,
+			.config = {
+				.checksum	= true,
+				.qmap		= true,
+				.status_enable	= true,
+				.tx = {
+					.status_endpoint =
+						IPA_ENDPOINT_MODEM_AP_RX,
+					.delay	= true,
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_AP_MODEM_RX] = {
+		.ee_id		= GSI_EE_AP,
+		.channel_id	= 6,
+		.endpoint_id	= 10,
+		.toward_ipa	= false,
+		.channel = {
+			.tre_count	= 256,
+			.event_count	= 256,
+			.tlv_count	= 8,
+		},
+		.endpoint = {
+			.seq_type	= IPA_SEQ_INVALID,
+			.config = {
+				.checksum	= true,
+				.qmap		= true,
+				.aggregation	= true,
+				.rx = {
+					.aggr_close_eof	= true,
+				},
+			},
+		},
+	},
+	[IPA_ENDPOINT_MODEM_COMMAND_TX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 1,
+		.endpoint_id	= 4,
+		.toward_ipa	= true,
+	},
+	[IPA_ENDPOINT_MODEM_LAN_TX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 0,
+		.endpoint_id	= 3,
+		.toward_ipa	= true,
+		.endpoint = {
+			.filter_support	= true,
+		},
+	},
+	[IPA_ENDPOINT_MODEM_LAN_RX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 3,
+		.endpoint_id	= 13,
+		.toward_ipa	= false,
+	},
+	[IPA_ENDPOINT_MODEM_AP_TX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 4,
+		.endpoint_id	= 6,
+		.toward_ipa	= true,
+		.endpoint = {
+			.filter_support	= true,
+		},
+	},
+	[IPA_ENDPOINT_MODEM_AP_RX] = {
+		.ee_id		= GSI_EE_MODEM,
+		.channel_id	= 2,
+		.endpoint_id	= 12,
+		.toward_ipa	= false,
+	},
+};
+
+/* For the SDM845, resource groups are allocated this way:
+ *   group 0:	LWA_DL
+ *   group 1:	UL_DL
+ */
+static const struct ipa_resource_src ipa_resource_src[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_PKT_CONTEXTS,
+		.limits[0] = {
+			.min = 1,
+			.max = 63,
+		},
+		.limits[1] = {
+			.min = 1,
+			.max = 63,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_LISTS,
+		.limits[0] = {
+			.min = 10,
+			.max = 10,
+		},
+		.limits[1] = {
+			.min = 10,
+			.max = 10,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_DESCRIPTOR_BUFF,
+		.limits[0] = {
+			.min = 12,
+			.max = 12,
+		},
+		.limits[1] = {
+			.min = 14,
+			.max = 14,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_HPS_DMARS,
+		.limits[0] = {
+			.min = 0,
+			.max = 63,
+		},
+		.limits[1] = {
+			.min = 0,
+			.max = 63,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_SRC_ACK_ENTRIES,
+		.limits[0] = {
+			.min = 14,
+			.max = 14,
+		},
+		.limits[1] = {
+			.min = 20,
+			.max = 20,
+		},
+	},
+};
+
+static const struct ipa_resource_dst ipa_resource_dst[] = {
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DATA_SECTORS,
+		.limits[0] = {
+			.min = 4,
+			.max = 4,
+		},
+		.limits[1] = {
+			.min = 4,
+			.max = 4,
+		},
+	},
+	{
+		.type = IPA_RESOURCE_TYPE_DST_DPS_DMARS,
+		.limits[0] = {
+			.min = 2,
+			.max = 63,
+		},
+		.limits[1] = {
+			.min = 1,
+			.max = 63,
+		},
+	},
+};
+
+/* Resource configuration for the SDM845 SoC. */
+static const struct ipa_resource_data ipa_resource_data = {
+	.resource_src_count	= ARRAY_SIZE(ipa_resource_src),
+	.resource_src		= ipa_resource_src,
+	.resource_dst_count	= ARRAY_SIZE(ipa_resource_dst),
+	.resource_dst		= ipa_resource_dst,
+};
+
+/* IPA-resident memory region configuration for the SDM845 SoC. */
+static const struct ipa_mem ipa_mem_data[] = {
+	[IPA_MEM_UC_SHARED] = {
+		.offset		= 0x0000,
+		.size		= 0x0080,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_UC_INFO] = {
+		.offset		= 0x0080,
+		.size		= 0x0200,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_V4_FILTER_HASHED] = {
+		.offset		= 0x0288,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_FILTER] = {
+		.offset		= 0x0308,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_FILTER_HASHED] = {
+		.offset		= 0x0388,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_FILTER] = {
+		.offset		= 0x0408,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_ROUTE_HASHED] = {
+		.offset		= 0x0488,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V4_ROUTE] = {
+		.offset		= 0x0508,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_ROUTE_HASHED] = {
+		.offset		= 0x0588,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_V6_ROUTE] = {
+		.offset		= 0x0608,
+		.size		= 0x0078,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_MODEM_HEADER] = {
+		.offset		= 0x0688,
+		.size		= 0x0140,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_AP_HEADER] = {
+		.offset		= 0x07c8,
+		.size		= 0x0000,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_MODEM_PROC_CTX] = {
+		.offset		= 0x07d0,
+		.size		= 0x0200,
+		.canary_count	= 2,
+	},
+	[IPA_MEM_AP_PROC_CTX] = {
+		.offset		= 0x09d0,
+		.size		= 0x0200,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_MODEM] = {
+		.offset		= 0x0bd8,
+		.size		= 0x1024,
+		.canary_count	= 0,
+	},
+	[IPA_MEM_UC_EVENT_RING] = {
+		.offset		= 0x1c00,
+		.size		= 0x0400,
+		.canary_count	= 1,
+	},
+};
+
+/* Configuration data for the SDM845 SoC. */
+const struct ipa_data ipa_data_sdm845 = {
+	.version	= IPA_VERSION_3_5_1,
+	.endpoint_count	= ARRAY_SIZE(ipa_gsi_endpoint_data),
+	.endpoint_data	= ipa_gsi_endpoint_data,
+	.resource_data	= &ipa_resource_data,
+	.mem_count	= ARRAY_SIZE(ipa_mem_data),
+	.mem_data	= ipa_mem_data,
+};
diff --git a/drivers/net/ipa/ipa_data.h b/drivers/net/ipa/ipa_data.h
new file mode 100644
index 000000000000..7110de2de817
--- /dev/null
+++ b/drivers/net/ipa/ipa_data.h
@@ -0,0 +1,280 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+#ifndef _IPA_DATA_H_
+#define _IPA_DATA_H_
+
+#include <linux/types.h>
+
+#include "ipa_version.h"
+#include "ipa_endpoint.h"
+#include "ipa_mem.h"
+
+/**
+ * DOC: IPA/GSI Configuration Data
+ *
+ * Boot-time configuration data is used to define the configuration of the
+ * IPA and GSI resources to use for a given platform.  This data is supplied
+ * via the Device Tree match table, associated with a particular compatible
+ * string.  The data defines information about resources, endpoints, and
+ * channels.
+ *
+ * Resources are data structures used internally by the IPA hardware.  The
+ * configuration data defines the number (or limits of the number) of various
+ * types of these resources.
+ *
+ * Endpoint configuration data defines properties of both IPA endpoints and
+ * GSI channels.  A channel is a GSI construct, and represents a single
+ * communication path between the IPA and a particular execution environment
+ * (EE), such as the AP or Modem.  Each EE has a set of channels associated
+ * with it, and each channel has an ID unique for that EE.  For the most part
+ * the only GSI channels of concern to this driver belong to the AP
+ *
+ * An endpoint is an IPA construct representing a single channel anywhere
+ * in the system.  An IPA endpoint ID maps directly to an (EE, channel_id)
+ * pair.  Generally, this driver is concerned with only endpoints associated
+ * with the AP, however this will change when support for routing (etc.) is
+ * added.  IPA endpoint and GSI channel configuration data are defined
+ * together, establishing the endpoint_id->(EE, channel_id) mapping.
+ *
+ * Endpoint configuration data consists of three parts:  properties that
+ * are common to IPA and GSI (EE ID, channel ID, endpoint ID, and direction);
+ * properties associated with the GSI channel; and properties associated with
+ * the IPA endpoint.
+ */
+
+/* The maximum value returned by ipa_resource_group_count() */
+#define IPA_RESOURCE_GROUP_COUNT	4
+
+/** enum ipa_resource_type_src - source resource types */
+/**
+ * struct gsi_channel_data - GSI channel configuration data
+ * @tre_count:		number of TREs in the channel ring
+ * @event_count:	number of slots in the associated event ring
+ * @tlv_count:		number of entries in channel's TLV FIFO
+ *
+ * A GSI channel is a unidirectional means of transferring data to or
+ * from (and through) the IPA.  A GSI channel has a ring buffer made
+ * up of "transfer elements" (TREs) that specify individual data transfers
+ * or IPA immediate commands.  TREs are filled by the AP, and control
+ * is passed to IPA hardware by writing the last written element
+ * into a doorbell register.
+ *
+ * When data transfer commands have completed the GSI generates an
+ * event (a structure of data) and optionally signals the AP with
+ * an interrupt.  Event structures are implemented by another ring
+ * buffer, directed toward the AP from the IPA.
+ *
+ * The input to a GSI channel is a FIFO of type/length/value (TLV)
+ * elements, and the size of this FIFO limits the number of TREs
+ * that can be included in a single transaction.
+ */
+struct gsi_channel_data {
+	u16 tre_count;
+	u16 event_count;
+	u8 tlv_count;
+};
+
+/**
+ * struct ipa_endpoint_tx_data - configuration data for TX endpoints
+ * @status_endpoint:	endpoint to which status elements are sent
+ * @delay:		whether endpoint starts in delay mode
+ *
+ * Delay mode prevents a TX endpoint from transmitting anything, even if
+ * commands have been presented to the hardware.  Once the endpoint exits
+ * delay mode, queued transfer commands are sent.
+ *
+ * The @status_endpoint is only valid if the endpoint's @status_enable
+ * flag is set.
+ */
+struct ipa_endpoint_tx_data {
+	enum ipa_endpoint_name status_endpoint;
+	bool delay;
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
+	bool aggr_close_eof;
+};
+
+/**
+ * struct ipa_endpoint_config_data - IPA endpoint hardware configuration
+ * @checksum:		whether checksum offload is enabled
+ * @qmap:		whether endpoint uses QMAP protocol
+ * @aggregation:	whether endpoint supports aggregation
+ * @status_enable:	whether endpoint uses status elements
+ * @dma_mode:		whether endpoint operates in DMA mode
+ * @dma_endpoint:	peer endpoint, if operating in DMA mode
+ * @tx:			TX-specific endpoint information (see above)
+ * @rx:			RX-specific endpoint information (see above)
+ */
+struct ipa_endpoint_config_data {
+	bool checksum;
+	bool qmap;
+	bool aggregation;
+	bool status_enable;
+	bool dma_mode;
+	enum ipa_endpoint_name dma_endpoint;
+	union {
+		struct ipa_endpoint_tx_data tx;
+		struct ipa_endpoint_rx_data rx;
+	};
+};
+
+/**
+ * struct ipa_endpoint_data - IPA endpoint configuration data
+ * @filter_support:	whether endpoint supports filtering
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
+	bool filter_support;
+	/* The next two are specified only for AP endpoints */
+	enum ipa_seq_type seq_type;
+	struct ipa_endpoint_config_data config;
+};
+
+/**
+ * struct ipa_gsi_endpoint_data - GSI channel/IPA endpoint data
+ * ee:		GSI execution environment ID
+ * channel_id:	GSI channel ID
+ * endpoint_id:	IPA endpoint ID
+ * toward_ipa:	direction of data transfer
+ * gsi:		GSI channel configuration data (see above)
+ * ipa:		IPA endpoint configuration data (see above)
+ */
+struct ipa_gsi_endpoint_data {
+	u8 ee_id;		/* enum gsi_ee_id */
+	u8 channel_id;
+	u8 endpoint_id;
+	bool toward_ipa;
+
+	struct gsi_channel_data channel;
+	struct ipa_endpoint_data endpoint;
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
+	struct ipa_resource_limits limits[IPA_RESOURCE_GROUP_COUNT];
+};
+
+/**
+ * struct ipa_resource_dst - destination endpoint group resource usage
+ * @type:	destination group resource type
+ * @limits:	array of limits to use for each resource group
+ */
+struct ipa_resource_dst {
+	enum ipa_resource_type_dst type;
+	struct ipa_resource_limits limits[IPA_RESOURCE_GROUP_COUNT];
+};
+
+/**
+ * struct ipa_resource_data - IPA resource configuration data
+ * @resource_src_count:	number of entries in the resource_src array
+ * @resource_src:	source endpoint group resources
+ * @resource_dst_count:	number of entries in the resource_dst array
+ * @resource_dst:	destination endpoint group resources
+ *
+ * In order to manage quality of service between endpoints, certain resources
+ * required for operation are allocated to groups of endpoints.  Generally
+ * this information is invisible to the AP, but the AP is responsible for
+ * programming it at initialization time, so we specify it here.
+ */
+struct ipa_resource_data {
+	u32 resource_src_count;
+	const struct ipa_resource_src *resource_src;
+	u32 resource_dst_count;
+	const struct ipa_resource_dst *resource_dst;
+};
+
+/**
+ * struct ipa_mem - IPA-local memory region description
+ * @offset:		offset in IPA memory space to base of the region
+ * @size:		size in bytes base of the region
+ * @canary_count:	number of 32-bit "canary" values that precede region
+ */
+struct ipa_mem_data {
+	u32 offset;
+	u16 size;
+	u16 canary_count;
+};
+
+/**
+ * struct ipa_data - combined IPA/GSI configuration data
+ * @version:		IPA hardware version
+ * @endpoint_count:	number of entries in endpoint_data array
+ * @endpoint_data:	IPA endpoint/GSI channel data
+ * @resource_data:	IPA resource configuration data
+ * @mem_count:		number of entries in mem_data array
+ * @mem_data:		IPA-local shared memory region data
+ */
+struct ipa_data {
+	enum ipa_version version;
+	u32 endpoint_count;	/* # entries in endpoint_data[] */
+	const struct ipa_gsi_endpoint_data *endpoint_data;
+	const struct ipa_resource_data *resource_data;
+	u32 mem_count;		/* # entries in mem_data[] */
+	const struct ipa_mem *mem_data;
+};
+
+extern const struct ipa_data ipa_data_sdm845;
+extern const struct ipa_data ipa_data_sc7180;
+
+#endif /* _IPA_DATA_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
