Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC02D2836
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A9KgfaBrGXoc6VyNgXMBrEHK1yOut3WJ34bX+yDRg24=; b=cIrf9/U48nh6scbo3RIHf3cHOk
	Ntr30NPHjvFD1DKixP6upj2byW8OzBoJWMaZViWDyIdVkcvXEDB7HekCUq5K7OjOJSrbVdys4jX9V
	SpveofId9/ZKY7pKzNloBWbXHRTB1ylFP5la0PDI3AA3WZJvrTldCfJe4W6R4H715bhQziDJZG6AX
	MmYvbBJ6q3a0TSn3UJ2JCSl7MxeC0x/rEpXmrtqcWX1Irc/wemda85HD5+jvyP4zlOV0Ag1h2iT4M
	ygJlyugnpFq3N7bVFKrQ3mAGaS/VXKkdQiC9aN7oIrRLaMKtruwBMAmJY6O7b2H5kfTBGI6+mI8ih
	Sy9uZkPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWoV-0003AY-NO; Thu, 10 Oct 2019 11:40:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnh-0002TC-Uj
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id d17so4121931lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jyY5hfR8/N8coo7i/Rw81G3nXo/cAyXblG5DM904HwE=;
 b=OgHOnIF/JT9aqU5ULYziikH3VIpbyfjLcYtZ62ZAGion5jENQDB43lu6J4WKcJu6KY
 52BLa6tvDhyxmjUbdlEIBfL4xtgznU7Qql5Yu5h35386cUJn2GYFKaqo4kJ64ogBJKiY
 POAOhEUixlR3um6FnqjifcyURYypxa3kqWLGjwyvOmRq8pKZNrIDz/50xhcgjnz8vVl5
 mPj5/Y37vX4kKohxCKn5yzdcQlwykwhiySJ9g1Pl/HNVXTDyRpvJqTWPMhlz13rm95J8
 zOwzOXLKnERt4j5NlWJg089O+KMqcioLvUndOe5GvbFVL/G/OyZ2hlMuG+PeFN64PMOo
 zqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jyY5hfR8/N8coo7i/Rw81G3nXo/cAyXblG5DM904HwE=;
 b=QJG//g5LSPcYhRKq/jVrPyUH+cYCTFP/p2qCD80VRGYNmLnrFCT0vZitPaqzW1hxW9
 sLUUjOHet0hlG/ihaEStGrpYV1pedSYc5rnzLd1OEiyOLtgLlbUp8kxoY/mmg5VpZgAT
 OgiWgDCoSIfdBMqW1ovH1/L5q8vqH66UiYG2Ea1q4eHLPb1YEIxBFd2QWNx0h24QYMle
 ARy2/En4BHRRHH0nFIhKNeMPTkJcKcL+UxmBEIgkGOtJQJQupDFWr+I7qmQT/BRhzP+d
 35oGVb0dzMLNMPtDm0ZAVlMSz5y8pzbZlexFCxQ23BDuo+iFde4Chnt7DDPQzBPMpf/J
 GU0Q==
X-Gm-Message-State: APjAAAVdlfvoJYsNHhpZ3puBfoLbCR0Z2dmgVvPt6AeDI53JEnCGkEZ+
 2MBb2L5GiQTDDdVvgyEHNPr1SQ==
X-Google-Smtp-Source: APXvYqwVz/veomsjupLKt3xVJOp9HD2kp91pfcT6HzEDeMCrvfq1+l+xdbKIzxGRgkRxI/FcE66Vpw==
X-Received: by 2002:a19:ca56:: with SMTP id h22mr5690879lfj.192.1570707608097; 
 Thu, 10 Oct 2019 04:40:08 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:06 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 02/13] dt: psci: Update DT bindings to support hierarchical
 PSCI states
Date: Thu, 10 Oct 2019 13:39:26 +0200
Message-Id: <20191010113937.15962-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044010_035202_D0972FE4 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update PSCI DT bindings to allow to represent idle states for CPUs and the
CPU topology, by using a hierarchical layout. Primarily this is done by
re-using the existing power domain description [1] and the domain idle
state description [2].

Let's also take the opportunity to update the examples to clarify the
difference between the currently supported flattened layout vs the new
hierarchical layout.

[1] Documentation/devicetree/bindings/power/power_domain.txt
[2] Documentation/devicetree/bindings/power/domain-idle-state.txt

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../devicetree/bindings/arm/psci.yaml         | 153 ++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 7abdf58b335e..360579bfa591 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -160,4 +160,157 @@ examples:
       cpu_on = <0x95c10002>;
       cpu_off = <0x95c10001>;
     };
