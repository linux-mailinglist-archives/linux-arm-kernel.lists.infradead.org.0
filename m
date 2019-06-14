Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A973452E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvNxf9jXcBlRsTGaGbRsbKdQG2YV2GWGYWVQzIlSpxw=; b=b+JA85fKD7/Hha
	eXuFGSevSwMajyR7eYLDN0ubjxV7BVQRSnkGBs913CORbC4dsgpz3g6xAMquUww2Sb2xp9RfUXFIi
	JLi7TVSszgHXbAK27dVAlm/3fNp1n2y7HfN0h2HLjbQHa7vthb27ift0AabC1XI6sVQ9ygwSZpBLK
	Xyp3S16UCpoFcrUS3RN3pW+AWFmZzMc9yWQ7MWdUCsRn/218Ku+yCN25ZjHIUKAmKCJLRinYVyZWx
	ZuDwTbnqM5YUZUFJSc4sAQvf8u8I4qI3aIApBVQvESHLHdh8Vni/gLSU+X9Ev5fqoKJe0QQDOMSoT
	gMTkw7N0/VMQ7dPuathQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcpn-0004a1-5e; Fri, 14 Jun 2019 03:24:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcei-00011q-A1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so371815plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pEvDH0l3Ogb+ETQluMoz8xjNqG/my4E0M8F+Bzkpfu4=;
 b=WlxYLpJqqc1s7ub+NyoMG89aE24FhTuR1DAGYoyRKrh58s1SM+98OItieICpHHaYKz
 j2XOKW5FhK/BqeAceNAYaH9h0teSC/B9bVUzCHj9RJpo4BWpcOm90NdrPPczDsQzxdpz
 MLP6MnCgpO3fGdk4dtky8QiWa1xxD7FZaLq3M03BgAmDwsK+TzThlwggyJpbYd09+wLA
 f3rJOyNYWL2YEr+nkMmP3eYjQ7SqG+0PAWrQAbIbVYtDa65LiPe0EGfr9oaz8X+P29DU
 ocYxamwYeiQ8R/uyXovL8UosqdJ83KPD5Lmwg57O62ycbsMsKqTE6FISGcyBwvTfKPqu
 jNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pEvDH0l3Ogb+ETQluMoz8xjNqG/my4E0M8F+Bzkpfu4=;
 b=Ig67dB62T1UlOJuKWURoHudEax7LEXhW1uuE+W7MYSmpOHMFphDg25l/aUNm+MznVM
 vFEAxBAohhnxJxyjNS0sGw8AEgrlDEswrrARwGOvGx9KX/9rTDRbpKu9RuMCWw0NJOaT
 ePYgSAI+QuXJTGp4xvxNVeR6iGJKL2//vBepzpghi0kz/vjzhfBfj9vgn7Ngk2gOEPdj
 h5fl0qjbpnwJ4NfbKK6RcG1tLouMW4kaRGGfoPgTu2XvPZNV3xxfKo3jZgNiBvFzWHvR
 XV/Zm1PoZ33zauxzJoB8FsmsuNqbrRjWKLL2ukAUg9w0g8G5smkn3PS+zWp6ehRH1spF
 a0yw==
X-Gm-Message-State: APjAAAX0WJsrPBy+sxyc9xEDGnigjej3eoxnFb36RjooGJAaXMQvcU0J
 dw8vQ0c3rZsfMcef0/Ky0ATLI8NO2F8=
X-Google-Smtp-Source: APXvYqy6meWowRQMg40hWZZjjAJBuSb2HaYYpIb+AwAgullVd1ZnmDwHZoNUBj1FpoAe00C7IEGKvw==
X-Received: by 2002:a17:902:29a7:: with SMTP id
 h36mr39298958plb.158.1560482011111; 
 Thu, 13 Jun 2019 20:13:31 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id x7sm1024288pfm.82.2019.06.13.20.13.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:30 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 37/45] arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP
 hardening support
Date: Fri, 14 Jun 2019 08:38:20 +0530
Message-Id: <e79f92083760ecd32cd521e29a3d9d3227737ff2.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201332_458796_0C537881 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

commit 6167ec5c9145cdf493722dfd80a5d48bafc4a18a upstream.

A new feature of SMCCC 1.1 is that it offers firmware-based CPU
workarounds. In particular, SMCCC_ARCH_WORKAROUND_1 provides
BP hardening for CVE-2017-5715.

If the host has some mitigation for this issue, report that
we deal with it using SMCCC_ARCH_WORKAROUND_1, as we apply the
host workaround on every guest exit.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/kvm_host.h   | 6 ++++++
 arch/arm/kvm/psci.c               | 9 ++++++++-
 arch/arm64/include/asm/kvm_host.h | 5 +++++
 include/linux/arm-smccc.h         | 5 +++++
 4 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 6692982c9b57..2009894d9a8a 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -237,4 +237,10 @@ static inline void kvm_arm_setup_debug(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arm_clear_debug(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arm_reset_debug_ptr(struct kvm_vcpu *vcpu) {}
 
+static inline bool kvm_arm_harden_branch_predictor(void)
+{
+	/* No way to detect it yet, pretend it is not there. */
+	return false;
+}
+
 #endif /* __ARM_KVM_HOST_H__ */
diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index 9abf40734723..747319490268 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -403,13 +403,20 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 {
 	u32 func_id = smccc_get_function(vcpu);
 	u32 val = PSCI_RET_NOT_SUPPORTED;
+	u32 feature;
 
 	switch (func_id) {
 	case ARM_SMCCC_VERSION_FUNC_ID:
 		val = ARM_SMCCC_VERSION_1_1;
 		break;
 	case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
-		/* Nothing supported yet */
+		feature = smccc_get_arg1(vcpu);
+		switch(feature) {
+		case ARM_SMCCC_ARCH_WORKAROUND_1:
+			if (kvm_arm_harden_branch_predictor())
+				val = 0;
+			break;
+		}
 		break;
 	default:
 		return kvm_psci_call(vcpu);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index a35ce7266aac..aca3a7e28777 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -258,4 +258,9 @@ void kvm_arm_setup_debug(struct kvm_vcpu *vcpu);
 void kvm_arm_clear_debug(struct kvm_vcpu *vcpu);
 void kvm_arm_reset_debug_ptr(struct kvm_vcpu *vcpu);
 
+static inline bool kvm_arm_harden_branch_predictor(void)
+{
+	return cpus_have_cap(ARM64_HARDEN_BRANCH_PREDICTOR);
+}
+
 #endif /* __ARM64_KVM_HOST_H__ */
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index da9f3916f9a9..1f02e4045a9e 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -73,6 +73,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 1)
 
+#define ARM_SMCCC_ARCH_WORKAROUND_1					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0x8000)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
