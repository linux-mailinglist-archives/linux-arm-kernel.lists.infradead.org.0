Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C33DCCA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NC7c1jTboBte6cDcq8sPURDd5vksa60jm+DEN/gRqJg=; b=Yb8lletfw3Xuz6DdtNW4qSoUPT
	KA6tKf91ATkOT5RvnkUrNALjyKx+XpUjR9d0gIhvK/OGI1yhGZiCjLkZXnEPQZKL9qwWLzsbAjweZ
	g+i7E0FRmUDvDq/AaSEceMRA93DqNHprOpwvKdICNab0rPKgJtqN73h53c/fO3G/wFTIxdaqLvvY1
	9g5JZuiOJn0PMe24XNdPvx3TDDf1GdMKLMZF+e8FfhYkbLItpXyR/ta3OH3Lq0zJckC3HoZ45IsYC
	5Jroc200/gg+UrdbD1Xn1t9LicvxvKWBrUjOUBq4FlxjiGtfXBtZMskS7p63STcILmeep46c6KymC
	aQBoPFqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW2h-0005GO-87; Fri, 18 Oct 2019 17:27:59 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW1Y-0004eu-87
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:26:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 031681396;
 Fri, 18 Oct 2019 10:26:47 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 388403F718;
 Fri, 18 Oct 2019 10:26:44 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/12] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Date: Fri, 18 Oct 2019 18:25:37 +0100
Message-Id: <1571419545-20401-5-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_102649_360595_08A6A3CD 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d71be2b6c0e1 ("arm64: cpufeature: Detect SSBS and advertise
to userspace") exposes ID_AA64PFR1_EL1 to userspace, but didn't
update the documentation to match.

Add it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Note to maintainers:

 * This patch has been racing with various other attempts to fix
   the same documentation in the meantime.

   Since this patch only fixes the documenting for pre-existing
   features, it can safely be dropped if appropriate.

   The _new_ documentation relating to BTI feature reporting
   is in a subsequent patch, and needs to be retained.
---
 Documentation/arm64/cpu-feature-registers.rst | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index 2955287..b86828f 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -168,8 +168,15 @@ infrastructure:
      +------------------------------+---------+---------+
 
 
-  3) MIDR_EL1 - Main ID Register
+  3) ID_AA64PFR1_EL1 - Processor Feature Register 1
+     +------------------------------+---------+---------+
+     | Name                         |  bits   | visible |
+     +------------------------------+---------+---------+
+     | SSBS                         | [7-4]   |    y    |
+     +------------------------------+---------+---------+
+
 
+  4) MIDR_EL1 - Main ID Register
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
@@ -188,7 +195,7 @@ infrastructure:
    as available on the CPU where it is fetched and is not a system
    wide safe value.
 
-  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
+  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
@@ -210,7 +217,7 @@ infrastructure:
      | DPB                          | [3-0]   |    y    |
      +------------------------------+---------+---------+
 
-  5) ID_AA64MMFR2_EL1 - Memory model feature register 2
+  6) ID_AA64MMFR2_EL1 - Memory model feature register 2
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
@@ -218,7 +225,7 @@ infrastructure:
      | AT                           | [35-32] |    y    |
      +------------------------------+---------+---------+
 
-  6) ID_AA64ZFR0_EL1 - SVE feature ID register 0
+  7) ID_AA64ZFR0_EL1 - SVE feature ID register 0
 
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
