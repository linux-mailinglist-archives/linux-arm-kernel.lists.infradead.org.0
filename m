Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E208CDEB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yOISwqoW9cK0IINAgiWZ6k3qLR2LPmQwOfwpCKsDIEg=; b=Gn79NNaCN7Vak0
	2ZpP6CbPQBO7yXVg+AKEEsWBjr5pjraMMW+f3ehDCNclf/3mHx49u+fkyrbu6qt1K5m1Rl1g8Mcys
	jeACShMsU54A+Iwg0ukhAd9osbxHxYP/47+I/r3DdyF13xjxHXywaCLTE3eYGmvYmC/7NP78QOGog
	e8LMrZFLqaqWoK1qDtT/sqps4lvQvjAWudX5E7hlqvcu7IgbcQr5diVmCimQ1d2MDGh5yrMWdYic9
	YxyZL2H6X7bT0YRWpWAB7fud21VCw5yHC2VVxo2foqizrPsUvkgZldGJI5XhEnXVTjEesFAOafHjT
	GWVeEJnVwCxlDoxH/h6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPuo-0006RX-3J; Mon, 07 Oct 2019 10:06:54 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPuc-0006QQ-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:06:44 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C965AD94CD2C7D7E519C;
 Mon,  7 Oct 2019 18:06:37 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 7 Oct 2019 18:06:36 +0800
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH v2] arm64: armv8_deprecated: Checking return value for memory
 allocation
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <kstewart@linuxfoundation.org>, <gregkh@linuxfoundation.org>,
 <tglx@linutronix.de>, <info@metux.net>
Message-ID: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
Date: Mon, 7 Oct 2019 18:06:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_030643_112922_2F4308E5 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are no return value checking when using kzalloc() and kcalloc() for
memory allocation. so add it.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
v1 -> v2:
 - return error code when memory allocation failure

 arch/arm64/kernel/armv8_deprecated.c | 57 +++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index 2ec09de..2284fcb 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -168,12 +168,15 @@ static int update_insn_emulation_mode(struct insn_emulation *insn,
 	return ret;
 }

-static void __init register_insn_emulation(struct insn_emulation_ops *ops)
+static int __init register_insn_emulation(struct insn_emulation_ops *ops)
 {
 	unsigned long flags;
 	struct insn_emulation *insn;

 	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
+	if (!insn)
+		return -ENOMEM;
+
 	insn->ops = ops;
 	insn->min = INSN_UNDEF;

@@ -197,6 +200,7 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)

 	/* Register any handlers if required */
 	update_insn_emulation_mode(insn, INSN_UNDEF);
+	return 0;
 }

 static int emulation_proc_handler(struct ctl_table *table, int write,
@@ -224,7 +228,7 @@ static int emulation_proc_handler(struct ctl_table *table, int write,
 	return ret;
 }

-static void __init register_insn_emulation_sysctl(void)
+static int __init register_insn_emulation_sysctl(void)
 {
 	unsigned long flags;
 	int i = 0;
@@ -233,6 +237,8 @@ static void __init register_insn_emulation_sysctl(void)

 	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
 			       GFP_KERNEL);
+	if (!insns_sysctl)
+		return -ENOMEM;

 	raw_spin_lock_irqsave(&insn_emulation_lock, flags);
 	list_for_each_entry(insn, &insn_emulation, node) {
@@ -251,6 +257,7 @@ static void __init register_insn_emulation_sysctl(void)
 	raw_spin_unlock_irqrestore(&insn_emulation_lock, flags);

 	register_sysctl("abi", insns_sysctl);
+	return 0;
 }

 /*
@@ -617,25 +624,47 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
  */
 static int __init armv8_deprecated_init(void)
 {
-	if (IS_ENABLED(CONFIG_SWP_EMULATION))
-		register_insn_emulation(&swp_ops);
+	int ret = 0;
+	int err = 0;
+
+	if (IS_ENABLED(CONFIG_SWP_EMULATION)) {
+		ret = register_insn_emulation(&swp_ops);
+		if (ret) {
+			pr_err("register insn emulation swp: fail\n");
+			err = ret;
+		}
+	}

-	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION))
-		register_insn_emulation(&cp15_barrier_ops);
+	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION)) {
+		ret = register_insn_emulation(&cp15_barrier_ops);
+		if (ret) {
+			pr_err("register insn emulation cpu15_barrier: fail\n");
+			err = ret;
+		}
+	}

 	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
-		if(system_supports_mixed_endian_el0())
-			register_insn_emulation(&setend_ops);
-		else
+		if (system_supports_mixed_endian_el0()) {
+			ret = register_insn_emulation(&setend_ops);
+			if (ret) {
+				pr_err("register insn emulation setend: fail\n");
+				err = ret;
+			}
+		} else {
 			pr_info("setend instruction emulation is not supported on this system\n");
+		}
 	}

-	cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
-				  "arm64/isndep:starting",
-				  run_all_insn_set_hw_mode, NULL);
-	register_insn_emulation_sysctl();
+	if (nr_insn_emulated) {
+		cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
+					  "arm64/isndep:starting",
+					  run_all_insn_set_hw_mode, NULL);
+		ret = register_insn_emulation_sysctl();
+		if (ret)
+			err = ret;
+	}

-	return 0;
+	return err;
 }

 core_initcall(armv8_deprecated_init);
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
