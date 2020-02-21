Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F11682C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSWWIWg1KbMiBaFIZUHRKk/Y3ddzIKEa3ItT846dMyw=; b=m6nyNmSA1DpnRG
	ReNg5XZtPZIeMhS/4lXc4/J0J0Ox7Weo1v8wvSCgA5ugdgp2SW1W6tkvxTwP2tMZzV6ByvUgHB73r
	koKH1SHqDkH42Ps6co/84VCApaMlja44duu/OO0eQVCLfVTOPBQpJNz1n2N80NV9PFrFObPKtPPR3
	MeCztnHCFvqT/bKuc2WnBjWt1SAu3cJICXrT5PXP1CE8tszER7LUfGc4cPeg+wpdqZgNGGd2gD+ik
	/GQcsWXInzv9txnQZ5UhmXe/ySeKIVuwTpEZv/t9Z6GuM8OYdQLYiLrgoT1Gsahl7fFw/UpR8Vwea
	9PQQBCdLpiHt2BraUCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AoH-0002ZZ-QA; Fri, 21 Feb 2020 16:05:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AnY-0001Gc-MX
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:05:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75189FEC;
 Fri, 21 Feb 2020 08:05:04 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A05FA3F68F;
 Fri, 21 Feb 2020 08:05:03 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH 2/3] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
Date: Fri, 21 Feb 2020 16:04:57 +0000
Message-Id: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582300927.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582300927.git.robin.murphy@arm.com>
References: <cover.1582300927.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_080504_790709_E88F94F8 
X-CRM114-Status: GOOD (  10.86  )
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

Add new PMU definitions to correspond with the CPU bindings.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index 52ae094ce330..cc52195d0e9e 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -21,11 +21,20 @@ properties:
       - enum:
           - apm,potenza-pmu
           - arm,armv8-pmuv3
+          - arm,neoverse-n1-pmu
+          - arm,neoverse-e1-pmu
+          - arm,cortex-a77-pmu
+          - arm,cortex-a76-pmu
+          - arm,cortex-a75-pmu
           - arm,cortex-a73-pmu
           - arm,cortex-a72-pmu
+          - arm,cortex-a65-pmu
           - arm,cortex-a57-pmu
+          - arm,cortex-a55-pmu
           - arm,cortex-a53-pmu
           - arm,cortex-a35-pmu
+          - arm,cortex-a34-pmu
+          - arm,cortex-a32-pmu
           - arm,cortex-a17-pmu
           - arm,cortex-a15-pmu
           - arm,cortex-a12-pmu
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
