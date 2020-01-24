Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE66D1490F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQ3ssq2ndEdm5h63ixvNBikXL+50sXnQJ5UgXYkXK7w=; b=TIpFQlaIgIvf0y
	Rl8vu+S9eI5jIOKZmbjfj9E3EvVfF8O4YI5LMEFNkGV5VnjjAM30pxjVKNiFBQATRpPZcw/Dextjj
	l7uFwRC72wK3Nn359IO0ZoLZlR38Ak9gSp5z1aoC0X+yz4Ckbg7cFrrVI9/NbzwXr4mzhicw/fvDC
	yqxpivdCXPbm/rqzb0RsmXtNfT7iqzcCBsjwhCT3oVFPWEy6wQz41wqXIwodMpMyic0bcgsAQ2ZFF
	JLZjDdA0sa9PZIlCO7pdveIQEOlS9Grq04+ZDk42BeqAt+davSyWWQAHWm0YfYPzGxE64XPgf7lbP
	uf58oO+WuynTOEQrCCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7Wl-0003kb-HM; Fri, 24 Jan 2020 22:34:11 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7VN-0002aE-JC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:32:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579905166; h=References: In-Reply-To: Message-Id: Date:
 Subject: To: From: Sender;
 bh=FVjFxHUDub6SbAvYfGEAxOkKwiZBycsgDmoJKCRC37k=;
 b=MXdkaMqr9V/00T4MWodh+R7Zz8u/WKE+zdoKhuMCw9RTuMiKxV1lF1GNzMMCw5RyONzknwN9
 k2wFl+K0JdRGOl33uKp90nzE5iuq4wyomGvZZqSp/6iqczdtCK74AH6fESHzmP0CWfdk4RsN
 fS2tVtzcTkFPbfUmO2fJDw/ihPA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2b7084.7fe6daea0688-smtp-out-n02;
 Fri, 24 Jan 2020 22:32:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0280FC447A6; Fri, 24 Jan 2020 22:32:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from vgutta-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vgutta)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9BB76C433CB;
 Fri, 24 Jan 2020 22:32:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9BB76C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnkgutta@codeaurora.org
From: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 vinod.koul@linaro.org, psodagud@codeaurora.org, tsoni@codeaurora.org,
 jshriram@codeaurora.org, tdas@codeaurora.org, vnkgutta@codeaurora.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/7] dt-bindings: clock: Add RPMHCC bindings for SM8250
Date: Fri, 24 Jan 2020 14:32:21 -0800
Message-Id: <1579905147-12142-2-git-send-email-vnkgutta@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_143246_875012_6EF7DB9C 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Taniya Das <tdas@codeaurora.org>

Add bindings and update documentation for clock rpmh driver on SM8250.

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Taniya Das <tdas@codeaurora.org>
Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 include/dt-bindings/clock/qcom,rpmh.h                    | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 94e2f14..21398d1 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,sc7180-rpmh-clk
       - qcom,sdm845-rpmh-clk
       - qcom,sm8150-rpmh-clk
+      - qcom,sm8250-rpmh-clk
 
   clocks:
     maxItems: 1
diff --git a/include/dt-bindings/clock/qcom,rpmh.h b/include/dt-bindings/clock/qcom,rpmh.h
index edcab3f..2e6c54e 100644
--- a/include/dt-bindings/clock/qcom,rpmh.h
+++ b/include/dt-bindings/clock/qcom,rpmh.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018, The Linux Foundation. All rights reserved. */
+/* Copyright (c) 2018, 2020, The Linux Foundation. All rights reserved. */
 
 
 #ifndef _DT_BINDINGS_CLK_MSM_RPMH_H
@@ -19,5 +19,7 @@
 #define RPMH_RF_CLK3				10
 #define RPMH_RF_CLK3_A				11
 #define RPMH_IPA_CLK				12
+#define RPMH_LN_BB_CLK1				13
+#define RPMH_LN_BB_CLK1_A			14
 
 #endif
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
