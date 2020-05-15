Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000481D4B9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY4MtwLiocF4ICr2gH8uwxT6dXuReoAXqakwouznjdY=; b=sumR/rZmWaMFTn
	NRY13QyC1fVMmv8fF49tAKtGG2oAV4di3TNuqXfV7MRrLXSCzVyfEejn1AGiCKh7q7/mnjnSinuz4
	51MoNLVdHcQQrco3YzzngsA6Kgu5eu9h4yAhsZN7vM0hyL4tiuEBC7rNuyqjlKoYvisWSKIXP1bZs
	K12qSs65QByFr+voslCCiVg55Z5gO+g5dDZ2V6cJHpmwsSywZhFXJkFEgIMpr1k8SHLhFguzZIpb/
	BEZZX6esIDRPA5GXHC4VNOAHHJHdnf3tnl+rUuVXktpBLvgmq3M8A19QLzi8D8O1VfL5jhm2ryH2a
	8rxFycwzdtra9bVQ/Efg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXxS-0004WO-J2; Fri, 15 May 2020 10:52:50 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXwn-00043S-3p
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:52:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589539932; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=WTO64yR7Gyv3bO/7Aolr2Ns3FQUteAECAxwuDLyZ4qg=;
 b=oIAiEmbPGfRA6DhbdJDAYOpJw5EfsqcALGVtjaYqP9mhIyVu7s/JzgWvMtmgs/jV7arCz87n
 n/lme6l7u2y0Tv0CSuMUvvUEpMcAw7Np4CabBDqdoidpmndf9hfWLOzWp4ARp96mQZ1tSKto
 +mZefEscj5oDa1L29njk4E0/pWA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5ebe7454d915e862f6e99a22 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 15 May 2020 10:52:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 743A4C432C2; Fri, 15 May 2020 10:52:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4A776C433D2;
 Fri, 15 May 2020 10:51:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4A776C433D2
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
Subject: [PATCH 2/2] arm64: dts: qcom: sc7180: Add support to skip powering up
 of ETM
Date: Fri, 15 May 2020 16:21:37 +0530
Message-Id: <7599d58142dcefbcb08a2eaff71c7f411a1d52b1.1589539293.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035212_755577_9BA04E13 
X-CRM114-Status: GOOD (  11.51  )
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

Add "qcom,skip-power-up" property to skip powering up ETM
on SC7180 SoC to workaround a hardware errata where CPU
watchdog counter is stopped when ETM power up bit is set
(i.e., when TRCPDCR.PU = 1).

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

Depends on ETM driver change here - https://lore.kernel.org/patchwork/cover/1242100/

---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 8b3707347547..de4bae4ec224 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1657,6 +1657,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1676,6 +1677,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1695,6 +1697,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1714,6 +1717,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1733,6 +1737,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1752,6 +1757,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1771,6 +1777,7 @@
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
 			arm,coresight-loses-context-with-cpu;
+			qcom,skip-power-up;
 
 			out-ports {
 				port {
@@ -1790,6 +1797,7 @@
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
