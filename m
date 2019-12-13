Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACC111DD42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8AzFoZ88iMEm8B7KV4DZdIRG1nmFnKSZBjS8So6n+0=; b=HTW9I77fXBqc8G
	hdQEvUv5Hxuq3v74WqNYy7YXqRK7ZX6u3to6xrNn9W07NcHGy2Ga24hCwI26v216RfoSvC4KMNG1h
	SJJAWbO8LrqjPwU7eB5lcP2GOxhCWCtZBsWIhrwgWfGogUa89JFE9mKvpYvmb3bLqh/vxR4yFlwJL
	ZyE6Q6+4McCtG1QQa/FkGA4eqEU16nUw+Tab7QBJuinQ3iKcpd876P4flxqLKHzvy1UpHwK58Idu3
	xdtE/KnbM4hrSYODsZWFdgipoSak+X7IwL9W78vd4S56buUUGvpGy2QSZhyc1t1tfGZyMeMJkHJfa
	yxRD3q7gcb7WYjzmL3RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcxk-0001of-NA; Fri, 13 Dec 2019 04:54:00 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcxO-0001g6-3i
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:53:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576212818; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=No4NrS8RZKo/+qzd4kS2FzUPDmPkdbcL6unu08f9QF0=;
 b=m28AeCqzYtS2j4ma947n9bYf2RbI7XqD9FMGxEw6UcKcZDhwRMsFxBNz6Y8UqWptC3pD5Foi
 9ouLdGY/fvstjaJEzNw/xxavEKljVBHYhKAlsFJPBkhitT4CYYWviVM3OfjO6LY+jEVfZdW3
 cfDEYGRiaPEGXE1+A0UnvRxRMAU=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df31950.7f7037407068-smtp-out-n03;
 Fri, 13 Dec 2019 04:53:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D0EE9C433A2; Fri, 13 Dec 2019 04:53:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 88E18C43383;
 Fri, 13 Dec 2019 04:53:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 88E18C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
Date: Fri, 13 Dec 2019 10:23:18 +0530
Message-Id: <0b095b65496073a2ddf9de120f7809619b42cd1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_205338_325917_0681C4C9 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Boyd <swboyd@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert QCOM watchdog timer bindings to DT schema format using
json-schema.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 -----------
 .../bindings/watchdog/qcom-wdt.yaml           | 47 +++++++++++++++++++
 2 files changed, 47 insertions(+), 28 deletions(-)
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
index 000000000000..4a42f4261322
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
+
+maintainers:
+  - Andy Gross <agross@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: qcom,kpss-timer
+      - const: qcom,kpss-wdt
+      - const: qcom,kpss-wdt-apq8064
+      - const: qcom,kpss-wdt-ipq4019
+      - const: qcom,kpss-wdt-ipq8064
+      - const: qcom,kpss-wdt-msm8960
+      - const: qcom,scss-timer
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  timeout-sec:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Contains the watchdog timeout in seconds. If unset, the
+      default timeout is 30 seconds.
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
---

I have added Andy as the maintainer here since the get_maintainer script
showed him. If he is not happy, then I can change it to Bjorn probably and
again if he is not happy ;-) then I will add myself or whoever they suggest.

--
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
