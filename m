Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8181DA3527
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QkJ7o4dSSPsBh7wWfOCaPIlHClZ5grHoHQIJF0hplQ=; b=W+x1CUJ3ifH0nn
	oMW6fuYjoun+dWstLalJ4GzncafwtU+goqOypOw+aOsj4BBCZI6PkICTHZlc03Bl4kNTatrEnYHC9
	V2/Y2wj42/RuZFhwZBKouypVjragL7VOJIn8G5V4OMkmjLDvpodgx5wnmVw92+mBJKm8+vagsCSDu
	otlFmdzaJQ+InFMatKPKoDUYQknd9FXomTDBHla7XxMMxbh00IbhLQPKDlNSiWmkrjGapytwBkfUl
	e00JBPZcQ40Z3wTmELnnShOmsXJESPO8J4kK16CW6UrKUVdDaslBK3sALb9onfQ5GTwX/Wz70xnFQ
	f+0aXbAAXm8Rz0ajHNaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ePP-0002fh-U2; Fri, 30 Aug 2019 10:45:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ePI-0002eR-U9
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3951344;
 Fri, 30 Aug 2019 03:45:25 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D384E3F718;
 Fri, 30 Aug 2019 03:45:24 -0700 (PDT)
From: Guillaume Gardet <guillaume.gardet@arm.com>
To: linux-samsung-soc@vger.kernel.org
Subject: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung exynos5250
 compatible
Date: Fri, 30 Aug 2019 12:44:58 +0200
Message-Id: <20190830104502.7128-2-guillaume.gardet@arm.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190830104502.7128-1-guillaume.gardet@arm.com>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_034529_019510_9B11129C 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Guillaume Gardet <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "samsung,exynos5250-mali" binding.

Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org
---
V3 changes:
  * add dt-bindings before node in device tree
V2 changes:
  * new file

 Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
index 9b298edec5b2..bdd1396d9cc3 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
@@ -17,6 +17,7 @@ Required properties:
   * which must be preceded by one of the following vendor specifics:
     + "allwinner,sun50i-h6-mali"
     + "amlogic,meson-gxm-mali"
+    + "samsung,exynos5250-mali"
     + "samsung,exynos5433-mali"
     + "rockchip,rk3288-mali"
     + "rockchip,rk3399-mali"
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
