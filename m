Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEADA1CA195
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcQXN2Q6ttx+19eHfT9c+OsoDfO2TMV8rtH4pBvprzo=; b=Ppj1/7STXL2/DQ
	yq7aQHhDGYZo0oRGjZGIs6G3ZNluhIoAg58RLzRe6cdtnkjKqG+HLRiHvVvDNzojsvhHbE8E9cKFV
	pijJzcEDXfaQ8NIOHCs1fLKog/QAczDbnWB97lwAV9UlUSiLAtJBkGcAixCQmRN7kHsyLnOt5BYkJ
	tvnZbtwRpWKK9vunJmnI99aSJx/MW/LjkfBpVDlR6E6TbtuivopSzdGf3Dajk+Fo5QiTrC22W/xRH
	BGDZoC33XkzbcfFzTCBTrFXqdv3O9zH5G2YVucw6y6rEDQQC31suNcEnCTD6RanaWxmZ3DOAaB3rA
	LqYhqNA+xnCMda1a6Zzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtl9-0003qc-5D; Fri, 08 May 2020 03:33:11 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtjI-0002KF-JT
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588908674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E8MHh9dyvpe8bslvZNsUP5j2B3v4NSqfl6A+NT0wxD4=;
 b=PBNLV2iZmfz3CoCQMxxp8HKLsT6+Uie1GKKGg2VXsH8XOkkkpt9OI2lv8kYtsdCWZu51Hu
 c9BeP5u3XHCPOhlPRlem8JMoyzgK35JJmFvjABqF8+xqXrvx0za+eCRbqLMRKGjVanYJYZ
 U3y46Gybq7utj4h4lHAEtuufm+fPGZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-kwm_sW8LPE6l4dM0Y68Z0w-1; Thu, 07 May 2020 23:31:13 -0400
X-MC-Unique: kwm_sW8LPE6l4dM0Y68Z0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6762D107ACCA;
 Fri,  8 May 2020 03:31:11 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 783242E052;
 Fri,  8 May 2020 03:31:03 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv2 8/9] kernel/sched: Add cpu_rq_is_locked()
Date: Fri,  8 May 2020 13:29:18 +1000
Message-Id: <20200508032919.52147-9-gshan@redhat.com>
In-Reply-To: <20200508032919.52147-1-gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_203116_744675_55C85C18 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, aarcange@redhat.com, drjones@redhat.com,
 suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds API cpu_rq_is_locked() to check if the CPU's runqueue has been
locked or not. It's used in the subsequent patch to determine the task
wakeup should be executed immediately or delayed.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 include/linux/sched.h | 1 +
 kernel/sched/core.c   | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 4418f5cb8324..e68882443da7 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1691,6 +1691,7 @@ extern struct task_struct *find_task_by_pid_ns(pid_t nr, struct pid_namespace *n
  */
 extern struct task_struct *find_get_task_by_vpid(pid_t nr);
 
+extern bool cpu_rq_is_locked(int cpu);
 extern int wake_up_state(struct task_struct *tsk, unsigned int state);
 extern int wake_up_process(struct task_struct *tsk);
 extern void wake_up_new_task(struct task_struct *tsk);
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 9a2fbf98fd6f..30f4a8845495 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -73,6 +73,14 @@ __read_mostly int scheduler_running;
  */
 int sysctl_sched_rt_runtime = 950000;
 
+bool cpu_rq_is_locked(int cpu)
+{
+	struct rq *rq = cpu_rq(cpu);
+
+	return raw_spin_is_locked(&rq->lock) ? true :  false;
+}
+EXPORT_SYMBOL_GPL(cpu_rq_is_locked);
+
 /*
  * __task_rq_lock - lock the rq @p resides on.
  */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
