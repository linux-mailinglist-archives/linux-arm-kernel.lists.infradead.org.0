Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6CA452DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gfvpVqxhNzwQziJqP/fMopyB3TCI8+jUc/4HEFvhY4=; b=Bail9abOZZ9q6M
	vblkLbEdQ3AnW9V3PyXOaJHFG+VxYRB8fbTBxfBBF0MvbBnxwLh2ZnOfsGMWkbBOvsO/rpl0IMbm/
	jkqf/T59jtnsG6juAy1K0bQ/IKzBEzRNcz1J75o29WaJ6tz4nN9nmmSjkSOeiAJN1gAi3cRSJZuDO
	jQB7CApSqXp5HSCvBp1F6x6yDUGGwzHlroulqo4Go7sce3qsBr/w2YIJHmsJ5NB6wSDC6Vu7v3y+U
	C0riQFb/6s3HPyqRrm++mhEjqzBBfS0Mh7VKmzRcLyKMLWjxfVEOmwe2BhFnyR7wPbfsJRFAN2LJN
	zIIXI1X2oF4VlIShWvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcpB-00045o-Fp; Fri, 14 Jun 2019 03:24:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceb-0000x6-Fv
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:29 +0000
Received: by mail-pg1-x543.google.com with SMTP id k187so690950pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4cjUvWF1fG1uJf64DV9LIZ2qblEK4Qh4cwDlO2OXHlc=;
 b=sFWQWr9WQVIoODnq13osUci8fXXwEGt2JIkyrqUTrbBm4bd7VB/u8y0UxppVd+BeiR
 UtJXoGi1ehpyDUqs0e+ubar9YWT057q4MMJ/bKxw+xgLk1CyMMDO7hhq1T1pBX5UmLjs
 B5rQdnQ1JEvgyyBHk/Gy2qptGPg2I94HqYxOjVeSouPZN5f/0YJc8VbqPpFuDDEwW3Lt
 aQBgpKRwEs98T1ALDuHy0H2ZWiKHpgj0p91BRIyGEptiEu7RGwz9vWTkk6cvMhx/7lzq
 lBYMXv4P2NwEPJa9GKD61+FgGjo/iIZK/QRSGYBghxS5ZCiizlV5quX9rJ+mM5Fkq6M+
 e5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4cjUvWF1fG1uJf64DV9LIZ2qblEK4Qh4cwDlO2OXHlc=;
 b=jiH9hbVzoplgZn12isVfMhoPvBWXpLmahc4A1uTWinI/3UxWshd/zGKyM3gNjC0y68
 Avx6YMvdz9i88SLAKVL+DTC+5pbTGg1PIrRKeK4HgMTvcXHi/la+tXWv/40spzVlV23A
 xPeR22miX7i2qfMvCXxOzhzFO+Zrx5PGcl9MSxTowpGrXE0OMKRyqdhBbuOC+y7K1GAA
 ClIA6D2k0DoPleA6GesbHm3f6sR9z9Axs1s749M2Gg/003D94CCet6uisUoobxcU8yKf
 j+J3rzjmJ0mMmDviD0FP2pEMWmwcTS5JbEOGn02HTcF74UY1MPwuRw5OiQ4WPFykOrjT
 h2KA==
X-Gm-Message-State: APjAAAVFkhhUUMxtOdaSIAyPN4lM4MhZ12X11ayhpL9+rxeD4rfEmlRF
 87/RNOhn47MuL5PCjDsK1wqxRHRBYns=
X-Google-Smtp-Source: APXvYqzlH0OcxsgdIzwPZqpnKGrcfCU430u+ms0DTeK9I3s4ge2lcX/vcnViYs4es5GBTSoBrl9MOA==
X-Received: by 2002:a63:f146:: with SMTP id o6mr32948616pgk.179.1560482003778; 
 Thu, 13 Jun 2019 20:13:23 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id m2sm1083791pgq.48.2019.06.13.20.13.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:23 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 34/45] arm/arm64: KVM: Implement PSCI 1.0 support
