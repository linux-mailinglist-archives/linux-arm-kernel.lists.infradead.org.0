Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0162A6293
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSUeJKA68GxYBn1YPz9vt63Cehd1oR8p5z1Bo8ujB2o=; b=IvleNAteuZh4ji
	ZhLMDUOVyeZfY2iDligULHmUZWO2uuYWGtoIsNTiCX8ATA3R9uLCS8Wkpmde/10CmBMPU/8H41NRO
	pyUspu27ckcjHRbqQgsfpnU1SCZmKuY7L6SOHWMU6Ehi69UJ9ldYNnaws47QHqmjoUW8OqzYSnmtx
	BZpQkYr2KHC4n8nAmkQl4Ih2+9tZkT+50lC1iTmMFLdDnGW7qIvQj6I49kKYy7UcIWeJNRDUQSNlS
	jN443ZE9e1fJxavf/od4TQbB3K2DlAynKUv+NHF1u0I3w5sc4zdjUHK1WaCJViEOvaMetnI1bLqJB
	4Wqot1bqK0r9SlnOb+Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Jv-0008Vh-BC; Tue, 03 Sep 2019 07:33:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i53Jh-0008V5-4r
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:33:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A2DB344;
 Tue,  3 Sep 2019 00:33:26 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF6ED3F246;
 Tue,  3 Sep 2019 00:33:24 -0700 (PDT)
From: Guillaume Gardet <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: gpu: mali-midgard: Add samsung exynos5250
 compatible
Date: Tue,  3 Sep 2019 09:33:00 +0200
Message-Id: <20190903073300.5927-1-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830104502.7128-2-guillaume.gardet@arm.com>
References: <20190830104502.7128-2-guillaume.gardet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_003329_234899_1F67BE9E 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Guillaume Gardet <guillaume.gardet@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "samsung,exynos5250-mali" binding.

Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
index b99a43bb471a..47bc1ac36426 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
@@ -30,12 +30,15 @@ properties:
           - enum:
              - rockchip,rk3399-mali
           - const: arm,mali-t860
+      - items:
+          - enum:
+             - samsung,exynos5250-mali
+          - const: arm,mali-t604
       - items:
           - enum:
              - samsung,exynos5433-mali
           - const: arm,mali-t760
 
-          # "arm,mali-t604"
           # "arm,mali-t624"
           # "arm,mali-t628"
           # "arm,mali-t830"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
