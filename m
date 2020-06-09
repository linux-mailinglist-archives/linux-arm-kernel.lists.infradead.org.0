Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2599B1F3C96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gh9ovST6a2PHiV2wBg0vtawQipq/bgZq3xNFduzWP9k=; b=tQd1Q3Kml3otMu
	wHAt1jeunR+Io77vK+24g77JrtOpsz+obmY3wh8ivQgKHAj2fYmFrC7jfDW+Leg9zdYrc967Lk+c9
	qu2Ae+MFo7tbX97gFRBox2jdbqN6+9pto5ndEzET0cbRFOEgoIoD83yZrR7tqSnZOSXcvcgvQnbnl
	3Qpws9zEwn7n63mvsqRCB9vAXK0hzGUw4tc13DrNSfElc2B11rLhjxew+PwMfpHs46Cdmtx7EZbb2
	cZAbxpSYU577ZeqR8IsWrj0LNsyYkTY59aL8v1ca11o0lcQaf4J39M3abmYHD/rs/2OvW0RyHl+cA
	rVnCW69mTjah0/anlqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieME-0007mw-HL; Tue, 09 Jun 2020 13:32:02 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieLU-0007VX-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:31:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591709485; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=Pu361BIVMutlEnaoObCy2bBsM7kC4Zxpj0q8V0gR8wA=;
 b=S8qKVTmx0U31geAozd2r1RcelsW3KnvDt5cxRxBaGTrDD2SwOj+FKsGHabWMON4CiRu9PLFn
 cRbRy4wldLSDGNXTu0OcH50cMNv3kd03LxYEs3pXcjf1uRmaF5eLSnHJ4UMd9PWx17hwV4ht
 8fYx+xSC9+Q6ihBqypDcoSrC6yY=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-east-1.postgun.com with SMTP id
 5edf8f0ea6e154319f7f076c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 09 Jun 2020 13:30:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E53A6C433A1; Tue,  9 Jun 2020 13:30:53 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C744DC433C6;
 Tue,  9 Jun 2020 13:30:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C744DC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 1/4] arm64: dts: qcom: sc7180: Add support to skip powering up
 of ETM
Date: Tue,  9 Jun 2020 19:00:28 +0530
Message-Id: <8c5ff297d8c89d9d451352f189baf26c8938842a.1591708204.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_063125_457877_4B560AAA 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jonathan Marek <jonathan@marek.ca>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "qcom,skip-power-up" property to skip powering up ETM
on SC7180 SoC to workaround a hardware errata where CPU
watchdog counter is stopped when ETM power up bit is set
(i.e., when TRCPDCR.PU = 1).

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

Depends on ETM driver change here:
 - https://git.linaro.org/kernel/coresight.git/commit/?h=next-v5.8-rc1&id=159e248e75b1b548276b6571d7740a35cab1f5be 

---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 7c2b79dda3d7..f684a0b87848 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1810,6 +1810,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1829,6 +1830,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1848,6 +1850,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1867,6 +1870,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1886,6 +1890,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1905,6 +1910,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1924,6 +1930,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1943,6 +1950,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
