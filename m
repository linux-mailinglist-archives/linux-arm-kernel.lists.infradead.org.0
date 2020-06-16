Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF31FB3D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DdMJH8WT6fPfW3L4ek+JlTszPyzOPw0kWuQEVhbrjM=; b=d4agXwBOYYbprR
	bdIZO3FpslE9oz2sOH10wNi7bx5JUD1v7KweOHY+ZkcYYxDi7fxpILVPWjiAikaLhn103MT/5LtXY
	WZzU+LQdV/Yey3JXmIXVJOBJFHp2VbZ9asYTfrrTKywSUWndnQ7prCTxvipq4iddj/MyWp21l4sur
	Fmh42umUl3HHvMTZ9l5VOiwYKwz0skQhjIOtP87P9Pmn5u3qpzUWK0/roNg7myzU4SfS4XVkF++Hd
	W/MkFTfMatD3HXNBaB4HIozeppvBFu81JnwaXirkUiVkNHvTK4/8C9eaWveoKDwcJqlXndXRdqEpo
	6M28h8FSzhVRAasjSPHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCKI-0007uE-PL; Tue, 16 Jun 2020 14:12:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3A-0002Ro-4E
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id l26so2971841wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zoDX2JNNE/KoKYLXEPjfCFTwgvk3BkufBpQZSuAFq4s=;
 b=lAk3YsSq3Z+pQPnBzfwuJnrQy77mT9zBlAOTM1Tym+J2GQyBVRi0osOusvKsWK8bX8
 P9MuC4uUPTp1Sgc63eiB1U+7JCXRrvl7YdJULHWKyxumR5HHOOZ2eRx17Z2nKJEMqyN1
 gTLdOfFkXQGQnmGlwOCEP1f5PW9vztf5XrKISwMAaW/TbYIm2MXtArlpTKGvvtcEP0Tn
 FVdrPBh/nGSd/uBuNtk/l6IAUvWOPmt3/jnLGXjhcQ7OwII+qzv9nC+5zqs9RuH3Pkjx
 DPnnjrWcIUQ/GDs21hd+gUnDnZ4MJ+c+MTIO9bXT2dHIp1daE8yXhdUz1wRCGIAFbFj8
 qEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zoDX2JNNE/KoKYLXEPjfCFTwgvk3BkufBpQZSuAFq4s=;
 b=gkDB/hB/vTHYfjlrIa0xHWgBIC7/Qb9bAwR54y7Fg1e9S/5lw61r9OerFvfqKSv6ET
 OO9CLFuJyk9JNNRoedzTb9OEyrLd7rpwlNxp8lZmBunF/LvtxlZbuKYW1f1a7hrAP7fJ
 VUFevtpfTI7d69ZSOn8AM1DtVF3b1rMILm4NfwdA/8G8QWL+1OetQE7vrMzJ4MDLPdIp
 IVDl7nyePxnWq1ua2msGbSepSyo/11R7UMJEI7fz4FCfokD2DuZkISqTNTj8mlClS8wz
 ZfXalMxU7FWjkUbGYUhvBSY1Ggk4MKT8MH5WyXkDRckZDqQtVhCfWugx282LrU+HUYFH
 RkDQ==
X-Gm-Message-State: AOAM533pC0I1jCkWDC+3A2TwoML2oT/aG78W1fsK/wJCxksNciXZirQJ
 xBIe/BKwDwW3gAcr+mxIrMQ=
X-Google-Smtp-Source: ABdhPJwGB7gXYnM8nWrCctn1hYKgBMXnzdmsGUMXEtdyZ1mYT8sKIQAB2veahJj3QLIki8DdNNozHw==
X-Received: by 2002:a1c:bc0a:: with SMTP id m10mr3273874wmf.173.1592315690219; 
 Tue, 16 Jun 2020 06:54:50 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id c6sm4337866wma.15.2020.06.16.06.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:49 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 50/73] arm64: tegra: Enable XUSB on Norrin
Date: Tue, 16 Jun 2020 15:52:15 +0200
Message-Id: <20200616135238.3001888-51-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065452_380173_17030E33 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the XUSB controller instead of the legacy EHCI controller to enable
USB 3.0 support.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra132-norrin.dts | 124 +++++++++++----
 arch/arm64/boot/dts/nvidia/tegra132.dtsi      | 148 ++++++++++++++++--
 2 files changed, 230 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index e6fe62e5c234..bba8a4b82b0b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -671,7 +671,7 @@ vdd_gpu: sd6 {
 					regulator-boot-on;
 				};
 
