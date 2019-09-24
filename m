Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD76BCB4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+9e6rb0nsnrsZFOYbSl/VLkP7ltwzNnK+7AQWi7P5w=; b=VTxH7+E00ttwkF
	whVr6PY0AhdJzQTZyn9Lv2BDaeSM8t5i8vVH3+9celuzvRHLlovARvwD5AbXxLEUuzS1ZoXj00gUh
	73GGQM7BYM0qgcAFC5lW/EJHmC/lXqXExJrbO9BW73cXNqNlTI2uU3nm5+2qebmwbC5YEoqrWafmn
	nvz1+72h7h8tre8D1Or3yMLZz6sKX1O2lPDZ9pij1YAPkoX8loLJZYX8pp904eNQLkrzhQgpRBL/Z
	ewZE2U6Czzd9Vr0E6xlcU4lrjisKNHQzQ2jzn/4y6UibrPPZ9ISuuQUub8AhOHeaOeVKk5t6u4Rlx
	VsTRSuyPO7kDHm1R1BSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmhQ-0005uz-U5; Tue, 24 Sep 2019 15:25:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf3-00035V-N2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:32 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 58A3B3FBB55EA3E76511;
 Tue, 24 Sep 2019 23:23:27 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:16 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 04/12] arm/sdei: add system reset callback
Date: Tue, 24 Sep 2019 23:21:43 +0800
Message-ID: <1569338511-3572-5-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082330_145912_30AAE75C 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Peter Maydell <peter.maydell@linaro.org>,
 James Morse <james.morse@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Jingyi Wang <wangjingyi11@huawei.com>, Heyi Guo <guoheyi@huawei.com>,
 wanghaibin.wang@huawei.com, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For this is a logical device which is not attached to system bus, we
cannot use DeviceClass->reset interface directly. Instead we register
our own reset callback to reset SDEI services when system resets.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Signed-off-by: Jingyi Wang <wangjingyi11@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 target/arm/sdei.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/target/arm/sdei.c b/target/arm/sdei.c
index b40fa36..f9a1208 100644
--- a/target/arm/sdei.c
+++ b/target/arm/sdei.c
@@ -1083,6 +1083,26 @@ static void qemu_sde_init(QemuSDEState *s)
     qemu_private_sde_init(s);
 }
 
+static void qemu_sde_reset(void *opaque)
+{
+    int64_t         ret;
+    CPUState        *cs;
+    QemuSDEState    *s = opaque;
+
+    CPU_FOREACH(cs) {
+        QemuSDECpu *sde_cpu = get_sde_cpu(s, cs);
+        sdei_private_reset_common(s, cs, true);
+        sde_cpu->masked = true;
+        sde_cpu->critical_running_event = SDEI_INVALID_EVENT_ID;
+        sde_cpu->normal_running_event = SDEI_INVALID_EVENT_ID;
+    }
+
+    ret = sdei_shared_reset_common(s, first_cpu, true);
+    if (ret) {
+        error_report("SDEI system reset failed: 0x%lx", ret);
+    }
+}
+
 static int qemu_sdei_pre_save(void *opaque)
 {
     QemuSDEState *s = opaque;
@@ -1235,6 +1255,7 @@ static void sdei_initfn(Object *obj)
     sde_state = s;
 
     qemu_sde_init(s);
+    qemu_register_reset(qemu_sde_reset, s);
 }
 
 static void qemu_sde_class_init(ObjectClass *klass, void *data)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
