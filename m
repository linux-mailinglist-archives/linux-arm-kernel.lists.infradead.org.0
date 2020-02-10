Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B52815712E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qFOPPiXTuk5eSkoB4Cy+8we4CvgTTFpp/DACFssOE98=; b=OgDeUSTKsjHc+ZzsiY0AB5rsnT
	+lUUIxXsSqLSy+S3aClo7M0yJHyfRAn3aULJ4LI1TWjB8FapRq81P3X7mxMU49wufE/IBcKsfvdQk
	+zvkaG74it1EoNFbCFReSgBw4SmLRp0QiXDCPrgcPS1toJL7hcvfSqULqmL7T72b7q8BOYkaYnjO2
	faH9zx/goA9ZTkDybIybOLdEFPiL3e89EaJiJlf89mOXCIznr3TkU70sTkJGBDKdQTpA+e9ZYd2T4
	qeI9kTrrf3I/S92t2/3SuOz6PVQM2Ft6s0HdhO48kubx/i56hOauGZgpzDgoESTNvE3SyHGdx/8sS
	Q3Cr32LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14mi-0001F5-8C; Mon, 10 Feb 2020 08:51:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14lc-0007YL-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:50:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2D57328;
 Mon, 10 Feb 2020 00:50:06 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8E1CD3F68F;
 Mon, 10 Feb 2020 00:50:01 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH 7/9] ptp: extend input argument for getcrosstimestamp API
Date: Mon, 10 Feb 2020 16:49:04 +0800
Message-Id: <20200210084906.24870-8-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210084906.24870-1-jianyong.wu@arm.com>
References: <20200210084906.24870-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_005008_391034_B4430BE8 
X-CRM114-Status: GOOD (  10.80  )
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

sometimes we may need tell getcrosstimestamp call back how to perform
itself. Extending input arguments for getcrosstimestamp API to offer more
exquisite control for the operation.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/clocksource/arm_arch_timer.c    | 2 +-
 drivers/net/ethernet/intel/e1000e/ptp.c | 3 ++-
 drivers/ptp/ptp_chardev.c               | 2 +-
 drivers/ptp/ptp_kvm.h                   | 2 +-
 drivers/ptp/ptp_kvm_x86.c               | 2 +-
 include/linux/ptp_clock_kernel.h        | 3 ++-
 6 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 4e57ab66165c..b1bc8bd198c2 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -1629,7 +1629,7 @@ TIMER_ACPI_DECLARE(arch_timer, ACPI_SIG_GTDT, arch_timer_acpi_init);
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK_KVM)
 #include <linux/arm-smccc.h>
 int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *ts,
-			      struct clocksource **cs)
+				 struct clocksource **cs, long *ctx)
 {
 	struct arm_smccc_res hvc_res;
 	ktime_t ktime_overall;
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index eaa5a0fb99f0..7a45d9634962 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -150,7 +150,8 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *device,
  * clock values in ns.
  **/
 static int e1000e_phc_getcrosststamp(struct ptp_clock_info *ptp,
-				     struct system_device_crosststamp *xtstamp)
+				     struct system_device_crosststamp *xtstamp,
+				     NULL)
 {
 	struct e1000_adapter *adapter = container_of(ptp, struct e1000_adapter,
 						     ptp_clock_info);
diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index 9d72ab593f13..09c3f1e5382d 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -226,7 +226,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EOPNOTSUPP;
 			break;
 		}
-		err = ptp->info->getcrosststamp(ptp->info, &xtstamp);
+		err = ptp->info->getcrosststamp(ptp->info, &xtstamp, NULL);
 		if (err)
 			break;
 
diff --git a/drivers/ptp/ptp_kvm.h b/drivers/ptp/ptp_kvm.h
index 4bf1802bbeb8..ccceacbe8398 100644
--- a/drivers/ptp/ptp_kvm.h
+++ b/drivers/ptp/ptp_kvm.h
@@ -8,4 +8,4 @@
 int kvm_arch_ptp_init(void);
 int kvm_arch_ptp_get_clock(struct timespec64 *ts);
 int kvm_arch_ptp_get_crosststamp(unsigned long *cycle,
-		struct timespec64 *tspec, void *cs);
+		struct timespec64 *tspec, struct clocksource **cs, long *ctx);
diff --git a/drivers/ptp/ptp_kvm_x86.c b/drivers/ptp/ptp_kvm_x86.c
index 6c891d7299c6..ff95d2791078 100644
--- a/drivers/ptp/ptp_kvm_x86.c
+++ b/drivers/ptp/ptp_kvm_x86.c
@@ -53,7 +53,7 @@ int kvm_arch_ptp_get_clock(struct timespec64 *ts)
 }
 
 int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *tspec,
-			      struct clocksource **cs)
+			      struct clocksource **cs, void *ctx)
 {
 	unsigned long ret;
 	unsigned int version;
diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index c64a1ef87240..29c5fff7aeda 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -133,7 +133,8 @@ struct ptp_clock_info {
 	int (*gettimex64)(struct ptp_clock_info *ptp, struct timespec64 *ts,
 			  struct ptp_system_timestamp *sts);
 	int (*getcrosststamp)(struct ptp_clock_info *ptp,
-			      struct system_device_crosststamp *cts);
+			      struct system_device_crosststamp *cts,
+			      long *flag);
 	int (*settime64)(struct ptp_clock_info *p, const struct timespec64 *ts);
 	int (*enable)(struct ptp_clock_info *ptp,
 		      struct ptp_clock_request *request, int on);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
