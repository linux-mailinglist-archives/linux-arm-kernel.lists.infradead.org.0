Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495CA174273
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAZ3rVP9LLlmIuiR/u4tRnjAQuXJC2gitjdqACzEV5s=; b=hYt8Fn9yRMg9Qj
	MSkzceh5nROmKo12ui+dDO/6/JMN0h0fS6FRqJLmR2zAAS+biuyyxRh4lQISQWFYRgpN+KfQ2iRpk
	JRtpJvf9OX+0mvKBXsidxiIFphNVDE+bAjFhb+nkFjbGUUGu3Dwrgw2wfdYg06e1Sv2e8wGO8OZUs
	qjL0xRrC3ny8klkhARn6xzKQqLhON3HFDA5LKLPxK6h/EKGgYHBucQXgxMt6bSP0bW6Q29xIalu2g
	/0rBoWnbv4UtR+tWNy+vLBeV9st1hjNuah4sYDGW7RjMcOC/raRZe7T0YbiudGAX8IN88kwbGgR38
	/3lL4TD89V3bPy08PFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oNo-0006FS-S9; Fri, 28 Feb 2020 22:45:24 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKy-0003pe-Dx
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:32 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n127so4915968ywd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GSt5faLYca4AcJbso3LEBGMbkMJiDIuIJIY2653z1qs=;
 b=n27LLQO4fxLC/vx1IUby/iG5qg8nrK0PVUru7gTopDoj7YDgLK64U31I4Up9Dfnj5W
 cKl+eZ7FZX12ndm1beXvwuKfS1HQyD7huM2uOUuu3w1flT4qU62n2Mji2LELqJ+s+fEk
 GWr3H+/q8BhoByJdA9GjvZ1YV5isxdU59SvCBLCnP7soEvgkVXgKHv9NySV9Y0HUsYrt
 Xnos0iFgENPrBrW6CL4Yv25YevJ9noGrClgtzkoJClx3L1m0gjASgt92F8oODK65B5mM
 UjqJm9OhZc8z1pVXQ3ytSkHYKTJVM+k09AQVQZe7gwKMH9f1PbChwUHjlebxnBl7XnyB
 5EOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GSt5faLYca4AcJbso3LEBGMbkMJiDIuIJIY2653z1qs=;
 b=Z1xHjmU8Cp7kP+d5rqjuTWzYTMndYzi6EZcE6hafHlCd+cfp66QruK7jtSDPXYx3CJ
 YL+aWMgOnN+7OwKe4uhA3bX8jiTXmRDsFUSB1XNWKeRfbGYwEvetfO7E6H4zJcBXNUeW
 hrB+tKexDI7HSYlJPJLVccu1FsR/N4bWMTuAs/76MYBgZEk54/07/n3ZgY9J/ZbYORZY
 sEkBtBxvssDVi3XOoPi2w52Gb2z3okbf/CXFLGhwPDSU7RgdP66hWyC0ra69KMoGS/Sx
 kUzU8HWvOF8vjTcIoaVd9XXEzOVbfTm652psRPQL2oBvF6bj6sFaHxT675pztUyWyV/S
 CpSQ==
X-Gm-Message-State: APjAAAUDV+au2BccPNWf5UiHGoxbLhQbh/WqVhimhMDo1xZy3KtjQFfN
 U2tl+ual/gJD87UvbxOgR+UliQ==
X-Google-Smtp-Source: APXvYqwm8qR4Jqt5uFYcZzaP1JgcSaExwXlCTMjLAGxC0Eu3f1PZ2tmN4bFG7LwXdep2fvngNPTwSw==
X-Received: by 2002:a0d:d106:: with SMTP id t6mr6796249ywd.211.1582929747125; 
 Fri, 28 Feb 2020 14:42:27 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:26 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 08/17] soc: qcom: ipa: IPA interface to GSI
Date: Fri, 28 Feb 2020 16:41:55 -0600
Message-Id: <20200228224204.17746-9-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144228_602574_983E061E 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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

This patch provides interface functions supplied by the IPA layer
that are called from the GSI layer.  One function is called when a
GSI transaction has completed.  The others allow the GSI layer to
inform the IPA layer when the hardware has been told it has new TREs
to execute, and when the hardware has indicated transactions have
completed.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_gsi.c | 54 +++++++++++++++++++++++++++++++++++
 drivers/net/ipa/ipa_gsi.h | 60 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+)
 create mode 100644 drivers/net/ipa/ipa_gsi.c
 create mode 100644 drivers/net/ipa/ipa_gsi.h

