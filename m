Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA4EBCB47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woLxIxKZrybuY/S7MaKq/4e4e56Bj6RlV1ZQ16WR2xA=; b=cAzHUAoN6lBPIm
	fMGNF7obzOdHwsKZncVYmaymBsqHczDTP7OkYeQg2wE0p8mfoUc0OhzCAdiDK1fQBJgVSZ3OLabK/
	9u8+tzGHTv7GeioLD8SReMNGMNFobwhnNPoO+cWbCzofeCIM4Yvp2d/K7ZL/PVKnfW6leFT1R4Qc1
	zQ/2DQVp5hLYx0VtflHaVvZx99bWNaLPuufngkjYjo+NgyBRukHDNmeJP/DP3Mf2Wj0NXHP8NlJmR
	/Gsjx9UHn49O6oCbKiREvi8xy6EhfoSjp0ItBeRBOPThdEhxPC4+j+14MAt2D8/YfRdXu96zWp/DJ
	rMyMa/aOgdXtGqMrWO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmh8-0005h9-3h; Tue, 24 Sep 2019 15:25:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf3-00035S-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:32 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 51FF67C2680FDC283024;
 Tue, 24 Sep 2019 23:23:27 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:18 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 06/12] core/irq: add qemu_irq_remove_intercept interface
Date: Tue, 24 Sep 2019 23:21:45 +0800
Message-ID: <1569338511-3572-7-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082330_568426_692A8810 
X-CRM114-Status: GOOD (  11.23  )
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

We use qemu_irq as the bridge for other qemu modules to switch from
irq injection to SDEI event trigger after VM binds the interrupt to
SDEI event. We use qemu_irq_intercept_in() to override qemu_irq
handler with SDEI event trigger, so we also need a corresponding
interface to restore the handler to default one (i.e. ARM GIC).

qemu_irq_remove_intercept() is the new interface to do the above
job.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 hw/core/irq.c    | 11 +++++++++++
 include/hw/irq.h |  8 ++++++--
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/hw/core/irq.c b/hw/core/irq.c
index 7cc0295..114bce6 100644
--- a/hw/core/irq.c
+++ b/hw/core/irq.c
@@ -145,6 +145,17 @@ void qemu_irq_intercept_in(qemu_irq *gpio_in, qemu_irq_handler handler, int n)
     }
 }
 
+void qemu_irq_remove_intercept(qemu_irq *gpio_in, int n)
+{
+    int i;
+    qemu_irq *old_irqs = gpio_in[0]->opaque;
+    for (i = 0; i < n; i++) {
+        gpio_in[i]->handler = old_irqs[i]->handler;
+        gpio_in[i]->opaque = old_irqs[i]->opaque;
+    }
+    qemu_free_irqs(old_irqs, n);
+}
+
 static const TypeInfo irq_type_info = {
    .name = TYPE_IRQ,
    .parent = TYPE_OBJECT,
diff --git a/include/hw/irq.h b/include/hw/irq.h
index fe527f6..1af1db9 100644
--- a/include/hw/irq.h
+++ b/include/hw/irq.h
@@ -56,8 +56,12 @@ qemu_irq qemu_irq_split(qemu_irq irq1, qemu_irq irq2);
  */
 qemu_irq *qemu_irq_proxy(qemu_irq **target, int n);
 
-/* For internal use in qtest.  Similar to qemu_irq_split, but operating
-   on an existing vector of qemu_irq.  */
+/*
+ * Similar to qemu_irq_split, but operating on an existing vector of qemu_irq.
+ */
 void qemu_irq_intercept_in(qemu_irq *gpio_in, qemu_irq_handler handler, int n);
 
+/* Restore the irq handler intercepted by qemu_irq_intercept_in() */
+void qemu_irq_remove_intercept(qemu_irq *gpio_in, int n);
+
 #endif
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
