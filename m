Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300871F59AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sNUR/aeIBCn+qDlTMLskWmpnTBh6qL2Yl+LE/HRDpY4=; b=co2s1kARY5sbWU1iObLQo03xUX
	Eysze/Yn8zwZVCjM7TFD7MvU6Alm6fXkqMCKXY2lSMPjnCSwZSIzAkjI9cMO/7jfuR8JKMrbeXwqc
	IZvqHTPpcBLbqiL2P2pfTqwAQJjQ9IwdpWP/qqH4KBPrDbVwCL7aJKU1ux3TTMldZaB7KXauRAgLx
	TsdwvjCr0BZjVt2cXdRabApicA2VlwDcPFTdzI1oF8Qa2PY4SsoTBiGxpP0vx0q5Ai12YmOpGRKhB
	hsNhW1T6LJXhQ/XVvt4ngUTa/ZfpSoVBNsa85t/1AP8kZEuruKEky+Y3NKeYA8pcGAj9i39OWFv6Z
	o5snigxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj49G-0005dJ-3D; Wed, 10 Jun 2020 17:04:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj48s-0005Uy-8C
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:03:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B040631B;
 Wed, 10 Jun 2020 10:03:57 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3429A3F6CF;
 Wed, 10 Jun 2020 10:03:57 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Date: Wed, 10 Jun 2020 18:03:10 +0100
Message-Id: <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100358_370373_23208055 
X-CRM114-Status: GOOD (  15.02  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sve_default_vl can be modified via the /proc/sys/abi/sve_default_vl
sysctl concurrently with use, and modified concurrently by multiple
threads.

Adding a lock for this seems overkill, and I don't want to think any
more than necessary, so just define wrappers using READ_ONCE()/
WRITE_ONCE().

This will avoid the possibility of torn accesses and repeated loads
and stores.

There's no evidence yet that this is going wrong in practice: this
is just hygiene.  For generic sysctl users, it would be better to
build this kind of thing into the sysctl common code somehow.

Reported-by: Will Deacon <will@kernel.org>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---

Build-tested only, but it seems pretty straightforward.

 arch/arm64/kernel/fpsimd.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 94289d1..19865c9 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -12,6 +12,7 @@
 #include <linux/bug.h>
 #include <linux/cache.h>
 #include <linux/compat.h>
+#include <linux/compiler.h>
 #include <linux/cpu.h>
 #include <linux/cpu_pm.h>
 #include <linux/kernel.h>
@@ -119,7 +120,17 @@ struct fpsimd_last_state_struct {
 static DEFINE_PER_CPU(struct fpsimd_last_state_struct, fpsimd_last_state);
 
 /* Default VL for tasks that don't set it explicitly: */
-static int sve_default_vl = -1;
+static int __sve_default_vl = -1;
+
+static int get_sve_default_vl(void)
+{
+	return READ_ONCE(__sve_default_vl);
+}
+
+static void set_sve_default_vl(int val)
+{
+	WRITE_ONCE(__sve_default_vl, val);
+}
 
 #ifdef CONFIG_ARM64_SVE
 
@@ -345,7 +356,7 @@ static int sve_proc_do_default_vl(struct ctl_table *table, int write,
 				  loff_t *ppos)
 {
 	int ret;
-	int vl = sve_default_vl;
+	int vl = get_sve_default_vl();
 	struct ctl_table tmp_table = {
 		.data = &vl,
 		.maxlen = sizeof(vl),
@@ -362,7 +373,7 @@ static int sve_proc_do_default_vl(struct ctl_table *table, int write,
 	if (!sve_vl_valid(vl))
 		return -EINVAL;
 
-	sve_default_vl = find_supported_vector_length(vl);
+	set_sve_default_vl(find_supported_vector_length(vl));
 	return 0;
 }
 
@@ -869,7 +880,7 @@ void __init sve_setup(void)
 	 * For the default VL, pick the maximum supported value <= 64.
 	 * VL == 64 is guaranteed not to grow the signal frame.
 	 */
-	sve_default_vl = find_supported_vector_length(64);
+	set_sve_default_vl(find_supported_vector_length(64));
 
 	bitmap_andnot(tmp_map, sve_vq_partial_map, sve_vq_map,
 		      SVE_VQ_MAX);
@@ -890,7 +901,7 @@ void __init sve_setup(void)
 	pr_info("SVE: maximum available vector length %u bytes per vector\n",
 		sve_max_vl);
 	pr_info("SVE: default vector length %u bytes per vector\n",
-		sve_default_vl);
+		get_sve_default_vl());
 
 	/* KVM decides whether to support mismatched systems. Just warn here: */
 	if (sve_max_virtualisable_vl < sve_max_vl)
@@ -1030,13 +1041,13 @@ void fpsimd_flush_thread(void)
 		 * vector length configured: no kernel task can become a user
 		 * task without an exec and hence a call to this function.
 		 * By the time the first call to this function is made, all
-		 * early hardware probing is complete, so sve_default_vl
+		 * early hardware probing is complete, so __sve_default_vl
 		 * should be valid.
 		 * If a bug causes this to go wrong, we make some noise and
 		 * try to fudge thread.sve_vl to a safe value here.
 		 */
 		vl = current->thread.sve_vl_onexec ?
-			current->thread.sve_vl_onexec : sve_default_vl;
+			current->thread.sve_vl_onexec : get_sve_default_vl();
 
 		if (WARN_ON(!sve_vl_valid(vl)))
 			vl = SVE_VL_MIN;
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
