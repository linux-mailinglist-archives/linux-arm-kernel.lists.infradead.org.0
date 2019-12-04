Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940F61125D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a0uqK3BspNj+rGpbIy8iZSMTzWhFrAHS6Sr8dNM2e7Y=; b=d3W
	xgxxinRUwld36Yqd8ALm6gAP7GBEooktOE2dgUP6vDvuh1qiHots7KsnQo2lmz5wK9zaWf2qUTJH7
	YJfUreREdzzGZHRVcYK+rl4doiY6wX+7uVE7DHGYW7dLFagVpwws+4vXMtFREZ9wKgLZVz0VmhD/N
	fwkd6aL+4eIFlj56PCop5VeeU/HcD6t6m/DQtDVV2Kdjr+XNdIwDlA88D2l8Xep7f/XD94791sKHl
	kT+kumbPwul2nhOA+VnF4qXyATo/nc/IR8jMIufHTIjnJuX23/MZyfcmPww9XKApXEY3XcMTTGvPu
	tCOS1YAzZWISMAWYGHGi0tTDGtoYA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQL2-0008GQ-AB; Wed, 04 Dec 2019 08:48:48 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQKt-0008Fp-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 08:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575449316;
 h=From:To:Cc:Subject:Date:Message-Id;
 bh=gEB6uBMOOwAhGK0idGqw2RrciO9bPtivwYCZYr9wQvM=;
 b=cZ/F7Axp67MPTNosXkmOHKK1Gno+ceNTZ9IinPRx8C5+8ahq22klbWGIB1tus1zD
 6V09CNc5ou98ZnuTnqh0jZiJGReus7eGGK7sb+YzdD08grmBQBUbjAXkQxmAImH654Y
 pFlifKcYhYABINUlN9+A3XRum9ReOglpBj/Enc08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575449316;
 h=From:To:Cc:Subject:Date:Message-Id:Feedback-ID;
 bh=gEB6uBMOOwAhGK0idGqw2RrciO9bPtivwYCZYr9wQvM=;
 b=aivIHEGKuHKBqZBdx5qliaM0NvwdtGcNxRdQloYMf92qvoHdHTJpyqtQIatd7N86
 6LEp5QwDZ+8Pf7GEkHdEPTDxAHcvDxMHokV3SGsWCr9NlDgeWw+5wwZmgcVSXK87TOz
 mtoLGt6ICpWqWDe+/AXR9nTdSqqJBtauYoXevo7Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 64DF8C447AE
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device node
Date: Wed, 4 Dec 2019 08:48:36 +0000
Message-ID: <0101016ed018cde9-da3dc3e0-de6e-4b18-9add-bc6f88511ab2-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
X-SES-Outgoing: 2019.12.04-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004839_284823_534E77DE 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.18 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Rakesh Pillai <pillair@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device node for the ath10k SNOC platform driver probe
and add resources required for WCN3990 on sc7180 soc.

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
This change is dependent on the below set of changes
arm64: dts: sc7180: Add qupv3_0 and qupv3_1 (https://lore.kernel.org/patchwork/patch/1150367/)
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts |  4 ++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 189254f..8a6a760 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -248,6 +248,10 @@
 	status = "okay";
 };
 
+&wifi {
+	status = "okay";
+};
+
 /* PINCTRL - additions to nodes defined in sc7180.dtsi */
 
 &qup_i2c2_default {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 666e9b9..40c9971 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -42,6 +42,12 @@
 			compatible = "qcom,cmd-db";
 			no-map;
 		};
+
+		wlan_fw_mem: wlan_fw_region@93900000 {
+			compatible = "removed-dma-pool";
+			no-map;
+			reg = <0 0x93900000 0 0x200000>;
+		};
 	};
 
 	cpus {
@@ -1119,6 +1125,27 @@
 				#clock-cells = <1>;
 			};
 		};
+
+		wifi: wifi@18800000 {
+			status = "disabled";
+			compatible = "qcom,wcn3990-wifi";
+			reg = <0 0x18800000 0 0x800000>;
+			reg-names = "membase";
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
+			memory-region = <&wlan_fw_mem>;
+		};
 	};
 
 	timer {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
