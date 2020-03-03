Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D30177A11
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6rsntkliTzwD/ggqXMSvH9IXUdfZyd1nRES5GQpqAY=; b=DNmbJfXwEPRGUS
	a6fgHh+LpiVMrbpEXB8VsFROe9zgsUI8QAkWC+MMe5Pelwgi6kEhztd3aQbRfSRRHc+r2yYVWsBpX
	NEIQAqj7rbz7oJUKFbF5sO1vMvW0+3AMvxbipylPKwCp5hW1nGr8yH57cDGdZ4pK3BFiDIlkNYqml
	zb31X8QLZOT/gd7LHpPaERz7wBpmSkMZFcqTatLmO2dvF15O86FyYNvSn1/5JVFsUkjDhdtK416Kk
	lHCUfsdk3gQ7KaQD8q63V6xmImYxju42oryTDfNY/pCNOQBM9HIQBfEXi378ablmTVQZCgR+1fVQM
	nneGeV0CeAHyYmB2qnyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99Ak-0005wU-2p; Tue, 03 Mar 2020 15:09:26 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999R-0004p0-99
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id y17so3030125lfe.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/NDACQevUaDc6JLaPGhMJ8UIpdipROa3WbiIGkpAEKo=;
 b=T4WeVLCjzQGfNUrES9Hy941MNj53A0yQWbbAPWTiPENyy1q1vpfzLRYqgm7ZJZQABy
 n+t9IXXQ7k6vZ+zUAh62pucstlgWBz/uF9VNQM44sUO7whZqXxMo85IQZT81qliVMizQ
 EzNMzQgacBQyzjLqjyxeGcTKGbWRyVSM7ZLqcsXGXlBSyPiUROa/VZQjo/Z8dLIHLlCq
 WeRU8WycVDsUECgE480sgW58hWtWUSyIG4TRTLVzh1WYazOzYYyichLNmT2WsEdetIuF
 j6weAufoJjq/B4ZsvsvymH2zVRnn4ENR5tsItmkzrxFQe0CmrvtMRL4IdtqwsOvwbKPP
 B+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/NDACQevUaDc6JLaPGhMJ8UIpdipROa3WbiIGkpAEKo=;
 b=BZn9maC5DmA56vVPLtXNY/tP7AornLz4fgkk/hxQwvhKoPYvHyMcxudR2aCvaILdgG
 WxUrirfDEE9CkF95bEkOgq3uJmMLBNvV6XTOso7W74ZzUR7+AfPrwu8ysf3Xr7MqyWAp
 zgxWT3sjFKd0JQIpnGRApWIem2QdmzVeGCM5Lbtt+EJT9LyUM+BQYkGykWn0SwN3w4YE
 S82n8tSUgCosWno3RZUkTXcWajay1aF3C7b64XQ+cfelvCmcRJ0ITHJPRvyezZWbAZQs
 x8xwVd9418ILX2B2N2RMbRSFAVerFcdgsn2h8zrcklobAv2jKnP3/uIv7RDii0yo5cJa
 ERxQ==
X-Gm-Message-State: ANhLgQ1lrJD88Eq8tl2FpeCKf+7jrpix8QM1qEXwahtwb+3Ga09dnD75
 97iG0TiaHK9iOhAj2PTF9qJDpw==
X-Google-Smtp-Source: ADFU+vuGkkQiguth40cp1bw44U/CLR3j6mkPP+xXUr5/Vlp3zdPzogFaLS0srx11FKpgV5fWvZTJhg==
X-Received: by 2002:ac2:59c7:: with SMTP id x7mr2953144lfn.148.1583248083583; 
 Tue, 03 Mar 2020 07:08:03 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:08:02 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for hierarchical
 PSCI states
Date: Tue,  3 Mar 2020 16:07:47 +0100
Message-Id: <20200303150749.30566-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070805_409235_FDBF54E9 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hierarchical topology with power-domain should be described through
child nodes, rather than as currently described in the PSCI root node. Fix
this by adding a patternProperties with a corresponding reference to the
power-domain DT binding.

Additionally, update the example to conform to the new pattern, but also to
the adjusted domain-idle-state DT binding.

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 0bc3c43a525a..cae668b61265 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -102,11 +102,15 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/arm/idle-states.yaml
 
-  "#power-domain-cells":
-    description:
-      The number of cells in a PM domain specifier as per binding in [3].
-      Must be 0 as to represent a single PM domain.
+required:
+  - compatible
+  - method
 
+patternProperties:
+  "^(power-controller|power-domain)([@-].*)?$":
+    $ref: "../power/power-domain.yaml#"
+    type: object
+    description: |
       ARM systems can have multiple cores, sometimes in an hierarchical
       arrangement. This often, but not always, maps directly to the processor
       power topology of the system. Individual nodes in a topology have their
@@ -122,19 +126,9 @@ properties:
       helps to implement support for OSI mode and OS implementations may choose
       to mandate it.
 
-      [3] Documentation/devicetree/bindings/power/power_domain.txt
+      [3] Documentation/devicetree/bindings/power/power-domain.yaml
       [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
 
-  power-domains:
-    $ref: '/schemas/types.yaml#/definitions/phandle-array'
-    description:
-      List of phandles and PM domain specifiers, as defined by bindings of the
-      PM domain provider.
-
-required:
-  - compatible
-  - method
-
 allOf:
   - if:
       properties:
@@ -224,6 +218,9 @@ examples:
           exit-latency-us = <10>;
           min-residency-us = <100>;
         };
+      };
+
+      domain-idle-states {
 
         CLUSTER_RET: cluster-retention {
           compatible = "domain-idle-state";
@@ -247,19 +244,19 @@ examples:
       compatible = "arm,psci-1.0";
       method = "smc";
 
-      CPU_PD0: cpu-pd0 {
+      CPU_PD0: power-domain-cpu0 {
         #power-domain-cells = <0>;
         domain-idle-states = <&CPU_PWRDN>;
         power-domains = <&CLUSTER_PD>;
       };
 
-      CPU_PD1: cpu-pd1 {
+      CPU_PD1: power-domain-cpu1 {
         #power-domain-cells = <0>;
         domain-idle-states =  <&CPU_PWRDN>;
         power-domains = <&CLUSTER_PD>;
       };
 
-      CLUSTER_PD: cluster-pd {
+      CLUSTER_PD: power-domain-cluster {
         #power-domain-cells = <0>;
         domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
       };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
