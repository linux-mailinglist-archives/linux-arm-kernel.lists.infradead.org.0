Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEDF1884E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AREExTjH20+EF3iJgCPcOg31QG60m7tdp2P/j2Qiz/4=; b=cgex1mQ/AAypD+
	kZL6kNp6hS4bidm1uLsh1Kp5EoOZbkZskkjhLlQcXADcXZVuzZ71Q1ESmBNgdzmTiU/SLFHdeSHbC
	4CQywZamTbZ6hzfIQtzJwiqG4hHZWpZgDdATrar0lYRraMvc97yauQx/41VsWUwHEUUsnLrQPyKc+
	Jq9R7Pa51cJQGnavGfxl5VMEiFNw+qlUMgf/efnyvfvmzPqlsADXishLA9XDYdxRAZvmCheshASRR
	qUO7WiUHSra9IOIRux38Satm6W09T6jQoNuGCq6GYIHEXZYScnD5PSGVxJkQCGATKVOHRbm3qEtxz
	nYIisF5oOwIvxdPlDiVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBzw-0003Rz-P0; Tue, 17 Mar 2020 13:11:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBzl-0003Qx-8L
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:10:59 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 246E92077B;
 Tue, 17 Mar 2020 13:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584450656;
 bh=OpWwr+Km4TTAToy65wz5kahjfMtDK5MxnhQXtb2oJcY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Kl8fBUmrp3OvNgwKJOtJt/PT90JpUEB3vX7kd/7VsSBVfsl3/xX/QrBIv2MNpFe4u
 I3Wvx9p3nzZb9ODwkOjJsZvS+XdsCFRlvNkcuIogMe4dDffgLRo93z7hED6V6jcWqG
 C3XcWYTUlKORwDI37Vf4lPT0g+r7O4HkCB9Zsn6Q=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jEBzh-0006SO-RR; Tue, 17 Mar 2020 14:10:53 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 09/12] docs: fix broken references for ReST files that moved
 around
Date: Tue, 17 Mar 2020 14:10:48 +0100
Message-Id: <6ea0adf72ae55935f3649f87e4b596830b616594.1584450500.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1584450500.git.mchehab+huawei@kernel.org>
References: <cover.1584450500.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_061057_341737_477967E3 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>, Maxime Ripard <mripard@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-crypto@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some broken references happened due to shifting files around
and ReST renames. Those can't be auto-fixed by the script,
so let's fix them manually.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/doc-guide/maintainer-profile.rst      | 2 +-
 Documentation/virt/kvm/mmu.rst                      | 2 +-
 Documentation/virt/kvm/review-checklist.rst         | 2 +-
 arch/x86/kvm/mmu/mmu.c                              | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 +-
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c | 2 +-
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c   | 2 +-
 drivers/media/v4l2-core/v4l2-fwnode.c               | 2 +-
 include/uapi/linux/kvm.h                            | 4 ++--
 tools/include/uapi/linux/kvm.h                      | 4 ++--
 11 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/Documentation/doc-guide/maintainer-profile.rst b/Documentation/doc-guide/maintainer-profile.rst
index 5afc0ddba40a..755d39f0d407 100644
--- a/Documentation/doc-guide/maintainer-profile.rst
+++ b/Documentation/doc-guide/maintainer-profile.rst
@@ -6,7 +6,7 @@ Documentation subsystem maintainer entry profile
 The documentation "subsystem" is the central coordinating point for the
 kernel's documentation and associated infrastructure.  It covers the
 hierarchy under Documentation/ (with the exception of
-Documentation/device-tree), various utilities under scripts/ and, at least
+Documentation/devicetree), various utilities under scripts/ and, at least
 some of the time, LICENSES/.
 
 It's worth noting, though, that the boundaries of this subsystem are rather
diff --git a/Documentation/virt/kvm/mmu.rst b/Documentation/virt/kvm/mmu.rst
index 60981887d20b..46126ecc70f7 100644
--- a/Documentation/virt/kvm/mmu.rst
+++ b/Documentation/virt/kvm/mmu.rst
@@ -319,7 +319,7 @@ Handling a page fault is performed as follows:
 
  - If both P bit and R/W bit of error code are set, this could possibly
    be handled as a "fast page fault" (fixed without taking the MMU lock).  See
-   the description in Documentation/virt/kvm/locking.txt.
+   the description in Documentation/virt/kvm/locking.rst.
 
  - if needed, walk the guest page tables to determine the guest translation
    (gva->gpa or ngpa->gpa)
diff --git a/Documentation/virt/kvm/review-checklist.rst b/Documentation/virt/kvm/review-checklist.rst
index 1f86a9d3f705..dc01aea4057b 100644
--- a/Documentation/virt/kvm/review-checklist.rst
+++ b/Documentation/virt/kvm/review-checklist.rst
@@ -10,7 +10,7 @@ Review checklist for kvm patches
 2.  Patches should be against kvm.git master branch.
 
 3.  If the patch introduces or modifies a new userspace API:
