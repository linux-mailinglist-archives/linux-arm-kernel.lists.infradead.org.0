Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE6FDBE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nq2qaJgBZvv9rGs1YzMhJ/AuloKRk8CwoRr0n2iJp88=; b=tBoxDbGCf03w+o
	Q7echY6RAQFk4uDqdnzNP1CjjY0O791CdOBSyPS9igQd8KE7Tufh2GpD8vWIMRgIouorwJRekDQta
	8hAaGwLMcO2rNvZ1Fz4ZFzHJklva2fuA2JJepF6QJjLQLcNeOGA/Qp3uOSGP5q0UgCHY0teKy/mJ9
	eo5dlFy2spIZoAgwcbwmTG25nm/NvbEyU7fhw2QYyOZQaYW3Cz90o0e0I+h4emuwosdsgz+S9O7lB
	4rfJysgRVphjvcdrxDjol3D6YAgj1HOfJdlF14ZbVT678Ju8fFGyGs3x4Zhzvlu2D4Nm7/wPXe3E7
	9t8ZF1aHgS3374NzNaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZKs-00013d-07; Fri, 15 Nov 2019 11:00:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZKB-0000qN-Qg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:59:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 73FF360A66; Fri, 15 Nov 2019 10:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815575;
 bh=w4QH9kjVmgewfG3c+BF4ktAbybKdDQvOQoZ4mmz6X9E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lDQs1qaaT9XX3UpHPH/gEKCml9WLCpNMY2KmSpv2OBD+Aw5FNJ8PO2zbFj/QXR2E5
 M6BiCaGaASMn1gmUXTmUwvr7BbmQtK0PALM1OXlldkOxCiosLTUNDwD+nvgoqlQom0
 HKVDdjP9h1tU/7Sy7MtZMXEicPthW7OubH/ULb0s=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2C63F60B10;
 Fri, 15 Nov 2019 10:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815575;
 bh=w4QH9kjVmgewfG3c+BF4ktAbybKdDQvOQoZ4mmz6X9E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lDQs1qaaT9XX3UpHPH/gEKCml9WLCpNMY2KmSpv2OBD+Aw5FNJ8PO2zbFj/QXR2E5
 M6BiCaGaASMn1gmUXTmUwvr7BbmQtK0PALM1OXlldkOxCiosLTUNDwD+nvgoqlQom0
 HKVDdjP9h1tU/7Sy7MtZMXEicPthW7OubH/ULb0s=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2C63F60B10
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>, bjorn.andersson@linaro.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: msm: Rename cache-controller to
 system-cache-controller
Date: Fri, 15 Nov 2019 16:29:11 +0530
Message-Id: <83394ae827ce7c123228b749bcae2a2c470e88a4.1573814758.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025935_924452_F0B47EBA 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DT schema checks for the node name 'cache-controller' and enforces
that there has to be a cache-level associated with it. But LLCC is
a system cache and does not have a cache-level property and hence
the dt binding check fails. So let us rename the LLCC cache-controller
to system-cache-controller which is the proper description and also
makes the schema happy.

Suggested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
index 558749065b97..79902f470e4b 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
@@ -47,7 +47,7 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-    cache-controller@1100000 {
+    system-cache-controller@1100000 {
       compatible = "qcom,sdm845-llcc";
       reg = <0x1100000 0x200000>, <0x1300000 0x50000> ;
       reg-names = "llcc_base", "llcc_broadcast_base";
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
