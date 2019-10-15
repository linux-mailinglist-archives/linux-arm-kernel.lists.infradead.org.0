Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2F4D73D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ulqm1+7LYjSxMabVAyB/Re6EvUJVVDjq/JOAn7kPlh4=; b=cVK80VHlpKRFsVXPljdSgIQUUp
	mid9AEwrQ3AQloMRHwS3JfamXuBYi9Kp1Lsd4eaBUInpclWcyT7qurAGgtgx3hrji90cecD5sj9wn
	FxnYbMXL0DWeow7c1RQXQa7hIBvPMPB60ZeA0N3WTC6bR4PDVpoJ5X3xiL03RdIvvG5ENEvYqx34O
	HQuLnvbKTl0V/eFRItwGNGcCCL7W/5ZAXmjY/I5zVxir2BoHPaJ+PlkmWXkxKBe8Fau8fy3dDa22u
	m3aZEJ2kjkP+br16Og1iKjc5YzlDNInuhK1+6KiEitds+0DhwSvQ0SkedYe5Rnr8YE7dfU7mEp1TG
	3Zj2FWow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKOR-0005Cd-SK; Tue, 15 Oct 2019 10:49:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKNw-0004ze-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 10:49:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1C1E1000;
 Tue, 15 Oct 2019 03:48:58 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CC5393F68E;
 Tue, 15 Oct 2019 03:48:53 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [PATCH v5 1/6] psci: Export psci_ops.conduit symbol as modules will
 use it.
Date: Tue, 15 Oct 2019 18:48:17 +0800
Message-Id: <20191015104822.13890-2-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015104822.13890-1-jianyong.wu@arm.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_034900_650915_EB6508BF 
X-CRM114-Status: GOOD (  10.33  )
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

If arm_smccc_1_1_invoke used in modules, psci_ops.conduit should
be export.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/firmware/psci/psci.c | 6 ++++++
 include/linux/arm-smccc.h    | 2 +-
 include/linux/psci.h         | 1 +
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index f82ccd39a913..35c4eaab1451 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -212,6 +212,12 @@ static unsigned long psci_migrate_info_up_cpu(void)
 			      0, 0, 0);
 }
 
+enum psci_conduit psci_get_conduit(void)
+{
+	return psci_ops.conduit;
+}
+EXPORT_SYMBOL(psci_get_conduit);
+
 static void set_conduit(enum psci_conduit conduit)
 {
 	switch (conduit) {
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 552cbd49abe8..a6e4d3e3d10a 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -357,7 +357,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  * The return value also provides the conduit that was used.
  */
 #define arm_smccc_1_1_invoke(...) ({					\
-		int method = psci_ops.conduit;				\
+		int method = psci_get_conduit();			\
 		switch (method) {					\
 		case PSCI_CONDUIT_HVC:					\
 			arm_smccc_1_1_hvc(__VA_ARGS__);			\
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a8a15613c157..e5cedc986049 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -42,6 +42,7 @@ struct psci_operations {
 	enum smccc_version smccc_version;
 };
 
+extern enum psci_conduit psci_get_conduit(void);
 extern struct psci_operations psci_ops;
 
 #if defined(CONFIG_ARM_PSCI_FW)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
