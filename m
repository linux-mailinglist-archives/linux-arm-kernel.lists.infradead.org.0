Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492F117B5B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAZ3rVP9LLlmIuiR/u4tRnjAQuXJC2gitjdqACzEV5s=; b=DB+StSyUYwU3qm
	j6u98CQ6Fn4pbFOGezz3hLs3rmSPgc1l1hL3ID0skAkm7tP/L+OaxEfr60auC6pu3SQWlSZxzBi8n
	Qno3QqIqaxNORJfX/nFBjQ2bPgttWSUGwg/R+f876CxjUCzyJxtMN+6tkQTSXdnNfMXfJ7onOJgTt
	1stlcKaAAQGGxg/+UX9xzVZ7tFynlMMXd79ySSA7nJpK9wlXnEGwtvep5xNzW4dO4yn7W3TP6D9UK
	UOgnWzEHBsTvnOfj8A7XrCSeHiDLvnY8z/B9q8awF253iwwfFDjA597goKx8stZ7R7xf55S2viH5n
	HQ3KyMNt7sBmiU9WbdtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4eI-0005pw-Bs; Fri, 06 Mar 2020 04:31:46 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4bV-0002mt-Pv
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:28:57 +0000
Received: by mail-yw1-xc44.google.com with SMTP id v138so1065946ywa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GSt5faLYca4AcJbso3LEBGMbkMJiDIuIJIY2653z1qs=;
 b=hGsIa/w9xyaXQuvVqqr1Tt9IVilT5o97JHORsVkBt9rUc7wYY80FtlyvbhTCVSUOuL
 TiJ/By1JoW5nQGhL50vOAwWo5e74CFB98LDdafw9LBZhr8rsqZTvZYTwoSDZFSvsjNx0
 Nk4G15U2mPbnxiLCD5aSU7ypohfDieuHIwfC+8DL9um8gg5JQhHuLdpwN64rtSZIf+z3
 +3e7Flk1T8wqhBBeUAXYFnZdd9rWk1SCukJxqt/+QZfar4+im3uHxwLp4LpTpeQTiqjT
 k9kfmq/7ifgktECKPelmF/APPxyJW4eUuhiMlMs2saL/eluZ3u4t4laHm5OsxYTLcm48
 i4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GSt5faLYca4AcJbso3LEBGMbkMJiDIuIJIY2653z1qs=;
 b=KYaGBH215imINVptRuefhbtuLQIvMsiR89i0cBxSM6A7W83ONS0YcfxOJmtrj3Xj5/
 FduYu/GptTW0RUIkMaSmCvu1TOaCl0B1pRKuYJuRQWQLlsdAWNXOFGWKwZN2iYvDf/LX
 2Ss8Pxd7TtQiemwLE/exXcdsSxaJfin+wduHNYzR2Z84jq3FEi8DJNiZX528N3apqaYm
 WVNZzfVeckxTnhO4JTlQAeJljXsp5gmMhFKil8eWFt1dhm+gU3qztQ6ZcGDAT/ZR5ewq
 4+/3BRlltUFzs0w4BnX+0wLR5kWDkz5sQoBeYkqKdB6eHc8FJxUOsh1q3SmPQGFfIm3S
 tk3g==
X-Gm-Message-State: ANhLgQ00GHtBst9VeO02Q1bU6Dl/1EpECYaZvYiJAc0tUZlEMpjBWdqu
 oxUzYMZtsEe2gg8v8ccfFaoWrg==
X-Google-Smtp-Source: ADFU+vuVCmd1ZmbC0nZ0pKOZ/xTjMIMTHExzy6e43ZY3xCgHN7S0YlUHDZh2OLN854T744XCjvMYUw==
X-Received: by 2002:a25:3b50:: with SMTP id i77mr1804839yba.523.1583468932275; 
 Thu, 05 Mar 2020 20:28:52 -0800 (PST)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id x2sm12581836ywa.32.2020.03.05.20.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:28:51 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: David Miller <davem@davemloft.net>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 08/17] soc: qcom: ipa: IPA interface to GSI
Date: Thu,  5 Mar 2020 22:28:22 -0600
Message-Id: <20200306042831.17827-9-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_202853_960454_4AEF8D4D 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