-				ldo0 {
+				avdd_1v05_run: ldo0 {
 					regulator-name = "+1.05_RUN_AVDD";
 					regulator-min-microvolt = <1050000>;
 					regulator-max-microvolt = <1050000>;
@@ -893,6 +893,101 @@ pmc@7000e400 {
 		nvidia,reset-gpio = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 	};
 
+	usb@70090000 {
+		phys = <&{/padctl@7009f000/pads/usb2/lanes/usb2-0}>, /* 1st USB A */
+		       <&{/padctl@7009f000/pads/usb2/lanes/usb2-1}>, /* Internal USB */
+		       <&{/padctl@7009f000/pads/usb2/lanes/usb2-2}>, /* 2nd USB A */
+		       <&{/padctl@7009f000/pads/pcie/lanes/pcie-0}>, /* 1st USB A */
+		       <&{/padctl@7009f000/pads/pcie/lanes/pcie-1}>; /* 2nd USB A */
+		phy-names = "usb2-0", "usb2-1", "usb2-2", "usb3-0", "usb3-1";
+
+		avddio-pex-supply = <&vdd_1v05_run>;
+		dvddio-pex-supply = <&vdd_1v05_run>;
+		avdd-usb-supply = <&vdd_3v3_lp0>;
+		hvdd-usb-ss-supply = <&vdd_3v3_lp0>;
+
+		status = "okay";
+	};
+
+	padctl@7009f000 {
+		avdd-pll-utmip-supply = <&vddio_1v8>;
+		avdd-pll-erefe-supply = <&avdd_1v05_run>;
+		avdd-pex-pll-supply = <&vdd_1v05_run>;
+		hvdd-pex-pll-e-supply = <&vdd_3v3_lp0>;
+
+		pads {
+			usb2 {
+				status = "okay";
+
+				lanes {
+					usb2-0 {
+						nvidia,function = "xusb";
+						status = "okay";
+					};
+
+					usb2-1 {
+						nvidia,function = "xusb";
+						status = "okay";
+					};
+
+					usb2-2 {
+						nvidia,function = "xusb";
+						status = "okay";
+					};
+				};
+			};
+
+			pcie {
+				status = "okay";
+
+				lanes {
+					pcie-0 {
+						nvidia,function = "usb3-ss";
+						status = "okay";
+					};
+
+					pcie-1 {
+						nvidia,function = "usb3-ss";
+						status = "okay";
+					};
+				};
+			};
+		};
+
+		ports {
+			usb2-0 {
+				status = "okay";
+				mode = "otg";
+
+				vbus-supply = <&vdd_usb1_vbus>;
+			};
+
+			usb2-1 {
+				status = "okay";
+				mode = "host";
+
+				vbus-supply = <&vdd_run_cam>;
+			};
+
+			usb2-2 {
+				status = "okay";
+				mode = "host";
+
+				vbus-supply = <&vdd_usb3_vbus>;
+			};
+
+			usb3-0 {
+				nvidia,usb2-companion = <0>;
+				status = "okay";
+			};
+
+			usb3-1 {
+				nvidia,usb2-companion = <2>;
+				status = "okay";
+			};
+		};
+	};
+
 	/* WIFI/BT module */
 	mmc@700b0000 {
 		status = "disabled";
@@ -915,33 +1010,6 @@ mmc@700b0600 {
 		non-removable;
 	};
 
-	usb@7d000000 {
-		status = "okay";
-	};
-
-	usb-phy@7d000000 {
-		status = "okay";
-		vbus-supply = <&vdd_usb1_vbus>;
-	};
-
-	usb@7d004000 {
-		status = "okay";
-	};
-
-	usb-phy@7d004000 {
-		status = "okay";
-		vbus-supply = <&vdd_run_cam>;
-	};
-
-	usb@7d008000 {
-		status = "okay";
-	};
-
-	usb-phy@7d008000 {
-		status = "okay";
-		vbus-supply = <&vdd_usb3_vbus>;
-	};
-
 	backlight: backlight {
 		compatible = "pwm-backlight";
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 8558ad38b69c..0cc6b4e9f954 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -50,9 +50,6 @@ pcie@1003000 {
 		reset-names = "pex", "afi", "pcie_x";
 		status = "disabled";
 
-		phys = <&padctl TEGRA_XUSB_PADCTL_PCIE>;
-		phy-names = "pcie";
-
 		pci@1,0 {
 			device_type = "pci";
 			assigned-addresses = <0x82000800 0 0x01000000 0 0x1000>;
@@ -630,8 +627,6 @@ sata@70020000 {
 			 <&tegra_car 123>,
 			 <&tegra_car 129>;
 		reset-names = "sata", "sata-oob", "sata-cold";
-		phys = <&padctl TEGRA_XUSB_PADCTL_SATA>;
-		phy-names = "sata-phy";
 		status = "disabled";
 	};
 
@@ -651,6 +646,41 @@ hda@70030000 {
 		status = "disabled";
 	};
 
+	usb@70090000 {
+		compatible = "nvidia,tegra132-xusb", "nvidia,tegra124-xusb";
+		reg = <0x0 0x70090000 0x0 0x8000>,
+		      <0x0 0x70098000 0x0 0x1000>,
+		      <0x0 0x70099000 0x0 0x1000>;
+		reg-names = "hcd", "fpci", "ipfs";
+
+		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+
+		clocks = <&tegra_car TEGRA124_CLK_XUSB_HOST>,
+			 <&tegra_car TEGRA124_CLK_XUSB_HOST_SRC>,
+			 <&tegra_car TEGRA124_CLK_XUSB_FALCON_SRC>,
+			 <&tegra_car TEGRA124_CLK_XUSB_SS>,
+			 <&tegra_car TEGRA124_CLK_XUSB_SS_SRC>,
+			 <&tegra_car TEGRA124_CLK_XUSB_SS_DIV2>,
+			 <&tegra_car TEGRA124_CLK_XUSB_HS_SRC>,
+			 <&tegra_car TEGRA124_CLK_XUSB_FS_SRC>,
+			 <&tegra_car TEGRA124_CLK_PLL_U_480M>,
+			 <&tegra_car TEGRA124_CLK_CLK_M>,
+			 <&tegra_car TEGRA124_CLK_PLL_E>;
+		clock-names = "xusb_host", "xusb_host_src",
+			      "xusb_falcon_src", "xusb_ss",
+			      "xusb_ss_src", "xusb_ss_div2",
+			      "xusb_hs_src", "xusb_fs_src",
+			      "pll_u_480m", "clk_m", "pll_e";
+		resets = <&tegra_car 89>, <&tegra_car 156>,
+			 <&tegra_car 143>;
+		reset-names = "xusb_host", "xusb_ss", "xusb_src";
+
+		nvidia,xusb-padctl = <&padctl>;
+
+		status = "disabled";
+	};
+
 	padctl: padctl@7009f000 {
 		compatible = "nvidia,tegra132-xusb-padctl",
 			     "nvidia,tegra124-xusb-padctl";
@@ -658,34 +688,124 @@ padctl: padctl@7009f000 {
 		resets = <&tegra_car 142>;
 		reset-names = "padctl";
 
-		#phy-cells = <1>;
+		pads {
+			usb2 {
+				status = "disabled";
 
-		phys {
-			pcie-0 {
+				lanes {
+					usb2-0 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					usb2-1 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					usb2-2 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+				};
+			};
+
+			ulpi {
 				status = "disabled";
+
+				lanes {
+					ulpi-0 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+				};
 			};
 
-			sata-0 {
+			hsic {
 				status = "disabled";
+
+				lanes {
+					hsic-0 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					hsic-1 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+				};
 			};
 
-			usb3-0 {
+			pcie {
 				status = "disabled";
+
+				lanes {
+					pcie-0 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					pcie-1 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					pcie-2 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					pcie-3 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+
+					pcie-4 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+				};
 			};
 
-			usb3-1 {
+			sata {
+				status = "disabled";
+
+				lanes {
+					sata-0 {
+						status = "disabled";
+						#phy-cells = <0>;
+					};
+				};
+			};
+		};
+
+		ports {
+			usb2-0 {
+				status = "disabled";
+			};
+
+			usb2-1 {
 				status = "disabled";
 			};
 
-			utmi-0 {
+			usb2-2 {
 				status = "disabled";
 			};
 
-			utmi-1 {
+			hsic-0 {
 				status = "disabled";
 			};
 
-			utmi-2 {
+			hsic-1 {
+				status = "disabled";
+			};
+
+			usb3-0 {
+				status = "disabled";
+			};
+
+			usb3-1 {
 				status = "disabled";
 			};
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
