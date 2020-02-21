Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF6416877C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+Fe9EurUmbKtOaoMwRHp13FPo4rQJzG31MND8sshjc=; b=YrA3k7u9B3ZrCm
	anlwWWFVG30kdUyNaJ3cVGke6u9Gcw4wUDRY68idjKW3U9rpXFu5WvxOKVP1aIb61qdIWKefCbOYa
	Ts1Q7YOlGnKIcukkbO7sCpRaofVDwfNY7sSISp0W+r1xr8aGSOWkVTEYi94yBKOBwJl90K2h7HQVQ
	MVwwpaoPAitskxNe1eHkjsRzvKDEytl+xd9zA4F7Z0raWhuz5V6sFp+jpm9ASYLvaPqNtsC9YXD2j
	+YaCoUQUGRrQOxlolJO39tXAJMRC5D0nyt11s4b4+J7Plt9V9M+KdlgVgXkNEzVEju6AIhI8o41qx
	JPOVd2l3b7c+XmBxUPqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5E5p-00058s-TM; Fri, 21 Feb 2020 19:36:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5E5L-0004sj-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 800A8FEC;
 Fri, 21 Feb 2020 11:35:38 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ADCEE3F6CF;
 Fri, 21 Feb 2020 11:35:37 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 2/5] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
Date: Fri, 21 Feb 2020 19:35:29 +0000
Message-Id: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582312530.git.robin.murphy@arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_113540_045739_AB372925 
X-CRM114-Status: GOOD (  10.58  )
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

v2: no change, just resending for completeness

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
