Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DC98E22F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35SJxw0NB+9QOnNkYNgLyyWpxnC9Sj3yNTAIQF99g1M=; b=EeOwL7yZ/Zp50v
	IqEag9Wu+eA78GFTa5ZHjoiQhJ2CKQsAyeV1OMWFg26juDNpnb/Z20u3mQzgiVUFpc4OMZd37H5aP
	rtugNpqYQ5GCyqidXNvO5UJm6UMBTLR+jQUbeDcXeVDlpy43K3GuhC6Tj+dEG7FjngFOOrRgV3Uf7
	CjPlw6bicNic2HGspj51R08LUwIZ3ZtYhU4hBYsfHsmVl6emn/byT7o2ItNDJM991OfsuKjyUqvCC
	2xQurjQ1YCL4zqn1Im+hDjPEEV4Y0T3GIeDj8wY+Xd52t+cze2MALm9uUiHpePWFOz1OSRui/y+bP
	FZ9sUoKIxMEBYGgNiRVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy40c-00086d-HW; Thu, 15 Aug 2019 00:52:54 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x8-0004dd-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:20 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 794583EA24;
 Thu, 15 Aug 2019 00:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830158;
 bh=SH5QC5W6ScpXRbQk/bxm6ycmyn+BwV2nQJz7QhBnCZ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CoHO95m541ra2JxESP14PeSWxmMgK/RpMhhr8BrHGVhrPUGGDrqK37N8b/0jiTLDW
 youqx3ITy0pDNSmzOq6fYOzWmozzih25HM3gNXN/FqaFK1jeYz+EIFR847fXVrQnCR
 YgR2Aw7pxnkRi1q/6SxJbh/X8xATgknLqCIchHQ4=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH RFC 10/11] ARM: dts: qcom: msm8974: add HDMI nodes
Date: Wed, 14 Aug 2019 20:48:53 -0400
Message-Id: <20190815004854.19860-11-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174918_960661_12DF9ECF 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add HDMI tx and phy nodes to support an external display that can be
connected over the SlimPort. This is based on work from Jonathan Marek.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
The hdmi-tx node in the downstream MSM sources:
https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/arch/arm/boot/dts/msm8974-mdss.dtsi#L101

 arch/arm/boot/dts/qcom-msm8974.dtsi | 80 +++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 369e58f64145..35c51336a9d4 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1139,6 +1139,13 @@
 
 					port@0 {
 						reg = <0>;
+						mdp5_intf3_out: endpoint {
+							remote-endpoint = <&hdmi_in>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
 						mdp5_intf1_out: endpoint {
 							remote-endpoint = <&dsi0_in>;
 						};
@@ -1216,6 +1223,79 @@
 				clocks = <&mmcc MDSS_AHB_CLK>;
 				clock-names = "iface";
 			};
+
+			hdmi: hdmi-tx@fd922100 {
+				status = "disabled";
+
+				compatible = "qcom,hdmi-tx-8974";
+				reg = <0xfd922100 0x35c>,
+				      <0xfc4b8000 0x60f0>;
+				reg-names = "core_physical",
+				            "qfprom_physical";
+
+				interrupt-parent = <&mdss>;
+				interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+
+				power-domains = <&mmcc MDSS_GDSC>;
+
+				clocks = <&mmcc MDSS_MDP_CLK>,
+				         <&mmcc MDSS_AHB_CLK>,
+				         <&mmcc MDSS_HDMI_CLK>,
+				         <&mmcc MDSS_HDMI_AHB_CLK>,
+				         <&mmcc MDSS_EXTPCLK_CLK>;
+				clock-names = "mdp_core",
+				              "iface",
+				              "core",
+				              "alt_iface",
+				              "extp";
+
+				hpd-5v-supply = <&pm8941_5vs2>;
+				core-vdda-supply = <&pm8941_l12>;
+				core-vcc-supply = <&pm8941_s3>;
+
+				/*
+				 * FIXME - drivers/gpu/drm/msm/hdmi/hdmi.c via hpd_reg_names_8x74
+				 * looks for hpd-gdsc-supply. What should be used here? Shouldn't
+				 * this functionality be provided by the power-domains above?
+				 */
+
+				phys = <&hdmi_phy>;
+				phy-names = "hdmi_phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						hdmi_in: endpoint {
+							remote-endpoint = <&mdp5_intf3_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
+			hdmi_phy: hdmi-phy@fd922500 {
+				status = "disabled";
+
+				compatible = "qcom,hdmi-phy-8974";
+				reg = <0xfd922500 0x7c>;
+				reg-names = "hdmi_phy";
+
+				clocks = <&mmcc MDSS_AHB_CLK>,
+				         <&mmcc MDSS_HDMI_AHB_CLK>;
+				clock-names = "iface",
+				              "alt_iface";
+
+				core-vdda-supply = <&pm8941_l12>;
+				vddio-supply = <&pm8941_s3>;
+
+				#phy-cells = <0>;
+			};
 		};
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
