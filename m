Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63F01B7DC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 20:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5vaDsnMOvPbVQIDumdhIXsE5UlvgZaLWhrlzv7SX3bA=; b=f0iD+tDoAV6/Qy
	47L2RyilRp4o6HUzZnMU9N/UNbfsHrWou97MqrMVlBVB8imIe5Y3wIhcAdxzET3EoYxHcQvjQgOWc
	7UOz392tW+QfI6jtpMcZkskkcTo5qXuR+veEqEVZv7oJOa8X25siVVxMxbWrSHKRTkniKC8aT1fgX
	bvFf3BOM3lWaw/Ett8IbAU00v1FhurN6uea7s8KgB5+bKCRv/ZkTqsBOANnTyqPjt/LmyYCd4CkOy
	yPy6g1CxyXMXX8kMU+5B9bER3QodjMlWWWXk2RqXWpU0Iyj4OjQV0a70OhkblTP/yBe128F/9XH4D
	4ns6rjK9xP4N1rdno9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2xb-0008MJ-S3; Fri, 24 Apr 2020 18:21:59 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2xK-0008KQ-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 18:21:51 +0000
Received: by mail-wm1-x329.google.com with SMTP id x25so11617630wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 11:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rAYQCmL6IU2xY3DJLIY0s7M6/A1t7zEK7ce+EUTohJo=;
 b=u84fygdIrsBH86qD5SGKghp8DXnyg7qSkbkmLvLVWlwrhonzzdwSW1AYHFK2yC/R69
 flipLGa2VPJBxThDXoOGxXceU68RpDespacc5xLSVhQuQrggJfatmOb3NS8uqhOYjjHK
 Ik8EwKPUQ+yevL2z43tW5Ns1QKy33nWsAPcXkosdOoJ1sCHRInDMfUemRBoUoanJvqBh
 MzVSsQqJzwGEADQ9ezgfUJjXTp6RnkXL7CM++U8+PpgAAsAglMXPgYMYN/0ZBYagHU+q
 CNlrZmZ/7cdf1e1QeBs2xHdoRHYW3ugIgJX1sUCWfLG2LeiHDRppV19l8Q7QBIadWLe6
 Wh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rAYQCmL6IU2xY3DJLIY0s7M6/A1t7zEK7ce+EUTohJo=;
 b=PtYx8GfUgVspCiQFqBfb/6prrYlYnmXiCXd1I9emi5+Ihw6/Y92Nj4qwHWJlqF1+Gx
 dmZ/zUdiWwnYjKzf18kivjR+CCKXI9N3phtMEOUluekALYCB33Hx47DmttqHjIoe7MD4
 cm10H2uA8lU/KOoKV4FfujE891Ok5wikUQ5Y50pv6M77s4pO098TUu4Hgr7Tp5Bje/dG
 xB4z/DAKDgqQkZsCEq3qmkMsCq+xTcGSbbAAsPt8Hz0GZUx5osFxj+JhZavcZ9OGJsep
 A2RoXl+bdGiV5yJ2Yvl+WJ46MpVgd4ruZBIYVfMvF6ILn4/a+vIlbqelN2crRUOgF1Rt
 rZwQ==
X-Gm-Message-State: AGi0PuZp5fq/Msy984uyfzFYEots6WP3UdahnlNeYNQG/mwzDvYDLllP
 1lBJsqNnUix25oAkzTOouD4=
X-Google-Smtp-Source: APiQypLUjLMhouWE33cxL9vt13Udxx8+F7+VXu6HcQFVF3uBl85CsetfpYO5KrT/E0cXXHX9BYHFwA==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr11193868wmb.17.1587752500199; 
 Fri, 24 Apr 2020 11:21:40 -0700 (PDT)
Received: from localhost.localdomain
 ([2a04:2413:8140:d480:18da:1e39:90cf:b88b])
 by smtp.gmail.com with ESMTPSA id f8sm9338788wrm.14.2020.04.24.11.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 11:21:39 -0700 (PDT)
From: Adrian Pop <pop.adrian61@gmail.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] arm: dts: stm32f769-disco: Enable MIPI DSI display support
Date: Fri, 24 Apr 2020 21:21:39 +0300
Message-Id: <20200424182139.32190-1-pop.adrian61@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_112149_753117_48153D1F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Adrian Pop <pop.adrian61@gmail.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STM32f769-disco features a 4" MIPI DSI display: add support for it.

Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
---
 arch/arm/boot/dts/stm32f746.dtsi      | 34 ++++++++++++++++++
 arch/arm/boot/dts/stm32f769-disco.dts | 50 +++++++++++++++++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index 93c063796780..202bb6edc9f1 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -48,6 +48,19 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		linux,dma {
+			compatible = "shared-dma-pool";
+			linux,dma-default;
+			no-map;
+			size = <0x10F000>;
+		};
+	};
+
 	clocks {
 		clk_hse: clk-hse {
 			#clock-cells = <0>;
@@ -75,6 +88,27 @@ clk_i2s_ckin: clk-i2s-ckin {
 	};
 
 	soc {
+		ltdc: display-controller@40016800 {
+			compatible = "st,stm32-ltdc";
+			reg = <0x40016800 0x200>;
+			interrupts = <88>, <89>;
+			resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
+			clocks = <&rcc 1 CLK_LCD>;
+			clock-names = "lcd";
+			status = "disabled";
+		};
+
+		dsi: dsi@40016c00 {
+			compatible = "st,stm32-dsi";
+			reg = <0x40016c00 0x800>;
+			interrupts = <98>;
+			clocks = <&rcc 1 CLK_F769_DSI>, <&clk_hse>;
+			clock-names = "pclk", "ref";
+			resets = <&rcc STM32F7_APB2_RESET(DSI)>;
+			reset-names = "apb";
+			status = "disabled";
+		};
+
 		timer2: timer@40000000 {
 			compatible = "st,stm32-timer";
 			reg = <0x40000000 0x400>;
diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
index 1626e00bb2cb..30ebbc193e82 100644
--- a/arch/arm/boot/dts/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/stm32f769-disco.dts
@@ -153,3 +153,53 @@ &usbotg_hs {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&dsi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			dsi_in: endpoint {
+				remote-endpoint = <&ltdc_out_dsi>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dsi_out: endpoint {
+				remote-endpoint = <&dsi_in_panel>;
+			};
+		};
+
+	};
+
+	panel: panel {
+		compatible = "orisetech,otm8009a";
+		reg = <0>; /* dsi virtual channel (0..3) */
+		reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
+		status = "okay";
+
+		port {
+			dsi_in_panel: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
+};
+
+&ltdc {
+	dma-ranges;
+	status = "okay";
+
+	port {
+		ltdc_out_dsi: endpoint {
+			remote-endpoint = <&dsi_in>;
+		};
+	};
+};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
