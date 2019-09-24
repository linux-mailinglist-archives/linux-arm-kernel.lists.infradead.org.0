Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9113CBCB4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyovbc7V4oVPDcWcpLfTepDstqtPno4JElT1TdOwCsU=; b=FojHN+DrffC/BD
	LpCVEmoGC637vzMblzHobV9a3Q3WYEMIAGJRfUKDTYJ9Yh2mpFPxuVgcCD8NLfPCBZJZJyrsPMqs3
	jWxGqmUSjMMYWiwFUws2WEYNhOAE+FmlLP2cRQvW61WPywsrJoNny8kXLFnMRLolk9DK8Y7AVNAv5
	v/rURFiCuBAgEUSHEPjwRMjQrU2LCZrZvBdWlmkVNCGlyDYI/sd403Cx+OvybdNxyz4/QdaEnB+/4
	OVtaLSMSkYF2RA77HgT1sPkQ8Y67XEaAAMT7mUgiloBFifNH9br5lPoSI0mft0U7vKRsEO8MQ2fjV
	oxo7WiuXq10uazzJn45g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmhg-00069H-P6; Tue, 24 Sep 2019 15:26:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf3-00035j-Mp
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:33 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6C35B257579530C63335;
 Tue, 24 Sep 2019 23:23:27 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:21 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 10/12] arm/sdei: check KVM cap and enable SDEI
Date: Tue, 24 Sep 2019 23:21:49 +0800
Message-ID: <1569338511-3572-11-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082330_754024_6A2B69E7 
X-CRM114-Status: GOOD (  10.61  )
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

Check KVM hypercall forward capability and enable it, and set global
flag "sdei_enabled" to true if everything works well.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 target/arm/sdei.c | 17 +++++++++++++++++
 target/arm/sdei.h |  2 ++
 2 files changed, 19 insertions(+)

diff --git a/target/arm/sdei.c b/target/arm/sdei.c
index efdb681..000545e 100644
--- a/target/arm/sdei.c
+++ b/target/arm/sdei.c
@@ -43,6 +43,7 @@
 #define TYPE_QEMU_SDEI "qemu_sdei"
 #define QEMU_SDEI(obj) OBJECT_CHECK(QemuSDEState, (obj), TYPE_QEMU_SDEI)
 
+bool sdei_enabled;
 static QemuSDEState *sde_state;
 
 typedef struct QemuSDEIBindNotifyEntry {
@@ -1465,6 +1466,7 @@ static const VMStateDescription vmstate_sde_state = {
 static void sdei_initfn(Object *obj)
 {
     QemuSDEState *s = QEMU_SDEI(obj);
+    KVMState *kvm = KVM_STATE(current_machine->accelerator);
 
     if (sde_state) {
         error_report("Only one SDEI dispatcher is allowed!");
@@ -1474,6 +1476,21 @@ static void sdei_initfn(Object *obj)
 
     qemu_sde_init(s);
     qemu_register_reset(qemu_sde_reset, s);
+
+    if (kvm_check_extension(kvm, KVM_CAP_FORWARD_HYPERCALL)) {
+        int ret;
+        ret = kvm_vm_enable_cap(kvm, KVM_CAP_FORWARD_HYPERCALL, 0,
+                                KVM_CAP_FORWARD_HYPERCALL_EXCL_PSCI);
+        if (ret < 0) {
+            error_report("Enable hypercall forwarding failed: %s",
+                         strerror(-ret));
+            abort();
+        }
+        sdei_enabled = true;
+        info_report("qemu sdei enabled");
+    } else {
+        info_report("KVM does not support forwarding hypercall.");
+    }
 }
 
 static void qemu_sde_class_init(ObjectClass *klass, void *data)
diff --git a/target/arm/sdei.h b/target/arm/sdei.h
index feaaf1a..95e7d8d 100644
--- a/target/arm/sdei.h
+++ b/target/arm/sdei.h
@@ -29,6 +29,8 @@
 
 #define SDEI_MAX_REQ        SDEI_1_0_FN(0x12)
 
+extern bool sdei_enabled;
+
 void sdei_handle_request(CPUState *cs, struct kvm_run *run);
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
