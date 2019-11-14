Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D405FC61B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJEBABxOWxW1lkUcVeLqtdm724whN3IxPhM4sPNKdwM=; b=UnYtd9yvFUkWEPfAEPYOZkmoZY
	HQj+50OBkFcWOOxL3WPDOQXTM1ZHOON5zfoou/xGeCPHj+1wmA2BCBIkLBjSwtZkEM1qt9in8sY0q
	4l00vet6+CKbfj5/4ke0tqWe6Hy0VHZT7iq1N05NSsPqjqTfirJxtIE6dQsVdJn24xzVfkuWzYKNj
	cnrn5kqMGDsLgLrzs85MXG1qskyn8VdRck5/dPnVk6C61qRxOcYofiMzq7rehDEVNp8TWMnriPGK9
	OUeXV0OT+D2Mfzky6aIZUOLm+T97cNPuhTN+/atuNyxZcYm5O7wTQ8YhUvt/h0ffelEq7jvvFHk/e
	bm5CjfLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVE1f-0002oD-My; Thu, 14 Nov 2019 12:15:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVE18-0002PT-Ka
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:14:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18F7A55D;
 Thu, 14 Nov 2019 04:14:30 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D8E633F6C4;
 Thu, 14 Nov 2019 04:14:23 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [RFC PATCH v7 2/7] psci: let arm_smccc_1_1_invoke available by modules
Date: Thu, 14 Nov 2019 20:13:53 +0800
Message-Id: <20191114121358.6684-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114121358.6684-1-jianyong.wu@arm.com>
References: <20191114121358.6684-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_041430_742116_3779D5AA 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export arm_smccc_1_1_get_conduit and apply it to get conduit
in arm_smccc_1_1_invoke, then modules can use this arm_smccc_1_1_invoke.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/firmware/psci/psci.c | 1 +
 include/linux/arm-smccc.h    | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 5f31f1bea1af..cf509171422c 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -71,6 +71,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 		return SMCCC_CONDUIT_NONE;
 	}
 }
+EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 701fa1da6b4a..6f82c87308ed 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -373,7 +373,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  * The return value also provides the conduit that was used.
  */
 #define arm_smccc_1_1_invoke(...) ({					\
-		int method = psci_ops.conduit;				\
+		int method = arm_smccc_1_1_get_conduit();		\
 		switch (method) {					\
 		case PSCI_CONDUIT_HVC:					\
 			arm_smccc_1_1_hvc(__VA_ARGS__);			\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
