Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B866188841
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMFDpzwBQTHES92v8czoGjdgh+nMJX84ZsUIj0/6fs0=; b=GxfYXUG8u6qMHb
	hN7kEQFXoTCBDim8TdHBlZU1AuhY9Hw1/cgiP3hQQUbd4UyAMQ0FCG3mmbSLKTCx93XJbs5I3eY3C
	CnTnvQfq9/v6QTvnNDA42+wzeERe2ziRj0om5Z6aaJZYfbSwsL/lD7gnI8TEad61BIWUFvK5L0W4L
	pUw7lP0PIXdPbo9Uw+50MGytyCdGnytz4yaONOd52yZeAWw3rtun9W6xBUotSFkke2c9KA0K6o/Gw
	HgNpvFXeVtomyNlC6U+PWQ5TgfauTyW2bzkCn4/4ls9xlWythsPuV/4rVlbCUUqQ8xHs7D3+8HMtq
	Fw2ffcJJYzIgw5H4aDNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDcN-00024k-HG; Tue, 17 Mar 2020 14:54:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDbz-0001up-5s
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:54:32 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5254620735;
 Tue, 17 Mar 2020 14:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584456870;
 bh=lCdLEJ5w0ZRwfZb7Xc7NwaWoCZT37OUHOWlWSj57v6g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Djw9jFOmPVxugYNlt7C0HBMWT+aNtPhjpQIY7HubEC1HmKNR2QVXCfav5TZcdI21d
 MHQRonO5QctE4EIaQ93hoVZIqzEuDSKIFY7/q11VB9V+nNIYRpm4RTp3qnuOEHeme/
 iaJDADaRIHzNun8GSiXS2ZcLmFAmkQl8YUKWsR/o=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jEDbw-000AML-CZ; Tue, 17 Mar 2020 15:54:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 02/17] docs: arm64: booting.rst: get rid of some warnings
Date: Tue, 17 Mar 2020 15:54:11 +0100
Message-Id: <7f4f13e03c2d0c5a30db4eb209eaa5aef339de94.1584456635.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1584456635.git.mchehab+huawei@kernel.org>
References: <cover.1584456635.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_075431_259599_87A9620A 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Get rid of those warnings:

    Documentation/arm64/booting.rst:253: WARNING: Unexpected indentation.
    Documentation/arm64/booting.rst:259: WARNING: Block quote ends without a blank line; unexpected unindent.

By adding an extra blank lines where needed.

While here, use list markups on some places, as otherwise Sphinx
will consider the next lines as continuation of the privious ones.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/arm64/booting.rst | 36 ++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
index a3f1a47b6f1c..e50186092948 100644
--- a/Documentation/arm64/booting.rst
+++ b/Documentation/arm64/booting.rst
@@ -173,7 +173,9 @@ Before jumping into the kernel, the following conditions must be met:
 - Caches, MMUs
 
   The MMU must be off.
+
   Instruction cache may be on or off.
+
   The address range corresponding to the loaded kernel image must be
   cleaned to the PoC. In the presence of a system cache or other
   coherent masters with caches enabled, this will typically require
@@ -238,6 +240,7 @@ Before jumping into the kernel, the following conditions must be met:
   - The DT or ACPI tables must describe a GICv2 interrupt controller.
 
   For CPUs with pointer authentication functionality:
+
   - If EL3 is present:
 
     - SCR_EL3.APK (bit 16) must be initialised to 0b1
@@ -249,18 +252,22 @@ Before jumping into the kernel, the following conditions must be met:
     - HCR_EL2.API (bit 41) must be initialised to 0b1
 
   For CPUs with Activity Monitors Unit v1 (AMUv1) extension present:
+
   - If EL3 is present:
-    CPTR_EL3.TAM (bit 30) must be initialised to 0b0
-    CPTR_EL2.TAM (bit 30) must be initialised to 0b0
-    AMCNTENSET0_EL0 must be initialised to 0b1111
-    AMCNTENSET1_EL0 must be initialised to a platform specific value
-    having 0b1 set for the corresponding bit for each of the auxiliary
-    counters present.
+
+    - CPTR_EL3.TAM (bit 30) must be initialised to 0b0
+    - CPTR_EL2.TAM (bit 30) must be initialised to 0b0
+    - AMCNTENSET0_EL0 must be initialised to 0b1111
+    - AMCNTENSET1_EL0 must be initialised to a platform specific value
+      having 0b1 set for the corresponding bit for each of the auxiliary
+      counters present.
+
   - If the kernel is entered at EL1:
-    AMCNTENSET0_EL0 must be initialised to 0b1111
-    AMCNTENSET1_EL0 must be initialised to a platform specific value
-    having 0b1 set for the corresponding bit for each of the auxiliary
-    counters present.
+
+    - AMCNTENSET0_EL0 must be initialised to 0b1111
+    - AMCNTENSET1_EL0 must be initialised to a platform specific value
+      having 0b1 set for the corresponding bit for each of the auxiliary
+      counters present.
 
 The requirements described above for CPU mode, caches, MMUs, architected
 timers, coherency and system registers apply to all CPUs.  All CPUs must
@@ -304,7 +311,8 @@ following manner:
   Documentation/devicetree/bindings/arm/psci.yaml.
 
 - Secondary CPU general-purpose register settings
-  x0 = 0 (reserved for future use)
-  x1 = 0 (reserved for future use)
-  x2 = 0 (reserved for future use)
-  x3 = 0 (reserved for future use)
+
+  - x0 = 0 (reserved for future use)
+  - x1 = 0 (reserved for future use)
+  - x2 = 0 (reserved for future use)
+  - x3 = 0 (reserved for future use)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
