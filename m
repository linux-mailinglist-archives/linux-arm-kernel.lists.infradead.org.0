Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04B1CFDE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOYo1kn35UZ3EiIwnZc/WsPHgEJrboUJQZTmyGdLDqU=; b=GpoCFGUVtIzoP1
	9ZsZnu89Wh3olmsOcwhXvpGRdAC9IRcnNw3zNxyqA8cu1nq6DaHBTGHFcwSZ3kb1+t3v1aMaYz685
	nhO/GcCCERLe2Sab5HF45NBzZe+UVvm5m182atQpTkNQbPeFrLhbAbnDGkTrVc52Q8xNTei/9ffVK
	Jk82DbaiOleFLJgvLHt71O8GphUxFMEoJh7rS1swUq9CupJhI39fcZcpVLZB69YDTW6loMgAal2QT
	p3tEguaxS+1t/MkIG9NJMjlhKU3CwHQhGPHLA1dAaw/xvum2Wae/lsRyDAdQ3uT/vy76io7tD53N7
	l0u+2kL7OiVpvRXujhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrc0-0007aq-HI; Tue, 08 Oct 2019 15:41:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrav-0006oZ-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so3701937wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X9k/nqOLAylh00xkHgeHzZJoJeH5DmiWZVGTdUdx6Qk=;
 b=PZx2hAK0dMyPpXJk37fFKZsntkGJ+X7KJ/3wlIDhuhXMHoTHJOtmAWTPOYOx0ZrsQn
 F7ULkpC6+VKFX5O0jisCvPKSQ1YXeOGOZ0Srx1BZxajfM0W2Rh9uOG/FxDqz9J5Ejaxk
 QNpo2SF2pfz0xrFQeYRAya4EpRkvO/8ptWDMkZ4oJ+Iy4vjyDxqijIF1vK5KCgpO9hMj
 G5O5aAbtoNeLQMUC/p0/bdd5Ku+9OWyBllf67hEsZuIz28hqV+203WEcR+ek6Xy7HQVM
 R/BlGHMa1YTwBTwgH4NFLgp15KrM0wUSa3vnNQX5w9wGx4sFcOyim5WqQ4G3xvpfgiT/
 zXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X9k/nqOLAylh00xkHgeHzZJoJeH5DmiWZVGTdUdx6Qk=;
 b=UPvxTY3j9Sh0qmQr8ECWtP77dR6IqgyAFro2/xWl4LTxP4CeBn1I+S3fPelC7bH/zF
 /XLmuFbAFH5ONJ79yzaipuPFeTmjLVy1L5RWM07sw5JoLzbR1Cxg8iTKlfCAPCE5Q7xi
 oC5e7nsubB150+ZxfbBDh3ghGNFjZTrVMxWAvYrTjQitGOEIBL7Bexc+Z+/iukSmHEMq
 nw5eKdAz+YL6y1v2H35WNW6CWHLaWzzw5ekDJ2+WArzyWUXgdoGmNxPJvIJOzLFEojMZ
 DkGdhNPKFWeuFfkoGszs+0HPqbHdPQGbDgXmVHWQP34cyShzR/1zHpVTUzw4edm19Mvp
 0uwg==
X-Gm-Message-State: APjAAAUB2ffqDUmK4RvcRTrvaZ7kzBAuNM44gcHZqjqeqgO9mEfU58/x
 AuC6SmxTUnR0+mz+/UOLvr1XRJ2NO6JsaA==
X-Google-Smtp-Source: APXvYqx9VU98vVPd6rS7kPqp9OunnRa+j0CqfzsTjR3Gh/FSir0+67AM5xQxUluEpigyXVXZskWoTg==
X-Received: by 2002:a1c:ed02:: with SMTP id l2mr4173987wmh.155.1570549211982; 
 Tue, 08 Oct 2019 08:40:11 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:10 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 03/16] KVM: arm64: Set SCTLR_EL2.DSSBS if
 SSBD is forcefully disabled and !vhe
Date: Tue,  8 Oct 2019 17:39:17 +0200
Message-Id: <20191008153930.15386-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084013_448759_AD20EBED 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Christoffer Dall <christoffer.dall@arm.com>,
 stable@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit 7c36447ae5a090729e7b129f24705bb231a07e0b ]

When running without VHE, it is necessary to set SCTLR_EL2.DSSBS if SSBD
has been forcefully disabled on the kernel command-line.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/include/asm/kvm_host.h | 11 +++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c    | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 6abe4002945f..367b2e0b6d76 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -398,6 +398,8 @@ struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
 
 DECLARE_PER_CPU(kvm_cpu_context_t, kvm_host_cpu_state);
 
+void __kvm_enable_ssbs(void);
+
 static inline void __cpu_init_hyp_mode(phys_addr_t pgd_ptr,
 				       unsigned long hyp_stack_ptr,
 				       unsigned long vector_ptr)
@@ -418,6 +420,15 @@ static inline void __cpu_init_hyp_mode(phys_addr_t pgd_ptr,
 	 */
 	BUG_ON(!static_branch_likely(&arm64_const_caps_ready));
 	__kvm_call_hyp((void *)pgd_ptr, hyp_stack_ptr, vector_ptr, tpidr_el2);
+
+	/*
+	 * Disabling SSBD on a non-VHE system requires us to enable SSBS
+	 * at EL2.
+	 */
+	if (!has_vhe() && this_cpu_has_cap(ARM64_SSBS) &&
+	    arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE) {
+		kvm_call_hyp(__kvm_enable_ssbs);
+	}
 }
 
 static inline bool kvm_arch_check_sve_has_vhe(void)
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 963d669ae3a2..7414b76191c2 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -293,3 +293,14 @@ void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu)
 
 	vcpu->arch.sysregs_loaded_on_cpu = false;
 }
+
+void __hyp_text __kvm_enable_ssbs(void)
+{
+	u64 tmp;
+
+	asm volatile(
+	"mrs	%0, sctlr_el2\n"
+	"orr	%0, %0, %1\n"
+	"msr	sctlr_el2, %0"
+	: "=&r" (tmp) : "L" (SCTLR_ELx_DSSBS));
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
