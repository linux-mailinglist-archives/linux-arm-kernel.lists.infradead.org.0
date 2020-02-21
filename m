Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC16F16877E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCQpiJf6KNERRRSBwjGlIYoLm9RunxaZ7tFpjasNGpY=; b=ECWasR+9aAb8hu
	BxZUibJa8DxneCffwqJ8h75tiBDaRs+k8l7fuVYA16sC6bw/RVxXYiu6DhzJAkk6VSZZmybgy0qke
	Nz8Uvi45ojnoxCl83GHvtutdyH67WlI3oLQ3IRQz589lkth9HrH3dknjHRX6I59Pnaci/me9FM0aL
	cg9Te3Ny4wFTlpLoT56qcguEb2FIytlX9sM2ujDEIl2wgj6ItAlcWrQaHbKdKxQGpipdx3Z4T1o93
	/hfEOmU3eCSzSoc91OdFbB2UNQfXJT6+NITpUxAPLcqRIYsY+ALwNbB3AkBaDXdzPXO4CtTansD8a
	KytD6Rc2pRCOrupGoIpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5E63-0005QO-HW; Fri, 21 Feb 2020 19:36:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5E5L-0004sk-Ux
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:35:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 788B531B;
 Fri, 21 Feb 2020 11:35:37 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AC3313F6CF;
 Fri, 21 Feb 2020 11:35:36 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 1/5] dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
Date: Fri, 21 Feb 2020 19:35:28 +0000
Message-Id: <79ef74956befe089d7994ad24ab25132e95e9ac9.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582312530.git.robin.murphy@arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_113540_046116_9BC3A91C 
X-CRM114-Status: GOOD (  10.45  )
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

The CPU group has been busy since we last updated these bindings...
Add definitions for all the new Cortex-A and Neoverse cores now
available.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: no change, just resending for completeness

 Documentation/devicetree/bindings/arm/cpus.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 7a9c3ce2dbef..41e22b5320da 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -123,11 +123,18 @@ properties:
       - arm,cortex-a12
       - arm,cortex-a15
       - arm,cortex-a17
+      - arm,cortex-a32
+      - arm,cortex-a34
+      - arm,cortex-a35
       - arm,cortex-a53
       - arm,cortex-a55
       - arm,cortex-a57
+      - arm,cortex-a65
       - arm,cortex-a72
       - arm,cortex-a73
+      - arm,cortex-a75
+      - arm,cortex-a76
+      - arm,cortex-a77
       - arm,cortex-m0
       - arm,cortex-m0+
       - arm,cortex-m1
@@ -136,6 +143,8 @@ properties:
       - arm,cortex-r4
       - arm,cortex-r5
       - arm,cortex-r7
+      - arm,neoverse-e1
+      - arm,neoverse-n1
       - brcm,brahma-b15
       - brcm,brahma-b53
       - brcm,vulcan
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
