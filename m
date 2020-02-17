Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F616119E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q7tmq8ab6QAZF5/1fIzVaRfgPOcmxS0BiHGQaRoUpG4=; b=K3v
	ELqN0+B9qB2Tzb+Wzu3mxznqZMKW/hAFIuXOwrytR+CpZ1U+Cgwacp7NFhoty8V+5sRuUWO3YWYFM
	DXsNeON9mH14DSpLS8xhn+5m60BABAl9Kpk0N7BHU6U3Lzi/GT5+o8weTpJIA2pncQQ4TTC5SUWtW
	yxaGrteTJyajdsI8wsxTMZKKv+R4rF/i7INAcv0Zarx2JmESE006YwN0Nw8GmpWe5kN3eiEopWd4h
	EDxfH/XyqWWyKeoBkU06Q8mvzMxFvmqgngC/anMRQ6jPBn6D0vOsNRQ2kOOi6CQOeKYxRhoYWvFeA
	Gk/pS6JxYafVk0Pe4QKJpI2WV0wAcWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fBj-0005W3-MQ; Mon, 17 Feb 2020 12:07:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fBV-0005Om-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:07:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B8875AF01;
 Mon, 17 Feb 2020 12:07:27 +0000 (UTC)
From: Petr Mladek <pmladek@suse.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] kthread: Mark timer used by delayed kthread works as IRQ safe
Date: Mon, 17 Feb 2020 13:07:09 +0100
Message-Id: <20200217120709.1974-1-pmladek@suse.com>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_040733_749551_4F8A1AF7 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Petr Mladek <pmladek@suse.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, linux-rt-users@vger.kernel.org,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 linux-kernel@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The timer used by delayed kthread works are IRQ safe because the used
kthread_delayed_work_timer_fn() is IRQ safe.

It is properly marked when initialized by KTHREAD_DELAYED_WORK_INIT().
But TIMER_IRQSAFE flag is missing when initialized by
kthread_init_delayed_work().

The missing flag might trigger invalid warning from del_timer_sync()
when kthread_mod_delayed_work() is called with interrupts disabled.

Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Petr Mladek <pmladek@suse.com>
Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
This patch is result of a discussion about using the API, see
https://lkml.kernel.org/r/cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com

 include/linux/kthread.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/kthread.h b/include/linux/kthread.h
index 0f9da966934e..8bbcaad7ef0f 100644
--- a/include/linux/kthread.h
+++ b/include/linux/kthread.h
@@ -165,7 +165,8 @@ extern void __kthread_init_worker(struct kthread_worker *worker,
 	do {								\
 		kthread_init_work(&(dwork)->work, (fn));		\
 		timer_setup(&(dwork)->timer,				\
-			     kthread_delayed_work_timer_fn, 0);		\
+			     kthread_delayed_work_timer_fn,		\
+			     TIMER_IRQSAFE);				\
 	} while (0)
 
 int kthread_worker_fn(void *worker_ptr);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
