Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AA02024F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 17:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=01GE6NIIrYSE243XqraAFzaOkiECX7Uh15FRr3xsHcc=; b=nwR
	xW/xwXkxFfl83Y0YsPGB7ltIiZ0URiN6ZjMo57vvvhL8Y9zafC5OYVZgc397wPQQNMoai8pSCc+85
	RuQvQ603ZHKH3Cw86by2l6PafG6URu3U6N4OdxqiLPb32qmXZAzQbxSrBM8sibSk9VUm4dzQ2MwSe
	HqMGgHh1lWPC9yIT9zcYNmheo93SVUQPx/hYzUtGXAf64xs/9e/Ttnkahl+oai7qzs2RuVn9CvYtC
	gDVURQhxqSVvQNa37EDP0k09+3ZyQIY9P7T0VUQr7vLZaetjH/f/+wisjWHSeUPFOuoh0nK4+98M0
	haQMOCYuLzH6+LGuyXw1aTZwp9tboYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmfsR-0007Cn-25; Sat, 20 Jun 2020 15:57:55 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmfsC-0007BT-HK
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 15:57:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592668664; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=BBBfKMGR+gMiO9YhDRvlSioav0U5MzKSOOLtx2cvzQY=;
 b=JVPZFFaexs4e0EfxWxkHUtvjvgZVVh46CklJGEcRUVkbEO4uYX648a5Nay4tVrJHClXksqds
 f/071zQKTFLeTcBgYVHrvU1dAwYZk7IsvSp3ViY30DjcaA5E6mUA+n/q9L8GDQSIiYa+2udo
 MGbNejT94QHrYp2qZQ+7y71bXFw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5eee31e3c4bb4f886d4897f9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 20 Jun 2020 15:57:23
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1C933C43387; Sat, 20 Jun 2020 15:57:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2C032C433C8;
 Sat, 20 Jun 2020 15:57:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2C032C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: devicetree@vger.kernel.org
Subject: [PATCH v12] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device
 node
Date: Sat, 20 Jun 2020 21:27:15 +0530
Message-Id: <1592668635-10894-1-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_085744_656624_83531C36 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
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
Cc: linux-arm-msm@vger.kernel.org, dianders@chromium.org, evgreen@chromium.org,
 linux-kernel@vger.kernel.org, Rakesh Pillai <pillair@codeaurora.org>,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device node for the ath10k SNOC platform driver probe
and add resources required for WCN3990 on sc7180 soc.

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
Changes from v11:
- Add the optional regulator votes which are needed in case of SSR.
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts | 11 +++++++++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi    | 22 ++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 4e9149d..39dbfc8 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -389,6 +389,17 @@
 	};
 };
 
+&wifi {
+	status = "okay";
+	vdd-0.8-cx-mx = <&vreg_l9a_0p6>;
+	vdd-1.8-xo = <&vreg_l1c_1p8>;
+	vdd-1.3-rfa = <&vreg_l2c_1p3>;
+	vdd-3.3-ch0 = <&vreg_l10c_3p3>;
+	wifi-firmware {
+		iommus = <&apps_smmu 0xc2 0x1>;
+	};
+};
+
 /* PINCTRL - additions to nodes defined in sc7180.dtsi */
 
 &qspi_clk {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 31b9217..cd6d3b5 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2814,6 +2814,28 @@
 
 			#freq-domain-cells = <1>;
 		};
+
+		wifi: wifi@18800000 {
+			compatible = "qcom,wcn3990-wifi";
+			reg = <0 0x18800000 0 0x800000>;
+			reg-names = "membase";
+			iommus = <&apps_smmu 0xc0 0x1>;
+			interrupts =
+				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
+				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
+				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
+				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
+				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
+				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
+				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
+				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
+				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
+				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
+				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
+				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
+			memory-region = <&wlan_mem>;
+			status = "disabled";
+		};
 	};
 
 	thermal-zones {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
