Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8FA1D739D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OrdFwoIFGgTo0FGyLU9Gpk2FPHAhTmoscNQZrlRB5fc=; b=HvuSKGG+osUyjd2NaLi5xvJ8vI
	J1VUp15fNvfYMbuIn2V/5pqH331dLzqblvRBmHG9SUjktXOwxtgNjw28IEQSvZKa4W4OmTbse8z5j
	kVtvTXnP/3Um3SScfu3iJhMchHbmRWVKyO8w6ijCQcu8Tg1q8aosY7s01/Bob4EnUwhn89+MYON4n
	ya9ra1YsEEHVAFqhNDG3o41VpHfTM8UPjcVEgBxtPtswll//D26tYtoT903mwMlmaDFwG65I41CFa
	/cZdCE9dvAZ9+Fu9zcTXB6lXuuXOjzQ3dod/62i+wY6kFTkxwg2Dy2WE74pXgnB4ccZrreAQx57QU
	VIn+ULJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabqi-0007UU-Lw; Mon, 18 May 2020 09:14:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabp7-0005pJ-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:12:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 010C711FB;
 Mon, 18 May 2020 02:12:37 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A6E263F774;
 Mon, 18 May 2020 02:12:35 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 6/7] firmware: smccc: Add function to fetch SMCCC version
Date: Mon, 18 May 2020 10:12:21 +0100
Message-Id: <20200518091222.27467-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518091222.27467-1-sudeep.holla@arm.com>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021237_711420_56FA4789 
X-CRM114-Status: GOOD (  11.10  )
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
SMCCC didn't provide ARM_SMCCC_VERSION_FUNC_ID until v1.1.

PSCI initialises both the SMCCC version and conduit. Similar to the
conduit, let us provide accessors to fetch the SMCCC version also so
that other SMCCC v1.1+ features can use it.

Tested-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Reviewed-by: Etienne Carriere <etienne.carriere@st.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/smccc/smccc.c |  5 +++++
 include/linux/arm-smccc.h      | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
index de92a4b9f8f6..4e80921ee212 100644
--- a/drivers/firmware/smccc/smccc.c
+++ b/drivers/firmware/smccc/smccc.c
@@ -24,3 +24,8 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 
 	return smccc_conduit;
 }
+
+u32 arm_smccc_get_version(void)
+{
+	return smccc_version;
+}
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index c3784ba8e2a4..c491d210e3c3 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -100,6 +100,17 @@ enum arm_smccc_conduit {
  */
 enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
 
+/**
+ * arm_smccc_get_version()
+ *
+ * Returns the version to be used for SMCCCv1.1 or later.
+ *
+ * When SMCCCv1.1 or above is not present, returns SMCCCv1.0, but this
+ * does not imply the presence of firmware or a valid conduit. Caller
+ * handling SMCCCv1.0 must determine the conduit by other means.
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
