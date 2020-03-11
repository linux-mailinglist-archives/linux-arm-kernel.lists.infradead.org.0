Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5600181DBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TKUihM2UKiIjNPkRfGwuwVODhI+wtiYip/nYKQLUEaA=; b=pbGasvJkvrDdDXtd4/SZNIfsia
	mTQzINtvH7Pat+2fdHRKm5wLRqFqMtJhujgmvZN0oEXZ9jau4Mh0KXLb89AgriG40uIXd9ZlbjtYy
	ZCcnGgJyPwSu1urmEO+URA7zcKUcR+U0gws5uKmefhAq2dY6xJBlSjphKO91WIbopkAMmCzohLtG0
	1gBj7fhodksQ1SkKw2FDudaRufp15dWXQ05Gay6/PNV63lx+6LzMGkC+DgnDtagF2RHDPj5+yZCfY
	ECbfvSxZ3A+rBdFPeMfnBvY8tlKciZRxTllOy4tpAqgHOQ6cndWbTx3dKmhDZE3UNgT+HmhRBBHQ/
	FpA14Z4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4BH-0006oH-TF; Wed, 11 Mar 2020 16:26:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Ap-0006ac-Fa; Wed, 11 Mar 2020 16:25:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id z15so3461108wrl.1;
 Wed, 11 Mar 2020 09:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b5aBI0bpGlbj4fmQPyekc6UQv8Sa0uaFXtWHR+NmRKk=;
 b=EvmsL8ILi0NHgYAyZfmeO4DevhhIX473PCnA4urmWtc1h95Ilnd5Mx4DFY1OM3aLRO
 8KtsayRDd+nOcl+R98AvLVZUeTY+2OjbEJy+jNWI8g6gt2Cq+7cxvJbwT9g7KfWIj84Q
 LlJFDUhu8gjnwaZ/nz6feBLfsbw0aHfw5kZX6kXoBJmhwcodrVgM07rhZ/YZpkrQ31fS
 w9qZngCpCkDyvrE2ZEIq5lObAOMWtzVN4pqPSyaablhRVW5yW5j5x+Zgl5YQxqOHJPLV
 uksf1t+kGSMGMeQDo8GujRpvUzUaTQq2biVoQxKRpU0qrQVsuHwUOdXbBfonUunXT9Pr
 oYYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b5aBI0bpGlbj4fmQPyekc6UQv8Sa0uaFXtWHR+NmRKk=;
 b=Oh5WruXL6HcKYwgudsfZNh5R3OKTHQlqNnRVXXEuhU40flhPUuJ1/8aEa4zYL7kAzc
 3Viz94Gogxj0GPR+Dn21iPtLKWGp73hnKv0xCprg4lk2DR/3RCVsonGluq+FIKXn1kAL
 0nNgKgnLNDyrrMBltCshgtU9Mj7RdGj/gpZomcLf12ohfrsO1G58nET22vEAykjh0+o1
 kSPjY27DRfcJDc8eC9EqY+QrenAaYvegEP3fwUL2vkucP2JysUU2wl2Su8Z0Oy+zXu7h
 NdDqAq21Ab52oumn31ZA0KhZQON2hwNUq7ecxd4IQPuSZog3wB6jeYQaOgnBfl1wRtKI
 Xdtg==
X-Gm-Message-State: ANhLgQ2iIWQW5KluTVrDDxlsxLmYZjmWr3HKy6hEaBB8lgVmwP0yLLL6
 HEK92NEyqNOehYHT+LcnmaQ=
X-Google-Smtp-Source: ADFU+vsC4pAqQ4jiDIDc+T+NrN/+UYkkE5neBBka34GX9ESC0bOwHgGOtUPDD+9haYRT3rQhyjl5JQ==
X-Received: by 2002:a05:6000:1107:: with SMTP id
 z7mr5679978wrw.340.1583943933879; 
 Wed, 11 Mar 2020 09:25:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i1sm53624688wrs.18.2020.03.11.09.25.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 09:25:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] ARM: dts: rockchip: remove #address-cells and #size-cells
 from i2s nodes
Date: Wed, 11 Mar 2020 17:25:24 +0100
Message-Id: <20200311162524.19748-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200311162524.19748-1-jbx6244@gmail.com>
References: <20200311162524.19748-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092535_518973_32CE38FC 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An experimental test with the command below gives
for example this error:

arch/arm/boot/dts/rk3036-evb.dt.yaml: i2s@10220000:
'#address-cells', '#size-cells'
do not match any of the regexes: 'pinctrl-[0-9]+'

'#address-cells' and '#size-cells' are not a valid property
for i2s nodes, so remove them.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-i2s.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi  | 2 --
 arch/arm/boot/dts/rk3066a.dtsi | 6 ------
 arch/arm/boot/dts/rk3188.dtsi  | 2 --
 arch/arm/boot/dts/rk322x.dtsi  | 6 ------
 arch/arm/boot/dts/rk3288.dtsi  | 2 --
 5 files changed, 18 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 2226f0d70..781ac7583 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -281,8 +281,6 @@
 		compatible = "rockchip,rk3036-i2s", "rockchip,rk3066-i2s";
 		reg = <0x10220000 0x4000>;
 		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S>, <&cru HCLK_I2S>;
 		dmas = <&pdma 0>, <&pdma 1>;
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index f3fc92e57..b599394d1 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -156,8 +156,6 @@
 		compatible = "rockchip,rk3066-i2s";
 		reg = <0x10118000 0x2000>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
@@ -174,8 +172,6 @@
 		compatible = "rockchip,rk3066-i2s";
 		reg = <0x1011a000 0x2000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s1_bus>;
 		clocks = <&cru SCLK_I2S1>, <&cru HCLK_I2S1>;
@@ -192,8 +188,6 @@
 		compatible = "rockchip,rk3066-i2s";
 		reg = <0x1011c000 0x2000>;
 		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2_bus>;
 		clocks = <&cru SCLK_I2S2>, <&cru HCLK_I2S2>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 651ea4e15..24abf214a 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -166,8 +166,6 @@
 		compatible = "rockchip,rk3188-i2s", "rockchip,rk3066-i2s";
 		reg = <0x1011a000 0x2000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 8ad44213f..a0acf2ef8 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -152,8 +152,6 @@
 		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg = <0x100b0000 0x4000>;
 		interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S1>, <&cru HCLK_I2S1_8CH>;
 		dmas = <&pdma 14>, <&pdma 15>;
@@ -167,8 +165,6 @@
 		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg = <0x100c0000 0x4000>;
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0_8CH>;
 		dmas = <&pdma 11>, <&pdma 12>;
@@ -193,8 +189,6 @@
 		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
 		reg = <0x100e0000 0x4000>;
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S2>, <&cru HCLK_I2S2_2CH>;
 		dmas = <&pdma 0>, <&pdma 1>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index f68dcde6c..4745be518 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -962,8 +962,6 @@
 		reg = <0x0 0xff890000 0x0 0x10000>;
 		#sound-dai-cells = <0>;
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
 		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac_bus_s 0>, <&dmac_bus_s 1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
