Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814771FF1A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSYi4YajogcGvNYS3yqNi+UkDVjYhMtu7IdNEfPBhWY=; b=gYHoUDotELNfyC
	ggwfpk1SbAmpIZPKXNkEv6n3oOrE6zzcZUtwcx3H5cq9WQSM1KDo8JVNvZUchpYCejIzEntIVVpwn
	M4i5fY+zJZOqHZe5ROq5L1wZ7Ip7RW7aok6tIO7u7YkRb6k5W07n0vP9019VkcADktGDNSu/pT8lM
	rRbccgxg0DVFjZSKpBCmnb3tE+/pdpfKSfJd4UPDXmGySK1YZnoKXsP7xphlrzlAZ7i7rEVSh2DmH
	iJXg2ji+ZHbv13OTYQ8Gy4d1Gk8J9sf44yCmQaPMDOWPjyuXhG4r8+Fs2YVvoS8CXPf3N2/JVkuOy
	692lYvw/e4i6PTcYbhFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltdZ-0005FM-IG; Thu, 18 Jun 2020 12:27:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcD-0004TX-Cz
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:25:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id b82so5008017wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D60Z34SZFzunDrVnRRvupIcqGYHycsZaSexa8Z/NEcc=;
 b=R5wOZrowNvymOhII5Vo3wuKlNlmIIa7ZuV7agZTTgZFUH3aAoFADrBAriFs36Lux4i
 u0oPXIAbolsLV5fsikLjn1CtZzdJFyM63oIkCXmc+Wcdowa1DxkLq5384FP92ewvLiYd
 cM6TPbBZx2bDn+wrPbd0wlqEJ3h73VM/Lc+WXvNTURLaJ/VNY+XvDWAdVLmGHRfY7q84
 RtvzKZUpk4XQOMw9IRyDxmly045+stSxNhnjPFGC9awWJp2xAiWx+E79XB0vLsXaydg4
 WM+2CBz7tNeqcvb3ML1e25FabZNYr0irIsvvtnyDR4YyZF6begqoWk07LoEGxWViiHEQ
 nNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D60Z34SZFzunDrVnRRvupIcqGYHycsZaSexa8Z/NEcc=;
 b=l/wVto+m3VjxV/Yv13JPq3zsH6uhpzX6URHR7o07yZgY81cMZHblflmm4hAFPbqxkp
 Djqze2u+3MValPOsd4xDjdhEpB7ORu43fBUlWqCVXpBzCaw0uavNPALJUftdLmD/tc4N
 o5iVW9JzyFwHTOYjcs4ku48dS6oNdqzad1RMSf7nAnTL+jHpD9pibHQkhQp4B/8+oy6C
 FePWhk2XPs0GOHrFBT+TtvPrgxWMeO7mrKIP0b3qu7og+E1UWDAHEDldMZKYwQ3Mm284
 YLFlbtFSJuevMQlHytO8MmQQrGwppElVWnW0BmI3wibqQhsbHp/kQ4ZqclA6tA4dFHjt
 9C7Q==
X-Gm-Message-State: AOAM531I4Lo+X/svE2rNQbfdhYQeFe6oUkri/f8Opf0RBB01DoYEsjWm
 WxqG656P0NAJ4UEAB7BKjLHmpg==
X-Google-Smtp-Source: ABdhPJyqgv2iExydIc+UmgLZxFWWeg4P2dcwrwIeBrX8vM7l/xXUXy2CvIqw9oAusrkmQ0YvNplT6w==
X-Received: by 2002:a1c:3881:: with SMTP id f123mr3770820wma.178.1592483155742; 
 Thu, 18 Jun 2020 05:25:55 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id c206sm3629346wmf.36.2020.06.18.05.25.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:25:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 04/15] arm64: kvm: Handle calls to prefixed hyp functions
Date: Thu, 18 Jun 2020 13:25:26 +0100
Message-Id: <20200618122537.9625-5-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052557_433935_435CF4F7 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 Andrew Scull <ascull@google.com>, David Brazdil <dbrazdil@google.com>,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Scull <ascull@google.com>

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

Once hyp functions are moved to a hyp object, they will have prefixed symbols.
This change declares and gets the address of the prefixed version for calls to
the hyp functions.

To aid migration, the hyp functions that have not yet moved have their prefixed
versions aliased to their non-prefixed version. This begins with all the hyp
functions being listed and will reduce to none of them once the migration is
complete.

Signed-off-by: Andrew Scull <ascull@google.com>

