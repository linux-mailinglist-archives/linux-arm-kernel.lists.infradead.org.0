Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A241B14AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5sk4N/79mzPA71Edyz466iSviiXvr60X7m6LKHzcg4=; b=E8W159P7cS55PU
	uRGm5AjnsJjx3SASmDq2VVqWLgZcyEtrpw4cZ8X9uQRzDHBm61me7N+2bhkAyu62vQHRAy9U+DQO0
	uWJYka+hSo6n3Fp/CQDsRPhf5VOjdIyPWBEV8JLlSm4kDCDiT5+Altlse3/moTwMELaeCahOU17cV
	TV4d5Xs48nVLNA+7VMcUZexpS/TvqvfeyiCj91tOlKJYuev9MMtRcG4Vu9GfVidM1lAPLG3kI//QV
	E/UfUaR00XaVX+ixSZyz9hOWawFfTcjknh0/2IOi8Je3w9Y2xR6ujR6aWiV9HXpf6PHxDBUVLqeMm
	qWU4z1Cik20gPg2aUzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbH8-0001QX-DB; Mon, 20 Apr 2020 18:36:10 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbG0-0006fG-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:35:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587407704; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=LG1BzWNgEc4P/Q2YyUIsL9mmn47LWA5+bq3Cl0xGTeU=;
 b=u06BdCJ5m6eznHSve2Kp0kWI4t4Ny6Enqb+SQ11FnWEL17m+K/jSJ7S4mr177M9cTJ8YNOi0
 T8Q5mWBeR7oVX3q+D1ZYbVjiK2VN5TZxfOU4fXWh5r3SWSoY4AoSW8NVgrLz1scYy8eEY57l
 GmnM3EvM+MjugBeIjiKyih8R4ss=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9deb48.7f70ba14b928-smtp-out-n04;
 Mon, 20 Apr 2020 18:34:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0097EC44792; Mon, 20 Apr 2020 18:34:47 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 62299C58A02;
 Mon, 20 Apr 2020 18:34:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 62299C58A02
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
Subject: [PATCHv4 6/6] arm64: dts: qcom: sdm845-cheza: Add iommus property
Date: Tue, 21 Apr 2020 00:03:54 +0530
Message-Id: <38c607841e81664a2db69a27260cd7dfbd653458.1587407458.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_113505_116201_B655DD35 
X-CRM114-Status: GOOD (  11.60  )
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
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sibi Sankar <sibis@codeaurora.org>

Add iommus property to remoteproc modem node.

Following SMMU global faults are seen without it.

arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
arm-smmu 15000000.iommu: GFSR 0x80000002, GFSYNR0 0x00000000,
                         GFSYNR1 0x00000781, GFSYNR2 0x00000000

arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
arm-smmu 15000000.iommu: GFSR 0x80000002, GFSYNR0 0x00000000,
                         GFSYNR1 0x00000461, GFSYNR2 0x00000000

Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
index 9070be43a309..07081da2c83e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
@@ -631,6 +631,11 @@ ap_ts_i2c: &i2c14 {
 	status = "okay";
 };
 
+&mss_pil {
+	iommus = <&apps_smmu 0x780 0x1>,
+		 <&apps_smmu 0x724 0x3>;
+};
+
 &pm8998_pwrkey {
 	status = "disabled";
 };
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
