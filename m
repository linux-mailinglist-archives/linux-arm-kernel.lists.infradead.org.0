Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C17E2FDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJEBABxOWxW1lkUcVeLqtdm724whN3IxPhM4sPNKdwM=; b=tKHnNXxZHIvWuneh3s1nHPn/w8
	HZcAf6pWxUmN5TPIvPK/1kcxWvoMKCbJnE/sMXAbhTIpIAwBaonUX/WxRL9SfW2nwXaOQJAWFKN6C
	VcvElGfE2TJAngGPLepv4bp8oWuCWdJQhG4uOUvlBhaYKQUgmMzPKeMJ1U3KX/QIe65sTDqWW8M3k
	76jLrvAi89PIRnAlET1tcnQ7aRt0ba8ISx7m4RP5rUZg9EcSTAhQTsWj6RakTeC/T9zLJYNPIjN6j
	Lqg1AYk4Qh3Ofkia/r1eLRAemVUj2W2VpX+0Xt9IWjsCZ94185T3kjgIPwM4a5uSiYy0OMK4O30w3
	K8dLGT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNatw-0007Av-2i; Thu, 24 Oct 2019 11:03:32 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNat2-0006Wd-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 11:02:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EFB04AC;
 Thu, 24 Oct 2019 04:02:34 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A5543F71A;
 Thu, 24 Oct 2019 04:02:29 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [RFC PATCH v6 2/7] psci: Let arm_smccc_1_1_invoke available by modules
Date: Thu, 24 Oct 2019 19:02:04 +0800
Message-Id: <20191024110209.21328-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024110209.21328-1-jianyong.wu@arm.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_040236_673364_200FEE7B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
