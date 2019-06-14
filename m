Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F26452DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUd1bptEDZm5zLjzQUhMGOv4gqpphXupU+bCnqlT3E8=; b=F/awYjv/WFUQR4
	5JGI/Z3jXjPwjzKIXI8RwhEWSGX1//LmtNSJgNg2O+TVUK0GxEzqfYEj2i7ilfYNPjGi4TOfwwlJR
	IGduDQS0LhSotXFpi7nfMovx32A6XNz/axX7iNpIdYGRwksGmnuSGJ1eF4M0tQ1GxKM8WTne/a269
	DuetIN28KxQfEQi5iAoXWFXo3deO6zLyvjw7WLDOze1F5JrWGyDih6ieH6uD4tQVpJWh+bgn7wr+e
	2HlZkqtkdS0nDB5M8tOTrqkFFT2dqoWYegVIerQgcmZZesZZXecnkU2xM6wjfZZjp6C4rhHp6i9/U
	rK3/jcn/wJsx+mtuUFaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcpT-0004M2-24; Fri, 14 Jun 2019 03:24:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcee-0000yt-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so686839pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sZ9weVw7RciwPWpWURkguqz3JkcjVDFiI8eMy/XIk6c=;
 b=uBa2Fanuo5OuRV3Tc+G72E7OhAmFpiIcRgunKetzQ2vV71vpUsLFIRdJ32kyLSQ3WO
 Q+kphuNV5TIYTf+aDYD+RCwEOCs9NczgpuHExLd+SZH2SYkAKZK30z9qKogKCzJthNZC
 axQjLiaJ2+cZwfV+bisHNRsG/EUGLH+dP6wwhJ9rx6oWMB406wy4PCLUakdcHMfIXV0s
 BxAeBLVZCFSfFAfUTAVPeVWRt3AlXgDyDzUY3NfjptzjovgjtjgjAmrTPMgzgGtnx+c6
 I+tUU6ycag56hY11F7zYtJWDg8EV7SsOvXU3wHVqliUi/zAhJYqCn9qN76vINNwMd67x
 0vqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sZ9weVw7RciwPWpWURkguqz3JkcjVDFiI8eMy/XIk6c=;
 b=EqX1KmP6fZCe8OeK0WWy1u2MJhST6wbQSTv1TfkcP/xvM22lnGRTRLCJKkFWASY0rK
 tHnvpr8PByP2BaynjNKgXUXyDqsWXO3S/3CDixqjCHNws4OTy5TNxBLZWFprEyCthUZw
 bTU9A3CcK20oINh8QStJKTJ84X84YBd9itr8q1qKLEwtrSqQ+XEtJI5iXe7ixMgLse0/
 de8I77Tfj1feMiUB7v9F9ZQBJUPXxkRwTAt5DcjwlS0wvGcVUbCwlcedvGWue4qif8ZQ
 +q7lnFMyEXbFoO5SZY40/yfNAUkW1eA4DM27HeVG/tgYcQJQlAuq0l7vqH7I5OoXN5DK
 VkJQ==
X-Gm-Message-State: APjAAAUSMFYz0qeN/NEvtXqSDYvp+NB2N7caCrGCjWkMPdDpJc5qHVVR
 1uTA4i1dTyzun9QrVicAjfbmpZBK2+s=
X-Google-Smtp-Source: APXvYqyYPUab+C9R03/M6n+YP6AiMroinpBIgD7kqj5kSKV2zeWlxKVc97dROufCbUh1cEm2BkfooA==
X-Received: by 2002:a17:90a:b294:: with SMTP id
 c20mr8922158pjr.16.1560482006464; 
 Thu, 13 Jun 2019 20:13:26 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id e20sm1043011pfi.35.2019.06.13.20.13.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:25 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 35/45] arm/arm64: KVM: Advertise SMCCC v1.1
Date: Fri, 14 Jun 2019 08:38:18 +0530
Message-Id: <cc0e289588de42a2938932929c3329e238ff19b8.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201328_640646_327061C7 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

commit 09e6be12effdb33bf7210c8867bbd213b66a499e upstream.

The new SMC Calling Convention (v1.1) allows for a reduced overhead
when calling into the firmware, and provides a new feature discovery
mechanism.

