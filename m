Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12639136AF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z1rrS3wk4xdbDWpKvSGXsbupt0WdHbzX49aaPneepUs=; b=AIRY9a6c3WTTmU
	kJjwYKoHOsKAaVTnyF7RUOLn+Jz+ikKbF2vli7v4d9MfJWMoYxR968deFK/1wOwbBAFFxPFR4snJU
	QusFhZm8HIPg4zrKtAf+zJjaQt9BpbX8Pa6IMY+gBvG7vOhnTTz/xwS2OvfMZHe7SpYYJUpMjXNf2
	GDqa4ytDR2mFKEkLnNXg7VcwaO3iZbvCJnVNvg34I2VlaS4z5rcISNbvpdX09hSsz+Aglky/kiTdT
	CQJYWuUwXodbih5brsgK7YCA0Y/d0spFVbDN/WKv2LRFc2Arwjl/v/Ukg8ssdeVg/u+yRzsQb6ThE
	SUDYTgm3my2ClCyc4YrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprNx-0003Wj-DS; Fri, 10 Jan 2020 10:19:21 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprMy-0002tl-P6
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:18:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578651500; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=Sur98Trxip0lS2J0kZIUVd9Xdj/kghewp4wUiHEmGZQ=;
 b=M/Mr9nz0qo0Su6EHX+056Xc8tmijy5pFBPyIiOUsBaWgS2psh/hiSizrpv5FaqGUMa3ChxBJ
 04bZRY3dUMCnogzvRzSQTYqu4CN5Icqt/oSQmu7QDRcMd6pAQjVdvyd3wK1R1DMpC/SjJpfD
 PYAFrY64yz7gBshNpkzFmSqgswY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e184f66.7f3c6f870500-smtp-out-n03;
 Fri, 10 Jan 2020 10:18:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 34C62C43383; Fri, 10 Jan 2020 10:18:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 67727C433A2;
 Fri, 10 Jan 2020 10:18:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 67727C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7180: Add iommus property to QUP0 and QUP1
Date: Fri, 10 Jan 2020 15:48:02 +0530
Message-Id: <20200110101802.4491-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021820_905590_1F5BD12A 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define iommus property for QUP0 and QUP1 with the proper SID
and mask. Below SMMU global faults are seen without this during
boot and when using i2c touchscreen.

QUP0:
arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x00000043, GFSYNR2 0x00000000

QUP1:
arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
arm-smmu 15000000.iommu: GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x000004c3, GFSYNR2 0x00000000

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 8011c5fe2a31..01e431f49c18 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -338,6 +338,7 @@ qupv3_id_0: geniqup@8c0000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			iommus = <&apps_smmu 0x43 0x0>;
 			status = "disabled";
 
 			i2c0: i2c@880000 {
@@ -546,6 +547,7 @@ qupv3_id_1: geniqup@ac0000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			iommus = <&apps_smmu 0x4c3 0x0>;
 			status = "disabled";
 
 			i2c6: i2c@a80000 {
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
