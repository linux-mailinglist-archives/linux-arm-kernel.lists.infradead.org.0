Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EADC9CEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BwQu2F6mQlXbCFYxjPt+CmcXNjiZ3mQqllziFvRBdDo=; b=KajPwB1luCoIQbCgqrz7Q5iy0l
	byu7cL12NhmRqilBTGdHavIpyXOjHqg8C7oineU6JfmW1TtMCPRyZxdcHyq1DsjjkYHroukYoAJSD
	L0AyvxcD8oaI396iaIkmmunRw8AgY0xigbleINW+2QQBzO7wcsaH8QAEpVMhUM2zE1Di5A2BOAE+l
	+am6bEuRp+AoVGURSxtcljWf4mzZAfczrUzNJEXxCT920glQ6nxIYg0mCNLdG74Pr729AWA6F2Oub
	IlM4fX+B1+xm3QsY4gifLxJZST8+WvjeoG/DmLtqmUV9BhNsvrSQLwGRnDREwPbWC4cXF4W8f1N8m
	tttxWllw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz2J-0007Pa-1H; Thu, 03 Oct 2019 11:12:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz1v-0007BS-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:12:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3E251597;
 Thu,  3 Oct 2019 04:12:18 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3C843F706;
 Thu,  3 Oct 2019 04:12:17 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] docs/arm64: elf_hwcaps: sort the HWCAP{,
 2} documentation by ascending value
Date: Thu,  3 Oct 2019 12:12:09 +0100
Message-Id: <20191003111211.483-3-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191003111211.483-1-julien.grall@arm.com>
References: <20191003111211.483-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041219_845337_77867F1C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jonathan Corbet <corbet@lwn.net>, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Part of the hardware capabilities documented in elf_hwcap.rst are
ordered following the definition in the header
arch/arm64/include/uapi/asm/hwcap.h but others seems to be documented
in random order.

To make easier to match against the definition in the header, they are
now sorted in the same order as they are defined in header. I.e.,
HWCAP first by ascending value, and then HWCAP2 in the similar fashion.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 Documentation/arm64/elf_hwcaps.rst | 64 +++++++++++++++++++-------------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
index 91f79529c58c..9ee7f8ff1fae 100644
--- a/Documentation/arm64/elf_hwcaps.rst
+++ b/Documentation/arm64/elf_hwcaps.rst
@@ -119,10 +119,6 @@ HWCAP_LRCPC
 HWCAP_DCPOP
     Functionality implied by ID_AA64ISAR1_EL1.DPB == 0b0001.
 
-HWCAP2_DCPODP
-
-    Functionality implied by ID_AA64ISAR1_EL1.DPB == 0b0010.
-
 HWCAP_SHA3
     Functionality implied by ID_AA64ISAR0_EL1.SHA3 == 0b0001.
 
@@ -141,30 +137,6 @@ HWCAP_SHA512
 HWCAP_SVE
     Functionality implied by ID_AA64PFR0_EL1.SVE == 0b0001.
 
-HWCAP2_SVE2
-
-    Functionality implied by ID_AA64ZFR0_EL1.SVEVer == 0b0001.
-
-HWCAP2_SVEAES
-
-    Functionality implied by ID_AA64ZFR0_EL1.AES == 0b0001.
-
-HWCAP2_SVEPMULL
-
-    Functionality implied by ID_AA64ZFR0_EL1.AES == 0b0010.
-
-HWCAP2_SVEBITPERM
-
-    Functionality implied by ID_AA64ZFR0_EL1.BitPerm == 0b0001.
-
-HWCAP2_SVESHA3
-
-    Functionality implied by ID_AA64ZFR0_EL1.SHA3 == 0b0001.
-
-HWCAP2_SVESM4
-
-    Functionality implied by ID_AA64ZFR0_EL1.SM4 == 0b0001.
-
 HWCAP_ASIMDFHM
    Functionality implied by ID_AA64ISAR0_EL1.FHM == 0b0001.
 
@@ -180,10 +152,6 @@ HWCAP_ILRCPC
 HWCAP_FLAGM
     Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0001.
 
-HWCAP2_FLAGM2
-
-    Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0010.
-
 HWCAP_SSBS
     Functionality implied by ID_AA64PFR1_EL1.SSBS == 0b0010.
 
@@ -197,6 +165,38 @@ HWCAP_PACG
     ID_AA64ISAR1_EL1.GPI == 0b0001, as described by
     Documentation/arm64/pointer-authentication.rst.
 
+HWCAP2_DCPODP
+
+    Functionality implied by ID_AA64ISAR1_EL1.DPB == 0b0010.
+
+HWCAP2_SVE2
+
+    Functionality implied by ID_AA64ZFR0_EL1.SVEVer == 0b0001.
+
+HWCAP2_SVEAES
+
+    Functionality implied by ID_AA64ZFR0_EL1.AES == 0b0001.
+
+HWCAP2_SVEPMULL
+
+    Functionality implied by ID_AA64ZFR0_EL1.AES == 0b0010.
+
+HWCAP2_SVEBITPERM
+
+    Functionality implied by ID_AA64ZFR0_EL1.BitPerm == 0b0001.
+
+HWCAP2_SVESHA3
+
+    Functionality implied by ID_AA64ZFR0_EL1.SHA3 == 0b0001.
+
+HWCAP2_SVESM4
+
+    Functionality implied by ID_AA64ZFR0_EL1.SM4 == 0b0001.
+
+HWCAP2_FLAGM2
+
+    Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0010.
+
 HWCAP2_FRINT
 
     Functionality implied by ID_AA64ISAR1_EL1.FRINTTS == 0b0001.
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
