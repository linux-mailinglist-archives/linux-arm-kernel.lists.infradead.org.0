Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671CC1A7AF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CgK4tAwhSsI25iYfXIs5NOLGlpta0GYPJ3qJ/J1uuFs=; b=AuL
	Oseqh8ObalDHikDccq4K72ssrzl6ZWVigoKWh1vfAhOU6tLQZJBqRJ5m8m96lANjWbMQmjFR/pzyF
	gd7zYOUxV3VURbcJLsV5GCHOcxn4vyXvCBKY2xrNCrfRxAKIUhu8KwCFOEy+j+F+9wpSnHIPAMEjK
	boBYOKycnRBzj+zV5K8GYXVcHjD5NEBk4eFd6kaRpXyKk3ma9I/7AycXOBegrpneVzVxIvCa1jRfk
	O+yEBqp9H3d/70V//gm2mP/Gk2evhWiH+ense3fJzcEtpyAJLSh1iT+6l0eUHJ8rWHZaIVBXSDrEU
	SzLsQCoY0wC5Feexyd81p4rpOwZ8SVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKoi-00040B-G2; Tue, 14 Apr 2020 12:37:28 +0000
Received: from m177134.mail.qiye.163.com ([123.58.177.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKo7-0003ZO-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:36:53 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id CFD13261925;
 Tue, 14 Apr 2020 20:36:41 +0800 (CST)
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
Subject: [V3 0/3] Fixed dump_backtrace() when task running on another cpu 
Date: Tue, 14 Apr 2020 20:36:29 +0800
Message-Id: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUlXWQgYFAkeWUFZTVVOTUxCQkJDSEJMQ0lMSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mi46Aio4KjgzQwoTHRkwMCkL
 LQ4wCTBVSlVKTkNNQ01MQ0tJSU5NVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUhLTks3Bg++
X-HM-Tid: 0a7178b1103a9375kuwscfd13261925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_053651_982293_E3DD1267 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.134 listed in list.dnswl.org]
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

The task_running() should be renamed to task_running_on_rq()
like the naming of task_running_on_cpu(), this is what it
originally mean.

Add task_running() no rq required.

V2:
- Add task_running_oncpu()
v3:
- Renamed task_running() to task_running_on_rq()
- Renamed task_running_oncpu() to task_running()

Wang Qing (3):
  ARM64:fixed dump_backtrace() when task running on another cpu
  sched:add task_running()
  sched:rename task_running() and to task_running_on_rq

 arch/arm64/kernel/traps.c |  7 +++++++
 include/linux/sched.h     | 10 ++++++++++
 kernel/sched/core.c       | 14 +++++++-------
 kernel/sched/deadline.c   |  6 +++---
 kernel/sched/fair.c       |  2 +-
 kernel/sched/rt.c         |  6 +++---
 kernel/sched/sched.h      |  2 +-
 7 files changed, 32 insertions(+), 15 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
