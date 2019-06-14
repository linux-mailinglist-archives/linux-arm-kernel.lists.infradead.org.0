Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7393452D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOvpKmYV+O3MqKtGbpj6OefXsARrOXrICKr0swWZBHA=; b=Ta73HJQVorEYhh
	8Rjn32uMZGR6UH8KCZaOqRIfLTPiXE0hYjCL/9Csnuwen5yyUJFyl5j26sbTqCdFcycvOoUqc1KTR
	gpHsVP0Mg8PQAAnpovUpS0BTZciEDOleknD0ebNfYVu4ydplS7u7foG0M2k45KIcw4JQzHhWq6E2Y
	w123rzY40m0ImYon/nSogKGdoPqZdRlA3qrN7jbek7/sw6V8CQze+2rzOXNEiQQpvr2wE0cJlJxu/
	W1u0yYqj5QCncua5fvE0/1wR61k/XOioAhfh1hWOaw0R7NluGQfxbvZgvzEK8SwygKECPdR2Dz6Sw
	oXqSknCeg2uVhXj/v9ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcoM-0003LK-72; Fri, 14 Jun 2019 03:23:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceT-0000sz-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id k187so690781pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XnBFuCb0fKyphIKUBsr79RViQc3+zyureYjz7BI8VNo=;
 b=esT6yODHCOPamMcOEIHuIhACaeouPQ3yo/v5MBa40924SSSeJaG2ULGBQ/CLUoQbmw
 veg3oijobNEl2NP4ivxYvXTjcHUDYfsHGr/2+9D2GL74RWGecQ6ClJubOs+bsmrHIJoB
 VqxVAl3KoZgWOmmxvZyWzD+PZi6TQUV1y8FTil0oin6xyzux+Z8+C+N9YpzbMErJuWRd
 n6tm6Chwu6+Qgd1gO+m/36/+kfRl2mv6HvaLmDwJXCJGHEbqig9AEAm65vsz21clORkx
 yxQIP0PwTZ6U9Ik1AwiEpGGtOkI51snHExxKzeI47qdMhjoZNioe1PNPZPdOU+pf8B59
 cO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XnBFuCb0fKyphIKUBsr79RViQc3+zyureYjz7BI8VNo=;
 b=cSmD/CdFpaX1gmAS29aWKgX8RSBEd6XlFejvjFO2mBkX90zQqb92bQzJ66alR1ii5M
 Km4OjvqjkBvKeJSZ0n9r3B2uE3A2RBriPgR6lDs0bs6RvzlIqvupiCv0T6k2hklrCQxY
 bhvLUYxKnZlM+UHtTKHkf8IkJqXQICvcj4fie7+ZN60ccUaQDUTaFm/hkpquWJ/daXV1
 Cu9tAbzDjzGcTrzFHoN3FXqiLkVdt11V5WPkNqr9wAGmLNmbb8zzkXb9ZpdCGxfL9qtM
 40OgYmMOyJqegs+BQAgLc75Ysu/JvzsTfTofCG8tLathass+2mb2xOStPJqyzwuzA/1x
 FAow==
X-Gm-Message-State: APjAAAWxXEgFu0awA11ZjG9Q3PdpT4oUUwMLp99u5I4N6K9T0VMJo7ap
 yXmvUbCu6iv/A0UHUBf+N/poDhTpRh8=
X-Google-Smtp-Source: APXvYqzGyFNFadHEXKzMtqjaygO6x8Ag7dOxW984fCNT8u/vHzZybu7VHdmVBESXMTtFJcKLm5r0zw==
X-Received: by 2002:a62:7656:: with SMTP id r83mr70618823pfc.56.1560481996220; 
 Thu, 13 Jun 2019 20:13:16 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id x7sm1023931pfm.82.2019.06.13.20.13.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:15 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 31/45] arm/arm64: KVM: Add PSCI_VERSION helper
Date: Fri, 14 Jun 2019 08:38:14 +0530
Message-Id: <0a350c8f3ce33baae43c1c800ea9747e398ef0fe.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201317_553092_6BA0A684 
X-CRM114-Status: GOOD (  13.97  )
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

commit d0a144f12a7ca8368933eae6583c096c363ec506 upstream.

As we're about to trigger a PSCI version explosion, it doesn't
hurt to introduce a PSCI_VERSION helper that is going to be
used everywhere.

Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kvm/psci.c       | 4 +---
 include/kvm/arm_psci.h    | 6 ++++--
 include/uapi/linux/psci.h | 3 +++
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index b4acfec9b459..edf3d7fdcbdb 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -25,8 +25,6 @@
 
 #include <kvm/arm_psci.h>
 
-#include <uapi/linux/psci.h>
-
 /*
  * This is an implementation of the Power State Coordination Interface
  * as described in ARM document number ARM DEN 0022A.
@@ -220,7 +218,7 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 		 * Bits[31:16] = Major Version = 0
 		 * Bits[15:0] = Minor Version = 2
 		 */
-		val = 2;
+		val = KVM_ARM_PSCI_0_2;
 		break;
 	case PSCI_0_2_FN_CPU_SUSPEND:
 	case PSCI_0_2_FN64_CPU_SUSPEND:
diff --git a/include/kvm/arm_psci.h b/include/kvm/arm_psci.h
index 2042bb909474..5659343580a3 100644
--- a/include/kvm/arm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -18,8 +18,10 @@
 #ifndef __KVM_ARM_PSCI_H__
 #define __KVM_ARM_PSCI_H__
 
-#define KVM_ARM_PSCI_0_1	1
-#define KVM_ARM_PSCI_0_2	2
+#include <uapi/linux/psci.h>
+
+#define KVM_ARM_PSCI_0_1	PSCI_VERSION(0, 1)
+#define KVM_ARM_PSCI_0_2	PSCI_VERSION(0, 2)
 
 int kvm_psci_version(struct kvm_vcpu *vcpu);
 int kvm_psci_call(struct kvm_vcpu *vcpu);
diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
index 3d7a0fc021a7..39930ca998cd 100644
--- a/include/uapi/linux/psci.h
+++ b/include/uapi/linux/psci.h
@@ -87,6 +87,9 @@
 		(((ver) & PSCI_VERSION_MAJOR_MASK) >> PSCI_VERSION_MAJOR_SHIFT)
 #define PSCI_VERSION_MINOR(ver)			\
 		((ver) & PSCI_VERSION_MINOR_MASK)
+#define PSCI_VERSION(maj, min)						\
+	((((maj) << PSCI_VERSION_MAJOR_SHIFT) & PSCI_VERSION_MAJOR_MASK) | \
+	 ((min) & PSCI_VERSION_MINOR_MASK))
 
 /* PSCI features decoding (>=1.0) */
 #define PSCI_1_0_FEATURES_CPU_SUSPEND_PF_SHIFT	1
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
