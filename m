Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB2DCBEC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jh18AJn3IinbCyG53XBj9DEro7Hi6O3O2jgENHxY6H0=; b=W1vgQ5R2ZrVvzC
	9ka/6JgENbxzVMCwrVVpsLtNmrl3C5NaBBxWXRmkPSzihGJOVOS8ddJ2ktAk+Jso1IgELbeOEQPcy
	o/q/mDnYyibeoheW0QMAU5oqk6goAjdoNkpXzgRYbs9yPmsW9VF7qSPZbTFZgQDLECl4WkMIiJZj5
	YHpjATbpE651MUiJRfwnlBTpHgSh4qj8SwphKDpEdpvH6lXj2miidk1e3AwfgWW9++BPuDEecYmhk
	Keotq9RIcN39+0wTSngl26DfRMBUEmMnGrMV8QE8rrKGyKYdOL0mcV4/SEVQOTxNTjK4JUclFpTqp
	XLQ/JhAi1THs7sAHxRUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPHt-0006kG-OW; Fri, 04 Oct 2019 15:14:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPHn-0006jA-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:14:28 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4017F207FF;
 Fri,  4 Oct 2019 15:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570202065;
 bh=At7Vw3YFrrg3TOqKMg8f1TsgKNBKoiEKL7wq9XiiUKk=;
 h=From:To:Subject:Date:From;
 b=BeGHmF7Rbd6pkfOjo2uCfn8OcrdTdcDJynBCXDiHZNqmgwIE1+aRy4wZQW23eUGGP
 U+RHRG2J0ZC+B7hAvb/Ik0Nsr00FdebTvb84NysQA4HHgL8yfGWaQ2VW+9bCdu7zMd
 kUWdVsOOM75RFDTU0Ja0JGS5R4l69pzZnlhyyzYs=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-serial@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
Date: Fri,  4 Oct 2019 17:14:12 +0200
Message-Id: <20191004151414.8458-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081427_078130_5C4790FD 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clkoutN names of clocks must be unique because they represent
unique inputs of clock multiplexer.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/arm/samsung/pmu.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
index 73b56fc5bf58..d8e03716f5d2 100644
--- a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
@@ -53,8 +53,10 @@ properties:
       List of clock names for particular CLKOUT mux inputs
     minItems: 1
     maxItems: 32
-    items:
-      pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
+    allOf:
+      - items:
+          pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
+      - uniqueItems: true
 
   clocks:
     minItems: 1
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
