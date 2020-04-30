Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E001BF721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=obmFxcHPlKTprPtFzGIFqNUYT5jhNyLM8bKoayr53rs=; b=u/peUKIrvTZf/MC2xB4bYcxs6U
	oXVhcwRi3PvmZ9RMsa5BANGK5YRyagIOuIq+9V8GI+lfVujOzBIdpnHVy+yXUGbOPWFVtRdbGPcAl
	5PSTMUlCZgMPBuj+ZrYky08BXbqdri4mD9TqNAxf9HWnP7uLiMclT7y2ACIQXrhi/fcmSrk6A1isr
	it0x3/CkEGvQk1/McyhbJCv+paIdS5kWEb3PsExsyvv4zS4xbXrMHwcrhJPB8Q5cajepX79lVJRlr
	rgE6CltNZjtlFif5G6M4nn/7gRmBb7L8DtfI9g+8ZpTCjr3AHa8OGKNK9UhFdQyZUdhYW7srD4aTo
	r2TtsRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7hN-0007PU-EJ; Thu, 30 Apr 2020 11:49:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7gJ-0006aQ-Dh
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:48:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A91B6106F;
 Thu, 30 Apr 2020 04:48:42 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 74E6F3F305;
 Thu, 30 Apr 2020 04:48:41 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] firmware: psci: Add function to fetch SMCCC version
Date: Thu, 30 Apr 2020 12:48:13 +0100
Message-Id: <20200430114814.14116-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430114814.14116-1-sudeep.holla@arm.com>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_044843_516136_2B9377DB 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For backward compatibility reasons, PSCI maintains SMCCC version as
SMCCC didn't provide ARM_SMCCC_VERSION_FUNC_ID until v1.1

Let us provide accessors to fetch the SMCCC version in PSCI so that
other SMCCC v1.1+ features can use it.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/psci/psci.c | 5 +++++
 include/linux/arm-smccc.h    | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 6a56d7196697..04426e16fee6 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -65,6 +65,11 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 	return psci_ops.conduit;
 }
 
+u32 arm_smccc_get_version(void)
+{
+	return psci_ops.smccc_version;
+}
+
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
 static psci_fn *invoke_psci_fn;
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 9d9a2e42e919..d6b0f4acc707 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -98,6 +98,15 @@ enum arm_smccc_conduit {
  */
 enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
 
+/**
+ * arm_smccc_get_version()
+ *
+ * Returns the version to be used for SMCCCv1.1 or later.
+ *
+ * When SMCCCv1.1 or above is not present, assumes and returns SMCCCv1.0.
+ */
+u32 arm_smccc_get_version(void);
+
 /**
  * struct arm_smccc_res - Result from SMC/HVC call
  * @a0-a3 result values from registers 0 to 3
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
