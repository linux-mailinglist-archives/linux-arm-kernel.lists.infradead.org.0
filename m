Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E0F177A08
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:09:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMR/bB6LMtUGlRD8qbW72jz1cOeSaKo7Y/rKP9tPj7k=; b=hji401CyA9ZOf4
	926N+UOf7AJlFgHKJ4cqKfEJvp73M91mzMkfOGWrnjeC3FsMlLztDad8TyHGtJlMZpXOGcQv4juBo
	7fMdzDHH0jbv3/3NyBdHsgAt4J+Y7xGFXJEkXJXSiaRumcaBVQmnOcGfek1O8Gyfz4eamWeYliXof
	D6cFEbYasutfcSZtxXJBZX1iVJcAAsjM6nMn4o4GIMDNWQdSYAdl3hI0iira9qoqbAH01P+5z+zy2
	BasJCCXe4oN8ws3g8nQOSFiYL3BzYvLYmxVOxelctOPpOzlF/bpzUNmOikeBredHPF8I0APOcgeLE
	WwMY/rUt6bqvW+eMJOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99AE-0005QS-42; Tue, 03 Mar 2020 15:08:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999O-0004li-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id a10so3848279ljp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KjdkayiJ3LtaxLYwkOTc4CgwJfOkW9drdJX4syz3ipw=;
 b=RLvtGSvlL2ZKg9u7qpjybj0cciaEsfBIgh3is2uiAVm4n6IckIp3MkKk6iFbZnTVM5
 O6lLxvUF8qz2nwZmU3Q6eCIVfOwulTGgR4EHDNSECKnc5555BIEqnYF7zjeOmUl3xbD7
 U6wYkHSrd9uchIET6VRsOPD0SevSqh1Iczx1tsjJYWxllqemSjoXyCL8kPEarsdyA6HS
 gXF8Mu+RgmcX3QTQy6b+pLhrO208Vcev6r394VRimrDKIz3QnGUD6u7fX/OwP/AgfxO0
 R2pBEQSqA7M4UKmbP3pvymYqa+hWokMcOJI+LMsbz5NAoI71o9THo3BQg38H9+jZNkKd
 FgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KjdkayiJ3LtaxLYwkOTc4CgwJfOkW9drdJX4syz3ipw=;
 b=p0TbBKa++cf5j0Y407JHeZGM8Jzf02nU4V5ZVtRbki3cye0KyCpzovV0Fglr9Nyhpn
 gjNvTdpJZXdyqMmfdpKkiPiarJvwvWlbTwwJV1r7TRNPECrVJUpw1k+/MzXOl60jErNY
 lVfqLniPS92lTJydMQSTviw85ZTjxj+IAIGufFuNpqYYY6ciuZu/qpJeDQa6ZF1WD1Yi
 WR4GgnKlW2n1b8wWSEyUsZ26ikCvRZXYB52xP30oCHf0C8kR/4Zs27v+cQP/nnmMPykr
 3rN45GAftthu2BCncHlz3DoiLTYFzxUMx/kPoygKICbbUYLzlqQGxFyf5/7SKRTctF4U
 JlbA==
X-Gm-Message-State: ANhLgQ3xEv0XlTpLeIh3ErkQ7DFe1js5M/EMFsvuPQbk4p9hQfCyaV2v
 VbfGN49RTHXy0QBnbCV3MjWwEw==
X-Google-Smtp-Source: ADFU+vsy8RXa2JkubLPVYUS7N5uh4Nl43LrVHX6u5UwJJSRxFFz+CIWvNB+Watcu8JNZX00LUTOhBQ==
X-Received: by 2002:a2e:556:: with SMTP id 83mr2723344ljf.127.1583248080801;
 Tue, 03 Mar 2020 07:08:00 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:08:00 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 3/7] dt-bindings: power: Convert domain-idle-states bindings
 to json-schema
Date: Tue,  3 Mar 2020 16:07:45 +0100
Message-Id: <20200303150749.30566-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070802_698465_D1AB54FE 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

While converting to the json-schema, let's also take the opportunity to
further specify/clarify some more details about the DT binding.

For example, let's define the label where to put the states nodes, set a
pattern for nodename of the state nodes and finally add an example.

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../devicetree/bindings/arm/psci.yaml         |  2 +-
 .../bindings/power/domain-idle-state.txt      | 33 ---------
 .../bindings/power/domain-idle-state.yaml     | 67 +++++++++++++++++++
 .../bindings/power/power-domain.yaml          | 22 +++---
 .../bindings/power/power_domain.txt           |  2 +-
 5 files changed, 79 insertions(+), 47 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.txt
 create mode 100644 Documentation/devicetree/bindings/power/domain-idle-state.yaml

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 540211a080d4..0bc3c43a525a 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -123,7 +123,7 @@ properties:
       to mandate it.
 
       [3] Documentation/devicetree/bindings/power/power_domain.txt
