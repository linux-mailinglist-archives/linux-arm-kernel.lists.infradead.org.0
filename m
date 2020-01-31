Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC814E86D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 06:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmQ0GFuRSBF77AN5t1T0V66eQaSZnQJeVPolZA3mCX4=; b=rWYG/WLOZwUr52
	C1wGVq48rU9mVr1/vvCWXNOQPIAy4osPpqCJSZaduikGadDFYxdbA6lMB/1R/eL5d8Fli0+ruoov0
	c3WrSOp06EBZ8A1kJZ08NAIw7Ac5vYjt28Zdyla6gYPeohd/YOkKVq+VefKIXGOSp+QhsWoNt11hE
	UK7QpPKp+yaig3F7lOJWU5rKvcZO3/kfIXFN/DFmGOsDMOMqzCpqpNw3fdqZZe3dcdy+cjS00V9A/
	p9fJLUn4lQXe7ij4XwEGtsIP+dF0E3AhLfBLYhmkUNFQ48PsEGC0w2ou7pqdX1KQDHvk/LcDj3He/
	qApoGZ9LpTmf2fLnH6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixOrR-000197-CU; Fri, 31 Jan 2020 05:28:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixOqw-0000vJ-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 05:28:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so2711182pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 21:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DxgxLw1nnPY/CgfeiMFFCg6vQUHvoQpIfG4OaW4fgW0=;
 b=YI3YebB6HSLQ7pebDbgDP1p5gfABhA/3/u87vRsUet2WPvg0mURPloomP/N60o1MzM
 i1cUl0XUJj8QAZfgCCPTbsUg4yEKjt2D+K+v3eW7116tEWMqM6M9jdhSy2qtspzDDzvN
 FdNNajOIhmxHZqDB5u7M85rIYvIHObYGLE2t/RJLZJ2w5+kFwWolxEw2SDjRgaLwFeJ8
 UuNz6qfNrisR+TXS+UooEuMz8HO94pAt8sgO1eR0daK++L98j2TdVjzyEWA/v56YbTOV
 nXrqNG4ZxS7w/oP4iZRBk7wRfMl/8/1ti4jHaIgR8hkZdeOFkKqE7IUpAWRPsr/7FuSB
 C/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DxgxLw1nnPY/CgfeiMFFCg6vQUHvoQpIfG4OaW4fgW0=;
 b=TikclQvsP9P62ZzDleYMzMk2SmqXyweKmeSuuoQ4AIsJB3F4ym9fnPqlsk/juB5xxC
 4NsaeugrMnBuGdHnVJ/R/8wT5Fceb4ZjRp+fxq2hbTYZy9PoDaTTi/s8+IjE6f0tnX+3
 WOlCNxHKUEuRB4HdlNOOhCMdA9NC8attyYYYHSCIxpZKYtrvUS4DJGKLW/XULOryGb36
 lQ/hGyo8POeie9t7k6jYIvpRlZ1NDyhByMBGnT5TNskewgBm0rMcDscScIWfDdeA1buY
 ackdys9V65eSb1LH4wbMjODqgSAreQgejNcPqX0XCO+wJrW4Gq+YY+PFfguSp1XZJlKs
 nN4A==
X-Gm-Message-State: APjAAAVWP25tto8ArVHPgWyBnDssqcWr8NqKDYpHWRGz3SgIITd5b/H/
 R7UoSoKdIvdccdARkqSEhnXtBg==
X-Google-Smtp-Source: APXvYqyxrPWuHU5s/+tNr3ypkUHKblSmVAbtWVe7/168BQU+asPnSNYY3ohaGm6un7M6L78u/pBVYw==
X-Received: by 2002:aa7:82ce:: with SMTP id f14mr8901575pfn.167.1580448505501; 
 Thu, 30 Jan 2020 21:28:25 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id x197sm8552703pfc.1.2020.01.30.21.28.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 21:28:25 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V6 2/3] firmware: arm_scmi: Move macros and helpers to common.h
Date: Fri, 31 Jan 2020 10:58:12 +0530
Message-Id: <6615db480370719b0a0241447a5f3feb8eea421f.1580448239.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1580448239.git.viresh.kumar@linaro.org>
References: <cover.1580448239.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_212826_332437_243882E1 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, Viresh Kumar <viresh.kumar@linaro.org>,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 peter.hilber@opensynergy.com, linux-arm-kernel@lists.infradead.org,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move message header specific macros and helper routines to common.h as
they will be used outside of driver.c in a later commit.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/arm_scmi/common.h | 40 ++++++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/driver.c | 40 ------------------------------
 2 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 227934871929..934b5a23f10b 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -47,6 +47,19 @@ struct scmi_msg_resp_prot_version {
 	__le16 major_version;
 };
 
+#define MSG_ID_MASK		GENMASK(7, 0)
+#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
+#define MSG_TYPE_MASK		GENMASK(9, 8)
+#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
+#define MSG_TYPE_COMMAND	0
+#define MSG_TYPE_DELAYED_RESP	2
+#define MSG_TYPE_NOTIFICATION	3
+#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
+#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
+#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
+#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
+#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
+
 /**
  * struct scmi_msg_hdr - Message(Tx/Rx) header
  *
@@ -67,6 +80,33 @@ struct scmi_msg_hdr {
 	bool poll_completion;
 };
 
+/**
+ * pack_scmi_header() - packs and returns 32-bit header
+ *
+ * @hdr: pointer to header containing all the information on message id,
+ *	protocol id and sequence id.
+ *
+ * Return: 32-bit packed message header to be sent to the platform.
+ */
+static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
+{
+	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
+		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
+		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
+}
+
+/**
+ * unpack_scmi_header() - unpacks and records message and protocol id
+ *
+ * @msg_hdr: 32-bit packed message header sent from the platform
+ * @hdr: pointer to header to fetch message and protocol id.
+ */
+static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
+{
+	hdr->id = MSG_XTRACT_ID(msg_hdr);
+	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
+}
+
 /**
  * struct scmi_msg - Message(Tx/Rx) structure
  *
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 978eafb53471..716423063b14 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -32,19 +32,6 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/scmi.h>
 
-#define MSG_ID_MASK		GENMASK(7, 0)
-#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
-#define MSG_TYPE_MASK		GENMASK(9, 8)
-#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
-#define MSG_TYPE_COMMAND	0
-#define MSG_TYPE_DELAYED_RESP	2
-#define MSG_TYPE_NOTIFICATION	3
-#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
-#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
-#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
-#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
-#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
-
 enum scmi_error_codes {
 	SCMI_SUCCESS = 0,	/* Success */
 	SCMI_ERR_SUPPORT = -1,	/* Not supported */
@@ -210,33 +197,6 @@ static void scmi_fetch_response(struct scmi_xfer *xfer,
 	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
 }
 
-/**
- * pack_scmi_header() - packs and returns 32-bit header
- *
- * @hdr: pointer to header containing all the information on message id,
- *	protocol id and sequence id.
- *
- * Return: 32-bit packed message header to be sent to the platform.
- */
-static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
-{
-	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
-		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
-		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
-}
-
-/**
- * unpack_scmi_header() - unpacks and records message and protocol id
- *
- * @msg_hdr: 32-bit packed message header sent from the platform
- * @hdr: pointer to header to fetch message and protocol id.
- */
-static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
-{
-	hdr->id = MSG_XTRACT_ID(msg_hdr);
-	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
-}
-
 /**
  * scmi_tx_prepare() - mailbox client callback to prepare for the transfer
  *
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
