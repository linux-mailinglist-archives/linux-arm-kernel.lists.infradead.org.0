Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AD911D3ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8fDuiv7OBu2uHdRKRLaKgNYi8xGwEMBZvHNZwJQhHg=; b=e5Pos/iaZIt2I1
	JilrAcUpv+9VbAQ2MG6GJ6EWLex5tR6nEFPE090neWYHZz0F9m/qhSNb79iP6/GidQlHreTW8TGVi
	aj5+siWUGvW9SrjGSIH/gwXkg10pD8xiBh2w8yFHe284DoRhIoH2vK09Q8Env/n3vWW/ALDwb5ioq
	j2R/I226kSNA3gRQGdCAQ2QMf7WN6xvaMsEZEcYaGoQwZS3yVk3U5dDD45ae8q+2hJhf8iQE1rc+0
	fX8HRV6I2BsUkvckr9NSZNMNj7agnImFZ5sCdmD+sGc1UaPlBl+WlfhrTDl0Jf2H01qwZUl+QGPyx
	2Is9jFSgcRyWRL8d5XFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSHM-0005cm-2b; Thu, 12 Dec 2019 17:29:32 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSGe-0005A3-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:28:52 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifSGY-00069s-0w; Thu, 12 Dec 2019 18:28:42 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 4/8] KVM: arm64: Sanely ratelimit sysreg messages
Date: Thu, 12 Dec 2019 17:28:20 +0000
Message-Id: <20191212172824.11523-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212172824.11523-1-maz@kernel.org>
References: <20191212172824.11523-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 alexandru.elisei@arm.com, ard.biesheuvel@linaro.org, christoffer.dall@arm.com,
 eric.auger@redhat.com, james.morse@arm.com, justin.he@arm.com,
 mark.rutland@arm.com, linmiaohe@huawei.com, steven.price@arm.com,
 will@kernel.org, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092849_164542_E86E25DA 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

Currently kvm_pr_unimpl() is ratelimited, so print_sys_reg_instr() won't
spam the console. However, someof its callers try to print some
contextual information with kvm_err(), which is not ratelimited. This
means that in some cases the context may be printed without the sysreg
encoding, which isn't all that useful.

Let's ensure that both are consistently printed together and
ratelimited, by refactoring print_sys_reg_instr() so that some callers
can provide it with an arbitrary format string.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20191205180652.18671-2-mark.rutland@arm.com
---
 arch/arm64/kvm/sys_regs.c | 12 ++++++------
 arch/arm64/kvm/sys_regs.h | 17 +++++++++++++++--
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2071260a275b..e8bf08e09f78 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2094,9 +2094,9 @@ static void unhandled_cp_access(struct kvm_vcpu *vcpu,
 		WARN_ON(1);
 	}
 
-	kvm_err("Unsupported guest CP%d access at: %08lx [%08lx]\n",
-		cp, *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
-	print_sys_reg_instr(params);
+	print_sys_reg_msg(params,
+			  "Unsupported guest CP%d access at: %08lx [%08lx]\n",
+			  cp, *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
 	kvm_inject_undefined(vcpu);
 }
 
@@ -2245,9 +2245,9 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 	if (likely(r)) {
 		perform_access(vcpu, params, r);
 	} else {
-		kvm_err("Unsupported guest sys_reg access at: %lx [%08lx]\n",
-			*vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
-		print_sys_reg_instr(params);
+		print_sys_reg_msg(params,
+				  "Unsupported guest sys_reg access at: %lx [%08lx]\n",
+				  *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
 		kvm_inject_undefined(vcpu);
 	}
 	return 1;
diff --git a/arch/arm64/kvm/sys_regs.h b/arch/arm64/kvm/sys_regs.h
index 9bca0312d798..5a6fc30f5989 100644
--- a/arch/arm64/kvm/sys_regs.h
+++ b/arch/arm64/kvm/sys_regs.h
@@ -62,11 +62,24 @@ struct sys_reg_desc {
 #define REG_HIDDEN_USER		(1 << 0) /* hidden from userspace ioctls */
 #define REG_HIDDEN_GUEST	(1 << 1) /* hidden from guest */
 
-static inline void print_sys_reg_instr(const struct sys_reg_params *p)
+static __printf(2, 3)
+inline void print_sys_reg_msg(const struct sys_reg_params *p,
+				       char *fmt, ...)
 {
+	va_list va;
+
+	va_start(va, fmt);
 	/* Look, we even formatted it for you to paste into the table! */
-	kvm_pr_unimpl(" { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\n",
+	kvm_pr_unimpl("%pV { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\n",
+		      &(struct va_format){ fmt, &va },
 		      p->Op0, p->Op1, p->CRn, p->CRm, p->Op2, p->is_write ? "write" : "read");
+	va_end(va);
+}
+
+static inline void print_sys_reg_instr(const struct sys_reg_params *p)
+{
+	/* GCC warns on an empty format string */
+	print_sys_reg_msg(p, "%s", "");
 }
 
 static inline bool ignore_write(struct kvm_vcpu *vcpu,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
