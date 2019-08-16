Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A7904ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 17:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eFCAEjNqhGSmnhi7jX3mC1BFHaJ+K9Gpf7Dhl5JGP4=; b=ElDlEYz+J+g6Pf
	cBteMxM0TlPSfCjQVHEFnS9yqsoRWzKVTcyYZ/56yCHXAkjaWTECiSl5qhISHg08Z2HHVsfK06zOv
	GN9rDhB2hy9jfh/V38JOv6lsKpoSj7BqgvW4h5b7BsgePBSt8OTqrOR2TTx0KRj9+a11HeZWL/H6G
	rTf2ZyUoTUZdvapov41k3pZlDloHwaXzbyTB49UqcLmeLDQLhgyGJbHWT0AjtehAnYmhXyCNbXA8c
	axidzL3bmSaeiCzo6JJ6gr6w8wbzEkDT83/09rpLWcZ4Vg+ZZl8c0OOIUGknbEECsgN0czvhXSneS
	66ejgehH9iCLcASQOa2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeRa-0002P2-Ja; Fri, 16 Aug 2019 15:47:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyeQs-0001qJ-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 15:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C98AF344;
 Fri, 16 Aug 2019 08:46:25 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D71D3F694;
 Fri, 16 Aug 2019 08:46:23 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Date: Fri, 16 Aug 2019 16:46:14 +0100
Message-Id: <20190816154615.39854-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816154615.39854-1-andrew.murray@arm.com>
References: <20190816154615.39854-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_084626_568932_D5D2D7D2 
X-CRM114-Status: GOOD (  10.40  )
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
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