Extracted kvm_call_hyp nVHE branches into own helper macros.
Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_asm.h  | 19 +++++++++++++++++++
 arch/arm64/include/asm/kvm_host.h | 19 ++++++++++++++++---
 arch/arm64/kernel/image-vars.h    | 15 +++++++++++++++
 3 files changed, 50 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 352aaebf4198..6a682d66a640 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -42,6 +42,24 @@
 
 #include <linux/mm.h>
 
+/*
+ * Translate name of a symbol defined in nVHE hyp to the name seen
+ * by kernel proper. All nVHE symbols are prefixed by the build system
+ * to avoid clashes with the VHE variants.
+ */
+#define kvm_nvhe_sym(sym)	__kvm_nvhe_##sym
+
+#define DECLARE_KVM_VHE_SYM(sym)	extern char sym[]
+#define DECLARE_KVM_NVHE_SYM(sym)	extern char kvm_nvhe_sym(sym)[]
+
+/*
+ * Define a pair of symbols sharing the same name but one defined in
+ * VHE and the other in nVHE hyp implementations.
+ */
+#define DECLARE_KVM_HYP_SYM(sym)		\
+	DECLARE_KVM_VHE_SYM(sym);		\
+	DECLARE_KVM_NVHE_SYM(sym)
+
 /* Translate a kernel address of @sym into its equivalent linear mapping */
 #define kvm_ksym_ref(sym)						\
 	({								\
@@ -50,6 +68,7 @@
 			val = lm_alias(&sym);				\
 		val;							\
 	 })
+#define kvm_ksym_ref_nvhe(sym)	kvm_ksym_ref(kvm_nvhe_sym(sym))
 
 struct kvm;
 struct kvm_vcpu;
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c3e6fcc664b1..e782f98243d3 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -448,6 +448,20 @@ void kvm_arm_resume_guest(struct kvm *kvm);
 
 u64 __kvm_call_hyp(void *hypfn, ...);
 
+#define kvm_call_hyp_nvhe(f, ...)					\
+	do {								\
+		DECLARE_KVM_NVHE_SYM(f);				\
+		__kvm_call_hyp(kvm_ksym_ref_nvhe(f), ##__VA_ARGS__);	\
+	} while(0)
+
+#define kvm_call_hyp_nvhe_ret(f, ...)					\
+	({								\
+		DECLARE_KVM_NVHE_SYM(f);				\
+		typeof(f(__VA_ARGS__)) ret;				\
+		ret = __kvm_call_hyp(kvm_ksym_ref_nvhe(f),		\
+				     ##__VA_ARGS__);			\
+	})
+
 /*
  * The couple of isb() below are there to guarantee the same behaviour
  * on VHE as on !VHE, where the eret to EL1 acts as a context
@@ -459,7 +473,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 			f(__VA_ARGS__);					\
 			isb();						\
 		} else {						\
-			__kvm_call_hyp(kvm_ksym_ref(f), ##__VA_ARGS__); \
+			kvm_call_hyp_nvhe(f, ##__VA_ARGS__);		\
 		}							\
 	} while(0)
 
@@ -471,8 +485,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 			ret = f(__VA_ARGS__);				\
 			isb();						\
 		} else {						\
-			ret = __kvm_call_hyp(kvm_ksym_ref(f),		\
-					     ##__VA_ARGS__);		\
+			ret = kvm_call_hyp_nvhe_ret(f, ##__VA_ARGS__);	\
 		}							\
 									\
 		ret;							\
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index f32b406e90c0..89affa38b143 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,6 +61,21 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
+__kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
+__kvm_nvhe___kvm_flush_vm_context = __kvm_flush_vm_context;
+__kvm_nvhe___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
+__kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
+__kvm_nvhe___kvm_tlb_flush_local_vmid = __kvm_tlb_flush_local_vmid;
+__kvm_nvhe___kvm_tlb_flush_vmid = __kvm_tlb_flush_vmid;
+__kvm_nvhe___kvm_tlb_flush_vmid_ipa = __kvm_tlb_flush_vmid_ipa;
+__kvm_nvhe___kvm_vcpu_run_nvhe = __kvm_vcpu_run_nvhe;
+__kvm_nvhe___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
+__kvm_nvhe___vgic_v3_init_lrs = __vgic_v3_init_lrs;
+__kvm_nvhe___vgic_v3_read_vmcr = __vgic_v3_read_vmcr;
+__kvm_nvhe___vgic_v3_restore_aprs = __vgic_v3_restore_aprs;
+__kvm_nvhe___vgic_v3_save_aprs = __vgic_v3_save_aprs;
+__kvm_nvhe___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
+
 #endif /* CONFIG_KVM */
 
 #endif /* __ARM64_KERNEL_IMAGE_VARS_H */
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
