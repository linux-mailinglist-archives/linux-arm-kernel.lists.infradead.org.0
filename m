Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D00B1CAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 13:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdygN5MUIFeN76pfwUioU8vSR/5SVQafnD9hCB2sjkg=; b=hfMKr7SvNb85Lr
	xxc0k/9p2+bl/rAVB14ZL86a5QxvmMpOEqbCddzTgbue6L5zlbdsxwoaOEJ5ijYQ4eqWE4JZf2DZX
	zACD8+2+SWACTyYtWf0cq37aYSAv1QgDkSsNQgcBFhRkCHKZexhQd+Nb1PRFd6Zy21kZpeys9hY0h
	Rk7fClii3f4wpqVsSp40hAUYH0bYviuwUJxr70c1Bbfk6mTWAt+9pj7plz+Wtae8nWhR4uHiwWZuw
	X82VFEOxovFaXIqVfj4aRgXXQuDGmV83X/LExNWE1iSKz+JOqte8ez3eiiHs9qMZgLuOQ/+eyz1S8
	3tHqgEI+tsXsNq8uEskA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8k9U-0000Qx-MP; Fri, 13 Sep 2019 11:54:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8k8l-0008Rb-6Q
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 11:53:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50D228;
 Fri, 13 Sep 2019 04:53:25 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 70F253F71F;
 Fri, 13 Sep 2019 04:53:23 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v6 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Date: Fri, 13 Sep 2019 12:53:11 +0100
Message-Id: <20190913115312.12943-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913115312.12943-1-andrew.murray@arm.com>
References: <20190913115312.12943-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_045327_290871_074D2A1C 
X-CRM114-Status: GOOD (  10.68  )
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
Cc: devicetree@vger.kernel.org, Al.Grant@arm.com, coresight@lists.linaro.org,
 Leo Yan <leo.yan@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some coresight components, because of choices made during hardware
integration, require their state to be saved and restored across CPU low
power states.

The software has no reliable method of detecting when save/restore is
required thus let's add a binding to inform the kernel.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index fcc3bacfd8bc..d02c42d21f2f 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -87,6 +87,15 @@ its hardware characteristcs.
 
 	* port or ports: see "Graph bindings for Coresight" below.
 
+* Optional properties for all components:
+
+	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
+	  hardware will lose register context on CPU power down (e.g. CPUIdle).
+	  An example of where this may be needed are systems which contain a
+	  coresight component and CPU in the same power domain. When the CPU
+	  powers down the coresight component also powers down and loses its
+	  context. This property is currently only used for the ETM 4.x driver.
+
 * Optional properties for ETM/PTMs:
 
 	* arm,cp14: must be present if the system accesses ETM/PTM management
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
