Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B911A6629
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eztfoEEf8UpvZvyN4HI8NgkqfRGdR6XEwSiOmtZgbFQ=; b=CxF7fjw+goLaTIc/dDMnwQb9Hr
	iXWt9Yhfqs78WjBqhxDQKAvI4n3WnVaNoMUt7lGxt5edRfsJrBPeit1UDboJw94hq9QCqVHsYbqZF
	mh49mzKaUWpioJsWqBaQsgjPfot0F8YAj00zzinQxwq1h6GpM7LPUpZjCHJr43/sg+pcUR3aoa1uN
	LVeja/ldSOgJEu+z1EPjyVTl+HKs4soqmuHYyG8Xcb2DN8r8doAkPRK+OOUj72o9Q+3yn7U5J32+Q
	QwPpUWkglPsoE2QxFjrhxfczUv8zMNzhYHvd91tBlxx+16GK9kLCvt0zsup9CwoPSLXbQHvUnsn55
	I2xiYQHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNxqC-0002SE-Nq; Mon, 13 Apr 2020 12:05:28 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNxpm-0008M2-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:05:05 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 77C5926249B;
 Mon, 13 Apr 2020 20:04:57 +0800 (CST)
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
Subject: [PATCH 1/2] [V2 1/2]sched:add task_running_oncpu
Date: Mon, 13 Apr 2020 20:04:23 +0800
Message-Id: <1586779466-4439-2-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586779466-4439-1-git-send-email-wangqing@vivo.com>
References: <1586779466-4439-1-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSVVPTkhLS0tLTUNNTU9OTllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MjY6FDo6Pjg6PAstCk4DPysy
 Tk1PCz5VSlVKTkNNTExCT0JMQ05LVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUhKSE43Bg++
X-HM-Tid: 0a71736da5329375kuws77c5926249b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_050503_224263_43A780A6 
X-CRM114-Status: UNSURE (   8.69  )
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

We have no interface whether the task is running,
so we need to add an interface and distinguish CONFIG_SMP.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 include/linux/sched.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 4418f5c..13cc8f5 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1843,6 +1843,11 @@ static inline unsigned int task_cpu(const struct task_struct *p)
 
 extern void set_task_cpu(struct task_struct *p, unsigned int cpu);
 
+static inline int task_running_oncpu(const struct task_struct *p)
+{
+	return p->on_cpu;
+}
+
 #else
 
 static inline unsigned int task_cpu(const struct task_struct *p)
@@ -1854,6 +1859,11 @@ static inline void set_task_cpu(struct task_struct *p, unsigned int cpu)
 {
 }
 
+static inline int task_running_oncpu(const struct task_struct *p)
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
