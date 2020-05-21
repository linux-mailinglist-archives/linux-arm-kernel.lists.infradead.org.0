Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8681DCBA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z3+nhhaN6BJUzst2qv9oKG/1UWa3xjbVpBWSStUSqmY=; b=sXs
	0JxDGT56g1sYGfXSbF/4JaXbM0PwrskxeArK/9eDpwmJcSW+fJShU0ky+pm92EPlFwIaaHPPYJMUO
	EncOnX8nm3d2XDBftwIfK4PJ5prfFCI+hwI2/qFq03OoA03nE2dQvpal8ooS5PsF0KUk+1eIGHdra
	ObZqSdp7F24HLDKDZFz2CXt2HxVONuVTlvQB5MSRvNnjTSyIoheoLbrJIP6+Dy2jQAQFc1UpiGHnE
	8WbD/naKGGm8iNPTcgn7CBm9XwzSAzJ2Z0ql3Xc2vdboTe7aKt/2ubHypevVM07mK96NNM+2B2+lp
	VdumJbOV3GRJSWMnGXvZ9FJ78k6EHdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbj4N-0001vl-3K; Thu, 21 May 2020 11:08:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbj4D-0001ut-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:08:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DFB030E;
 Thu, 21 May 2020 04:08:48 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CC8703F68F;
 Thu, 21 May 2020 04:08:46 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] firmware: smccc: Fix missing prototype warning for
 arm_smccc_version_init
Date: Thu, 21 May 2020 12:08:36 +0100
Message-Id: <20200521110836.57252-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_040849_324755_E935ADAD 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Steven Price <steven.price@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit f2ae97062a48 ("firmware: smccc: Refactor SMCCC specific bits into
separate file") introduced the following build warning:

drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for
	function 'arm_smccc_version_init' [-Wmissing-prototypes]
 void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
             ^~~~~~~~~~~~~~~~~~~~~~

Fix the same by adding the missing prototype in arm-smccc.h

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/psci/psci.c | 1 -
 include/linux/arm-smccc.h    | 3 +++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 1330a698a178..92013ecc2d9e 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -79,7 +79,6 @@ static u32 psci_function_id[PSCI_FN_MAX];
 
 static u32 psci_cpu_suspend_feature;
 static bool psci_system_reset2_supported;
-void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);
 
 static inline bool psci_has_ext_power_state(void)
 {
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index c491d210e3c3..56d6a5c6e353 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -5,6 +5,7 @@
 #ifndef __LINUX_ARM_SMCCC_H
 #define __LINUX_ARM_SMCCC_H
 
+#include <linux/init.h>
 #include <uapi/linux/const.h>
 
 /*
@@ -111,6 +112,8 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
  */
 u32 arm_smccc_get_version(void);
 
+void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);
+
 /**
  * struct arm_smccc_res - Result from SMC/HVC call
  * @a0-a3 result values from registers 0 to 3

base-commit: a4fb17465182c9fc13104e4df04d050892055205
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