-      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
+      [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
 
   power-domains:
     $ref: '/schemas/types.yaml#/definitions/phandle-array'
diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.txt b/Documentation/devicetree/bindings/power/domain-idle-state.txt
deleted file mode 100644
index eefc7ed22ca2..000000000000
--- a/Documentation/devicetree/bindings/power/domain-idle-state.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-PM Domain Idle State Node:
-
-A domain idle state node represents the state parameters that will be used to
-select the state when there are no active components in the domain.
-
-The state node has the following parameters -
-
-- compatible:
-	Usage: Required
-	Value type: <string>
-	Definition: Must be "domain-idle-state".
-
-- entry-latency-us
-	Usage: Required
-	Value type: <prop-encoded-array>
-	Definition: u32 value representing worst case latency in
-		    microseconds required to enter the idle state.
-		    The exit-latency-us duration may be guaranteed
-		    only after entry-latency-us has passed.
-
-- exit-latency-us
-	Usage: Required
-	Value type: <prop-encoded-array>
-	Definition: u32 value representing worst case latency
-		    in microseconds required to exit the idle state.
-
-- min-residency-us
-	Usage: Required
-	Value type: <prop-encoded-array>
-	Definition: u32 value representing minimum residency duration
-		    in microseconds after which the idle state will yield
-		    power benefits after overcoming the overhead in entering
-i		    the idle state.
diff --git a/Documentation/devicetree/bindings/power/domain-idle-state.yaml b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
new file mode 100644
index 000000000000..27da43076b85
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/domain-idle-state.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/domain-idle-state.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PM Domain Idle States binding description
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+description:
+  A domain idle state node represents the state parameters that will be used to
+  select the state when there are no active components in the PM domain.
+
+properties:
+  $nodename:
+    const: domain-idle-states
+
+patternProperties:
+  "^(cpu|cluster|domain)-":
+    type: object
+    description:
+      Each state node represents a domain idle state description.
+
+    properties:
+      compatible:
+        const: domain-idle-state
+
+      entry-latency-us:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          The worst case latency in microseconds required to enter the idle
+          state. Note that, the exit-latency-us duration may be guaranteed only
+          after the entry-latency-us has passed.
+
+      exit-latency-us:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          The worst case latency in microseconds required to exit the idle
+          state.
+
+      min-residency-us:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          The minimum residency duration in microseconds after which the idle
+          state will yield power benefits, after overcoming the overhead while
+          entering the idle state.
+
+    required:
+      - compatible
+      - entry-latency-us
+      - exit-latency-us
+      - min-residency-us
+
+examples:
+  - |
+
+    domain-idle-states {
+      domain_retention: domain-retention {
+        compatible = "domain-idle-state";
+        entry-latency-us = <20>;
+        exit-latency-us = <40>;
+        min-residency-us = <80>;
+      };
+    };
+...
diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
index 455b573293ae..207e63ae10f9 100644
--- a/Documentation/devicetree/bindings/power/power-domain.yaml
+++ b/Documentation/devicetree/bindings/power/power-domain.yaml
@@ -29,18 +29,16 @@ properties:
 
   domain-idle-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-    description:
-      A phandle of an idle-state that shall be soaked into a generic domain
-      power state. The idle state definitions are compatible with
-      domain-idle-state specified in
-      Documentation/devicetree/bindings/power/domain-idle-state.txt
-      phandles that are not compatible with domain-idle-state will be ignored.
-      The domain-idle-state property reflects the idle state of this PM domain
-      and not the idle states of the devices or sub-domains in the PM domain.
-      Devices and sub-domains have their own idle-states independent
-      of the parent domain's idle states. In the absence of this property,
-      the domain would be considered as capable of being powered-on
-      or powered-off.
+    description: |
+      Phandles of idle states that defines the available states for the
+      power-domain provider. The idle state definitions are compatible with the
+      domain-idle-state bindings, specified in ./domain-idle-state.yaml.
+
+      Note that, the domain-idle-state property reflects the idle states of this
+      PM domain and not the idle states of the devices or sub-domains in the PM
+      domain. Devices and sub-domains have their own idle states independent of
+      the parent domain's idle states. In the absence of this property, the
+      domain would be considered as capable of being powered-on or powered-off.
 
   operating-points-v2:
     $ref: /schemas/types.yaml#/definitions/phandle-array
diff --git a/Documentation/devicetree/bindings/power/power_domain.txt b/Documentation/devicetree/bindings/power/power_domain.txt
index 5b09b2deb483..08497ef26c7a 100644
--- a/Documentation/devicetree/bindings/power/power_domain.txt
+++ b/Documentation/devicetree/bindings/power/power_domain.txt
@@ -109,4 +109,4 @@ Example:
 		required-opps = <&domain1_opp_1>;
 	};
 
-[1]. Documentation/devicetree/bindings/power/domain-idle-state.txt
+[1]. Documentation/devicetree/bindings/power/domain-idle-state.yaml
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
