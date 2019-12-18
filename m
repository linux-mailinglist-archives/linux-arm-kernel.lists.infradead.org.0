Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE181246FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Swo1xwqxW6OxxuFh83j6QuW9e0eHMjfJSN8+LfqJ5RY=; b=qjcil9wBUi8NEB
	K/N5XRZ8pd5UwRtHrcKwVE8EkmXlZUvSgnlajY/XTyiMyHi+FLgoefvotDaA5h9Um4ESCo/Aaikji
	fcR2xLxh+xoFKFzPCLesQTxB7R3aNtP5Eo/XCB1dtrqcDhv+eQSpGaBMpMxfbdVJumA0c6c1IA1Pd
	dMX2STI3eior81i3STZi4vUxW6giGT7LRiwU5K8Q3v3lgSEuqs2nZSH0ZBTT2QNabx/QEz79OEyxg
	UCK8tMoeVMtxZ6qfO9rrqieX5L0rPlVcWHlCu4ROVRUggWsJpWVLXQRo/t3yjENkjln89EGtpKaGL
	1IWSQ6TBuFpgIInimV7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYag-00071H-1z; Wed, 18 Dec 2019 12:38:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYaY-000710-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:38:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03A0B30E;
 Wed, 18 Dec 2019 04:38:00 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 766853F6CF;
 Wed, 18 Dec 2019 04:37:59 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: xen: Use modern annotations for assembly functions
Date: Wed, 18 Dec 2019 12:37:56 +0000
Message-Id: <20191218123756.41363-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_043802_623562_9AA278BD 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: xen-devel@lists.xenproject.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC. Update the annotations in the xen code to the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

This is part of a wider effort to convert all the arch/arm64 code.

 arch/arm64/xen/hypercall.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/xen/hypercall.S b/arch/arm64/xen/hypercall.S
index c5f05c4a4d00..305c2274b8eb 100644
--- a/arch/arm64/xen/hypercall.S
+++ b/arch/arm64/xen/hypercall.S
@@ -56,11 +56,11 @@
 #define XEN_IMM 0xEA1
 
 #define HYPERCALL_SIMPLE(hypercall)		\
-ENTRY(HYPERVISOR_##hypercall)			\
+SYM_FUNC_START(HYPERVISOR_##hypercall)			\
 	mov x16, #__HYPERVISOR_##hypercall;	\
 	hvc XEN_IMM;				\
 	ret;					\
-ENDPROC(HYPERVISOR_##hypercall)
+SYM_FUNC_END(HYPERVISOR_##hypercall)
 
 #define HYPERCALL0 HYPERCALL_SIMPLE
 #define HYPERCALL1 HYPERCALL_SIMPLE
@@ -86,7 +86,7 @@ HYPERCALL2(multicall);
 HYPERCALL2(vm_assist);
 HYPERCALL3(dm_op);
 
-ENTRY(privcmd_call)
+SYM_FUNC_START(privcmd_call)
 	mov x16, x0
 	mov x0, x1
 	mov x1, x2
@@ -109,4 +109,4 @@ ENTRY(privcmd_call)
 	 */
 	uaccess_ttbr0_disable x6, x7
 	ret
-ENDPROC(privcmd_call);
+SYM_FUNC_END(privcmd_call);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
