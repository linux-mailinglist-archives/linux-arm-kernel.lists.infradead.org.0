Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC19D452E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHKotN0CPymWxY5msQJ3hRzTffzqtDxB/Sf71N33jLc=; b=K7roMVuVdhQxtC
	P5n++/tMynOFdASQBxJbyH1kGZksXzn1ScUyvNPi9he11oFrYrLYm4oW1xQuDbNdnFypUNpMJ3SGS
	syipxKzX/i4f5/x+4GAGuCSw9h4w2HecpcewVcTu/LRukB+VHK+7azishoThRCx4PX1/bWzU2ku2D
	wpfNWeGclgnSH+KCTFA608ubYH8/du9HwtAMKjSIm+50QUi4xTtezUGdQpQEPNuO2IGGrTVZWq9rz
	uIS7Xgz05GsKkn4Cf8fVVmCj8BeAGJI/z8hgtOF+KL3gKt6q0zCdPaysNS1rMDQBkFnYnVnYdIvx1
	nYFaAL0Ng68mQIzP5mrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcq8-0004qf-9w; Fri, 14 Jun 2019 03:25:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceg-00010T-2l
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:32 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh12so378443plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ciH+Cy/cnjaV+iKRh72NhJx15MiI+P9rVJovcPRWoV0=;
 b=zCj6UOkk9rYxjGZ76Celb+F4P6OxrLaT+sclkYVehSDNSu0d3hzajx04mK0DZZfSEQ
 vDvFo25Jg/ib3RMKhnrEqeIxgYSGrX2tKBBxSJNNc9SOelWDPYolRRdEBqvLnhUACalH
 11zfuSBeyOZyNrXcL3xld8rwkwpKoT6a2T6EmzQVJl+EwwwOxYfhPdZ4fmL2CZ3Esq4s
 sr1vf56kZhY7Rp1oXoB39fzJ/m0MdsABjb3Q+rlB5RXEKVJuv+ELEZnSmXPtr96D2lgI
 qflaeiBy5vRwtZhLlfqThBj3abiDuudnqZ5WLGRPoDpWYiMlTytnrqxuB1FQrL0LFBRw
 UvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ciH+Cy/cnjaV+iKRh72NhJx15MiI+P9rVJovcPRWoV0=;
 b=bt/u+wRJ8ESEp4lMjm+FAgEY0vBnybTYdC+GwVrJgzzgoRklX0iqf0yhVzjFstesqn
 yJZXkTmRV7VTc2CZecQ2X0HSLbsM3ahIxjNn+jvgPUslXZ+UtXQ60Q0pGl1RPsB8JcqX
 0EqwlRuUQt6KOX/wsgYbLxEBadjYhToE+pRDlumK/dbRD5mfzjyeRwqqsKi8d/FG2SOG
 EwUBRTEg2sH6kvNnDF8MBwL6Tu9QQ56pIIpzr2scBmA96YcpCIBLeq2+c27Ez4lQNrqW
 QHbExADUv3bBhIrrJBItN6vZMZP/c04MA6ilHhOd2A50Ltat5pOd99MGfqt1ctliBBdS
 ZOsg==
X-Gm-Message-State: APjAAAVh5T+GjhCjwS9mxpk8vvqYOznIu3qkDRaOJphhalhmQhXFUPfw
 Es0AWPR08+adbNvvq2zoF2zzsUU6sy0=
X-Google-Smtp-Source: APXvYqzdSrwX7zpx4mVVNZDCkgcqlYmaMymBCeJxs0WBFABZ+RRjkEeu1ROtPUwmdF1tTRVtN5gq8g==
X-Received: by 2002:a17:902:54d:: with SMTP id
 71mr88735600plf.140.1560482008787; 
 Thu, 13 Jun 2019 20:13:28 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id n7sm1105325pff.59.2019.06.13.20.13.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 36/45] arm/arm64: KVM: Turn kvm_psci_version into a
 static inline
