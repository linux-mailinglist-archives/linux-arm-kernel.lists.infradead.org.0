Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BEB10ADBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3u/f3CpDaDYBD3aru7Eo5+KjaFPUhquVvdIUEXx1jlA=; b=Si99Y2YOHMEVwz5BCvy99DwNBl
	qCMXW+1CJtuOPVyFPbB2otC7Xo/D0VPRWfdpI0xM7Ju2NqYCAIMip/OIH5OcpoiFMvySLCV0Vi2pa
	8XNvL74upcYHPRJv0rvaBak8/WExbDS99JIeuUJEAQovPKRXNeOAONCt4CD0Rx+DHvv0EKP04ctPY
	cqFJZQi8xVx5DA5ZzscxILazRAXNqxdlSQ5K/mPKKxgrGD44rQ6vEoj5ldO4Ql6jiN8mP87JX4ntj
	hHanVuUWslMVKMz+2vfLHx6KeP6EzOVLDPrTtYH3f0cRopnek/AMoDTw2aeM9cJ+GeeWOmnpNRo8w
	m4zTD+RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuaZ-0006bZ-EK; Wed, 27 Nov 2019 10:30:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZV-0005Yj-U9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id d5so23865450ljl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sCVWNeBJQqE/5xyPRPgEm2JhEV906v9Oz0Oq1T8bJNI=;
 b=YvFWt71U882ckxf/LB6gEUlRbjQnxw2v4HSpTtRA/CIRR1fdiPx/bBK1w0X47GcArH
 2b9y2zcZfgC0lb0vg3dJclAJXeV3ERi2wWSVYb6FyWacBlStC+t9YTkvGRCm18vwu+Az
 yuQLsVYJum5iZFqaWYVgDK8Xb9Ccn1AsZjD0FRB3DKOHxmyLVfnk0GqW9rhBk4X6nFwk
 zSiXEt6IUYn6CtLibeLt9S0fPMSNivoSo5fGoS3gHmW+PL43rwvlE7LjlE2vJDLtPz4W
 pzfj/w0oRH7NucNFnlBau1FCnAgxYxvlF1TEAP+NqRDGnjkmLTZzG3s6CiGzNgOj3pic
 tm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sCVWNeBJQqE/5xyPRPgEm2JhEV906v9Oz0Oq1T8bJNI=;
 b=rS0lUdfLDdEOgnIQ2PPGxDUqQ243pyzzkQoeEjlv0RlkdwIfh+he5HxWErxaIadbQu
 lwnL0NmCqkjuiTo+AZGFLhYei32SLmXrU2OGQYwuLWrA84Om6rmPgjerEgRC+AYk6zNt
 B1j2Xz1xHUJuOjimkkSP0KCNF8PQVDJ8qiSqn0KhEcmGARSDW5EOxSpoGYdzKI0ecnH6
 b6SnO8bQlBBBhU4IbihwVmCk901MWDsHzkRch9y88ivjNPcuGjRg/JFBWAsWkkQSFnjS
 rW8Kving8MrcC7PfnC4RS/YQUTPvn0I6P6yYSF01gGRFKyK8jbYumq255xY0pfNUc8D1
 pkDg==
X-Gm-Message-State: APjAAAWu4X+3lDUl/8UvdvneeLupgI6tS0YS+m+VlSRyL+90bl0h6qpF
 kp81HmIMeH7/wKQVOphUrBgGfg==
X-Google-Smtp-Source: APXvYqwp8QFzKd9gx47/plPp96c8HGRuP0rFEep/FiEuLZuC3rMt3DrkVicIFLwEUpX8FVCTCDvBKA==
X-Received: by 2002:a2e:7204:: with SMTP id n4mr28853360ljc.139.1574850560358; 
 Wed, 27 Nov 2019 02:29:20 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:19 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 02/13] dt: psci: Update DT bindings to support hierarchical
 PSCI states
Date: Wed, 27 Nov 2019 11:29:03 +0100
Message-Id: <20191127102914.18729-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022922_133270_D425B2B1 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes in v3:
	- Updated example to make it compile with "make dt_binding_check".

---
 .../devicetree/bindings/arm/cpus.yaml         |  15 +++
 .../devicetree/bindings/arm/psci.yaml         | 104 ++++++++++++++++++
 2 files changed, 119 insertions(+)

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