-    - the API must be documented in Documentation/virt/kvm/api.txt
+    - the API must be documented in Documentation/virt/kvm/api.rst
     - the API must be discoverable using KVM_CHECK_EXTENSION
 
 4.  New state must include support for save/restore.
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 560e85ebdf22..2bd9f35e9e91 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3586,7 +3586,7 @@ static bool fast_page_fault(struct kvm_vcpu *vcpu, gpa_t cr2_or_gpa,
 		/*
 		 * Currently, fast page fault only works for direct mapping
 		 * since the gfn is not stable for indirect shadow page. See
-		 * Documentation/virt/kvm/locking.txt to get more detail.
+		 * Documentation/virt/kvm/locking.rst to get more detail.
 		 */
 		fault_handled = fast_pf_fix_direct_spte(vcpu, sp,
 							iterator.sptep, spte,
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index a5fd8975f3d3..a6abb701bfc6 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -8,7 +8,7 @@
  * This file add support for AES cipher with 128,192,256 bits keysize in
  * CBC and ECB mode.
  *
- * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ * You could find a link for the datasheet in Documentation/arm/sunxi.rst
  */
 
 #include <linux/crypto.h>
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index 3e4e4bbda34c..b957061424a1 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -7,7 +7,7 @@
  *
  * Core file which registers crypto algorithms supported by the CryptoEngine.
  *
- * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ * You could find a link for the datasheet in Documentation/arm/sunxi.rst
  */
 #include <linux/clk.h>
 #include <linux/crypto.h>
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
index 84d52fc3a2da..c89cb2ee2496 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
@@ -8,7 +8,7 @@
  * This file add support for AES cipher with 128,192,256 bits keysize in
  * CBC and ECB mode.
  *
- * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ * You could find a link for the datasheet in Documentation/arm/sunxi.rst
  */
 
 #include <linux/crypto.h>
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 6b301afffd11..8ba4f9c81dac 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -7,7 +7,7 @@
  *
  * Core file which registers crypto algorithms supported by the SecuritySystem
  *
- * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ * You could find a link for the datasheet in Documentation/arm/sunxi.rst
  */
 #include <linux/clk.h>
 #include <linux/crypto.h>
diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
index 97f0f8b23b5d..8a1e1b95b379 100644
--- a/drivers/media/v4l2-core/v4l2-fwnode.c
+++ b/drivers/media/v4l2-core/v4l2-fwnode.c
@@ -980,7 +980,7 @@ static int v4l2_fwnode_reference_parse(struct device *dev,
  *
  * THIS EXAMPLE EXISTS MERELY TO DOCUMENT THIS FUNCTION. DO NOT USE IT AS A
  * REFERENCE IN HOW ACPI TABLES SHOULD BE WRITTEN!! See documentation under
- * Documentation/acpi/dsd instead and especially graph.txt,
+ * Documentation/firmware-guide/acpi/dsd/ instead and especially graph.txt,
  * data-node-references.txt and leds.txt .
  *
  *	Scope (\_SB.PCI0.I2C2)
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 5e6234cb25a6..704bd4cd3689 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -116,7 +116,7 @@ struct kvm_irq_level {
 	 * ACPI gsi notion of irq.
 	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
 	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
-	 * For ARM: See Documentation/virt/kvm/api.txt
+	 * For ARM: See Documentation/virt/kvm/api.rst
 	 */
 	union {
 		__u32 irq;
@@ -1106,7 +1106,7 @@ struct kvm_xen_hvm_config {
  *
  * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
  * the irqfd to operate in resampling mode for level triggered interrupt
- * emulation.  See Documentation/virt/kvm/api.txt.
+ * emulation.  See Documentation/virt/kvm/api.rst.
  */
 #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
 
diff --git a/tools/include/uapi/linux/kvm.h b/tools/include/uapi/linux/kvm.h
index 4b95f9a31a2f..e5f32fcec68f 100644
--- a/tools/include/uapi/linux/kvm.h
+++ b/tools/include/uapi/linux/kvm.h
@@ -116,7 +116,7 @@ struct kvm_irq_level {
 	 * ACPI gsi notion of irq.
 	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
 	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
-	 * For ARM: See Documentation/virt/kvm/api.txt
+	 * For ARM: See Documentation/virt/kvm/api.rst
 	 */
 	union {
 		__u32 irq;
@@ -1100,7 +1100,7 @@ struct kvm_xen_hvm_config {
  *
  * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
  * the irqfd to operate in resampling mode for level triggered interrupt
- * emulation.  See Documentation/virt/kvm/api.txt.
+ * emulation.  See Documentation/virt/kvm/api.rst.
  */
 #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
