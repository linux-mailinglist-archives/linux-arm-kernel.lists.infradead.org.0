Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F4BCB57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH49JJP+kkznSkscmf8TkpbGuFPzkqGYONij81+MGyo=; b=kPisyecQoZjlHN
	fm6dqAMBhl4dNi2xfjZrgroT0VQx/9qtBOF49ObsRICnvhohWX0U9kF1th1SepnsI4kXPOgEB5ME4
	KgDyAFCllgj9+Ub8owH9lWDsCV/iPLmFlb4Y5vd6OYOqso3V/1+8H2xRP7sHVePEp5eRNaGKZ/euX
	I9VT826LHBLrUgSgUcEqovYI6xcxo30pBdzRpOYecFCvuAn+am8klSX/1uucwPEmyI+vFWILtxsBM
	dUKqpXxG6mZFQAF6W1Vb/7Ox/pIMv7+cWMOSkfy1veMJmlrVrgwGT8N7hOGjGlkUn//NcgMHILDYw
	7XkAEF6zWStEuOrrDFOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmiL-0006fz-9B; Tue, 24 Sep 2019 15:26:53 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf8-00039b-LX
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:36 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 72028C8DBC18647CE88C;
 Tue, 24 Sep 2019 23:23:27 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:19 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 08/12] arm/sdei: add support to register interrupt bind
 notifier
Date: Tue, 24 Sep 2019 23:21:47 +0800
Message-ID: <1569338511-3572-9-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082335_030766_3A35F518 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>, Heyi Guo <guoheyi@huawei.com>,
 wanghaibin.wang@huawei.com, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Other qemu modules related with the interrupt bind operation may want
to be notified when guest requests to bind interrupt to sdei event, so
we add register and unregister interfaces.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 target/arm/sdei.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 target/arm/sdei.h | 17 +++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/target/arm/sdei.c b/target/arm/sdei.c
index 9ceb131..efdb681 100644
--- a/target/arm/sdei.c
+++ b/target/arm/sdei.c
@@ -45,6 +45,52 @@
 
 static QemuSDEState *sde_state;
 
+typedef struct QemuSDEIBindNotifyEntry {
+    QTAILQ_ENTRY(QemuSDEIBindNotifyEntry) entry;
+    QemuSDEIBindNotify *func;
+    void *opaque;
+    int irq;
+} QemuSDEIBindNotifyEntry;
+
+static QTAILQ_HEAD(, QemuSDEIBindNotifyEntry) bind_notifiers =
+    QTAILQ_HEAD_INITIALIZER(bind_notifiers);
+
+void qemu_register_sdei_bind_notifier(QemuSDEIBindNotify *func,
+                                      void *opaque, int irq)
+{
+    QemuSDEIBindNotifyEntry *be = g_new0(QemuSDEIBindNotifyEntry, 1);
+
+    be->func = func;
+    be->opaque = opaque;
+    be->irq = irq;
+    QTAILQ_INSERT_TAIL(&bind_notifiers, be, entry);
+}
+
+void qemu_unregister_sdei_bind_notifier(QemuSDEIBindNotify *func,
+                                        void *opaque, int irq)
+{
+    QemuSDEIBindNotifyEntry *be;
+
+    QTAILQ_FOREACH(be, &bind_notifiers, entry) {
+        if (be->func == func && be->opaque == opaque && be->irq == irq) {
+            QTAILQ_REMOVE(&bind_notifiers, be, entry);
+            g_free(be);
+            return;
+        }
+    }
+}
+
+static void sdei_notify_bind(int irq, int32_t event, bool bind)
+{
+    QemuSDEIBindNotifyEntry *be, *nbe;
+
+    QTAILQ_FOREACH_SAFE(be, &bind_notifiers, entry, nbe) {
+        if (be->irq == irq) {
+            be->func(be->opaque, irq, event, bind);
+        }
+    }
+}
+
 static void qemu_sde_prop_init(QemuSDEState *s)
 {
     QemuSDEProp *sde_props = s->sde_props_state;
@@ -502,6 +548,7 @@ static int32_t sdei_alloc_event_num(QemuSDEState *s, bool is_critical,
             sde_props[index].interrupt = intid;
             sde_props[index].is_shared = is_shared;
             sde_props[index].is_critical = is_critical;
+            sdei_notify_bind(intid, event, true);
             override_qemu_irq(s, event, intid);
             s->irq_map[intid] = event;
             qemu_mutex_unlock(&sde_props[index].lock);
@@ -522,6 +569,7 @@ static int32_t sdei_free_event_num_locked(QemuSDEState *s, QemuSDEProp *prop)
         goto unlock_return;
     }
 
+    sdei_notify_bind(prop->interrupt, prop->event_id, false);
     restore_qemu_irq(s, prop->event_id, prop->interrupt);
     s->irq_map[prop->interrupt] = SDEI_INVALID_EVENT_ID;
     prop->event_id = SDEI_INVALID_EVENT_ID;
@@ -1331,6 +1379,7 @@ static int qemu_sdei_post_load(void *opaque, int version_id)
         int intid = sde_props[i].interrupt;
         if (intid != SDEI_INVALID_INTERRUPT) {
             s->irq_map[intid] = sde_props[i].event_id;
+            sdei_notify_bind(intid, sde_props[i].event_id, true);
             override_qemu_irq(s, sde_props[i].event_id, intid);
         }
     }
diff --git a/target/arm/sdei.h b/target/arm/sdei.h
index a61e788..feaaf1a 100644
--- a/target/arm/sdei.h
+++ b/target/arm/sdei.h
@@ -38,4 +38,21 @@ void sdei_handle_request(CPUState *cs, struct kvm_run *run);
  */
 bool trigger_sdei_by_irq(int cpu, int irq);
 
+/*
+ * Notify callback prototype; the argument "bind" tells whether it is a bind
+ * operation or unbind one.
+ */
+typedef void QemuSDEIBindNotify(void *opaque, int irq,
+                                int32_t event, bool bind);
+/*
+ * Register a notify callback for a specific interrupt bind operation; the
+ * client be both notified by bind and unbind operation.
+ */
+void qemu_register_sdei_bind_notifier(QemuSDEIBindNotify *func,
+                                      void *opaque, int irq);
+/*
+ * Unregister a notify callback for a specific interrupt bind operation.
+ */
+void qemu_unregister_sdei_bind_notifier(QemuSDEIBindNotify *func,
+                                        void *opaque, int irq);
 #endif
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
