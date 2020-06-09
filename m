Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA19E1F3CA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVSQEvbR0tQlvCjCdLveSm0mytxRy8qREyWbzydp8N8=; b=JCQH9ZYmP2u2an
	Uf3lzTyTkFRipZ/jb4mPth11EyoPustq7UTTax5jP0PB6/iFUXB+qGU99PAFK+4ey1WUjkFvsb784
	pgknrGcR2NzOFpuaxBgAz6TLVBuvBHCYnEPl40Xrp5hputQCMndnWkytihG7QtxIdzdtM2XcdERk/
	uvSkfaNzycAlr/aFz1yzcrSuPJ2mgOILA1LzomNJX8mmTfA2vL1m59V1YAieTd1+PXEvshLEsDqMq
	AX4NDJhyfaNz4AKCCmmeWHgLyFU8vHrE40hC+2P5Zu5PGZokIs7qVuMXPfvnEChcgBpB/eckiX2TX
	us/fbSoa4aedNKhAM7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieN8-00005v-AJ; Tue, 09 Jun 2020 13:32:58 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieM9-0007Vs-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:32:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591709523; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=HufavcL6881G+Zx3/1vr1pqV7Vtb/c2BkVpqzTOOMrI=;
 b=m33Gl8YPrCbDXCSRK/6nt2qEfyrvhcFuqvEVXDK+Wrersy/RPe/6UPhRANLOEmOHsD6ykuCW
 Ksz7Ct1A2CPUXS44x1CYcm0Zn7vQ7D22aiQWZ+tFjwQRQ0SkJZUpoGFf5OyYvhSnO89QRGP1
 /BQvdm7KctpNzUp/qmJpNjkWzNc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n14.prod.us-east-1.postgun.com with SMTP id
 5edf8f15c76a4e7a2a12d3a8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 09 Jun 2020 13:31:01
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 47CD0C433CB; Tue,  9 Jun 2020 13:31:00 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1BBC4C433C6;
 Tue,  9 Jun 2020 13:30:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1BBC4C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH 2/4] arm64: dts: qcom: sc7180: Add iommus property to ETR
Date: Tue,  9 Jun 2020 19:00:29 +0530
Message-Id: <2312c9a10e7251d69e31e4f51c0f1d70e6f2f2f5.1591708204.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1591708204.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_063203_686635_872E6548 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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

Define iommus property for Coresight ETR component in
SC7180 SoC with the SID and mask to enable SMMU
translation for this master.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index f684a0b87848..9b38867740ca 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1711,6 +1711,7 @@
 		etr@6048000 {
 			compatible = "arm,coresight-tmc", "arm,primecell";
 			reg = <0 0x06048000 0 0x1000>;
+			iommus = <&apps_smmu 0x04a0 0x20>;
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
