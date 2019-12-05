Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31928113E9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbAp/9+uY7cGjtTi4ZECJs27N6H2L0dhOREYSC2X+0E=; b=jXvVz24h320D2R
	4ARRWsbGV8xDsf8V+YHSUrG87bIh8j6rFoe013C5b/Ywqmw4GSxZmH/yZXkc4Km6BPVGccH2GFyAO
	gy5MlMnvdG+ff+EZ5GzBREXvHCqq46RyqiKIzkcPncWxPf20VuCGdISWGkQ3Dc7X15EpD6VbZ/OPN
	IShs9OV9ZZcg9cmHdZhyNrQ+/8oeXHs+CpxVVxR/MObgKnXbB2TouU8sT3esbkBRZeKnHyO5d0fWI
	VfRkIajIXWOsPKodiNsOv2LZ/naintAKAZ2Fmx2HmYsFc2iPi6+eloihVUmb2oKeQJzdBZ4hm89wq
	CtL2+mBDNYuaqCjp6+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnp2-0002J9-AM; Thu, 05 Dec 2019 09:53:20 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnor-0002Ds-BA
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575539585;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
 bh=Ce3K11ERWLy+EF9gQF7x6AErPgl+OIA/TJqM7S8904Q=;
 b=arIxJE2KEg2amLwiQ8Ta5aVU3PlIoWlX94UBLI2poZbh+BtX/Fy9EypKvzYZD5lW
 yVw2bJVJHjARcDZc7WgkGYZSfTMDIRVF3xSFs740/e2uf6etOqOPvFCjZg2zaadyRJw
 tUPWrtm7mfZCxwwaKxEqe4deRHu5drhbc2b769so=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575539585;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=Ce3K11ERWLy+EF9gQF7x6AErPgl+OIA/TJqM7S8904Q=;
 b=dZ4p0oZJ2xVLMg3P/gybW8U5vmn09A6rBdoSBUiQIy2nQGrALDzOGbaMLACegGip
 2FyytO8I6Zlo9v+BFRYbVYMqDQpVRaFgjU7e9/ugjPWntHvsn4NUODuDik+pqtTf34N
 6r5BJ0sFuLU+06pPStJG5t9Fdt3dVsr9NxLlWX7A=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A4863C447B4
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tony Luck <tony.luck@intel.com>, James Morse <james.morse@arm.com>,
 Robert Richter <rrichter@marvell.com>, linux-edac@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
Date: Thu, 5 Dec 2019 09:53:05 +0000
Message-ID: <0101016ed57a314c-015f99ab-42d9-4865-a53c-bb1e6f01122e-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.05-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015309_411386_E954CBDD 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tsoni@codeaurora.org, Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds DT bindings for Kryo EDAC implemented with RAS
extensions on KRYO{3,4}XX CPU cores for reporting of cache
errors.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../bindings/edac/qcom-kryo-edac.yaml         | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml

diff --git a/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
new file mode 100644
index 000000000000..1a39429a73b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/edac/qcom-kryo-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kryo Error Detection and Correction(EDAC)
+
+maintainers:
+  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
+
+description: |
+  Kryo EDAC is defined to describe on-chip error detection and correction
+  for the Kryo CPU cores which implement RAS extensions. It will report
+  all Single Bit Errors and Double Bit Errors found in L1/L2 caches in
+  in two registers ERXSTATUS_EL1 and ERXMISC0_EL1. L3-SCU cache errors
+  are reported in ERR1STATUS and ERR1MISC0 registers.
+    ERXSTATUS_EL1 - Selected Error Record Primary Status Register, EL1
+    ERXMISC0_EL1 - Selected Error Record Miscellaneous Register 0, EL1
+    ERR1STATUS - Error Record Primary Status Register
+    ERR1MISC0 - Error Record Miscellaneous Register 0
+  Current implementation of Kryo ECC(Error Correcting Code) mechanism is
+  based on interrupts.
+
+properties:
+  compatible:
+    enum:
+      - qcom,kryo-edac
+
+  interrupts:
+    minItems: 1
+    maxItems: 4
+    items:
+      - description: l1-l2 cache faultirq interrupt
+      - description: l1-l2 cache errirq interrupt
+      - description: l3-scu cache errirq interrupt
+      - description: l3-scu cache faultirq interrupt
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 4
+    items:
+      - const: l1-l2-faultirq
+      - const: l1-l2-errirq
+      - const: l3-scu-errirq
+      - const: l3-scu-faultirq
+
+required:
+  - compatible
+  - interrupts
+  - interrupt-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    kryo_edac {
+      compatible = "qcom,kryo-edac";
+      interrupts = <GIC_PPI 6 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "l1-l2-faultirq",
+                        "l1-l2-errirq",
+                        "l3-scu-errirq",
+                        "l3-scu-faultirq";
+    };
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
