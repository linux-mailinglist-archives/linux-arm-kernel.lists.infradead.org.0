Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0957A3B95D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuLlGYAT52OaN6ICFZVHSkvH3gdtFj7vjaymycWfGW0=; b=a6bL4jbiuXSzmM
	6Fh5UqVppEUtQGF24vM1HxWJ9HS+9zguEDM2StjGRePAAaN1a7IzDjM4nzJDOekb5DNePsx89qBgH
	o3bC42rpkINpVAsQRTFv+ahSnmFcOiUXEVi6l36zJQ6aIQmybqJ0Lv/tvfeOKrgsuCPozT565qeZf
	DQAgy5R9m0IOOLvLolmWH/LcV6hwQhP9+isSTdk+ETI0DAfkkUpP194k6yv5p/CezLq1wyiwPFI42
	tvfgFQL73mmNEoqM9CFi0BLqPPDyVjbeAmKp32Rs5/De87uKn4RVQB5pAN89AwAH1y32ONwBGNZIx
	H4vQFShQKNLhgTs55nLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN7D-00011w-Jt; Mon, 10 Jun 2019 16:25:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haN6B-0007cq-Q7
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:24:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BBD8C15;
 Mon, 10 Jun 2019 09:24:43 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DF763F246;
 Mon, 10 Jun 2019 09:24:42 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 3/6] KVM: arm64: Make indirect vectors preamble behaviour
 symmetric
Date: Mon, 10 Jun 2019 17:24:24 +0100
Message-Id: <20190610162427.115910-4-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610162427.115910-1-james.morse@arm.com>
References: <20190610162427.115910-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092443_929012_4A229931 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The KVM indirect vectors support is a little complicated. Different CPUs
may use different exception vectors for KVM that are generated at boot.
Adding new instructions involves checking all the possible combinations
do the right thing.

To make changes here easier to review lets state what we expect of the
preamble:
  1. The first vector run, must always run the preamble.
  2. Patching the head or tail of the vector shouldn't remove
     preamble instructions.

Today, this is easy as we only have one instruction in the preamble.
Change the unpatched tail of the indirect vector so that it always
runs this, regardless of patching.

Signed-off-by: James Morse <james.morse@arm.com>
---
New for v2.

 arch/arm64/kvm/hyp/hyp-entry.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index c7f9d5e271a9..5f0412f124a3 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -286,7 +286,7 @@ ENDPROC(__kvm_hyp_vector)
 /*
  * The default sequence is to directly branch to the KVM vectors,
  * using the computed offset. This applies for VHE as well as
- * !ARM64_HARDEN_EL2_VECTORS.
+ * !ARM64_HARDEN_EL2_VECTORS. The first vector must always run the preamble.
  *
  * For ARM64_HARDEN_EL2_VECTORS configurations, this gets replaced
  * with:
@@ -302,8 +302,8 @@ ENDPROC(__kvm_hyp_vector)
  * See kvm_patch_vector_branch for details.
  */
 alternative_cb	kvm_patch_vector_branch
-	b	__kvm_hyp_vector + (1b - 0b)
-	nop
+	stp	x0, x1, [sp, #-16]!
+	b	__kvm_hyp_vector + (1b - 0b + KVM_VECTOR_PREAMBLE)
 	nop
 	nop
 	nop
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
