Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E016E8D18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KxeNUabDxVORZbtPpfmg/iptc/Xz5fgNVbJQKyof0Bc=; b=k9TKsEnovIwEPxBTaaj/FNLRsq
	Vl9eesEEhbg6szO+0tp0SSjr/fCD+PO86Uv1fr9nAVkOkFXghjILQosKIld89AUdCEvgL9l8BRLuP
	7miGtx4HSe0pftBKoGydCJREuN7ERUK72vg7F0+Mvf+Wo5ewYlIh3XlbqcQOng54XReNPH/9PSYlB
	ULZA4B0rj+frVOyoKiWiNNgUNY65XOCz4iqfCD/V31EyVUC70R52FenFiTrYLY+C5x5bKoypsrgv5
	XssM155f/eXg1nwDzl1fBiZmgPt0oeuxNpxem3aKdFcBba9/aYwXuoHExRm/a6zjK5zwaryKtDaTM
	2eZYKz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUch-0004IL-8N; Tue, 29 Oct 2019 16:45:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUbx-0002oP-5l
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:52 +0000
Received: by mail-lj1-x242.google.com with SMTP id y3so16057653ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vx1yeiYtbxdfUZEGLcn/GapdFgHrvVzZj2LYjH6Qipc=;
 b=Fkoxqmi5obbN5D8KiED0GDf2VMvl+yGRap5u5DvS5arveZdlAQDAPXHdayL1+WTok+
 LGYVQ5ILzMpoernOY5Qd/dwjKhlBMWBdUZc2ODopoU7NPU7oxthRe3fTPkiS4Ft+Lc7m
 aE4wxkchBGDMleSnkmLrCtgti0b75RN6qyqJOq0+czV+kJi5lyJxPrAmjBF5DWFjVrT1
 2azq3w9IMJTYkkt6CIu771rCLj+N2TpEQmLMav3yvsenOsefdWc3jpS/3tf/6xDPR5Le
 84RHvn18prIrS2TSR/gWIuDE5MWjam+6gHZMAsfRCEvpfq3NJ6nDTU9pWFbdLBFKmqR1
 nP9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vx1yeiYtbxdfUZEGLcn/GapdFgHrvVzZj2LYjH6Qipc=;
 b=ukGQEaGTENVnTYZhEAwZmzx7yHUa7q71pYiWQa9uA+r0DiM+p2yyVlWyq+OM+bMEx0
 +UMvXtWjoKuh5WI+70BfxaFss3lqA0nUSPZVhABUVYuNke9KxR6EQtYnszj3xi5Mgzqv
 mSlSbeHhT3LwBvmnLrnd3uevpVztyttex5zOK70QZfUvd+XLUPuemXZmteXqhRgkbumZ
 yxdaXNTJ7zGc7UU5pt956b2IHnleetdWlkY0kriuaMwmrTxiL+5TInM72uL9VLeWPBj8
 6aZGzxJngwN569GF8zaIYP31qVF2d+hjFJma4QVfdZvEqNWeubka0hFvS0sleW3IEMCw
 Lcsw==
X-Gm-Message-State: APjAAAWnopeJ+qQOLoJoqFUSM/laIZR4H6047CTJyHcrswOkpZGBJ2Hi
 v+uJ616cAK5aVKsD/inKGe6qUA==
X-Google-Smtp-Source: APXvYqzNAJhOXSwzgS3m1Z95FU4/bc2E3nX7fJG9+SlaGXQA0RhR9Fs7yJqz8IEOfLNRvwR9bzPwxw==
X-Received: by 2002:a2e:b607:: with SMTP id r7mr3349557ljn.47.1572367487022;
 Tue, 29 Oct 2019 09:44:47 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:46 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 02/13] dt: psci: Update DT bindings to support hierarchical
 PSCI states
Date: Tue, 29 Oct 2019 17:44:27 +0100
Message-Id: <20191029164438.17012-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094449_251811_6DF9FE2B 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update PSCI DT bindings to allow to represent idle states for CPUs and the
CPU topology, by using a hierarchical layout. Primarily this is done by
re-using the existing DT bindings for PM domains [1] and for PM domain idle
states [2].

Let's also add an example into the document for the PSCI DT bindings, to
clearly show the new hierarchical based layout. The currently supported
flattened layout, is already described in the ARM idle states bindings [3],
so let's leave that as is.

[1] Documentation/devicetree/bindings/power/power_domain.txt
[2] Documentation/devicetree/bindings/power/domain-idle-state.txt
[3] Documentation/devicetree/bindings/arm/idle-states.txt

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Clarifications and also added updates cpus.yaml, to descrive that CPUs
	may be attached to PM domains.

