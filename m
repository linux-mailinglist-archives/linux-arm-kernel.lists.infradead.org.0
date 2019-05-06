Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5DC145F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dme7IciOg7xIDNr4J7fz4jKx7EgaAW0s8rELUg7M+kc=; b=TrhY3HcnjQibUi
	vevOFeAVWmkQ/pQkSj5gO90Il3NaSmrkyjURdshv9ktVtTpON80OyssF9S4QeICoXYYNI1+/aRqs8
	2JAY4q2TQwJ2a6CH3UMeuE5BjKSjbqKlS4/9yjKdBxVMr+WYRNAInwzyYuw64VfnC2G7LlvLB35OI
	6IKaSROzO5V5i22io6ddQua+tRK+4ZYPb7QbFfJf0XE4w54IOSBl8zex2vLITgJIavJVN4CZXEc8U
	ZYNQ7eUqEnJLYKSWzgMnW7pzbm4DbvBkHzY6WWS15rZqG1GSnIYvoxxBCrsP1lIfQgO0pc1eJD6FT
	P0vsgghJQIsbt1pOeqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYs2-0004XH-5u; Mon, 06 May 2019 08:21:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYrq-0004UI-NT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:21:00 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C774E5F37D8C6047197F;
 Mon,  6 May 2019 16:20:43 +0800 (CST)
Received: from euler.huawei.com (10.175.104.193) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Mon, 6 May 2019 16:20:42 +0800
From: Wei Li <liwei391@huawei.com>
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>, <marc.zyngier@arm.com>, 
 <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH 3/3] arm64: Avoid entering NMI context improperly
Date: Mon, 6 May 2019 16:25:42 +0800
Message-ID: <20190506082542.11357-4-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506082542.11357-1-liwei391@huawei.com>
References: <20190506082542.11357-1-liwei391@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_012058_999948_228BB297 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: julien.thierry@arm.com, daniel.thompson@linaro.org,
 lorenzo.pieralisi@arm.com, Suzuki.Poulose@arm.com, steve.capper@arm.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the pseudo NMI can be enabled/disabled by cmdline parameter, the
arch_trigger_cpumask_backtrace() may still work through a normal IPI.

In this patch, we export the gic_supports_nmi() and add a check in
IPI_CPU_BACKTRACE process to avoid entering NMI context when pseudo
NMI is disabled.

Signed-off-by: Wei Li <liwei391@huawei.com>
---
 arch/arm64/include/asm/arch_gicv3.h |  8 ++++++++
 arch/arm64/kernel/smp.c             | 14 ++++++++++++--
 drivers/irqchip/irq-gic-v3.c        |  8 +-------
 3 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 14b41ddc68ba..6655701ea7d4 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -156,6 +156,14 @@ static inline u32 gic_read_rpr(void)
 #define gits_write_vpendbaser(v, c)	writeq_relaxed(v, c)
 #define gits_read_vpendbaser(c)		readq_relaxed(c)
 
+extern struct static_key_false supports_pseudo_nmis;
+
+static inline bool gic_supports_nmi(void)
+{
+	return IS_ENABLED(CONFIG_ARM64_PSEUDO_NMI) &&
+	       static_branch_likely(&supports_pseudo_nmis);
+}
+
 static inline bool gic_prio_masking_enabled(void)
 {
 	return system_uses_irq_prio_masking();
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 7e862f9124f3..5550951527ea 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -950,9 +950,19 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 #endif
 
 	case IPI_CPU_BACKTRACE:
-		nmi_enter();
+		if (gic_supports_nmi()) {
+			nmi_enter();
+		} else {
+			printk_nmi_enter();
+			irq_enter();
+		}
 		nmi_cpu_backtrace(regs);
-		nmi_exit();
+		if (gic_supports_nmi()) {
+			nmi_exit();
+		} else {
+			irq_exit();
+			printk_nmi_exit();
+		}
 		break;
 
 	default:
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 394aa5668dd6..b701727258b0 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -90,7 +90,7 @@ static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
  * For now, we only support pseudo-NMIs if we have non-secure view of
  * priorities.
  */
-static DEFINE_STATIC_KEY_FALSE(supports_pseudo_nmis);
+DEFINE_STATIC_KEY_FALSE(supports_pseudo_nmis);
 
 /* ppi_nmi_refs[n] == number of cpus having ppi[n + 16] set as NMI */
 static refcount_t ppi_nmi_refs[16];
@@ -261,12 +261,6 @@ static void gic_unmask_irq(struct irq_data *d)
 	gic_poke_irq(d, GICD_ISENABLER);
 }
 
-static inline bool gic_supports_nmi(void)
-{
-	return IS_ENABLED(CONFIG_ARM64_PSEUDO_NMI) &&
-	       static_branch_likely(&supports_pseudo_nmis);
-}
-
 static int gic_irq_set_irqchip_state(struct irq_data *d,
 				     enum irqchip_irq_state which, bool val)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
