Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688091A7AEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=scQD09Z3n7AwjB6tqCyKkkVyfVe4RlpRnSQ5H4TEQlk=; b=RmLJlO/JkCNoGvTbTug6CuSU2C
	lUIm2BT+BPKaxBKvcIxuqhE9fkmz6hcKYNDoTBvPbH1XuM84qZ9j43uISfK9wcivYOFnC4acBVLR6
	TnGuvzqPuM4kcTW6g95Is8Fn24AP6MOW8LP54AIwSl+f2SqPJkt8ikaz2puEDDxPlyFZBqNrSZLMR
	r27mWPEgTYI0Qydc9dI9/ILz/R03uLSiPRTbBBLizdsQs3Qrf6x4NUibujE4+QcSMUjgFBjKn8uZD
	4b2xLM63BMXQS05ZG9qrLUvzZ0wCx7Uv7ynNmpDwcQI6FrXXuUWJ0OycWtz7a1I16ryzlrFWCqx/H
	KLz8xWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKoW-0003l4-M9; Tue, 14 Apr 2020 12:37:16 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKo7-0003ZS-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:36:52 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 50D4F2612E9;
 Tue, 14 Apr 2020 20:36:48 +0800 (CST)
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
Subject: [V3 2/3] sched:add task_running()
Date: Tue, 14 Apr 2020 20:36:31 +0800
Message-Id: <1586867796-5768-3-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
References: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSVVPQkxCQkJCS01OSEJCSVlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjI6NSo*Njg6SwosQhoaMB4W
 LiFPFElVSlVKTkNNQ01MQ0tDTE9DVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUhKTEs3Bg++
X-HM-Tid: 0a7178b129879375kuws50d4f2612e9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_053651_769013_656515A3 
X-CRM114-Status: UNSURE (   8.07  )
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

The task_running() should be renamed to task_running_on_rq()
like the naming of task_running_on_cpu(), this is what it
originally mean.

Add task_running() no rq required.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 include/linux/sched.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 4418f5c..0a7b150 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1843,6 +1843,11 @@ static inline unsigned int task_cpu(const struct task_struct *p)
 
 extern void set_task_cpu(struct task_struct *p, unsigned int cpu);
 
+static inline int task_running(const struct task_struct *p)
+{
+	return READ_ONCE(p->on_cpu);
+}
+
 #else
 
 static inline unsigned int task_cpu(const struct task_struct *p)
@@ -1854,6 +1859,11 @@ static inline void set_task_cpu(struct task_struct *p, unsigned int cpu)
 {
 }
 
+static inline int task_running(const struct task_struct *p)
+{
+	return p == current;
+}
+
 #endif /* CONFIG_SMP */
 
 /*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
