Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C271C76EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+mFioH6Bpf6mHTvz1tfT1FKFcWBZZlRwIwNB0VvZjPE=; b=KkOQ4ugeEldwpCxr10yWVoEX56
	k+MWwLbfZMJq9ChhJvBst7/JnPs0u4grIM/Z7xHEZtWUWCUTBPiqKLrsyGw4asB9sOdOLmO7eABK9
	oK0WpJpK8IfGc5kaXKmxHaNuncNQhEuO0HFXicMJO6hLfrIBwtaO4tMLcOlXyamO0zOKZRX7mheDj
	lBENL+KNURTJnY8yhKdwxGBKhGL/MReOo7+LLSold9GNNFs1BuHBGbIezQKzj2MQMYOuMWCPTRJ1o
	AYwIPUKatwbLWEFL23WAVNcUGGPPXU2H0n5PINby/o+KamXplBnF8TWjk+MfsL0q3YCr9JKnHJZwe
	0HMbDCYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNBa-0004iT-9k; Wed, 06 May 2020 16:46:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWN9n-0000fB-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:44:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BC2CD6E;
 Wed,  6 May 2020 09:44:27 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2C7753F305;
 Wed,  6 May 2020 09:44:26 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/7] firmware: smccc: Add function to fetch SMCCC version
Date: Wed,  6 May 2020 17:44:10 +0100
Message-Id: <20200506164411.3284-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506164411.3284-1-sudeep.holla@arm.com>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_094427_983537_8EE0E11C 
X-CRM114-Status: GOOD (  10.59  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
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

Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/smccc/smccc.c | 4 ++++
 include/linux/arm-smccc.h      | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
index 488699aae24f..672974df0dfe 100644
--- a/drivers/firmware/smccc/smccc.c
+++ b/drivers/firmware/smccc/smccc.c
@@ -24,3 +24,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 	return smccc_conduit;
 }
 
+u32 arm_smccc_version_get(void)
+{
+	return smccc_version;
+}
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 11fb20bfa8f7..8dd54dad1ec5 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -109,6 +109,15 @@ void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);
  */
 enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
 
+/**
+ * arm_smccc_version_get()
+ *
+ * Returns the version to be used for SMCCCv1.1 or later.
+ *
+ * When SMCCCv1.1 or above is not present, assumes and returns SMCCCv1.0.
+ */
+u32 arm_smccc_version_get(void);
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
