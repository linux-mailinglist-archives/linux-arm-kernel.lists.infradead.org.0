Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD09733E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DTgaZdf4GyMmlmEo7KtVwXqPa0yYiOkIzXS0LmA942g=; b=kpDZxQP80fjIkwVqbcGV85Hbf1
	TZLu2HynNimcO1d8uti7ZqIOjiNLDt5SSwjZG/OZO+78hh8EdlK7jMLgz1g6mEbgF9b8Z1yrTMGza
	b06f50GSHFLsxf52mkquwOOwArt5D6ZVuxe19Qq20C4F0854mFJ9QKSjEKgAo5On6oQR/2c3c2zdS
	BCcfnW++r+WsRQN/1fBjeGgAUu61NhoROayhl6MFxcOnI8htzPl99E9NHqIBrKNQrF+AIYVR1UgI6
	NXqZ8e9xprKr1GhgD65Vye8mcsRpauPIj29ueh9IVc7sLQEk2FENCZiQ/vDPxtlhAZx3UvnsfO25s
	LVOhvP5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK89-0002fH-Df; Wed, 24 Jul 2019 16:28:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5b-0000Gi-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:26:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF86428;
 Wed, 24 Jul 2019 09:26:02 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BF8C3F71F;
 Wed, 24 Jul 2019 09:26:01 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 10/15] arm64/mm: Introduce a callback to flush the local
 context
Date: Wed, 24 Jul 2019 17:25:29 +0100
Message-Id: <20190724162534.7390-11-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092603_440198_E9C72781 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Flushing the local context will vary depending on the actual user of the ASID
allocator. Introduce a new callback to flush the local context and move
the call to flush local TLB in it.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/mm/context.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 5e8b381ab67f..ac10893b403c 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -28,6 +28,8 @@ static struct asid_info
 	cpumask_t		flush_pending;
 	/* Number of ASID allocated by context (shift value) */
 	unsigned int		ctxt_shift;
+	/* Callback to locally flush the context. */
+	void			(*flush_cpu_ctxt_cb)(void);
 } asid_info;
 
 #define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
@@ -255,7 +257,7 @@ static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
 	}
 
 	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
-		local_flush_tlb_all();
+		info->flush_cpu_ctxt_cb();
 
 	atomic64_set(&active_asid(info, cpu), asid);
 	raw_spin_unlock_irqrestore(&info->lock, flags);
@@ -287,6 +289,11 @@ asmlinkage void post_ttbr_update_workaround(void)
 			CONFIG_CAVIUM_ERRATUM_27456));
 }
 
+static void asid_flush_cpu_ctxt(void)
+{
+	local_flush_tlb_all();
+}
+
 /*
  * Initialize the ASID allocator
  *
@@ -297,10 +304,12 @@ asmlinkage void post_ttbr_update_workaround(void)
  * 2.
  */
 static int asid_allocator_init(struct asid_info *info,
-			       u32 bits, unsigned int asid_per_ctxt)
+			       u32 bits, unsigned int asid_per_ctxt,
+			       void (*flush_cpu_ctxt_cb)(void))
 {
 	info->bits = bits;
 	info->ctxt_shift = ilog2(asid_per_ctxt);
+	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is always reserved.
@@ -321,7 +330,8 @@ static int asids_init(void)
 {
 	u32 bits = get_cpu_asid_bits();
 
-	if (asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT))
+	if (asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
+				 asid_flush_cpu_ctxt))
 		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
 		      1UL << bits);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
