Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49A14F88A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 16:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0ZpxTw73tuewW/2L2IY8tB4XJ7vuE+8vXFbWn3fLcc=; b=IfRxXl7Mc+OO2q
	sruUu389UKG1vvOqpmvlWTqXFXL8c+ic4AxqCyiC7g20KKr4aT0qjfrOszyP0k4AV1lSdsQrzPlTp
	h/VcgaCCwST+BDEWo4F55BZnBWxASW08ei0jrF0+c1mQXNASug3q/PW709NbPxZYu5/ltJ+vfNZ+8
	tqS68tAqhNsABs5S8el5OekgrogYSEAuIR38Cd+FQ438SHpxLHUDQly6OvKqd/gV3yZprV77bDa2/
	vU7KUcW8t17cacJN8oH1fTo0SIikMSQSmf1OgP+lloPEnsFzid1LsTSlbFFfGX7sQSjwxWoyw6U3f
	bxeIWPydhlxeqjlkq7Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixujF-0003rJ-92; Sat, 01 Feb 2020 15:30:37 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixuix-0003kV-DA
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Feb 2020 15:30:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580571020; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=n41rmseTf/6rUYviUALNtRUhz+RI5Rvog5A6rvN1Ui0=;
 b=vGzLOi985S4Lsz/ERbjCbps0fRs3oCCYwEmCbNmCVGFqF3vDlzoNUjdbBZmbDmgOVLU01SAI
 7z0GotG/7/J4v7mgvSxF3PUQPIksZG+krYVeEa47LUo+aGAGsgoJEffo86XAgafMVsD+Bac1
 ab7Wb2T4AB1hGkWhIW3AX2IKPj0=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e359986.7f254e8f3d88-smtp-out-n02;
 Sat, 01 Feb 2020 15:30:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 14F6BC4479C; Sat,  1 Feb 2020 15:30:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0D8E0C433CB;
 Sat,  1 Feb 2020 15:30:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0D8E0C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org
Subject: [PATCHv2 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
Date: Sat,  1 Feb 2020 20:59:48 +0530
Message-Id: <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_073020_952302_4F8D4A5D 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert QCOM watchdog timer bindings to DT schema format using
json-schema.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 ------------
 .../bindings/watchdog/qcom-wdt.yaml           | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.txt b/Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
deleted file mode 100644
index 41aeaa2ff0f8..000000000000
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Qualcomm Krait Processor Sub-system (KPSS) Watchdog
----------------------------------------------------
-
-Required properties :
-- compatible : shall contain only one of the following:
-
-			"qcom,kpss-wdt-msm8960"
-			"qcom,kpss-wdt-apq8064"
-			"qcom,kpss-wdt-ipq8064"
-			"qcom,kpss-wdt-ipq4019"
-			"qcom,kpss-timer"
-			"qcom,scss-timer"
-			"qcom,kpss-wdt"
-
-- reg : shall contain base register location and length
-- clocks : shall contain the input clock
-
-Optional properties :
-- timeout-sec : shall contain the default watchdog timeout in seconds,
-                if unset, the default timeout is 30 seconds
-
-Example:
-	watchdog@208a038 {
-		compatible = "qcom,kpss-wdt-ipq8064";
-		reg = <0x0208a038 0x40>;
-		clocks = <&sleep_clk>;
-		timeout-sec = <10>;
-	};
diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
new file mode 100644
index 000000000000..5448cc537a03
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
+
+maintainers:
+  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,kpss-timer
+      - qcom,kpss-wdt
+      - qcom,kpss-wdt-apq8064
+      - qcom,kpss-wdt-ipq4019
+      - qcom,kpss-wdt-ipq8064
+      - qcom,kpss-wdt-msm8960
+      - qcom,scss-timer
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+examples:
+  - |
+    watchdog@208a038 {
+      compatible = "qcom,kpss-wdt-ipq8064";
+      reg = <0x0208a038 0x40>;
+      clocks = <&sleep_clk>;
+      timeout-sec = <10>;
+    };
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
