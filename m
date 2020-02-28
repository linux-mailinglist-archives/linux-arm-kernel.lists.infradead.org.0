Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50F7174251
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:43:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeqmO/uk2WcSXmt/IKHlNbQdccqQlJQrjR1soSGEW9Y=; b=lsVV91DmmD52Je
	XKuqCmsDLRKB58PciB8JacB92/qUSGCj8wNqFCo+TE0HUGn+XC8JNmE/EnSkTGrwzkTRmGYZeDrTF
	rCxQ71co5E/YG667GK2cU7k0cz0FVmI4IBHSKnDd0TH9XVKm3WASOgRwjORSwoiMYzfX7kWMsktzz
	OXjxkiwsvVdhioEIYDjFPyTqp+67GJ2iYMGffhws3IdY/oZAD6pE6lOUqv6J1mXzaqA+SESimkyVj
	BSFfPYj29uSzYLo75WHdUjXY0fnqz0eDHh4ApeyySjslwglWpi7MlPV4oxwPdifj35gj7Pm/JYNIU
	DJknD1NcgYDwumyNJsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oLo-0004E5-RS; Fri, 28 Feb 2020 22:43:20 +0000
Received: from mail-yw1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKk-0003fp-Oe
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:16 +0000
Received: by mail-yw1-xc31.google.com with SMTP id u78so127803ywf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HtBzbHspY1ceZ7S67aMewQoXLRoYH4pgWqbzOtj2eMg=;
 b=mj9hwy6Mti/O7HjLER8byZFrS6mQPnULSPL+IsIJxNascr6MeZ5AB2qGRvjTefcMSZ
 18R+SgT30GwZ4bOD9f6h70qzWgSQCpyOJ1Ci0My6NpF1PeK2sfuFOy+L26Iw2u5iykZJ
 KUzFFkDOWzlmjCiLA8XjW0Dce9a+dMruT4IBdgosALThxkL4scOOGUmJzoWLDxcgbWJZ
 n7rgrKbZgKI1lcQu/rT9rtJZdvFFb7c/B4Fh8szXwhGefieXISiFbmdPyCBqIG54/bq0
 KVsyA1NYzN1F/Uk9gB55Zyz6J0nzGYY3aPVCzxClV/ed0Ay2Q0ImXNNaqnf6mpJaWI9x
 9v3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HtBzbHspY1ceZ7S67aMewQoXLRoYH4pgWqbzOtj2eMg=;
 b=LvIlAyHStLiZgEJKTutgI+XzGfoQjjTmRhKRFQe4S/xSJ1VInHNVa5AHOlBCcH264c
 hziiVu0kLKBqCH5r73K4jYB+Y5t7sflij/XqR+8l9OI2C1MD92xYOXgxF2H9bRKvexBY
 nEYyEzgynwTKD7BYkHXeGYGvH8DD5sc565eZaux4JI7AKXfTtebqsddVrHSSDfM/vmQh
 RSsaeE1hHVua7aHMCRpa49loi5LFdPTLQBdNi/1zv+3IfkLrsrXKXVEnheVYFhiS40bN
 sM5jRZUJ6JAs6zlV2yQFqv5kv6fNxmq1LlNgzzaoEnQizsO4iiQ3xGZ3ItXktBs4Uk3m
 bcrQ==
X-Gm-Message-State: APjAAAV0pLHXT+YDnxbUg1wFRqX0LMeurI8AwUSoQ+n68gEJeP5p95fq
 mgNJuHuvvQCjFZY6twiDRQVZjw==
X-Google-Smtp-Source: APXvYqz1pRiPHzLlLz3CG+TFCb/qvF248lOfBZnJVqUl3hArx6azdJ7lWy0mw/HNLBIzcvfQJDUZhg==
X-Received: by 2002:a0d:d64d:: with SMTP id y74mr6951357ywd.386.1582929733568; 
 Fri, 28 Feb 2020 14:42:13 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:13 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, David Miller <davem@davemloft.net>
Subject: [PATCH 02/17] dt-bindings: soc: qcom: add IPA bindings
Date: Fri, 28 Feb 2020 16:41:49 -0600
Message-Id: <20200228224204.17746-3-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144214_802222_7FD706D3 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, devicetree@vger.kernel.org,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Rob Herring <robh@kernel.org>,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Evan Green <evgreen@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the binding definitions for the "qcom,ipa" device tree node.

Signed-off-by: Alex Elder <elder@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

 NOTE:	Rob, you signed off on this last year.  I made a single
	change to it (which you suggested):  the license is now
	dual GPL 2.0/BSD 2-clause.  If you have any objection to
	including your sign-off please say so.

					-Alex

 .../devicetree/bindings/net/qcom,ipa.yaml     | 192 ++++++++++++++++++
 1 file changed, 192 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
