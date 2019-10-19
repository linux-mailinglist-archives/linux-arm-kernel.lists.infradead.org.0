Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD28DDA02
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 20:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pvCH19DWi4zcIkHZUuGhPg2ZDxXs3zsntREJ9w67cQU=; b=u/+rdETuSiuX2A
	HQ9fkPxR6e8W9JCPtSBxvVqVt0hfHyoiBurvoAFAbWMyLC5Qny4tJrZqei0Zdq1YDIUhaRlTR3qZw
	avULZEar+lUPyVkGuSUQvRUnCBLzgSX0H69UK62xS1e0EfCBRT73UVI1tECmYoguWYc0B44OB04qn
	bn6b4R/XHyWCpKu0vEgEUcXUGUDVh1At13T93betPVGhPZcT6Kg78GM0bMm3WuPvbe9qKCUfB8Hdf
	bfTTxu/WMj4gbc9/jtCu/ENuuKIjR8ubC1LwQtgRDyKDhx5+3OhJ9Xasi5G2P3HmGdYoXP0Z71XCa
	1/iYBeT10vlFuU4eCYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLtEB-0007ok-C2; Sat, 19 Oct 2019 18:13:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLtE2-0007o2-RS
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 18:13:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id p1so5173677pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 11:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=THRrp/Ex+10EZKFSZ17SjdGISreGoqTYFjW18IRfuUo=;
 b=mMN1/u7x9RFPXYmLVW92jcxFJNIhr4sXnEADaI/y3eaKvRTqNna3yPXsemg9R37y/f
 xIa3nhuX6wbU93aIXH1Nd1VRmqaxYR310LrIW7p8ieeQ0TLNchb5dePN01iRdzz/8P3k
 0Wbsp7pabKG52FeCh/Kip/yOcrKIRl756owv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=THRrp/Ex+10EZKFSZ17SjdGISreGoqTYFjW18IRfuUo=;
 b=AiO0+fcI46age4Dzcc4r8M9gm7JP/EMx6isV3xkLMDRAYmk5WUatx4z3NAcfWSnVgm
 Nkd+pMm4mH4ONXgHLaVg86eHe4/lmb3dPrGge1ItWgrY4xEN4DT7EXi/jVGV6AzkOZ03
 WOTV3DZV6dTufIiIrh+7EXjwezhLro0wqGTnmhDYODgxb16MIqSGHzfI52SmL4LFyIID
 FQDp94FUnnVrg8x7CC3YUDnjeVVCwpMMHakYlt0sS1WL5uwKRwiO2e6aS8DBPh1MbeMQ
 8YKWwTY1ak4PXuzrAojLgtjc4fx7xUsp3H7ZNQQt2c/A6RXbflTUQXIAtX+reWfaDfIN
 LmvA==
X-Gm-Message-State: APjAAAVlfSm9+QeU6fRpBjK9/gJHScaSpb0/8svPEAv0dk+03Uzy9wZj
 ukgeTDFO9aODvYd5qurNLK3Enw==
X-Google-Smtp-Source: APXvYqyqjdiEpPjvVxGmB8CeGzQy1F+O/Zu+CxdB3XQj32hzbbujF1/jQA0q3pytSyak+G1ZcJ4iJw==
X-Received: by 2002:a17:90a:f495:: with SMTP id
 bx21mr17765653pjb.84.1571508788795; 
 Sat, 19 Oct 2019 11:13:08 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id m2sm14567461pff.154.2019.10.19.11.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 11:13:08 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
Date: Sat, 19 Oct 2019 11:12:26 -0700
Message-Id: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_111314_891716_9034CB54 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Pratyush Anand <panand@redhat.com>, Pavel Labath <labath@google.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Douglas Anderson <dianders@chromium.org>, kinaba@google.com, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
watchpoint addresses") but ported to arm32, which has the same
problem.

This problem was found by Android CTS tests, notably the
"watchpoint_imprecise" test [1].  I tested locally against a copycat
(simplified) version of the test though.

[1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
 1 file changed, 70 insertions(+), 26 deletions(-)

diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
index b0c195e3a06d..d394878409db 100644
--- a/arch/arm/kernel/hw_breakpoint.c
+++ b/arch/arm/kernel/hw_breakpoint.c
@@ -680,26 +680,62 @@ static void disable_single_step(struct perf_event *bp)
 	arch_install_hw_breakpoint(bp);
 }
 
