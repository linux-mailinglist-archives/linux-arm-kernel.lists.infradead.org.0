Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C209C159C20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+p+m4jif7pLHFbMZZ25MSHtXg8hkorh5HyqldAx+6g4=; b=ubscv3dfYa8UU7
	PSY0rS64UvYTzO6LZqqOkjgvRJzYzFikb4RCfS1vCjnXn/miHAKfdS7Le9rQPOqMQ/V4kVXU39o6X
	QoBaYQpSGURHbpbfbTDmcmg7fRX7aYf06NUwFrmRt59DFr1SM3ehU72zyZXbBeLU9DFO19vTuwBGW
	UAitpvaSUi4KtNaDx03qeO6JNW8A/kxuoSAv1zauF2uXjzSXoak0XDmdBxKD4Zv+J7w7OzlcMpyam
	p0QTuyM/HeO/mpEyKkJ6XwhYNfttqMkeUXCXK/6PDZPWnvSdB5J8qLIoTYmuthonLXZqwgePptQFF
	UCCHkcQirkaGusFD1/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1dy8-0008V6-BJ; Tue, 11 Feb 2020 22:25:24 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1dxi-00088b-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:25:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581459898; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=6povPrmreL0VVqG2ffIM23YUf9TbsIQ/By4vC7QiKZY=;
 b=SqHCltkj/LbRgIFyEWOB1WkCA79SOl2l8jSASaHQpCE7UooS3ywKIiaJErlq3xjj8RSRSQrk
 cIg3sWRFuSE6DIzjDiFu/1UGcgpQIa6XanowRa+t/QC8/szoiX1R3eN+2ih5UVJUVn5Eum/i
 OiwLkYW49O3upJOBDazNiQvqvrg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4329b4.7ff133caad50-smtp-out-n02;
 Tue, 11 Feb 2020 22:24:52 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B4B63C4479C; Tue, 11 Feb 2020 22:24:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 21A9AC43383;
 Tue, 11 Feb 2020 22:24:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 21A9AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCHv3 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
Date: Wed, 12 Feb 2020 03:54:29 +0530
Message-Id: <7109121d9522ccac9be9c8c9a1060d26893da5f3.1581459151.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1581459151.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1581459151.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_142458_993847_76C88F8B 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Guenter Roeck <linux@roeck-us.net>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert QCOM watchdog timer bindings to DT schema format using
json-schema.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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