new file mode 100644
index 000000000000..91d08f2c7791
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -0,0 +1,192 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qcom,ipa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IP Accelerator (IPA)
+
+maintainers:
+  - Alex Elder <elder@kernel.org>
+
+description:
+  This binding describes the Qualcomm IPA.  The IPA is capable of offloading
+  certain network processing tasks (e.g. filtering, routing, and NAT) from
+  the main processor.
+
+  The IPA sits between multiple independent "execution environments,"
+  including the Application Processor (AP) and the modem.  The IPA presents
+  a Generic Software Interface (GSI) to each execution environment.
+  The GSI is an integral part of the IPA, but it is logically isolated
+  and has a distinct interrupt and a separately-defined address space.
+
+  See also soc/qcom/qcom,smp2p.txt and interconnect/interconnect.txt.
+
+  - |
+    --------             ---------
+    |      |             |       |
+    |  AP  +<---.   .----+ Modem |
+    |      +--. |   | .->+       |
+    |      |  | |   | |  |       |
+    --------  | |   | |  ---------
+              v |   v |
+            --+-+---+-+--
+            |    GSI    |
+            |-----------|
+            |           |
+            |    IPA    |
+            |           |
+            -------------
+
+properties:
+  compatible:
+      const: "qcom,sdm845-ipa"
+
+  reg:
+    items:
+      - description: IPA registers
+      - description: IPA shared memory
+      - description: GSI registers
+
+  reg-names:
+    items:
+      - const: ipa-reg
+      - const: ipa-shared
+      - const: gsi
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+      const: core
+
+  interrupts:
+    items:
+      - description: IPA interrupt (hardware IRQ)
+      - description: GSI interrupt (hardware IRQ)
+      - description: Modem clock query interrupt (smp2p interrupt)
+      - description: Modem setup ready interrupt (smp2p interrupt)
+
+  interrupt-names:
+    items:
+      - const: ipa
+      - const: gsi
+      - const: ipa-clock-query
+      - const: ipa-setup-ready
+
+  interconnects:
+    items:
+      - description: Interconnect path between IPA and main memory
+      - description: Interconnect path between IPA and internal memory
+      - description: Interconnect path between IPA and the AP subsystem
+
+  interconnect-names:
+    items:
+      - const: memory
+      - const: imem
+      - const: config
+
+  qcom,smem-states:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: State bits used in by the AP to signal the modem.
+    items:
+    - description: Whether the "ipa-clock-enabled" state bit is valid
+    - description: Whether the IPA clock is enabled (if valid)
+
+  qcom,smem-state-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: The names of the state bits used for SMP2P output
+    items:
+      - const: ipa-clock-enabled-valid
+      - const: ipa-clock-enabled
+
+  modem-init:
+    type: boolean
+    description:
+      If present, it indicates that the modem is responsible for
+      performing early IPA initialization, including loading and
+      validating firwmare used by the GSI.
+
+  modem-remoteproc:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      This defines the phandle to the remoteproc node representing
+      the modem subsystem.  This is requied so the IPA driver can
+      receive and act on notifications of modem up/down events.
+
+  memory-region:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    description:
+      If present, a phandle for a reserved memory area that holds
+      the firmware passed to Trust Zone for authentication.  Required
+      when Trust Zone (not the modem) performs early initialization.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - interconnects
+  - qcom,smem-states
+  - modem-remoteproc
+
+oneOf:
+  - required:
+    - modem-init
+  - required:
+    - memory-region
+
+examples:
+  - |
+        smp2p-mpss {
+                compatible = "qcom,smp2p";
+                ipa_smp2p_out: ipa-ap-to-modem {
+                        qcom,entry-name = "ipa";
+                        #qcom,smem-state-cells = <1>;
+                };
+
+                ipa_smp2p_in: ipa-modem-to-ap {
+                        qcom,entry-name = "ipa";
+                        interrupt-controller;
+                        #interrupt-cells = <2>;
+                };
+        };
+        ipa@1e40000 {
+                compatible = "qcom,sdm845-ipa";
+
+                modem-init;
+                modem-remoteproc = <&mss_pil>;
+
+                reg = <0 0x1e40000 0 0x7000>,
+                        <0 0x1e47000 0 0x2000>,
+                        <0 0x1e04000 0 0x2c000>;
+                reg-names = "ipa-reg",
+                                "ipa-shared";
+                                "gsi";
+
+                interrupts-extended = <&intc 0 311 IRQ_TYPE_EDGE_RISING>,
+                                        <&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+                                        <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+                                        <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+                interrupt-names = "ipa",
+                                        "gsi",
+                                        "ipa-clock-query",
+                                        "ipa-setup-ready";
+
+                clocks = <&rpmhcc RPMH_IPA_CLK>;
+                clock-names = "core";
+
+                interconnects =
+                        <&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
+                        <&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
+                        <&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
+                interconnect-names = "memory",
+                                        "imem",
+                                        "config";
+
+                qcom,smem-states = <&ipa_smp2p_out 0>,
+                                        <&ipa_smp2p_out 1>;
+                qcom,smem-state-names = "ipa-clock-enabled-valid",
+                                        "ipa-clock-enabled";
+        };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
