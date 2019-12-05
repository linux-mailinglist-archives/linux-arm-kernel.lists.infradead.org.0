Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364DE114693
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eVtK/A/Zm74bpeQFTZFLoZcCuk6DZNKpKGP+1YWJyH8=; b=ovjM0CEF3nlk5aElGSHj0s2t/s
	0Hd4CndAoIOQRbW2iBk06GYxX688KZ7ouEZJMlAgSovnGkvb8iZkuVGMMXfHFH1LgnCw9pYwIXSXA
	7/hyROBWW80akr9qUMHOVs7FvZDuKvURRqOQ4HqEUGjcL9u66RYM2Yax9agmBDcVHQUH9XnmI2e2Y
	CexkNCk9gw4Ltw0UkWEN0knZgNrXeOur44RYJtf7rPqaTqSW92e5PTlrys4SpP4mREOi22GyCgJc5
	qSZTho4IKX08RrtwllurCp8CCTcFmFxP/oCoVMejS3Fceav981SAOirB5F/I7zoXm35wRQW5mObS4
	s8IQRMCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvXI-0003kQ-UH; Thu, 05 Dec 2019 18:07:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvWp-0003WY-83
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:07:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96BFD11D4;
 Thu,  5 Dec 2019 10:07:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7CAEC3F718;
 Thu,  5 Dec 2019 10:07:01 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] kvm/arm64: don't log IMP DEF sysreg traps
Date: Thu,  5 Dec 2019 18:06:52 +0000
Message-Id: <20191205180652.18671-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191205180652.18671-1-mark.rutland@arm.com>
References: <20191205180652.18671-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100703_327529_1CC367AC 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 james.morse@arm.com, alexandru.elisei@arm.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't intend to support IMPLEMENATION DEFINED system registers, but
have to trap them (and emulate them as UNDEFINED). These traps aren't
interesting to the system administrator or to the KVM developers, so
let's not bother logging when we do so.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 arch/arm64/kvm/sys_regs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index d128abd38656..61f019104841 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2233,6 +2233,12 @@ int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
 				NULL, 0);
 }
 
+static bool is_imp_def_sys_reg(struct sys_reg_params *params)
+{
+	// See ARM DDI 0487E.a, section D12.3.2
+	return params->Op0 == 3 && (params->CRn & 0b1011) == 0b1011;
+}
+
 static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 			   struct sys_reg_params *params)
 {
@@ -2248,6 +2254,8 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 
 	if (likely(r)) {
 		perform_access(vcpu, params, r);
+	} else if (is_imp_def_sysreg(params)) {
+		kvm_inject_undefined(vcpu);
 	} else {
 		print_sys_reg_msg(params,
 				  "Unsupported guest sys_reg access at: %lx [%08lx]\n",
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
