Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D31127E5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g9Lz+ql/sHYPKsmtilc40nez82QW3F8DOSucOUQQyZg=; b=n2w
	hPq3JzStzreH3DXGvTxrUNTJEnefi5Eb5tjDB4UoG0oGW2WTFAYqcdo/wX+vTLfhbNPzB5OkQvS2Q
	pgg619mZeLf6kGsWHJL0v8MZ2LYmRdodutpeoRdovq4Q1MNaqbz35Ejn6i5NfVgsWsZyLPoaIBiq9
	OdAh8i4EBU/gA6u0iCPdQwmr62sCyzmIoftxdwHFaPVy3jlGXlqNdfPEmCIbh6LX4l/6pSyA3ABSE
	T/XpNHLrVkTgbdrBgY98wMiHBhH8PXoSgx+rfTxfXs+vfmM6Xc5ngoWUr9vc+cRHWwfI2a16QROPx
	Rw8tweKWWZr+MhOcPuEikSpf6Glu5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJXQ-0002cp-IB; Fri, 20 Dec 2019 14:45:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJXH-0002cL-UB; Fri, 20 Dec 2019 14:45:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so9664784wrt.6;
 Fri, 20 Dec 2019 06:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pl3hFVbXh8V/pNW7LI4EULZNEnEA05Snk8lDcRO0F4I=;
 b=eCzaA1gUWIYYBIg/IQTWc7sIFKYB1GqkT8s32yc8blx3R6j6hCIgTMBBckZDLig7fP
 gp+sHfVT0yCurfEg7SKiyTLnNBa/KSfJPef0t5hUqx1vlrMGhHZuZVF91eX1N8oKMGn+
 DWdCBVwIJV76oYCUvgrtWOHj38aMNSEolWVQFkUX2nXVVyoPajrRVvH4dgZoUJPIRiAb
 3J+RRM5gKHwVo8VM6pTBAElWiaNdY4zUwzHzRKdlrQl20Oq692hBUJNOJpJeEdkum8X7
 cZzOXYPLktB+3RHudr7hTjT0LRRoS78rI8/d+02KFwcahewvN1YMT3gntD6jtMRRgJjp
 ufaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pl3hFVbXh8V/pNW7LI4EULZNEnEA05Snk8lDcRO0F4I=;
 b=CEJI7LbB3wNFVd1fzWbOAqIXGaV6avni7MKB5Zs8egUwmFB8qSEvycrRsm3t1HOO9R
 ksyLT0WDlaBr47B580kevTFqEoKZRjl6/6yQn6aClkBq+g8F8HDoxZG0Rmcj2AG0fdfu
 9NfloHwWqz8LLrUZtqyXkZiH3mdp0689n4CN9uCIdaotO3H2g7uDIjFzHoVKmjv62JAN
 OvI3POP/zvRrx7ehR8sanG6lToVrH+aj9zSH8C8GI5rjvMO+oZN5llKd8jMpgrjnAUOf
 vtPAgACY3Cr+TTrBh4Vo0c2NiQij98TFCAQerObDqlrZWJpNl5W/fZn5nBHl66jgJrsf
 haqg==
X-Gm-Message-State: APjAAAWCY2yexhqo27NsZWaDIpD3215dqyzEGPPsEduCcH5MFoij8w8k
 n0jxwYCTdvA46wGgz4TuATU=
X-Google-Smtp-Source: APXvYqwzSfkfp87+FaM77mK7bj+bOyD1OkSjuuKjhQwV4WixlXdcVQ1GWCN+pLWH1WcgZc5ig7ROIA==
X-Received: by 2002:adf:e5ce:: with SMTP id a14mr15388222wrn.214.1576853146255; 
 Fri, 20 Dec 2019 06:45:46 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 5sm10546226wrh.5.2019.12.20.06.45.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 06:45:45 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rk3399-evb: sort nodes in alphabetical
 order
Date: Fri, 20 Dec 2019 15:45:37 +0100
Message-Id: <20191220144537.30867-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_064547_998451_ED6E088C 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 66 ++++++++++++++---------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca4..6e8b63db2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -134,6 +134,39 @@
 	status = "okay";
 };
 
+&pcie0 {
+	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "disabled";
+};
+
+&pcie_phy {
+	status = "disabled";
+};
+
+&pinctrl {
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		pmic_dvs2: pmic-dvs2 {
+			rockchip,pins =
+				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	usb2 {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins =
+				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &pwm0 {
 	status = "okay";
 };
@@ -154,18 +187,6 @@
 	status = "okay";
 };
 
-&pcie_phy {
-	status = "disabled";
-};
-
-&pcie0 {
-	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
-	num-lanes = <4>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
-	status = "disabled";
-};
-
 &u2phy0 {
 	status = "okay";
 };
@@ -203,24 +224,3 @@
 &usb_host1_ohci {
 	status = "okay";
 };
-
-&pinctrl {
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins =
-				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		pmic_dvs2: pmic-dvs2 {
-			rockchip,pins =
-				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
-	usb2 {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins =
-				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
