Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5E142B3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:47:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6AqePpKT5H92uS8RDwg7EPO8QgATW2noizoN2keKNQ=; b=LVIFIi7iJRgoHK
	/iGq8xpqU7fmwQZB/Sido0m4sfpOnrTljQ0h9bfLE2eg0+AA3Vh01lqQmKebd/19E8owweUlCQRbC
	a0mY4Iy7af8qweYJ/Ecy22dq9Khg7YJxUh4orZQCb/Ep10EBedwS24LfcETSEI9FxwKB0W0sTw50w
	q9V4PLgugV3pZjd+HE/Hvw/AGfqJ4KK3QYi9LIxFvo9e/59Un54R6SEOHl3rz5jsqa1Y9Iq/vVII1
	sBGrZCzunEdZ2PGaS3rKFs0W5HfEVBKPi6uEqsO6rW+zTF+1X/Y2GsRDQlJ3iCOE2dh/xdxvXSdkT
	UiL9nkqXv1+f267AuJPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWSm-000676-2T; Mon, 20 Jan 2020 12:47:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWSW-00062t-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:47:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEC8430E;
 Mon, 20 Jan 2020 04:47:09 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A8FD3F52E;
 Mon, 20 Jan 2020 04:47:09 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: kvm: Annotate guest entry/exit as a single function
Date: Mon, 20 Jan 2020 12:47:06 +0000
Message-Id: <20200120124706.8681-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_044712_388741_FC77CF27 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotations of assembly
functions in the kernel new macros have been introduced replacing ENTRY
and ENDPROC. There are separate annotations SYM_FUNC_ for normal C
functions and SYM_CODE_ for other code. Currently __guest_enter and
__guest_exit are annotated as standard functions but this is not
entirely correct as the former doesn't do a normal return and the latter
is not entered in a normal fashion. From the point of view of the
hypervisor the guest entry/exit may be viewed as a single
function which happens to have an eret in the middle of it so let's
annotate it as such.

Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kvm/hyp/entry.S | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..5b76a89939b1 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -44,7 +44,7 @@
  * u64 __guest_enter(struct kvm_vcpu *vcpu,
  *		     struct kvm_cpu_context *host_ctxt);
  */
-ENTRY(__guest_enter)
+SYM_FUNC_START(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
@@ -96,9 +96,8 @@ alternative_else_nop_endif
 	// Do not touch any register after this!
 	eret
 	sb
-ENDPROC(__guest_enter)
 
-ENTRY(__guest_exit)
+SYM_INNER_LABEL(__guest_exit, SYM_L_GLOBAL)
 	// x0: return code
 	// x1: vcpu
 	// x2-x29,lr: vcpu regs
@@ -192,4 +191,4 @@ abort_guest_exit_end:
 	msr	spsr_el2, x4
 	orr	x0, x0, x5
 1:	ret
-ENDPROC(__guest_exit)
+SYM_FUNC_END(__guest_enter)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
