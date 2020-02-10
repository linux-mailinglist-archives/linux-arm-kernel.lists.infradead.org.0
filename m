Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAC415712F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ElwZEuwXJ4BqA6retZwblJcHpGcQ3HFo0I6lga+qqvI=; b=KI6LH1R9S0ckAokWX37QrP/iey
	ZWu3PIxJlcXLaRSJ+iyRI1eghJ9nwKN5J0wsYQAVR2uA8l8zhV8Ut4e2i1LNwZ9D1kRkZpb0cexLW
	FV7XmutEYsefQitOjxcnSOrPahv8UrEAo7k893DxHZufJ8Md/L8Wd7u8Q5DVgQ1KpK3DIB8xJm3Yj
	d1O9zUOCTUjLTNGFdUGM3Ywl8q/nA54l9XHAgv3VyfQkIgbbV+W7zP60SUfSuj2RUEBtIZY2TDweK
	KF67o+BJ9hb+lrzGlOgrvncnZ0rzWdwC8SJn2ywYmD6dG2B3YPC+i/tJtGO7c+iM4D+57ZpkxOkAV
	8S3wk5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14mx-0001tQ-HB; Mon, 10 Feb 2020 08:51:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14lh-0007hh-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:50:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A42EA31B;
 Mon, 10 Feb 2020 00:50:12 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27B143F68F;
 Mon, 10 Feb 2020 00:50:06 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH 8/9] arm/arm64: add mechanism to let user choose which
 counter to return
Date: Mon, 10 Feb 2020 16:49:05 +0800
Message-Id: <20200210084906.24870-9-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210084906.24870-1-jianyong.wu@arm.com>
References: <20200210084906.24870-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_005013_223549_02567400 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In general, vm inside will use virtual counter compered with host use
phyical counter. But in some special scenarios, like nested virtualization,
phyical counter maybe used by vm. A interface added in ptp_kvm driver to
offer a mechanism to let user choose which counter should be return from
host.
To use this feature, you should call PTP_EXTTS_REQUEST(2) ioctl with flag
set bit PTP_KVM_ARM_PHY_COUNTER in its argument then call
PTP_SYS_OFFSET_PRECISE(2) ioctl to get the cross timestamp and phyical
counter will return. If the bit not set or no call for PTP_EXTTS_REQUEST2,
virtual counter will return by default.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
Suggested-by: Marc Zyngier <maz@kernel.org>
---
 drivers/clocksource/arm_arch_timer.c | 11 ++++++++++-
 drivers/ptp/ptp_chardev.c            |  8 +++++++-
 drivers/ptp/ptp_kvm_common.c         |  7 ++++---
 include/uapi/linux/ptp_clock.h       |  4 +++-
 4 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index b1bc8bd198c2..3e43d4e4885e 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -1634,7 +1634,16 @@ int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *ts,
 	struct arm_smccc_res hvc_res;
 	ktime_t ktime_overall;
 
-	arm_smccc_1_1_invoke(ARM_SMCCC_HYP_KVM_PTP_FUNC_ID, &hvc_res);
+	/*
+	 * an argument will be passed by a0 to determine weather virtual
+	 * counter or phyical counter should be passed back.
+	 */
+	if (*ctx)
+		arm_smccc_1_1_invoke(ARM_SMCCC_HYP_KVM_PTP_FUNC_ID,
+				     ARM_SMCCC_HYP_KVM_PTP_PHY, &hvc_res);
+	else
+		arm_smccc_1_1_invoke(ARM_SMCCC_HYP_KVM_PTP_FUNC_ID,
+				     ARM_SMCCC_HYP_KVM_PTP_VIRT, &hvc_res);
 	if ((int)(hvc_res.a0) < 0)
 		return -EOPNOTSUPP;
 
diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index 09c3f1e5382d..bd7b6a31b6cb 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -122,6 +122,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 	struct ptp_pin_desc pd;
 	struct timespec64 ts;
 	int enable, err = 0;
+	static long flag;
 
 	switch (cmd) {
 
@@ -149,6 +150,11 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EFAULT;
 			break;
 		}
+		/*
+		 * Tell driver to call for physical counter.
+		 * This is only for arm.
+		 */
+		flag = req.extts.flags & PTP_KVM_ARM_PHY_COUNTER;
 		if (cmd == PTP_EXTTS_REQUEST2) {
 			/* Tell the drivers to check the flags carefully. */
 			req.extts.flags |= PTP_STRICT_FLAGS;
@@ -226,7 +232,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EOPNOTSUPP;
 			break;
 		}
-		err = ptp->info->getcrosststamp(ptp->info, &xtstamp, NULL);
+		err = ptp->info->getcrosststamp(ptp->info, &xtstamp, &flag);
 		if (err)
 			break;
 
diff --git a/drivers/ptp/ptp_kvm_common.c b/drivers/ptp/ptp_kvm_common.c
index 60442f70d3fc..20fbecef1f22 100644
--- a/drivers/ptp/ptp_kvm_common.c
+++ b/drivers/ptp/ptp_kvm_common.c
@@ -36,7 +36,7 @@ static int ptp_kvm_get_time_fn(ktime_t *device_time,
 	spin_lock(&kvm_ptp_lock);
 
 	preempt_disable_notrace();
-	ret = kvm_arch_ptp_get_crosststamp(&cycle, &tspec, &cs);
+	ret = kvm_arch_ptp_get_crosststamp(&cycle, &tspec, &cs, ctx);
 	if (ret != 0) {
 		pr_err_ratelimited("clock pairing hypercall ret %lu\n", ret);
 		spin_unlock(&kvm_ptp_lock);
@@ -57,9 +57,10 @@ static int ptp_kvm_get_time_fn(ktime_t *device_time,
 }
 
 static int ptp_kvm_getcrosststamp(struct ptp_clock_info *ptp,
-				  struct system_device_crosststamp *xtstamp)
+				  struct system_device_crosststamp *xtstamp,
+				  long *flag)
 {
-	return get_device_system_crosststamp(ptp_kvm_get_time_fn, NULL,
+	return get_device_system_crosststamp(ptp_kvm_get_time_fn, flag,
 					     NULL, xtstamp);
 }
 
diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
index 9dc9d0079e98..71e388a82244 100644
--- a/include/uapi/linux/ptp_clock.h
+++ b/include/uapi/linux/ptp_clock.h
@@ -32,6 +32,7 @@
 #define PTP_RISING_EDGE    (1<<1)
 #define PTP_FALLING_EDGE   (1<<2)
 #define PTP_STRICT_FLAGS   (1<<3)
+#define PTP_KVM_ARM_PHY_COUNTER (1<<4)
 #define PTP_EXTTS_EDGES    (PTP_RISING_EDGE | PTP_FALLING_EDGE)
 
 /*
@@ -40,7 +41,8 @@
 #define PTP_EXTTS_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
 				 PTP_RISING_EDGE |	\
 				 PTP_FALLING_EDGE |	\
-				 PTP_STRICT_FLAGS)
+				 PTP_STRICT_FLAGS |	\
+				 PTP_KVM_ARM_PHY_COUNTER)
 
 /*
  * flag fields valid for the original PTP_EXTTS_REQUEST ioctl.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
