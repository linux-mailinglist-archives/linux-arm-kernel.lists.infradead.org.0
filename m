Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB411DD49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSYuzQuVh+ecKvpRLu5/XZmq8rfLlsO469HkYdit3K4=; b=oF0etZ8k//2QxB
	95lONz7u6X+U2L/FvafdzID7ZrzNLTkA1yjFLkXjK5JvAgarump1G93h72UMc/J7i+Ktlh8PpgdNE
	+XXhPtgfpsMnTK/ifg6jZAi4KePFpaJFB0bteEkB86pMJgtpo5fcr8NIvJ4M/qbFxTOk9uAcfhXiw
	eGqOdATKPbKbnCOqFoYFiSaWLtTFXdsFlE980VxpKo31zN9wZua2hh9N7i6pmbDaRlhs9dLdRs342
	EgI9dF/buMJ/1IFt8jxgWMdMR+7nSc+R59hRmaSYUs6VusBQm5OBmaRu1S0A+17TtS3ztP6dNmPX2
	AUy8pTiOb3/D387uQoQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcyA-0002Mi-1N; Fri, 13 Dec 2019 04:54:26 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcxY-0001g6-8t
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:53:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576212828; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=hBwq830ssQQu7DOCklsksw2TNX9kkLNPJbT5z7eq4z8=;
 b=Qerbl+6WrXKi2uwThphUabqJjOM6MYIHIDqKUzzmqnOymfPVVh17M/HqFwIe0o8DnFBu9xrb
 Qg4usEbRriXes5igZAWme5icyN+bS+2NmCgd1q1msFUpFsI9vvMKjVczOQKg1/0vfSec7Hic
 uvoOsJ1fr1IbiCAmI9SQ/UKo5oE=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df3195b.7f1fb16f4b58-smtp-out-n03;
 Fri, 13 Dec 2019 04:53:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5CB37C447AC; Fri, 13 Dec 2019 04:53:47 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D97C1C447A2;
 Fri, 13 Dec 2019 04:53:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D97C1C447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: qcs404: Update the compatible for
 watchdog timer
Date: Fri, 13 Dec 2019 10:23:20 +0530
Message-Id: <757995875cc12d3f5a8f5fd5659b04653950970a.1576211720.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_205348_970065_8C48CC7A 
X-CRM114-Status: GOOD (  13.99  )
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

Update the compatible for QCS404 watchdog timer with proper
SoC specific compatible.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index f5f0c4c9cb16..c9e8e629045b 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -905,7 +905,7 @@
 		};
 
 		watchdog@b017000 {
-			compatible = "qcom,kpss-wdt";
+			compatible = "qcom,apss-wdt-qcs404", "qcom,kpss-wdt";
 			reg = <0x0b017000 0x1000>;
 			clocks = <&sleep_clk>;
 		};
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
