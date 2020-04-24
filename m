Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251F41B72ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xZ34TZ/CqGFH9ETWoKhkgYBqx6vcN5FvqLTgce5qfsA=; b=JhgWz3lY6Sef7U
	+CYVBANU6Co5EA0xHD0kuCC0lOYRBOLRt4nDnDVZEqmCghZ72PmRMXzDyRPhVnyFx/RrPSKSDubH4
	ryfDPlsThysgg8veutbbRNQh++9Q/Z8VnydC56UWi5uJUtKboBhapZ69q2QVdS6wf3Pb2cZ74XZPr
	DNAiEouh+UL3DyqzHdIEidc46eQ6J7DWVTut/TQNvGpiN20ZU2SlGcMESUD+jGEIHzF+DUi+9HXgd
	N1Kq4o8QfFijWrwljiE2NKS1XHNIu5yBDSlpJjrR9dI8XpPWGge+3QvarhpfXVU3719LRloJmKwDE
	sKC6m15GCEUJ0MLeWJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwKV-0000cY-03; Fri, 24 Apr 2020 11:17:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwKL-0000c2-U1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:17:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587727020; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=+S6TTE3qIQR3bjpweChMEUVjD/kVHW4m2uU9Je20LDk=;
 b=XZHZkue7TOEI1F2t59A4vzfGncxuq8yqiHxWZG+HzdY0k9+zPs6BXBRri1Rnx58WcN7uH1Cv
 aN7kGrNUC2Da+a1dcIXNefCMwgqy5m8wW3syi4Nz/T3ptFlt8w4LHzt+J4c+UcpwgLLaT917
 TGWq6dhppvaqGx/n3p0f5wgv4Q4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea2caab.7ff455bab730-smtp-out-n03;
 Fri, 24 Apr 2020 11:16:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7A055C43636; Fri, 24 Apr 2020 11:16:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DB17AC433F2;
 Fri, 24 Apr 2020 11:16:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DB17AC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH] arm64: dts: qcom: sc7180: Support ETMv4 power management
Date: Fri, 24 Apr 2020 16:46:44 +0530
Message-Id: <20200424111644.27970-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041702_034348_737FF6AE 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that deep idle states are properly supported on SC7180,
we need to add "coresight-loses-context-with-cpu" property
to avoid failure of trace session because of losing context
on entering deep idle states.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 4216b574c080..cab86194a870 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1621,6 +1621,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1639,6 +1640,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1657,6 +1659,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1675,6 +1678,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1693,6 +1697,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1711,6 +1716,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1729,6 +1735,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1747,6 +1754,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
