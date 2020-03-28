Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2660196478
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 09:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cs+Ey1oGEfWKnTMO21QAwq6orYNXhj5A3WHr5Tfqypg=; b=htNPtph984OfOv
	arDUPftYZQzEgHEsGXQ+aXJTk9jI9dCzHq4VomyxLb+NBEe5+Vm+Vgr88157XB0wDrsEM0TtjwBoQ
	oBvlcyeh8NyPWs04F05YPNlAnJVDCdA4z0SMAOjIj+4KrNPdOi0eTwbZPowKMdGOMMK+QNZuLsdGl
	rGiFP7evZUYIx+VXp0Fo9Y08jSxw1gpSpaDGPH2a61ilKWrrkWSQUey7eyCjtlxLHg8RNBgIlqS4s
	e+uOhjWmvVoOXmWyqnTd1fQYKHcIlgg8SSTBydfQWwmB6JP/kr7Umz9r8qnAXfufIu6nTFzohk7jq
	mBkZ/ipzdXpmDYTnSXOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6tW-0005r9-V9; Sat, 28 Mar 2020 08:32:42 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI6tN-0005qb-7K
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 08:32:37 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585384355; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=OKvsYu4u3rT/AdiRCKhuZKpl2MbRGsAeeYZDJ6dusnc=;
 b=HDAHKjTyvpBS7ItdY2Bi/rf5fstnsyKUlKavNG+V0ys74WqtjakHuq4YBtbGJqO/YHig68YY
 4/Ih0AVfoyfUvGqV9WN0rVCe0aB1RxhlPVobGKbOICmbqxFpICO9kRF9LHzbADZ0v+H2O8Cv
 c2RFDSF6zWKjCyJjJfqao1cSEKQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7f0b98.7f99400acdc0-smtp-out-n02;
 Sat, 28 Mar 2020 08:32:24 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 710F3C433BA; Sat, 28 Mar 2020 08:32:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from ecbld-sh028-lnx.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tingwei)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 53950C433F2;
 Sat, 28 Mar 2020 08:32:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 53950C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=tingwei@codeaurora.org
From: Tingwei Zhang <tingwei@codeaurora.org>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: hw_breakpoint: don't clear debug registers in halt mode
Date: Sat, 28 Mar 2020 16:32:09 +0800
Message-Id: <20200328083209.21793-1-tingwei@codeaurora.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_013235_668031_33F32661 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Tingwei Zhang <tingwei@codeaurora.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If external debugger sets a breakpoint for one Kernel function
when device is in bootloader mode and loads Kernel, this breakpoint
will be wiped out in hw_breakpoint_reset(). To fix this, check
MDSCR_EL1.HDE in hw_breakpoint_reset(). When MDSCR_EL1.HDE is
0b1, halting debug is enabled. Don't reset debug registers in this case.

Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
---
 arch/arm64/include/asm/debug-monitors.h |  1 +
 arch/arm64/kernel/hw_breakpoint.c       | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..8dc2c28791a0 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -18,6 +18,7 @@
 
 /* MDSCR_EL1 enabling bits */
 #define DBG_MDSCR_KDE		(1 << 13)
+#define DBG_MDSCR_HDE		(1 << 14)
 #define DBG_MDSCR_MDE		(1 << 15)
 #define DBG_MDSCR_MASK		~(DBG_MDSCR_KDE | DBG_MDSCR_MDE)
 
diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
index 0b727edf4104..0180306f74d7 100644
--- a/arch/arm64/kernel/hw_breakpoint.c
+++ b/arch/arm64/kernel/hw_breakpoint.c
@@ -927,6 +927,17 @@ void hw_breakpoint_thread_switch(struct task_struct *next)
 				    !next_debug_info->wps_disabled);
 }
 
+/*
+ * Check if halted debug mode is enabled.
+ */
+static u32 hde_enabled(void)
+{
+	u32 mdscr;
+
+	asm volatile("mrs %0, mdscr_el1" : "=r" (mdscr));
+	return (mdscr & DBG_MDSCR_HDE);
+}
+
 /*
  * CPU initialisation.
  */
@@ -934,6 +945,14 @@ static int hw_breakpoint_reset(unsigned int cpu)
 {
 	int i;
 	struct perf_event **slots;
+
+	/*
+	 * When halting debug mode is enabled, break point could be already
+	 * set be external debugger. Don't reset debug registers here to
+	 * reserve break point from external debugger.
+	 */
+	if (hde_enabled())
+		return 0;
 	/*
 	 * When a CPU goes through cold-boot, it does not have any installed
 	 * slot, so it is safe to share the same function for restoring and
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