Date: Fri, 14 Jun 2019 08:38:19 +0530
Message-Id: <2ea4ac93fe2fdb5faad8e80347747673cb89d93e.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201330_219066_5D96663C 
X-CRM114-Status: GOOD (  15.62  )
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

commit a4097b351118e821841941a79ec77d3ce3f1c5d9 upstream.

We're about to need kvm_psci_version in HYP too. So let's turn it
into a static inline, and pass the kvm structure as a second
parameter (so that HYP can do a kern_hyp_va on it).

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream and drop switch.c
	changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kvm/psci.c    | 12 ++----------
 include/kvm/arm_psci.h | 21 ++++++++++++++++++++-
 2 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index 76821adf4fde..9abf40734723 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -120,7 +120,7 @@ static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
 	if (!vcpu)
 		return PSCI_RET_INVALID_PARAMS;
 	if (!vcpu->arch.power_off) {
-		if (kvm_psci_version(source_vcpu) != KVM_ARM_PSCI_0_1)
+		if (kvm_psci_version(source_vcpu, kvm) != KVM_ARM_PSCI_0_1)
 			return PSCI_RET_ALREADY_ON;
 		else
 			return PSCI_RET_INVALID_PARAMS;
@@ -230,14 +230,6 @@ static void kvm_psci_system_reset(struct kvm_vcpu *vcpu)
 	kvm_prepare_system_event(vcpu, KVM_SYSTEM_EVENT_RESET);
 }
 
-int kvm_psci_version(struct kvm_vcpu *vcpu)
-{
-	if (test_bit(KVM_ARM_VCPU_PSCI_0_2, vcpu->arch.features))
-		return KVM_ARM_PSCI_LATEST;
-
-	return KVM_ARM_PSCI_0_1;
-}
-
 static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = vcpu->kvm;
@@ -395,7 +387,7 @@ static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
  */
 static int kvm_psci_call(struct kvm_vcpu *vcpu)
 {
-	switch (kvm_psci_version(vcpu)) {
+	switch (kvm_psci_version(vcpu, vcpu->kvm)) {
 	case KVM_ARM_PSCI_1_0:
 		return kvm_psci_1_0_call(vcpu);
 	case KVM_ARM_PSCI_0_2:
diff --git a/include/kvm/arm_psci.h b/include/kvm/arm_psci.h
index ed1dd8088f1c..e518e4e3dfb5 100644
--- a/include/kvm/arm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -18,6 +18,7 @@
 #ifndef __KVM_ARM_PSCI_H__
 #define __KVM_ARM_PSCI_H__
 
+#include <linux/kvm_host.h>
 #include <uapi/linux/psci.h>
 
 #define KVM_ARM_PSCI_0_1	PSCI_VERSION(0, 1)
@@ -26,7 +27,25 @@
 
 #define KVM_ARM_PSCI_LATEST	KVM_ARM_PSCI_1_0
 
-int kvm_psci_version(struct kvm_vcpu *vcpu);
+/*
+ * We need the KVM pointer independently from the vcpu as we can call
+ * this from HYP, and need to apply kern_hyp_va on it...
+ */
+static inline int kvm_psci_version(struct kvm_vcpu *vcpu, struct kvm *kvm)
+{
+	/*
+	 * Our PSCI implementation stays the same across versions from
+	 * v0.2 onward, only adding the few mandatory functions (such
+	 * as FEATURES with 1.0) that are required by newer
+	 * revisions. It is thus safe to return the latest.
+	 */
+	if (test_bit(KVM_ARM_VCPU_PSCI_0_2, vcpu->arch.features))
+		return KVM_ARM_PSCI_LATEST;
+
+	return KVM_ARM_PSCI_0_1;
+}
+
+
 int kvm_hvc_call_handler(struct kvm_vcpu *vcpu);
 
 #endif /* __KVM_ARM_PSCI_H__ */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
