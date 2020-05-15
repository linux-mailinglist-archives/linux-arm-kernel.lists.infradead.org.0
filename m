Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F7F1D4B9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRqQiMT6sv3qrxj6cfyq7O6vj2QfcGr1rYWQpoKdeKo=; b=e4WhGP3MnKMmMo
	AeIEZ/3OOVWymfo4FzUauHyFd3CvsgHkNzi6W1Ax6sZWGZQ56VSrmCXdyHLeE7/L1Bvc5ngFMGvrb
	KSBkZNfeFP2/dK2Ng7D5TuFq4qoTubY+Gs2KfcYHyyRxlPkfIWK8y+8MKFQOCQ/CjXJs1xm3RTd1Y
	CF7vQLknWEWeVEWFK5tlE+U4xelpJgRpzQvhn/O5BQ4YfZPIj6X90oKL9mcjzPrhRdFVfRSzS8fw6
	17qyIsAVvqZFEz9td33UMaJlLy81Mvji96h4jYaSXlG1l0Z8v0oD/baOy9PmFcIsE7ENNhXvuvNvf
	2kAUH9NgqeaYxDbqfPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXxC-0004Ff-Sa; Fri, 15 May 2020 10:52:34 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXwd-00043n-V3
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:52:04 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589539920; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=Ee8NO6/5OJ52E2zUjD2OXevvWt6lIkUWaN1XFxYR8Yc=;
 b=LY1oCLl6mIOhwuPpNyx3FUl39M8KEwFxYt6UFUQ6LOCO3llR5fmYAd9U3Lqo/nFukw+fCBcw
 LiZ71Ksd60kfA0Q0J1BwROlPhcPl0Ogd1KWgfetuqyU9gcensOfOKwAJYuCkczsFnuYlYY9H
 q3YSvzbBQ1HUfdGRkvGfOZUzJ8s=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ebe744fd4b17227eab51f67 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 15 May 2020 10:51:59
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 39682C43637; Fri, 15 May 2020 10:51:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C7D77C433F2;
 Fri, 15 May 2020 10:51:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C7D77C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sc7180: Support ETMv4 power management
Date: Fri, 15 May 2020 16:21:36 +0530
Message-Id: <b0a2ac4ffefe7d3e216a83ab56867620f120ff08.1589539293.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035200_985912_39F2BB3F 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that deep idle states are properly supported on SC7180,
we need to add "coresight-loses-context-with-cpu" property
to avoid failure of trace session because of losing context
on entering deep idle states.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

Resending this because the last patch sent here - https://lore.kernel.org/patchwork/patch/1230367/
seems to have added "coresight-loses-context-with-cpu" to
replicator node instead of etm7 node.

---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 4069bb1c93af..8b3707347547 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1656,6 +1656,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1674,6 +1675,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1692,6 +1694,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1710,6 +1713,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1728,6 +1732,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1746,6 +1751,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1764,6 +1770,7 @@
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			arm,coresight-loses-context-with-cpu;
 
 			out-ports {
 				port {
@@ -1782,6 +1789,7 @@
 
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
