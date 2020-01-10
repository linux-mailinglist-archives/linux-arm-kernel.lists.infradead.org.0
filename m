Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACDA136F35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+Wj5GzxA6DoUTQU2o+kTX2aw9RQL3iZmFEACXwCb6a4=; b=nuv
	mxt39BnzeiqSBbKN2+Uan3DLS0Gr3AWpPkKVRg7kKAnImd3luKQaHKUzqKDU8+W0pa+LYJJbWPyJ2
	aGUKnvf/hEIoHH9gTPj3JVCgcyYkL/k9siRhNpFABOJXPFu/0Ip8Tz4vBCOZDv86rhp3RH/CcM6pG
	6J39bHg+MFI3VNuQjNwCsL+kgQGZo15OoreWJUueugPlssyyuHU8RiRKQmKLMUmlfFyeXrWWYDn1V
	iAPD/hCi4t4sqHEQCpFgd4Rqtgc4Lblsi0lzCND1ogrAWzgzLGh7/wi0Tae/q6P79qnVsRM4afirW
	FSO5cFlwhXrQR3xcWY6Y+2BnGqWhI9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvAb-0004Nz-D6; Fri, 10 Jan 2020 14:21:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvAP-0004NG-J1; Fri, 10 Jan 2020 14:21:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so1959841wro.9;
 Fri, 10 Jan 2020 06:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QkqpNRwkXEHz49j2PunwFe7h2mlM4jVm/CGNg1v229A=;
 b=inEtJl6o63GPIno4sMCknRjQUtHCqDqQ2rVqdGl39A15ONvLjSveFoJZKq0KuAp8uh
 7jTxdKyb5QX0N8GlIczHpo6kE4aiQ1EJjf+zclxPcozEZ/SPIdEUWaaZkc+liDfkKTJT
 f57oFrnG+PA2o+tvcFZ9Zu7p5T4zatmHRREv53K+Kpi/HALZpo3jbxssQyaQ9zpXyYB3
 1O4Vdn/dU/95ezs7ngnYqwSuDpK+w8Et5Dy4fT9VETk1EAzw5h4wGGjPlRWG+f/v4d7O
 bNF38GbFVVXoCGzg0Sm4yJm6gc3WTDp4WMdGUXQ6M2pim5906SlsmSRH+xWkFKoDq+NC
 NsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QkqpNRwkXEHz49j2PunwFe7h2mlM4jVm/CGNg1v229A=;
 b=uIxEwPaqX9Q920oXlr2L2qArUXrh6z+kaum5O5MrWMYe32SvKxCrYlhlFT9xBFihrW
 nlmKJHfA2xLYe9lCngNnZrByAXi7Tu0koTIlU7bogZXmBNnh7+I977tuU7V4xbXPfBJd
 Odd/a8efyyfMrrKPQqCZU5StWiQ5v4xTEGMjCSLUIyXiY9CJbWk5oD7ZVXaMlNlr2NuW
 1Po/L1FiiaaQVDhpVg1YB/3HBFEzbMyph7HReUOFRgWGsYrWcgnXyTe2Kd3Hw7Lr/bYt
 b7mn12agRqMMUPWfoNPnkz5jtY+ZiuyduCLLEU6Ep+jPwQA9xhA1kdVDf1SKjd/wNzDC
 Cc5w==
X-Gm-Message-State: APjAAAU4NXbusvzX3uWoNX/Ar/z4zE51PNHiaicdzJyt0/KLwAI5AGZj
 xo7mYqhfHiOYfwTAtwY5uiJu2eQY
X-Google-Smtp-Source: APXvYqxYWXbCZdBdnX3KYOwBOuGZD+qOcrwZQvIgjFefd82CDaIRhFVRhyi/m8FK/YH+aDHgE/O3oQ==
X-Received: by 2002:a5d:5704:: with SMTP id a4mr3904876wrv.198.1578666095767; 
 Fri, 10 Jan 2020 06:21:35 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a9sm2314148wmm.15.2020.01.10.06.21.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 06:21:35 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Fri, 10 Jan 2020 15:21:28 +0100
Message-Id: <20200110142128.13522-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_062137_647579_1632C69C 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

An experimental test with the command below gives this error:
rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
'reg' is a required property
So fix this by adding a reg property to the brcmf sub node.
Also add #address-cells and #size-cells to prevent more warnings.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 92de83dd4..06043179f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -669,9 +669,12 @@
 	vqmmc-supply = &vcc1v8_s3;	/* IO line */
 	vmmc-supply = &vcc_sdio;	/* card's power */
 
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 4944d78a0..e87a04477 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -654,9 +654,12 @@
 	sd-uhs-sdr104;
 	vqmmc-supply = <&vcc1v8_s3>;
 	vmmc-supply = <&vccio_sd>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 0541dfce9..9c659f311 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -648,9 +648,12 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
