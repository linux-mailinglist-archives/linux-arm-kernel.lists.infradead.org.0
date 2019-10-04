Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77208CBA04
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36LqoD/l2/laGs9b9umoA8YT2SDv0bWZ29o6OBQdbsg=; b=Ltz9mkPdocAa1Z
	zieXPaQrpFqW2mfqEhsTAjcg95ln51apMI/dq8mwL8cGitDc/FLaGfMbj+9logGFQ9LR08uElSZ4A
	QucmRKFdcNahQJsFRwW4ITY55cxkY4sRmzIHcv1slmTZqtZObj1YpMkwrtASkeD2OGXoIr01qXgM2
	atoeRWHoDZL6DEwaGR/CAg+axDiH1O8IWW8VFvErvuSoJupjtR9rI1FXDBwnpNXm8LJG8VUCkzLUE
	NuuEqGkjQJ4mnfhaxmIrwPFxTp2jvRShMK8KH6sWkuYhAK6WMejAggU9O4W6YwRmodkA2FUJk/ktn
	OF7F8yjive9K+7fypLCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMPj-0000W6-DI; Fri, 04 Oct 2019 12:10:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKB-0001l8-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so6054202wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TWQSpGfEQaZEDJmKuJhffA9rJ/sPngSGcPa+bzYw/v0=;
 b=CK6qZipIDATO6K7IolEca2mCxEmRJrBu6B68PL9CtB976w3GH/1bR9ljLrEssR5rd8
 gcilzm+mQDNPfKJJIgSecWp78SaL+brVhIKz1kluThlsQFpSmj6YcG4tYAcN0LCdT7qj
 PDh68SGMMkqR5CW3LZybRe7qnwCTe0KJqPmKoMtnkSF+wHFkkDPSmqL5PPK791D4Ym6x
 soGkNkwyHwuGA/OnDx6LVVCXL/BShD3c+U0f4viSTEFgaGVHJZ4wnqujcsFXmV9abbn4
 KyHA0puIpIQtUpZ4HjwmcnxVIDd6aeurRAQFVd2Ki1mbmcd+yaS3D4rNRDtAfBdt+5Ja
 xa7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TWQSpGfEQaZEDJmKuJhffA9rJ/sPngSGcPa+bzYw/v0=;
 b=rtmk6JcgCOSHicFEtPJH/aukyagE4gSJSdWBjrKpeUJKOo/mCzDLmWY2gShJ93247X
 Is6ChhJsSFFwydHJXuqDQQEumrkfmqC99Eo+enRLyteTRuyPAfZs/XpjbDFJwugGTXnF
 m1kBClzPYQHL3cKGcRo8TUtcqjImWMDjUuQXipikSgxxVKkMI1e8VR5ar1j8U9OJ5dnf
 VDeMryZWDFrl+vKG8hJozFiSVFupZs7GPHuDOdZKhw0QNJ8M2KFgHnEz7W4TJge7eRH+
 8oe/rDoAb33Ra88G2VR/xuiubXSLR+7VElFfAFvxbF3QYm9BsKprIDNWw9brbldx4Bkg
 x4nw==
X-Gm-Message-State: APjAAAU6cfoMzBylWZ6Q+syaXjCmCxhIASfT89swAzKsUAElccr9IvyJ
 nKZ8UhkKtpx4z7AWIQRDhNUTwHGFYKwKdYFK
X-Google-Smtp-Source: APXvYqw0Rty4YcmmIVPc/oOzSyfhwOXpYNKn7oCDNDiMVtZPknlkqKG7QB2rj9+7H9l8ZSVPP7BciQ==
X-Received: by 2002:a05:6000:105:: with SMTP id
 o5mr10946803wrx.51.1570190680252; 
 Fri, 04 Oct 2019 05:04:40 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:39 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 03/16] KVM: arm64: Set SCTLR_EL2.DSSBS if SSBD is
 forcefully disabled and !vhe
Date: Fri,  4 Oct 2019 14:04:17 +0200
Message-Id: <20191004120430.11929-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050443_346874_2B084720 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

When running without VHE, it is necessary to set SCTLR_EL2.DSSBS if SSBD
has been forcefully disabled on the kernel command-line.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
(cherry picked from commit 7c36447ae5a090729e7b129f24705bb231a07e0b)
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
