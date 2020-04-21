Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBB91B1CC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nMdV27tTBJ/G5ZFxLFjpLi40fysijE8Z3cAHZb3SVX0=; b=GVhjKDvF9jrIOktDbrQ1SLyTS5
	1zkWYgAfBrA8vzuU8bHJUf6xY8gw2Dt7eoXXn8PovCfnf8pUgL9OgVE5CyFbMgTmZGdNOhG2t1o2+
	ieL7l8z6IX26Ix5pQaJ8tE/04sBplxCcpDMF/Vc+DUEy8BdfFJoVaX01Jom5+J1quuhUtsGPUpakR
	wwoSSKf2lKANMo69A+4uZBLk+p+McoUsmY5+ThG8yjqKa14WQx3DahwTCPWZ8qDLFuFbKKr3N3EEG
	UZbQ0CCm3ltUJHQqQU3tOfMN/5U5gboHNBFJt//nLXmAXVbRjQEEfvis0Y9YyjJ+q+Lx12qVBvi2E
	Pk+R3rDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjY1-0008Fh-53; Tue, 21 Apr 2020 03:26:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjWI-0004bQ-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:24:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96733C14;
 Mon, 20 Apr 2020 20:24:21 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6A4193F6CF;
 Mon, 20 Apr 2020 20:24:15 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v11 8/9] arm64: add mechanism to let user choose which
 counter to return
Date: Tue, 21 Apr 2020 11:23:03 +0800
Message-Id: <20200421032304.26300-9-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421032304.26300-1-jianyong.wu@arm.com>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_202422_432821_0BE6CB1D 
X-CRM114-Status: GOOD (  15.23  )
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
index 47d69b3f2d9a..52f629d9c561 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -1650,7 +1650,16 @@ int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *ts,
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
index fef72f29f3c8..505ed7eb0ca5 100644
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
@@ -235,7 +241,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EOPNOTSUPP;
 			break;
 		}
-		err = ptp->info->getcrosststamp(ptp->info, &xtstamp, NULL);
+		err = ptp->info->getcrosststamp(ptp->info, &xtstamp, &flag);
 		if (err)
 			break;
 
diff --git a/drivers/ptp/ptp_kvm_common.c b/drivers/ptp/ptp_kvm_common.c
index 4fdd8ab11a28..39367e230176 100644
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
