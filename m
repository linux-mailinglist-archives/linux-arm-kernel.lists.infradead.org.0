Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8145B82F7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH5S30MO5/aMBU9tGoE4DYT7S4Ibrc1EHS9sRyl0Bm8=; b=Rydl6OpbEb3I4d
	aCqhQdA1tMPPl6AV0FrVBCxKNNH/0YIblUvNn7VcXTYhFi3pI/aq7U8YNTSeY57KBRj2dDhl6iG4E
	tUU5xkHQDJIFuBI0yoYsiNTVHQg0GZ/ATckGoSfoWaj5Mvt97k5lbdQU4awK5OKjGg89ZybpJibsx
	J0VLKcRINxnO/Wtkgb6MR+eg4BKt+nkv7WPgK7qBrvBg7GQswFhlKz2bwau3EHXpcNfmSG/LT1hsS
	ZrGyixf2uSWFp2KnPxaiNZFs29zrJbCN2VToPjea//mvOgEvknsznyxhTtEVVVv8zgzCzt4IitBJg
	hfEeESKx3XjRlppqFkyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwNK-000884-QA; Tue, 06 Aug 2019 10:07:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHm-0002uM-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B999C1684;
 Tue,  6 Aug 2019 03:01:42 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 817F33F706;
 Tue,  6 Aug 2019 03:01:41 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 10/12] irqchip/gic-v3: Warn about inconsistent
 implementations of extended ranges
Date: Tue,  6 Aug 2019 11:01:19 +0100
Message-Id: <20190806100121.240767-11-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806100121.240767-1-maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030145_617866_21275BF0 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As is it usual for the GIC, it isn't disallowed to put together a system
that is majorly inconsistent, with a distributor supporting the
extended ranges while some of the CPUs don't.

Kindly tell the user that things are sailing isn't going to be smooth.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c       | 5 +++++
 include/linux/irqchip/arm-gic-v3.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index f53e58d398ba..334a10d9dbfb 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1014,6 +1014,11 @@ static void gic_cpu_init(void)
 
 	gic_enable_redist(true);
 
+	WARN((gic_data.ppi_nr > 16 || GIC_ESPI_NR != 0) &&
+	     !(gic_read_ctlr() & ICC_CTLR_EL1_ExtRange),
+	     "Distributor has extended ranges, but CPU%d doesn't\n",
+	     smp_processor_id());
+
 	rbase = gic_data_rdist_sgi_base();
 
 	/* Configure SGIs/PPIs as non-secure Group-1 */
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index 9ec3349dee04..5cc10cf7cb3e 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -496,6 +496,7 @@
 #define ICC_CTLR_EL1_A3V_SHIFT		15
 #define ICC_CTLR_EL1_A3V_MASK		(0x1 << ICC_CTLR_EL1_A3V_SHIFT)
 #define ICC_CTLR_EL1_RSS		(0x1 << 18)
+#define ICC_CTLR_EL1_ExtRange		(0x1 << 19)
 #define ICC_PMR_EL1_SHIFT		0
 #define ICC_PMR_EL1_MASK		(0xff << ICC_PMR_EL1_SHIFT)
 #define ICC_BPR0_EL1_SHIFT		0
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
