Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE63E1CA16E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9QQN+tzB7XZk6tbG3Fp2ME/DHa/lnWMM/D5CEJs5RkY=; b=BioEUb3qKpIs76
	WNSdjJLIS1qSe38RF+zCdtiWEwkOqEu7mE1q2VTnEw+q/gRSKHpOjotrQtOlpxKJM0XHsuw4hvbMP
	Ko6e67/TYyEjyYU0uNnMpbLMiD9nHm7dRNCY+lYZjBxl+FE+VSVN7qQpIOBfW1Fu9GTLYWOFsi5bL
	GUxDQRwomuOAMs509mtcBC6nHkqZqIA73eewNn12jvw4kU/R0K5lvb2KgQ4Xbpbb47uDL0URGgJ0i
	Z7lJ8fVJlFBWDW67dB25PLQleShG/pv0Az+F+EAhk06QxxC+QMAXs+7anppgCxztSAXB7Zj3R/vAx
	dXCt9Z1pS6X1uVlqDZsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtUv-0007Zh-Vu; Fri, 08 May 2020 03:16:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtUo-0007Yv-2T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:16:19 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B9F24162F1B5998915DF;
 Fri,  8 May 2020 11:16:05 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.237) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 8 May 2020 11:15:57 +0800
To: <catalin.marinas@arm.com>, <will@kernel.org>, <Dave.Martin@arm.com>,
 <mark.rutland@arm.com>, <james.morse@arm.com>, <yeyunfeng@huawei.com>,
 <0x7f454c46@gmail.com>, <tglx@linutronix.de>, <lorenzo.pieralisi@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <hushiyuan@huawei.com>, <hewenliang4@huawei.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH v2] arm64: stacktrace: Factor out some common code into
 on_stack()
Message-ID: <07b3b0e6-3f58-4fed-07ea-7d17b7508948@huawei.com>
Date: Fri, 8 May 2020 11:15:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.166.215.237]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_201618_284007_D78A31AC 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some common codes for stack checking, so factors it out into
the function on_stack().

No functional change.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
v1 -> v2:
 - check 'low' in on_stack() and everybody call on_stack() only

 arch/arm64/include/asm/stacktrace.h | 40 +++++++++++++------------------------
 arch/arm64/kernel/sdei.c            | 28 ++------------------------
 2 files changed, 16 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index fdb913cc0bcb..fc7613023c19 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -69,12 +69,10 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,

 DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);

-static inline bool on_irq_stack(unsigned long sp,
+static inline bool on_stack(unsigned long sp, unsigned long low,
+				unsigned long high, enum stack_type type,
 				struct stack_info *info)
 {
-	unsigned long low = (unsigned long)raw_cpu_read(irq_stack_ptr);
-	unsigned long high = low + IRQ_STACK_SIZE;
-
 	if (!low)
 		return false;

@@ -84,12 +82,20 @@ static inline bool on_irq_stack(unsigned long sp,
 	if (info) {
 		info->low = low;
 		info->high = high;
-		info->type = STACK_TYPE_IRQ;
+		info->type = type;
 	}
-
 	return true;
 }

+static inline bool on_irq_stack(unsigned long sp,
+				struct stack_info *info)
+{
+	unsigned long low = (unsigned long)raw_cpu_read(irq_stack_ptr);
+	unsigned long high = low + IRQ_STACK_SIZE;
+
+	return on_stack(sp, low, high, STACK_TYPE_IRQ, info);
+}
+
 static inline bool on_task_stack(const struct task_struct *tsk,
 				 unsigned long sp,
 				 struct stack_info *info)
@@ -97,16 +103,7 @@ static inline bool on_task_stack(const struct task_struct *tsk,
 	unsigned long low = (unsigned long)task_stack_page(tsk);
 	unsigned long high = low + THREAD_SIZE;

-	if (sp < low || sp >= high)
-		return false;
-
-	if (info) {
-		info->low = low;
-		info->high = high;
-		info->type = STACK_TYPE_TASK;
-	}
-
-	return true;
+	return on_stack(sp, low, high, STACK_TYPE_TASK, info);
 }

 #ifdef CONFIG_VMAP_STACK
@@ -118,16 +115,7 @@ static inline bool on_overflow_stack(unsigned long sp,
 	unsigned long low = (unsigned long)raw_cpu_ptr(overflow_stack);
 	unsigned long high = low + OVERFLOW_STACK_SIZE;

-	if (sp < low || sp >= high)
-		return false;
-
-	if (info) {
-		info->low = low;
-		info->high = high;
-		info->type = STACK_TYPE_OVERFLOW;
-	}
-
-	return true;
+	return on_stack(sp, low, high, STACK_TYPE_OVERFLOW, info);
 }
 #else
 static inline bool on_overflow_stack(unsigned long sp,
diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
index d6259dac62b6..3afed808b474 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -95,19 +95,7 @@ static bool on_sdei_normal_stack(unsigned long sp, struct stack_info *info)
 	unsigned long low = (unsigned long)raw_cpu_read(sdei_stack_normal_ptr);
 	unsigned long high = low + SDEI_STACK_SIZE;

-	if (!low)
-		return false;
-
-	if (sp < low || sp >= high)
-		return false;
-
-	if (info) {
-		info->low = low;
-		info->high = high;
-		info->type = STACK_TYPE_SDEI_NORMAL;
-	}
-
-	return true;
+	return on_stack(sp, low, high, STACK_TYPE_SDEI_NORMAL, info);
 }

 static bool on_sdei_critical_stack(unsigned long sp, struct stack_info *info)
@@ -115,19 +103,7 @@ static bool on_sdei_critical_stack(unsigned long sp, struct stack_info *info)
 	unsigned long low = (unsigned long)raw_cpu_read(sdei_stack_critical_ptr);
 	unsigned long high = low + SDEI_STACK_SIZE;

-	if (!low)
-		return false;
-
-	if (sp < low || sp >= high)
-		return false;
-
-	if (info) {
-		info->low = low;
-		info->high = high;
-		info->type = STACK_TYPE_SDEI_CRITICAL;
-	}
-
-	return true;
+	return on_stack(sp, low, high, STACK_TYPE_SDEI_CRITICAL, info);
 }

 bool _on_sdei_stack(unsigned long sp, struct stack_info *info)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
