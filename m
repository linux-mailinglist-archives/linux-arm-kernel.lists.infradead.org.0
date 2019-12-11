Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E4911B46E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=61Qg0oMU5Knu9GLwxsYP0JJ0jQOqOW4ZL538laHvUCA=; b=X8G8+0nLyiAlAbN1zPgirkEB4s
	ClwNesbXyAJ16m5ScJFUKRS0+/CQwAYjNN1AUlgoQdyPZP+df1BBAZlNwsW5cGqUQXVLbD44AUmTZ
	kM+mOeT/IuN0WbwY86TB+zNDna2O0OP6nnePNBTtdBO5lDAfrRX5g5EfzcAKWkcI8VvbXcnk1gcVz
	j0Ji32fUgSaAn/KA/XuuHOHsICJINtn2vX+BBDiY6d6E6ztP9+umpntIUvnIga+j3P7IWHkfopgjQ
	zgr3AU4o77MjqPW9tP2jlz7upMFso6lvAvegz2uMGUi1h6P+b+PqOyPb9uau7hV4YX4VAph6pEzVB
	D8NwStJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4D6-0002tt-K6; Wed, 11 Dec 2019 15:47:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49b-0006uE-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:43:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id u17so24598315lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HmkM4qIacfaV48Xt+NOUMP5KlBEshpTFQ8XvQ2DERIc=;
 b=dJqCCecW0FQNgGZ4Qzo0jBiKEio116X9p+adO21H+FiLr5EANwNr3DDcrl9BQaz0jr
 c2rMZqWlMxpsC+nh38hMz+9zqr3zCSJYEG/Kvf9mmmqOnD8zu0H32ufX5nYFKgQWu7Lj
 3i3MDOYMKod7hHTCTgHJWWYF3TgBatF+2rZs6VwFTaAgvUFNW2c4S4YwA7Ka3e7KaAU+
 cQkz8SO/z02kjO0nxMDVLOwAb47E6Hufr4hcy30ALwMwTwzvBv8rvIHMFDnj/FE11Olo
 Qp8disoOGF6hIsChO4W0qZ1sPfxjU161Q7YoBjgT3QsSO5dWLZViQVr+vnfPtAB9fW3z
 Lu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HmkM4qIacfaV48Xt+NOUMP5KlBEshpTFQ8XvQ2DERIc=;
 b=TbVggBabzvRa+AkReyGpjFnizBIbFW5BuIbXpJigdcSjxPrxvtpPL1xBLeCsCwhEJQ
 B8+P0NwXePWCmqjWn3H1D0S8n5qtq52SCzuSulKOHH26vOR2fjAM6fyFHcnxxiNrtq9E
 eawWdjoOlXJx1NcnO7HDut/V9xY564Nqowrpz7lie0JCJECPeIbAWLW7i4ISFbQdTI1L
 oH3m4QmDkl+Qqa4jwDtxCZPlLXtOmx8euVEen5R2ZWsi2IGJXcTRkqzlDhpJDXA0xWPL
 p4IonunJHSOYvcxyF6bmENG7F/4LA7FmCkbDyHD9rFbTvJpcom+I0/B8QDdZRywcHoiH
 0miQ==
X-Gm-Message-State: APjAAAUr+1iixTkreaydu8303BLQ3R4pIv/OMdFb9kfzzNXtF5uRj54L
 aza01zqeO3l5QiWHr+e74vDWXw==
X-Google-Smtp-Source: APXvYqyntQZDl1P1F2PabGBwvZXox+UB8aEO9XTO7zGZ08kzupQ/W6UYRYYzINIUX35ngDKG5nGlsw==
X-Received: by 2002:a2e:a163:: with SMTP id u3mr2327694ljl.13.1576079034051;
 Wed, 11 Dec 2019 07:43:54 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:53 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 02/14] dt: psci: Update DT bindings to support hierarchical
 PSCI states
Date: Wed, 11 Dec 2019 16:43:31 +0100
Message-Id: <20191211154343.29765-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074355_903495_9867A77E 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v4:
	- None.

---
 .../devicetree/bindings/arm/cpus.yaml         |  15 +++
 .../devicetree/bindings/arm/psci.yaml         | 104 ++++++++++++++++++
 2 files changed, 119 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index c23c24ff7575..7a9c3ce2dbef 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -242,6 +242,21 @@ properties:
 
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
index 7abdf58b335e..8ef85420b2ab 100644
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
@@ -160,4 +188,80 @@ examples:
       cpu_on = <0x95c10002>;
       cpu_off = <0x95c10001>;
     };
+
+  - |+
+
+    // Case 4: CPUs and CPU idle states described using the hierarchical model.
+
+    cpus {
+      #size-cells = <0>;
+      #address-cells = <1>;
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
