Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEA51B25A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 14:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O0wFr3xPElp9clt/mN4ZZbi/BBZdFAY6Kaznr/C5dLY=; b=huL
	kB+Q+boyhU/zADafGiRDXaB3o3gxPRL6I4N5F2uYgE1bVk+o62/mSWkt9nmI1Pt+cyuTYmP7/b+VZ
	dqCGA5FS/3q19LRWpGktAufQIzy9bZo/qbed0Cs/QMWaziPY9Is6p4wnzCj2CCgsSkUNhCFXAnutj
	sDPE01M53Mv2G+Nie4HjnC4S8dk6FGXYjm8qhk9gvhAiqPWXTn/OpJMVfLwErKraDpZpmnWkW+yvc
	EL+zeYbSgCfxzvs2bgEfM9vb9IQwsjs8HnzvRxvdb48AyJtefuKcNeiT2TP25sxOh528MvdUJtYh+
	ROa+1gtGN99238ioSX5uyem6l5seLaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrjY-0000oW-Pg; Tue, 21 Apr 2020 12:10:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrjO-0000nG-26
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 12:10:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6997B31B;
 Tue, 21 Apr 2020 05:10:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 769063F68F;
 Tue, 21 Apr 2020 05:10:21 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCH] arm64: sync kernel APIAKey when installing
Date: Tue, 21 Apr 2020 13:10:14 +0100
Message-Id: <20200421121014.53120-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_051026_145073_5F9A70F4 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Marc Zyngier <maz@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A direct write to a APxxKey_EL1 register requires a context
synchronization event to ensure that indirect reads made by subsequent
instructions (e.g. AUTIASP, PACIASP) observe the new value.

When we initialize the boot task's APIAKey in boot_init_stack_canary()
via ptrauth_keys_switch_kernel() we miss the necessary ISB, and so there
is a window where instructions are not guaranteed to use the new APIAKey
value. This has been observed to result in boot-time crashes where
PACIASP and AUTIASP within a function used a mixture of the old and new
key values.

Fix this by having ptrauth_keys_switch_kernel() synchronize the new key
value with an ISB. At the same time, __ptrauth_key_install() is renamed
to __ptrauth_key_install_nosync() so that it is obvious that this
performs no synchronization itself.

Fixes: 28321582334c261c ("arm64: initialize ptrauth keys for kernel booting task")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reported-by: Will Deacon <will@kernel.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/pointer_auth.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 70c47156e54b..c6b4f0603024 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -47,7 +47,7 @@ static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
 		get_random_bytes(&keys->apga, sizeof(keys->apga));
 }
 
-#define __ptrauth_key_install(k, v)				\
+#define __ptrauth_key_install_nosync(k, v)			\
 do {								\
 	struct ptrauth_key __pki_v = (v);			\
 	write_sysreg_s(__pki_v.lo, SYS_ ## k ## KEYLO_EL1);	\
@@ -62,8 +62,11 @@ static __always_inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel
 
 static __always_inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kernel *keys)
 {
-	if (system_supports_address_auth())
-		__ptrauth_key_install(APIA, keys->apia);
+	if (!system_supports_address_auth())
+		return;
+
+	__ptrauth_key_install_nosync(APIA, keys->apia);
+	isb();
 }
 
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