---
 .../devicetree/bindings/arm/cpus.yaml         |  15 +++
 .../devicetree/bindings/arm/psci.yaml         | 102 ++++++++++++++++++
 2 files changed, 117 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index cb30895e3b67..92a775d6fc0e 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -241,6 +241,21 @@ properties:
 
       where voltage is in V, frequency is in MHz.
 
+  power-domains:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    description:
+      List of phandles and PM domain specifiers, as defined by bindings of the
+      PM domain provider (see also ../power_domain.txt).
+
+  power-domain-names:
+    $ref: '/schemas/types.yaml#/definitions/string-array'
+    description:
+      A list of power domain name strings sorted in the same order as the
+      power-domains property.
+
+      For PSCI based platforms, the name corresponding to the index of the PSCI
+      PM domain provider, must be "psci".
+
   qcom,saw:
     $ref: '/schemas/types.yaml#/definitions/phandle'
     description: |
diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 7abdf58b335e..9fed255cc92d 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -102,6 +102,34 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/arm/idle-states.txt
 
+  "#power-domain-cells":
+    description:
+      The number of cells in a PM domain specifier as per binding in [3].
+      Must be 0 as to represent a single PM domain.
+
+      ARM systems can have multiple cores, sometimes in an hierarchical
+      arrangement. This often, but not always, maps directly to the processor
+      power topology of the system. Individual nodes in a topology have their
+      own specific power states and can be better represented hierarchically.
+
+      For these cases, the definitions of the idle states for the CPUs and the
+      CPU topology, must conform to the binding in [3]. The idle states
+      themselves must conform to the binding in [4] and must specify the
+      arm,psci-suspend-param property.
+
+      It should also be noted that, in PSCI firmware v1.0 the OS-Initiated
+      (OSI) CPU suspend mode is introduced. Using a hierarchical representation
+      helps to implement support for OSI mode and OS implementations may choose
+      to mandate it.
+
+      [3] Documentation/devicetree/bindings/power/power_domain.txt
+      [4] Documentation/devicetree/bindings/power/domain-idle-state.txt
+
+  power-domains:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    description:
+      List of phandles and PM domain specifiers, as defined by bindings of the
+      PM domain provider.
 
 required:
   - compatible
@@ -160,4 +188,78 @@ examples:
       cpu_on = <0x95c10002>;
       cpu_off = <0x95c10001>;
     };
+
+  - |+
+
+    // Case 4: CPUs and CPU idle states described using the hierarchical model.
+
+    cpus {
+
+      CPU0: cpu@0 {
+        device_type = "cpu";
+        compatible = "arm,cortex-a53", "arm,armv8";
+        reg = <0x0>;
+        enable-method = "psci";
+        power-domains = <&CPU_PD0>;
+        power-domain-names = "psci";
+      };
+
+      CPU1: cpu@1 {
+        device_type = "cpu";
+        compatible = "arm,cortex-a57", "arm,armv8";
+        reg = <0x100>;
+        enable-method = "psci";
+        power-domains = <&CPU_PD1>;
+        power-domain-names = "psci";
+      };
+
+      idle-states {
+
+        CPU_PWRDN: cpu-power-down {
+          compatible = "arm,idle-state";
+          arm,psci-suspend-param = <0x0000001>;
+          entry-latency-us = <10>;
+          exit-latency-us = <10>;
+          min-residency-us = <100>;
+        };
+
+        CLUSTER_RET: cluster-retention {
+          compatible = "domain-idle-state";
+          arm,psci-suspend-param = <0x1000011>;
+          entry-latency-us = <500>;
+          exit-latency-us = <500>;
+          min-residency-us = <2000>;
+        };
+
+        CLUSTER_PWRDN: cluster-power-down {
+          compatible = "domain-idle-state";
+          arm,psci-suspend-param = <0x1000031>;
+          entry-latency-us = <2000>;
+          exit-latency-us = <2000>;
+          min-residency-us = <6000>;
+        };
+      };
+    };
+
+    psci {
+      compatible = "arm,psci-1.0";
+      method = "smc";
+
+      CPU_PD0: cpu-pd0 {
+        #power-domain-cells = <0>;
+        domain-idle-states = <&CPU_PWRDN>;
+        power-domains = <&CLUSTER_PD>;
+      };
+
+      CPU_PD1: cpu-pd1 {
+        #power-domain-cells = <0>;
+        domain-idle-states =  <&CPU_PWRDN>;
+        power-domains = <&CLUSTER_PD>;
+      };
+
+      CLUSTER_PD: cluster-pd {
+        #power-domain-cells = <0>;
+        domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+      };
+    };
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
