Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E985BCB56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HkCwivEzFX0w+01j3kPMpZvFaLUyBhnpG6fwH64kxU=; b=ApuoNlMANFWZOp
	nridJFsk27NvLPs1b8rDX4hUDd69R249OBzlyWCPNjMK2W0eTOw2ZmEOOelA3veZz0pWBDdg3WB27
	YaQKtJw9/YKkffbEbbOCRjublI+2bwgG4GRaTm/bFYgCxm5sb1RXh4QrIg0w9Qb/IaJ732pGzgTrj
	j4IfWuyhrFqgGCvVHfKye3/2NszrFPVYT6gANEE6phMPPWzYvcpIpZg4tkJgnmWDk6N4T0Izl5svW
	owOmv/45ZrSuFCFs0upDhm24UWglHnMeyt82Kf66+ISP/jmBqB7OATE9dtM+VkdSZNVOYvj4KdrDE
	Ty7jhxCUHWwE4dXxh0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmi0-0006O4-0r; Tue, 24 Sep 2019 15:26:32 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf4-00035i-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:33 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 652C98126B7940A2D8D7;
 Tue, 24 Sep 2019 23:23:27 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:18 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 07/12] arm/sdei: override qemu_irq handler when binding
 interrupt
Date: Tue, 24 Sep 2019 23:21:46 +0800
Message-ID: <1569338511-3572-8-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082331_358997_5E107C8F 
X-CRM114-Status: GOOD (  15.60  )
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

Override qemu_irq handler to support trigger SDEI event transparently
after guest binds interrupt to SDEI event. We don't have good way to
get GIC device and to guarantee SDEI device is initialized after GIC,
so we search GIC in system bus when the first SDEI request happens or
in VMSTATE post_load().

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 target/arm/sdei.c     | 137 ++++++++++++++++++++++++++++++++++++++++++++++++--
 target/arm/sdei_int.h |   3 ++
 2 files changed, 137 insertions(+), 3 deletions(-)

diff --git a/target/arm/sdei.c b/target/arm/sdei.c
index 088ed76..9ceb131 100644
--- a/target/arm/sdei.c
+++ b/target/arm/sdei.c
@@ -85,6 +85,24 @@ static void qemu_sde_cpu_init(QemuSDEState *s)
     }
 }
 
+static int gic_int_to_irq(int num_irq, int intid, int cpu)
+{
+    if (intid >= GIC_INTERNAL) {
+        return intid - GIC_INTERNAL;
+    }
+    return num_irq - GIC_INTERNAL + cpu * GIC_INTERNAL + intid;
+}
+
+static int irq_to_gic_int(int num_irq, int irq, int *cpu)
+{
+    if (irq < num_irq - GIC_INTERNAL) {
+        return irq + GIC_INTERNAL;
+    }
+    irq -= num_irq - GIC_INTERNAL;
+    *cpu = irq / GIC_INTERNAL;
+    return irq % GIC_INTERNAL;
+}
+
 static inline QemuSDECpu *get_sde_cpu(QemuSDEState *s, CPUState *cs)
 {
     assert(cs->cpu_index < s->sdei_max_cpus);
@@ -381,6 +399,76 @@ static void dispatch_cpu(QemuSDEState *s, CPUState *cs, bool is_critical)
     }
 }
 