diff --git a/drivers/net/ipa/ipa_gsi.c b/drivers/net/ipa/ipa_gsi.c
new file mode 100644
index 000000000000..dc4a5c2196ae
--- /dev/null
+++ b/drivers/net/ipa/ipa_gsi.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+
+#include <linux/types.h>
+
+#include "gsi_trans.h"
+#include "ipa.h"
+#include "ipa_endpoint.h"
+#include "ipa_data.h"
+
+void ipa_gsi_trans_complete(struct gsi_trans *trans)
+{
+	struct ipa *ipa = container_of(trans->gsi, struct ipa, gsi);
+
+	ipa_endpoint_trans_complete(ipa->channel_map[trans->channel_id], trans);
+}
+
+void ipa_gsi_trans_release(struct gsi_trans *trans)
+{
+	struct ipa *ipa = container_of(trans->gsi, struct ipa, gsi);
+
+	ipa_endpoint_trans_release(ipa->channel_map[trans->channel_id], trans);
+}
+
+void ipa_gsi_channel_tx_queued(struct gsi *gsi, u32 channel_id, u32 count,
+			       u32 byte_count)
+{
+	struct ipa *ipa = container_of(gsi, struct ipa, gsi);
+	struct ipa_endpoint *endpoint;
+
+	endpoint = ipa->channel_map[channel_id];
+	if (endpoint->netdev)
+		netdev_sent_queue(endpoint->netdev, byte_count);
+}
+
+void ipa_gsi_channel_tx_completed(struct gsi *gsi, u32 channel_id, u32 count,
+				  u32 byte_count)
+{
+	struct ipa *ipa = container_of(gsi, struct ipa, gsi);
+	struct ipa_endpoint *endpoint;
+
+	endpoint = ipa->channel_map[channel_id];
+	if (endpoint->netdev)
+		netdev_completed_queue(endpoint->netdev, count, byte_count);
+}
+
+/* Indicate whether an endpoint config data entry is "empty" */
+bool ipa_gsi_endpoint_data_empty(const struct ipa_gsi_endpoint_data *data)
+{
+	return data->ee_id == GSI_EE_AP && !data->channel.tlv_count;
+}
diff --git a/drivers/net/ipa/ipa_gsi.h b/drivers/net/ipa/ipa_gsi.h
new file mode 100644
index 000000000000..3cf18600c68e
--- /dev/null
+++ b/drivers/net/ipa/ipa_gsi.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (c) 2012-2018, The Linux Foundation. All rights reserved.
+ * Copyright (C) 2019-2020 Linaro Ltd.
+ */
+#ifndef _IPA_GSI_TRANS_H_
+#define _IPA_GSI_TRANS_H_
+
+#include <linux/types.h>
+
+struct gsi_trans;
+
+/**
+ * ipa_gsi_trans_complete() - GSI transaction completion callback
+ * @trans:	Transaction that has completed
+ *
+ * This called from the GSI layer to notify the IPA layer that a
+ * transaction has completed.
+ */
+void ipa_gsi_trans_complete(struct gsi_trans *trans);
+
+/**
+ * ipa_gsi_trans_release() - GSI transaction release callback
+ * @trans:	Transaction whose resources should be freed
+ *
+ * This called from the GSI layer to notify the IPA layer that a
+ * transaction is about to be freed, so any resources associated
+ * with it should be released.
+ */
+void ipa_gsi_trans_release(struct gsi_trans *trans);
+
+/**
+ * ipa_gsi_channel_tx_queued() - GSI queued to hardware notification
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel number
+ * @count:	Number of transactions queued
+ * @byte_count:	Number of bytes to transfer represented by transactions
+ *
+ * This called from the GSI layer to notify the IPA layer that some
+ * number of transactions have been queued to hardware for execution.
+ */
+void ipa_gsi_channel_tx_queued(struct gsi *gsi, u32 channel_id, u32 count,
+			       u32 byte_count);
+/**
+ * ipa_gsi_trans_complete() - GSI transaction completion callback
+ipa_gsi_channel_tx_completed()
+ * @gsi:	GSI pointer
+ * @channel_id:	Channel number
+ * @count:	Number of transactions completed since last report
+ * @byte_count:	Number of bytes transferred represented by transactions
+ *
+ * This called from the GSI layer to notify the IPA layer that the hardware
+ * has reported the completion of some number of transactions.
+ */
+void ipa_gsi_channel_tx_completed(struct gsi *gsi, u32 channel_id, u32 count,
+				  u32 byte_count);
+
+bool ipa_gsi_endpoint_data_empty(const struct ipa_gsi_endpoint_data *data);
+
+#endif /* _IPA_GSI_TRANS_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