Make it visible to KVM guests.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kvm/handle_exit.c   |  2 +-
 arch/arm/kvm/psci.c          | 24 +++++++++++++++++++++++-
 arch/arm64/kvm/handle_exit.c |  2 +-
 include/kvm/arm_psci.h       |  2 +-
 include/linux/arm-smccc.h    | 13 +++++++++++++
 5 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/arch/arm/kvm/handle_exit.c b/arch/arm/kvm/handle_exit.c
index ed879e3238d3..8d8daa2861f3 100644
--- a/arch/arm/kvm/handle_exit.c
+++ b/arch/arm/kvm/handle_exit.c
@@ -43,7 +43,7 @@ static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	trace_kvm_hvc(*vcpu_pc(vcpu), *vcpu_reg(vcpu, 0),
 		      kvm_vcpu_hvc_get_imm(vcpu));
 
-	ret = kvm_psci_call(vcpu);
+	ret = kvm_hvc_call_handler(vcpu);
 	if (ret < 0) {
 		vcpu_set_reg(vcpu, 0, ~0UL);
 		return 1;
diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index 23428a3ac69b..76821adf4fde 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -15,6 +15,7 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/preempt.h>
 #include <linux/kvm_host.h>
 #include <linux/wait.h>
@@ -337,6 +338,7 @@ static int kvm_psci_1_0_call(struct kvm_vcpu *vcpu)
 		case PSCI_0_2_FN_SYSTEM_OFF:
 		case PSCI_0_2_FN_SYSTEM_RESET:
 		case PSCI_1_0_FN_PSCI_FEATURES:
+		case ARM_SMCCC_VERSION_FUNC_ID:
 			val = 0;
 			break;
 		default:
@@ -391,7 +393,7 @@ static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
  * Errors:
  * -EINVAL: Unrecognized PSCI function
  */
-int kvm_psci_call(struct kvm_vcpu *vcpu)
+static int kvm_psci_call(struct kvm_vcpu *vcpu)
 {
 	switch (kvm_psci_version(vcpu)) {
 	case KVM_ARM_PSCI_1_0:
@@ -404,3 +406,23 @@ int kvm_psci_call(struct kvm_vcpu *vcpu)
 		return -EINVAL;
 	};
 }
+
+int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
+{
+	u32 func_id = smccc_get_function(vcpu);
+	u32 val = PSCI_RET_NOT_SUPPORTED;
+
+	switch (func_id) {
+	case ARM_SMCCC_VERSION_FUNC_ID:
+		val = ARM_SMCCC_VERSION_1_1;
+		break;
+	case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
+		/* Nothing supported yet */
+		break;
+	default:
+		return kvm_psci_call(vcpu);
+	}
+
+	smccc_set_retval(vcpu, val, 0, 0, 0);
+	return 1;
+}
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 5b7fb5ab9136..a5fa27980a1d 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -43,7 +43,7 @@ static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	trace_kvm_hvc_arm64(*vcpu_pc(vcpu), vcpu_get_reg(vcpu, 0),
 			    kvm_vcpu_hvc_get_imm(vcpu));
 
-	ret = kvm_psci_call(vcpu);
+	ret = kvm_hvc_call_handler(vcpu);
 	if (ret < 0) {
 		vcpu_set_reg(vcpu, 0, ~0UL);
 		return 1;
diff --git a/include/kvm/arm_psci.h b/include/kvm/arm_psci.h
index 32360432cff5..ed1dd8088f1c 100644
--- a/include/kvm/arm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -27,6 +27,6 @@
 #define KVM_ARM_PSCI_LATEST	KVM_ARM_PSCI_1_0
 
 int kvm_psci_version(struct kvm_vcpu *vcpu);
-int kvm_psci_call(struct kvm_vcpu *vcpu);
+int kvm_hvc_call_handler(struct kvm_vcpu *vcpu);
 
 #endif /* __KVM_ARM_PSCI_H__ */
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 611d10580340..da9f3916f9a9 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -60,6 +60,19 @@
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_VERSION_1_0		0x10000
+#define ARM_SMCCC_VERSION_1_1		0x10001
+
+#define ARM_SMCCC_VERSION_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0)
+
+#define ARM_SMCCC_ARCH_FEATURES_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 1)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