+
+  - |+
+
+    // Case 4: PSCI v1.0, PSCI v0.2, PSCI v0.1.
+
+    /*
+     * ARM systems can have multiple cores, sometimes in an hierarchical
+     * arrangement. This often, but not always, maps directly to the processor
+     * power topology of the system. Individual nodes in a topology have their
+     * own specific power states and can be better represented hierarchically.
+     *
+     * For these cases, the definitions of the idle states for the CPUs and the
+     * CPU topology, must conform to the power domain description [3]. The idle
+     * states themselves must conform to the domain idle state description [4]
+     * and must specify the arm,psci-suspend-param property.
+     *
+     * This allows two options to represent CPUs and CPU idle states. By using
+     * a flattened model as given in the first example below and by using a
+     * hierarchical model as given in the second example.
+     *
+     * It should also be noted that, in PSCI firmware v1.0 the OS-Initiated
+     * (OSI) CPU suspend mode is introduced. Using the hierarchical
+     * representation helps to implement support for OSI mode and OS
+     * implementations may choose to mandate it.
+     *
+     * [3] Kernel documentation - Power domain description
+     *   Documentation/devicetree/bindings/power/power_domain.txt
+     * [4] Kernel documentation - Domain idle state description
+     *   Documentation/devicetree/bindings/power/domain-idle-state.txt
+     */
+
+     // The flattened model
+     cpus {
+
+       CPU0: cpu@0 {
+         device_type = "cpu";
+         compatible = "arm,cortex-a53", "arm,armv8";
+         reg = <0x0>;
+         enable-method = "psci";
+         cpu-idle-states = <&CPU_PWRDN>, <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+       };
+
+       CPU1: cpu@1 {
+         device_type = "cpu";
+         compatible = "arm,cortex-a57", "arm,armv8";
+         reg = <0x100>;
+         enable-method = "psci";
+         cpu-idle-states = <&CPU_PWRDN>, <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+       };
+
+       idle-states {
+
+         CPU_PWRDN: cpu-power-down {
+           compatible = "arm,idle-state";
+           arm,psci-suspend-param = <0x0000001>;
+           entry-latency-us = <10>;
+           exit-latency-us = <10>;
+           min-residency-us = <100>;
+         };
+
+         CLUSTER_RET: cluster-retention {
+           compatible = "arm,idle-state";
+           arm,psci-suspend-param = <0x1000011>;
+           entry-latency-us = <500>;
+           exit-latency-us = <500>;
+           min-residency-us = <2000>;
+         };
+
+         CLUSTER_PWRDN: cluster-power-down {
+           compatible = "arm,idle-state";
+           arm,psci-suspend-param = <0x1000031>;
+           entry-latency-us = <2000>;
+           exit-latency-us = <2000>;
+           min-residency-us = <6000>;
+         };
+       };
+     };
+
+     psci {
+       compatible = "arm,psci-1.0";
+       method = "smc";
+     };
+
+     // The hierarchical model
+     cpus {
+
+       CPU0: cpu@0 {
+         device_type = "cpu";
+         compatible = "arm,cortex-a53", "arm,armv8";
+         reg = <0x0>;
+         enable-method = "psci";
+         power-domains = <&CPU_PD0>;
+         power-domain-names = "psci";
+       };
+
+       CPU1: cpu@1 {
+         device_type = "cpu";
+         compatible = "arm,cortex-a57", "arm,armv8";
+         reg = <0x100>;
+         enable-method = "psci";
+         power-domains = <&CPU_PD1>;
+         power-domain-names = "psci";
+       };
+
+       idle-states {
+
+         CPU_PWRDN: cpu-power-down {
+           compatible = "arm,idle-state";
+           arm,psci-suspend-param = <0x0000001>;
+           entry-latency-us = <10>;
+           exit-latency-us = <10>;
+           min-residency-us = <100>;
+         };
+
+         CLUSTER_RET: cluster-retention {
+           compatible = "domain-idle-state";
+           arm,psci-suspend-param = <0x1000011>;
+           entry-latency-us = <500>;
+           exit-latency-us = <500>;
+           min-residency-us = <2000>;
+         };
+
+         CLUSTER_PWRDN: cluster-power-down {
+           compatible = "domain-idle-state";
+           arm,psci-suspend-param = <0x1000031>;
+           entry-latency-us = <2000>;
+           exit-latency-us = <2000>;
+           min-residency-us = <6000>;
+         };
+       };
+     };
+
+     psci {
+       compatible = "arm,psci-1.0";
+       method = "smc";
+
+       CPU_PD0: cpu-pd0 {
+         #power-domain-cells = <0>;
+         domain-idle-states = <&CPU_PWRDN>;
+         power-domains = <&CLUSTER_PD>;
+       };
+
+       CPU_PD1: cpu-pd1 {
+         #power-domain-cells = <0>;
+         domain-idle-states =  <&CPU_PWRDN>;
+         power-domains = <&CLUSTER_PD>;
+       };
+
+       CLUSTER_PD: cluster-pd {
+         #power-domain-cells = <0>;
+         domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+       };
+     };
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
