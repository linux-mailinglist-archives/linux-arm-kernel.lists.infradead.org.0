Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3721A7AEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CxAQSKy4lFoXjPk+pZmNebqcr39O9OK+QSg7vkLXf1Y=; b=K/6eMWMJkZbkqtnDFLpTjAbJWM
	veuzrC2zQmOeq2PBhPQUu1/sXBBZbU+miV++omBEwLF5pW+Si7JyQHTzVHQ1FhKCYM3UD2h6/bdI+
	JZDJ++Bqo/X2ImxNSjWdvArFpN6aU5Gy1IttK9YrywFpyzfRrlidSrUojhqhBHMvV+5/MdSAAKekg
	Hhlc+59FQwW+IpoZxogfYvMBIWcxi2FPQjqxQTDrSkB8evF+Qhaf4e6bVLuvN73t60zSZv0nVUI/B
	HxmweZMQh9iyXfnjdxLQ8senP9MY7qlmQL2fe/tmWhizjAcZJf+dPDb4RnspPtdPuL/mhtd6obCm7
	DA8p9Y0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKoI-0003at-6X; Tue, 14 Apr 2020 12:37:02 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKo6-0003ZQ-Nl
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:36:52 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 572E0261604;
 Tue, 14 Apr 2020 20:36:45 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
 Mel Gorman <mgorman@suse.de>, James Morse <james.morse@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, jinho lim <jordan.lim@samsung.com>,
 Wang Qing <wangqing@vivo.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [V3 1/3] ARM64:fixed dump_backtrace() when task running on another cpu
Date: Tue, 14 Apr 2020 20:36:30 +0800
Message-Id: <1586867796-5768-2-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
References: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSVVMTllXWShZQUhPN1dZLVlBSVdZCQ
 4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46LBw4HjgrEgotHRkqMCwt
 Tw4aCSxVSlVKTkNNQ01MQ0tOTE5MVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUhJSEI3Bg++
X-HM-Tid: 0a7178b11de39375kuws572e0261604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_053650_913170_694BDA10 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [59.111.176.17 listed in wl.mailspike.net]
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
Cc: opensource.kernel@vivo.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We cannot get FP and PC when the task is running on another CPU,
task->thread.cpu_context is the last time the task was switched out,
it's better to give a reminder than to provide wrong information
for example when Task blocked in spinlock/interrupt/busy loop.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 arch/arm64/kernel/traps.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be..c74090b 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -106,6 +106,13 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		start_backtrace(&frame,
 				(unsigned long)__builtin_frame_address(0),
 				(unsigned long)dump_backtrace);
+	} else if (task_running(tsk)) {
+		/*
+		 * The task is running in another cpu, we cannot get it.
+		 */
+		pr_warn("tsk: %s is running in CPU%d, Don't call trace!\n",
+			tsk->comm, task_cpu(tsk));
+		return;
 	} else {
 		/*
 		 * task blocked in __switch_to
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
