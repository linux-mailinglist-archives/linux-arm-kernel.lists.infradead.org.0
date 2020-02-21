Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A181C16877F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtvSrwdJge50H0MVVt+r6PP0R6KOHFdZNunNiSDK9tg=; b=tJci6oNTVDu1zP
	tSAmLNAE/lfQnlLDjOLGEjFeIYeqZu2V8h31WfAtD+4O47sdXiuEbcrj9BRlrPYVI+Ip164IVsINI
	VMWbcega90cJ9YIQGrBhLL1x9bSumbycOsP5oq9uIMFHwABw5vbvEMrQkD+kSd/PYmZtcskcavpmf
	GOL9XEYVnRVzzu3jA6qClEAR035lE/wB+h8XNxaTBe4Xe8YXsUklprH2WzfdO+IVrLKNVATtP3zhg
	4u8cyxhnso8rHKe8JtJ85i4vpF7zaZmKUgPQti864RuAP3+cj1559x4bHw6q2fB03njecPGqVnpKm
	aYcZv0Nydo9glEJlc89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5E6L-0005dG-3v; Fri, 21 Feb 2020 19:36:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5E5O-0004te-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:35:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F289101E;
 Fri, 21 Feb 2020 11:35:39 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B57D83F6CF;
 Fri, 21 Feb 2020 11:35:38 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 3/5] dt-bindings: ARM: Clean up PMU compatible list
Date: Fri, 21 Feb 2020 19:35:30 +0000
Message-Id: <397df7accd295d2f743830591facbd2fb99208af.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582312530.git.robin.murphy@arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_113542_111529_E5CAAAE9 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "alpha by vendor, reverse-alpha by model" sorting of compatibles
that we seem to have ended up with is decidedly odd. Make it less so.

Also copy the comment from the generic "arm,armv8" CPU binding to help
clarify that the "arm,armv8-pmuv3" binding is rather intended to be a
counterpart to that, for describing implementations without a specific
microarchitecture like the AEMv8 software model.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v3: new - can be squashed or reordered with #2/5 if desired

 .../devicetree/bindings/arm/pmu.yaml          | 50 +++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index cc52195d0e9e..97df36d301c9 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -20,36 +20,36 @@ properties:
     items:
       - enum:
           - apm,potenza-pmu
-          - arm,armv8-pmuv3
-          - arm,neoverse-n1-pmu
-          - arm,neoverse-e1-pmu
-          - arm,cortex-a77-pmu
-          - arm,cortex-a76-pmu
-          - arm,cortex-a75-pmu
-          - arm,cortex-a73-pmu
-          - arm,cortex-a72-pmu
-          - arm,cortex-a65-pmu
-          - arm,cortex-a57-pmu
-          - arm,cortex-a55-pmu
-          - arm,cortex-a53-pmu
-          - arm,cortex-a35-pmu
-          - arm,cortex-a34-pmu
-          - arm,cortex-a32-pmu
-          - arm,cortex-a17-pmu
-          - arm,cortex-a15-pmu
-          - arm,cortex-a12-pmu
-          - arm,cortex-a9-pmu
-          - arm,cortex-a8-pmu
-          - arm,cortex-a7-pmu
-          - arm,cortex-a5-pmu
-          - arm,arm11mpcore-pmu
-          - arm,arm1176-pmu
+          - arm,armv8-pmuv3 # Only for s/w models
           - arm,arm1136-pmu
+          - arm,arm1176-pmu
+          - arm,arm11mpcore-pmu
+          - arm,cortex-a5-pmu
+          - arm,cortex-a7-pmu
+          - arm,cortex-a8-pmu
+          - arm,cortex-a9-pmu
+          - arm,cortex-a12-pmu
+          - arm,cortex-a15-pmu
+          - arm,cortex-a17-pmu
+          - arm,cortex-a32-pmu
+          - arm,cortex-a34-pmu
+          - arm,cortex-a35-pmu
+          - arm,cortex-a53-pmu
+          - arm,cortex-a55-pmu
+          - arm,cortex-a57-pmu
+          - arm,cortex-a65-pmu
+          - arm,cortex-a72-pmu
+          - arm,cortex-a73-pmu
+          - arm,cortex-a75-pmu
+          - arm,cortex-a76-pmu
+          - arm,cortex-a77-pmu
+          - arm,neoverse-e1-pmu
+          - arm,neoverse-n1-pmu
           - brcm,vulcan-pmu
           - cavium,thunder-pmu
+          - qcom,krait-pmu
           - qcom,scorpion-pmu
           - qcom,scorpion-mp-pmu
-          - qcom,krait-pmu
 
   interrupts:
     # Don't know how many CPUs, so no constraints to specify
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
