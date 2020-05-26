Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ECD1D7398
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pvg0RMySq7A7b4sKq4E1MkLmPLc325bvgD12vNvTN44=; b=tUCe7ln0A2hLvcpZAOLPwzWYUl
	fzJu9XLlXgIB6rcrLsGbWHa80EC50EhRBXb6R4hIXh/xs05P/dQcz1pmQGEj9f81DeIUTO7Pf93hz
	+e+MDOt8Fi4mB9cLGY7/fXhopAe0G5KviaouqgBi9Dh/TOWS7uu+JdjJTj/f6w1h/2diIfmkTqO2P
	SBhfWVgDtaQzIdGO3u6IADLISUEUsLiXvTtL0BEyX9X7JneMSkLkXpXdgp9DmbIe7qsnonUTUyZts
	wfhUI+djqcDjsuq2KxcWudI+2uZTIoa+pCCmhvPivoHD7DXB2L2VzuKCRV0J8Pd27nPmIlEas1OYp
	Lv/l1JVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabpk-0006Ok-T3; Mon, 18 May 2020 09:13:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabp1-0005lr-RY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:12:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2E3312FC;
 Mon, 18 May 2020 02:12:30 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7BCCB3F68F;
 Mon, 18 May 2020 02:12:29 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/7] firmware: smccc: Update link to latest SMCCC
 specification
Date: Mon, 18 May 2020 10:12:17 +0100
Message-Id: <20200518091222.27467-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518091222.27467-1-sudeep.holla@arm.com>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021231_930601_C47883D7 
X-CRM114-Status: GOOD (  12.40  )
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

The current link gets redirected to the revision B published in November
2016 though it actually points to the original revision A published in
June 2013.

Let us update the link to point to the latest version, so that it
doesn't get stale anytime soon. Currently it points to v1.2 published in
March 2020(i.e. DEN0028C).

Tested-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Reviewed-by: Etienne Carriere <etienne.carriere@st.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arm-smccc.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..31b15db9685d 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -10,7 +10,9 @@
 /*
  * This file provides common defines for ARM SMC Calling Convention as
  * specified in
- * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
+ * https://developer.arm.com/docs/den0028/latest
+ *
+ * This code is up-to-date with version DEN 0028 B
  */
 
 #define ARM_SMCCC_STD_CALL	        _AC(0,U)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