+/*
+ * Arm32 hardware does not always report a watchpoint hit address that matches
+ * one of the watchpoints set. It can also report an address "near" the
+ * watchpoint if a single instruction access both watched and unwatched
+ * addresses. There is no straight-forward way, short of disassembling the
+ * offending instruction, to map that address back to the watchpoint. This
+ * function computes the distance of the memory access from the watchpoint as a
+ * heuristic for the likelyhood that a given access triggered the watchpoint.
+ *
+ * See this same function in the arm64 platform code, which has the same
+ * problem.
+ *
+ * The function returns the distance of the address from the bytes watched by
+ * the watchpoint. In case of an exact match, it returns 0.
+ */
+static u32 get_distance_from_watchpoint(unsigned long addr, u32 val,
+					struct arch_hw_breakpoint_ctrl *ctrl)
+{
+	u32 wp_low, wp_high;
+	u32 lens, lene;
+
+	lens = __ffs(ctrl->len);
+	lene = __fls(ctrl->len);
+
+	wp_low = val + lens;
+	wp_high = val + lene;
+	if (addr < wp_low)
+		return wp_low - addr;
+	else if (addr > wp_high)
+		return addr - wp_high;
+	else
+		return 0;
+}
+
 static void watchpoint_handler(unsigned long addr, unsigned int fsr,
 			       struct pt_regs *regs)
 {
-	int i, access;
-	u32 val, ctrl_reg, alignment_mask;
+	int i, access, closest_match = 0;
+	u32 min_dist = -1, dist;
+	u32 val, ctrl_reg;
 	struct perf_event *wp, **slots;
 	struct arch_hw_breakpoint *info;
 	struct arch_hw_breakpoint_ctrl ctrl;
 
 	slots = this_cpu_ptr(wp_on_reg);
 
+	/*
+	 * Find all watchpoints that match the reported address. If no exact
+	 * match is found. Attribute the hit to the closest watchpoint.
+	 */
+	rcu_read_lock();
 	for (i = 0; i < core_num_wrps; ++i) {
-		rcu_read_lock();
-
 		wp = slots[i];
-
 		if (wp == NULL)
-			goto unlock;
+			continue;
 
-		info = counter_arch_bp(wp);
 		/*
 		 * The DFAR is an unknown value on debug architectures prior
 		 * to 7.1. Since we only allow a single watchpoint on these
@@ -708,33 +744,31 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
 		 */
 		if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
 			BUG_ON(i > 0);
+			info = counter_arch_bp(wp);
 			info->trigger = wp->attr.bp_addr;
 		} else {
-			if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
-				alignment_mask = 0x7;
-			else
-				alignment_mask = 0x3;
-
-			/* Check if the watchpoint value matches. */
-			val = read_wb_reg(ARM_BASE_WVR + i);
-			if (val != (addr & ~alignment_mask))
-				goto unlock;
-
-			/* Possible match, check the byte address select. */
-			ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
-			decode_ctrl_reg(ctrl_reg, &ctrl);
-			if (!((1 << (addr & alignment_mask)) & ctrl.len))
-				goto unlock;
-
 			/* Check that the access type matches. */
 			if (debug_exception_updates_fsr()) {
 				access = (fsr & ARM_FSR_ACCESS_MASK) ?
 					  HW_BREAKPOINT_W : HW_BREAKPOINT_R;
 				if (!(access & hw_breakpoint_type(wp)))
-					goto unlock;
+					continue;
 			}
 
+			val = read_wb_reg(ARM_BASE_WVR + i);
+			ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
+			decode_ctrl_reg(ctrl_reg, &ctrl);
+			dist = get_distance_from_watchpoint(addr, val, &ctrl);
+			if (dist < min_dist) {
+				min_dist = dist;
+				closest_match = i;
+			}
+			/* Is this an exact match? */
+			if (dist != 0)
+				continue;
+
 			/* We have a winner. */
+			info = counter_arch_bp(wp);
 			info->trigger = addr;
 		}
 
@@ -748,10 +782,20 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
 		 */
 		if (is_default_overflow_handler(wp))
 			enable_single_step(wp, instruction_pointer(regs));
+	}
 
-unlock:
-		rcu_read_unlock();
+	if (min_dist > 0 && min_dist != -1) {
+		/* No exact match found. */
+		wp = slots[closest_match];
+		info = counter_arch_bp(wp);
+		info->trigger = addr;
+		pr_debug("watchpoint fired: address = 0x%x\n", info->trigger);
+		perf_bp_event(wp, regs);
+		if (is_default_overflow_handler(wp))
+			enable_single_step(wp, instruction_pointer(regs));
 	}
+
+	rcu_read_unlock();
 }
 
 static void watchpoint_single_step_handler(unsigned long pc)
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