+static void qemu_sdei_irq_handler(void *opaque, int irq, int level)
+{
+    int cpu = 0;
+    irq = irq_to_gic_int(sde_state->num_irq, irq, &cpu);
+    trigger_sdei_by_irq(cpu, irq);
+}
+
+static void override_qemu_irq(QemuSDEState *s, int32_t event, uint32_t intid)
+{
+    qemu_irq irq;
+    QemuSDE *sde;
+    CPUState *cs;
+    int cpu;
+
+    /* SPI */
+    if (intid >= GIC_INTERNAL) {
+        cs = arm_get_cpu_by_id(0);
+        irq = qdev_get_gpio_in(s->gic_dev,
+                               gic_int_to_irq(s->num_irq, intid, 0));
+        if (irq) {
+            qemu_irq_intercept_in(&irq, qemu_sdei_irq_handler, 1);
+        }
+        sde = get_sde_no_check(s, event, cs);
+        sde->irq = irq;
+        put_sde(sde, cs);
+        return;
+    }
+    /* PPI */
+    for (cpu = 0; cpu < s->sdei_max_cpus; cpu++) {
+        cs = arm_get_cpu_by_id(cpu);
+        irq = qdev_get_gpio_in(s->gic_dev,
+                               gic_int_to_irq(s->num_irq, intid, cpu));
+        if (irq) {
+            qemu_irq_intercept_in(&irq, qemu_sdei_irq_handler, 1);
+        }
+        sde = get_sde_no_check(s, event, cs);
+        sde->irq = irq;
+        put_sde(sde, cs);
+    }
+}
+
+static void restore_qemu_irq(QemuSDEState *s, int32_t event, uint32_t intid)
+{
+    QemuSDE *sde;
+    CPUState *cs;
+    int cpu;
+
+    /* SPI */
+    if (intid >= GIC_INTERNAL) {
+        cs = arm_get_cpu_by_id(0);
+        sde = get_sde_no_check(s, event, cs);
+        if (sde->irq) {
+            qemu_irq_remove_intercept(&sde->irq, 1);
+            sde->irq = NULL;
+        }
+        put_sde(sde, cs);
+        return;
+    }
+    /* PPI */
+    for (cpu = 0; cpu < s->sdei_max_cpus; cpu++) {
+        cs = arm_get_cpu_by_id(cpu);
+        sde = get_sde_no_check(s, event, cs);
+        if (sde->irq) {
+            qemu_irq_remove_intercept(&sde->irq, 1);
+            sde->irq = NULL;
+        }
+        put_sde(sde, cs);
+    }
+}
+
 static int32_t sdei_alloc_event_num(QemuSDEState *s, bool is_critical,
                                     bool is_shared, int intid)
 {
@@ -414,6 +502,7 @@ static int32_t sdei_alloc_event_num(QemuSDEState *s, bool is_critical,
             sde_props[index].interrupt = intid;
             sde_props[index].is_shared = is_shared;
             sde_props[index].is_critical = is_critical;
+            override_qemu_irq(s, event, intid);
             s->irq_map[intid] = event;
             qemu_mutex_unlock(&sde_props[index].lock);
             qemu_mutex_unlock(&s->sdei_interrupt_bind_lock);
@@ -433,6 +522,7 @@ static int32_t sdei_free_event_num_locked(QemuSDEState *s, QemuSDEProp *prop)
         goto unlock_return;
     }
 
+    restore_qemu_irq(s, prop->event_id, prop->interrupt);
     s->irq_map[prop->interrupt] = SDEI_INVALID_EVENT_ID;
     prop->event_id = SDEI_INVALID_EVENT_ID;
     prop->interrupt = SDEI_INVALID_INTERRUPT;
@@ -929,13 +1019,33 @@ static int64_t sdei_event_pe_unmask(QemuSDEState *s, CPUState *cs,
     return SDEI_SUCCESS;
 }
 
+static int dev_walkerfn(DeviceState *dev, void *opaque)
+{
+    QemuSDEState *s = opaque;
+
+    if (object_dynamic_cast(OBJECT(dev), TYPE_ARM_GICV3_COMMON)) {
+        GICv3State *gic = ARM_GICV3_COMMON(dev);
+        s->num_irq = gic->num_irq;
+        s->gic_dev = dev;
+        return -1;
+    }
+
+    if (object_dynamic_cast(OBJECT(dev), TYPE_ARM_GIC_COMMON)) {
+        GICState *gic = ARM_GIC_COMMON(dev);
+        s->num_irq = gic->num_irq;
+        s->gic_dev = dev;
+        return -1;
+    }
+    return 0;
+}
+
 static int64_t sdei_event_interrupt_bind(QemuSDEState *s, CPUState *cs,
                                          struct kvm_run *run)
 {
     uint64_t *args = (uint64_t *)(run->hypercall.args);
     uint32_t intid = args[1];
 
-    if (intid < GIC_NR_SGIS || intid >= GIC_MAXIRQ) {
+    if (intid < GIC_NR_SGIS || intid >= s->num_irq) {
         return SDEI_INVALID_PARAMETERS;
     }
     return sdei_alloc_event_num(s, false, intid >= 32, intid);
@@ -1042,6 +1152,17 @@ void sdei_handle_request(CPUState *cs, struct kvm_run *run)
         return;
     }
 
+    if (!sde_state->gic_dev) {
+        /* Search for ARM GIC device */
+        qbus_walk_children(sysbus_get_default(), dev_walkerfn,
+                           NULL, NULL, NULL, sde_state);
+        if (!sde_state->gic_dev) {
+            error_report("Cannot find ARM GIC device!");
+            run->hypercall.args[0] = SDEI_NOT_SUPPORTED;
+            return;
+        }
+    }
+
     if (func_id < SDEI_1_0_FN_BASE || func_id > SDEI_MAX_REQ) {
         error_report("Invalid SDEI function ID: 0x%x", func_id);
         run->hypercall.args[0] = SDEI_INVALID_PARAMETERS;
@@ -1198,9 +1319,19 @@ static int qemu_sdei_post_load(void *opaque, int version_id)
         }
     }
 
+    /* Search for ARM GIC device */
+    qbus_walk_children(sysbus_get_default(), dev_walkerfn,
+                       NULL, NULL, NULL, s);
+    if (!s->gic_dev) {
+        error_report("Cannot find ARM GIC device!");
+        return 0;
+    }
+
     for (i = 0; i < PRIVATE_SLOT_COUNT + SHARED_SLOT_COUNT; i++) {
-        if (sde_props[i].interrupt != SDEI_INVALID_INTERRUPT) {
-            s->irq_map[sde_props[i].interrupt] = sde_props[i].event_id;
+        int intid = sde_props[i].interrupt;
+        if (intid != SDEI_INVALID_INTERRUPT) {
+            s->irq_map[intid] = sde_props[i].event_id;
+            override_qemu_irq(s, sde_props[i].event_id, intid);
         }
     }
 
diff --git a/target/arm/sdei_int.h b/target/arm/sdei_int.h
index 7f69507..3930591 100644
--- a/target/arm/sdei_int.h
+++ b/target/arm/sdei_int.h
@@ -63,6 +63,7 @@ typedef struct QemuSDEProp {
 typedef struct QemuSDE {
     QemuSDEProp     *prop;
     CPUState        *target_cpu;
+    qemu_irq        irq;
     QemuMutex       lock;
     bool            enabled;
     bool            running;
@@ -95,9 +96,11 @@ typedef struct QemuSDECpu {
 
 typedef struct QemuSDEState {
     DeviceState     parent_obj;
+    DeviceState     *gic_dev;
     QemuSDEProp     sde_props_state[PRIVATE_SLOT_COUNT + SHARED_SLOT_COUNT];
     QemuSDECpu      *sde_cpus;
     int             sdei_max_cpus;
+    int             num_irq;
     QemuSDE         *shared_sde_array[SHARED_SLOT_COUNT];
     int32_t         irq_map[GIC_MAXIRQ];
     QemuMutex       sdei_interrupt_bind_lock;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