Date: Fri, 14 Jun 2019 08:38:17 +0530
Message-Id: <673b7f2b7b85c228bf5136a273da7fc97d43c4d8.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201325_637734_7D2C50E8 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit 58e0b2239a4d997094ba63986ef4de29ddc91d87 upstream.

PSCI 1.0 can be trivially implemented by providing the FEATURES
call on top of PSCI 0.2 and returning 1.0 as the PSCI version.

We happily ignore everything else, as they are either optional or
are clarifications that do not require any additional change.

PSCI 1.0 is now the default until we decide to add a userspace
selection API.

Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kvm/psci.c    | 45 +++++++++++++++++++++++++++++++++++++++++-
 include/kvm/arm_psci.h |  3 +++
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index 7ef6cdd22163..23428a3ac69b 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -232,7 +232,7 @@ static void kvm_psci_system_reset(struct kvm_vcpu *vcpu)
 int kvm_psci_version(struct kvm_vcpu *vcpu)
 {
 	if (test_bit(KVM_ARM_VCPU_PSCI_0_2, vcpu->arch.features))
-		return KVM_ARM_PSCI_0_2;
+		return KVM_ARM_PSCI_LATEST;
 
 	return KVM_ARM_PSCI_0_1;
 }
@@ -311,6 +311,47 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
+static int kvm_psci_1_0_call(struct kvm_vcpu *vcpu)
+{
+	u32 psci_fn = smccc_get_function(vcpu);
+	u32 feature;
+	unsigned long val;
+	int ret = 1;
+
+	switch(psci_fn) {
+	case PSCI_0_2_FN_PSCI_VERSION:
+		val = KVM_ARM_PSCI_1_0;
+		break;
+	case PSCI_1_0_FN_PSCI_FEATURES:
+		feature = smccc_get_arg1(vcpu);
+		switch(feature) {
+		case PSCI_0_2_FN_PSCI_VERSION:
+		case PSCI_0_2_FN_CPU_SUSPEND:
+		case PSCI_0_2_FN64_CPU_SUSPEND:
+		case PSCI_0_2_FN_CPU_OFF:
+		case PSCI_0_2_FN_CPU_ON:
+		case PSCI_0_2_FN64_CPU_ON:
+		case PSCI_0_2_FN_AFFINITY_INFO:
+		case PSCI_0_2_FN64_AFFINITY_INFO:
+		case PSCI_0_2_FN_MIGRATE_INFO_TYPE:
+		case PSCI_0_2_FN_SYSTEM_OFF:
+		case PSCI_0_2_FN_SYSTEM_RESET:
+		case PSCI_1_0_FN_PSCI_FEATURES:
+			val = 0;
+			break;
+		default:
+			val = PSCI_RET_NOT_SUPPORTED;
+			break;
+		}
+		break;
+	default:
+		return kvm_psci_0_2_call(vcpu);
+	}
+
+	smccc_set_retval(vcpu, val, 0, 0, 0);
+	return ret;
+}
+
 static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
@@ -353,6 +394,8 @@ static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
 int kvm_psci_call(struct kvm_vcpu *vcpu)
 {
 	switch (kvm_psci_version(vcpu)) {
+	case KVM_ARM_PSCI_1_0:
+		return kvm_psci_1_0_call(vcpu);
 	case KVM_ARM_PSCI_0_2:
 		return kvm_psci_0_2_call(vcpu);
 	case KVM_ARM_PSCI_0_1:
diff --git a/include/kvm/arm_psci.h b/include/kvm/arm_psci.h
index 5659343580a3..32360432cff5 100644
--- a/include/kvm/arm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -22,6 +22,9 @@
 
 #define KVM_ARM_PSCI_0_1	PSCI_VERSION(0, 1)
 #define KVM_ARM_PSCI_0_2	PSCI_VERSION(0, 2)
+#define KVM_ARM_PSCI_1_0	PSCI_VERSION(1, 0)
+
+#define KVM_ARM_PSCI_LATEST	KVM_ARM_PSCI_1_0
 
 int kvm_psci_version(struct kvm_vcpu *vcpu);
 int kvm_psci_call(struct kvm_vcpu *vcpu);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
