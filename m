Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543DD1D9C56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc5dNETpVRGfNG/PmRgnV+4vRtsVRkZ+mCTd/yirexM=; b=SQA/jFMrXNFPH6
	ev5xve0vNqu3Vc8sSDnKe1HPF8El5xIdqYmH1SdFcqSEviuxsnGz2/P5ieGMJBFeoHoPOPT5C7AdW
	sduTwbiThhdDYS6gO+2qA8bhiVs9JClBO07f0Kkngv0063WQXhYdm9cnCjt+BdjnNYhQ0318gIMjK
	GIFSsPfXR19cgpiunc8yXLkYbsStjdy5iBcpzlqs06/Qb47l8JnZcd03c7dwU/M3Mx36p9N0J6VWM
	bx3y/+PuB/ndqw2/il1zxwvtZbtix6A9QXdRotu2t06IFnOUU3WxQ9RMXR39BQh1tTEQPP9tcL/aR
	ZieqsZTUOnZEneTi/odA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4xa-0003mh-PB; Tue, 19 May 2020 16:19:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wh-0003GM-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29602207D8;
 Tue, 19 May 2020 16:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905103;
 bh=IgiMXXd078i0bvADAKNsFZGGm1aO3D3tizK5eShr9NM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vdLFJs3+IBlicIHXUXreUUgV6J2RRngRlGDmTEGOoSYr0KZZVcg4YVLE0np8JKdyt
 YyMWc4vFPOqqeO01YRa3oiiL4kLhkhJEN1kTLoLpZEMbOoQ3/xn2Vj9dbIug34DtcC
 HESBIavRqWwtV9SXq43Y0l+qendJfHAR3aiAc5Po=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wf-00Decy-Ev; Tue, 19 May 2020 17:18:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 02/11] genirq: Allow interrupts to be excluded from
 /proc/interrupts
Date: Tue, 19 May 2020 17:17:46 +0100
Message-Id: <20200519161755.209565-3-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091823_652856_0E493A41 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A number of architectures implement IPI statistics directly,
bypassing the core kstat_irqs accounting. As we move IPIs to
being actual IRQs, we would end-up with a confusing display
in /proc/interrupts (where the IPIs would appear twice).

In order to solve this, allow interrupts to be flagged as
"no accounting", which excludes them from /proc/interrupts.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 include/linux/irq.h   | 3 ++-
 kernel/irq/debugfs.c  | 1 +
 kernel/irq/proc.c     | 2 +-
 kernel/irq/settings.h | 7 +++++++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/include/linux/irq.h b/include/linux/irq.h
index 726f94d8b8cc..4433c8e765c8 100644
--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -97,13 +97,14 @@ enum {
 	IRQ_PER_CPU_DEVID	= (1 << 17),
 	IRQ_IS_POLLED		= (1 << 18),
 	IRQ_DISABLE_UNLAZY	= (1 << 19),
+	IRQ_NO_ACCOUNTING	= (1 << 20),
 };
 
 #define IRQF_MODIFY_MASK	\
 	(IRQ_TYPE_SENSE_MASK | IRQ_NOPROBE | IRQ_NOREQUEST | \
 	 IRQ_NOAUTOEN | IRQ_MOVE_PCNTXT | IRQ_LEVEL | IRQ_NO_BALANCING | \
 	 IRQ_PER_CPU | IRQ_NESTED_THREAD | IRQ_NOTHREAD | IRQ_PER_CPU_DEVID | \
-	 IRQ_IS_POLLED | IRQ_DISABLE_UNLAZY)
+	 IRQ_IS_POLLED | IRQ_DISABLE_UNLAZY | IRQ_NO_ACCOUNTING)
 
 #define IRQ_NO_BALANCING_MASK	(IRQ_PER_CPU | IRQ_NO_BALANCING)
 
diff --git a/kernel/irq/debugfs.c b/kernel/irq/debugfs.c
index 4f9f844074db..9a22eab5537f 100644
--- a/kernel/irq/debugfs.c
+++ b/kernel/irq/debugfs.c
@@ -131,6 +131,7 @@ static const struct irq_bit_descr irqdesc_states[] = {
 	BIT_MASK_DESCR(_IRQ_PER_CPU_DEVID),
 	BIT_MASK_DESCR(_IRQ_IS_POLLED),
 	BIT_MASK_DESCR(_IRQ_DISABLE_UNLAZY),
+	BIT_MASK_DESCR(_IRQ_NO_ACCOUNTING),
 };
 
 static const struct irq_bit_descr irqdesc_istates[] = {
diff --git a/kernel/irq/proc.c b/kernel/irq/proc.c
index 32c071d7bc03..87780af13c12 100644
--- a/kernel/irq/proc.c
+++ b/kernel/irq/proc.c
@@ -485,7 +485,7 @@ int show_interrupts(struct seq_file *p, void *v)
 
 	rcu_read_lock();
 	desc = irq_to_desc(i);
-	if (!desc)
+	if (!desc || irq_settings_is_no_accounting(desc))
 		goto outsparse;
 
 	if (desc->kstat_irqs)
diff --git a/kernel/irq/settings.h b/kernel/irq/settings.h
index e43795cd2ccf..732fc3f2c686 100644
--- a/kernel/irq/settings.h
+++ b/kernel/irq/settings.h
@@ -17,6 +17,7 @@ enum {
 	_IRQ_PER_CPU_DEVID	= IRQ_PER_CPU_DEVID,
 	_IRQ_IS_POLLED		= IRQ_IS_POLLED,
 	_IRQ_DISABLE_UNLAZY	= IRQ_DISABLE_UNLAZY,
+	_IRQ_NO_ACCOUNTING	= IRQ_NO_ACCOUNTING,
 	_IRQF_MODIFY_MASK	= IRQF_MODIFY_MASK,
 };
 
@@ -31,6 +32,7 @@ enum {
 #define IRQ_PER_CPU_DEVID	GOT_YOU_MORON
 #define IRQ_IS_POLLED		GOT_YOU_MORON
 #define IRQ_DISABLE_UNLAZY	GOT_YOU_MORON
+#define IRQ_NO_ACCOUNTING	GOT_YOU_MORON
 #undef IRQF_MODIFY_MASK
 #define IRQF_MODIFY_MASK	GOT_YOU_MORON
 
@@ -167,3 +169,8 @@ static inline void irq_settings_clr_disable_unlazy(struct irq_desc *desc)
 {
 	desc->status_use_accessors &= ~_IRQ_DISABLE_UNLAZY;
 }
+
+static inline bool irq_settings_is_no_accounting(struct irq_desc *desc)
+{
+	return desc->status_use_accessors & _IRQ_NO_ACCOUNTING;
+}
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
