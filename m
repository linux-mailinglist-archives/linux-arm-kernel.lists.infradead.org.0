Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B98514F88B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 16:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QJelWu9ztkjunkdPho5gBXkrKnr0545RHBFK+DCcmY=; b=ppwDsadl8RFynd
	hYih/C/RTRjoDJSo9BkpAAEHQJZ0wqdWOhkFHmMV+OyI4R9QqIx43faAlO9wNCJ5NJGHz1rU051NW
	g6eYGsji25ndeqsPoabC30J0G1IqZSjjSWv+bxgW0BcII/HrDqKMaHOwq36x3Mglvnvx3YrezQJcV
	6jlfLe6F1y/f1YxHeCxbZgpsXdsbvidLujH2Rkjya979I64Ol6SEUMaQjewEx27w0zhDyIYozjzeY
	PTiTg3eUJQUZcChR5SqBpu08z/JNIupKqRbzstlFDmkhTz1zqFayCkUflHkrPgasHGyHRPz/cgZB4
	Z17HvBBdekz5cAh7z5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixujP-00049q-Q9; Sat, 01 Feb 2020 15:30:47 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixuj5-00035Z-9I
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Feb 2020 15:30:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580571028; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=RHHhicaTH9RuouOFtBe7AmBpXwqankHPMq8eW/hgkyk=;
 b=t0MEIkKKsKDjjhiK+4XLrRjY1xaBKlqVUPbocKHoB5/oByIu0ukz6NO0o1b/veEHdJCe+vj+
 uTP2K/L4ozEuIpG+GvEPK3emRdhBBWiSt73GVn++hGxiHr5sadzdImIgMQqfYUZOlMnSha1a
 Bumxo18tcEs3XKuGnAWOcbS9+14=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e35998d.7f391fe87ed8-smtp-out-n02;
 Sat, 01 Feb 2020 15:30:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 41A04C447B3; Sat,  1 Feb 2020 15:30:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A531BC433CB;
 Sat,  1 Feb 2020 15:30:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A531BC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org
Subject: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404, SC7180,
 SDM845, SM8150
Date: Sat,  1 Feb 2020 20:59:49 +0530
Message-Id: <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_073028_386846_6084A166 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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

Add missing compatible for watchdog timer on QCS404,
SC7180, SDM845 and SM8150 SoCs.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../bindings/watchdog/qcom-wdt.yaml           | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 5448cc537a03..7180c64f54fb 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -14,14 +14,19 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - qcom,kpss-timer
-      - qcom,kpss-wdt
-      - qcom,kpss-wdt-apq8064
-      - qcom,kpss-wdt-ipq4019
-      - qcom,kpss-wdt-ipq8064
-      - qcom,kpss-wdt-msm8960
-      - qcom,scss-timer
+    items:
+      - enum:
+          - qcom,apss-wdt-qcs404
+          - qcom,apss-wdt-sc7180
+          - qcom,apss-wdt-sdm845
+          - qcom,apss-wdt-sm8150
+          - qcom,kpss-timer
+          - qcom,kpss-wdt-apq8064
+          - qcom,kpss-wdt-ipq4019
+          - qcom,kpss-wdt-ipq8064
+          - qcom,kpss-wdt-msm8960
+          - qcom,scss-timer
+      - const: qcom,kpss-wdt
 
   reg:
     maxItems: 1
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
