Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C9713A032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 05:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lWU4/03pH6j54l98Sa9mnBs+WTNkdvHkkYL1S78EUao=; b=SuWPSXdUzJyICXnh1Q3wABpFjS
	hg954AkR6ySPCoiij+Gzntfi183Mn2S+/NMTLsYlFiH34jm4kCN0c5LCjtSHW/J2FGyMMKD5HBJBm
	7SUAy4R4z7EX6nZM69QvfDCLFAiZSjkwgjpn6TY8hHJWTdX8JCCekMvXr1siRKsBY3CC9iGKEZaCj
	fvrdwx2YZBjgAgux/JACMew0XqnA/gbnQDw0MTUfZveuVXGY5IWPjUNGDS2anA+JH4mrFSsJ7Hp89
	VqNvO0og5h1pXDCCpu0xCIagbFBdUz70XFA15wXE5pHx8ecWOLNK7m+RMX7LZyO6hblkCvHSSdA5S
	Qxr1bvDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irDQx-0007DT-Kk; Tue, 14 Jan 2020 04:04:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irDQR-0006u2-5G
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 04:03:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so4686039plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 20:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kgB5pCuOS2QWyyNQUlCeMbbF7mRF+VE6sHHJ2GG7b1c=;
 b=QdPfcdi1ipj0+Ri64oNlm3QAxHNOVKfQh4F2O7GA1Ay4PJt7Ptm3taUkYPwej9Rb6u
 C5f+lo9PqeH9IolsNSCGzhYgXgu+MKcY9JE2IcbYAzJKT6D3+RCaLXl9nueJ+HGwLRNZ
 AwmHvRnJTSZpi9xKQ0MkZo45kK6Vr1Dv2orRWRPUQoMhuYuyhgEm8KSH5z0GxcUgLVMH
 C8fVPRqFwfB0F0Jnu4w8dg4p910pbu1cg5ejFdM9igPdc5gMj3RvO9XTwNMEmAK4cY+/
 rRKu3aauaRtuN51ecAMVdy0z3LE0x+xZmow5KK69sJwqOSMaT+crsUC6n7wWE6Bpj8dh
 +/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kgB5pCuOS2QWyyNQUlCeMbbF7mRF+VE6sHHJ2GG7b1c=;
 b=XLDhFSsyzGVaAu9YeYU3rlCOWomeBm06MpFH0Zov/5JzvwKWPyGbHHofDoPEXMiRtr
 JJtTv3YWjt+J9mKSkNg9qId6RSKg1pEJO2sd4qb7gz3e0G4Ca/sfwWgMMq2XgDbA3trl
 puznmeDfisjgTnCbyRiEXaGfZnvoNui2jk//TFTjB4KL8YQhfYI2w/F0Y8wXJjA/s3Pi
 IfqhrXW0YLSQh1wwLLodtRQCR2HnJZF8Ic7btU0jCWm53CLFazM9NaA56WOdGl29PCOT
 6gzduLfJ6FuEg4EBN1FYWNGEgzkNz56zbz7VAW23TkTBjl2d3fX9KQgmuc5GtsIHbShR
 88Vg==
X-Gm-Message-State: APjAAAXl2izSBU4MIGZ4igfZxCIfpcBmmHBTUmOGtB4ioQfw3sUb+jX0
 S5YeunCmHJToBHoivS4cat66
X-Google-Smtp-Source: APXvYqx4t9bCNDv6E+QwwdT47O96lrVNOs3W62A+lHgUtZejQGcwbJM2PqFGzrn+kmbks1+p8FtnfQ==
X-Received: by 2002:a17:902:ab84:: with SMTP id
 f4mr24683298plr.35.1578974610352; 
 Mon, 13 Jan 2020 20:03:30 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:618a:cee9:38fe:8c63:d2a2:7397])
 by smtp.gmail.com with ESMTPSA id h3sm11222025pjs.0.2020.01.13.20.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 20:03:29 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: soc@kernel.org
Subject: [PATCH 2/2] arm64: dts: bitmain: Source common clock for UART
 controllers
Date: Tue, 14 Jan 2020 09:33:11 +0530
Message-Id: <20200114040311.6599-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114040311.6599-1-manivannan.sadhasivam@linaro.org>
References: <20200114040311.6599-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_200331_206727_B4C30BF3 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove fixed clock and source common clock for UART controllers.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts |  9 ---------
 arch/arm64/boot/dts/bitmain/bm1880.dtsi            | 12 ++++++++++++
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts b/arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts
index 3e8c70778e24..7a2c7f9c2660 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts
+++ b/arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts
@@ -49,12 +49,6 @@
 		reg = <0x1 0x00000000 0x0 0x40000000>; // 1GB
 	};
 
-	uart_clk: uart-clk {
-		compatible = "fixed-clock";
-		clock-frequency = <500000000>;
-		#clock-cells = <0>;
-	};
-
 	soc {
 		gpio0: gpio@50027000 {
 			porta: gpio-controller@0 {
@@ -173,21 +167,18 @@
 
 &uart0 {
 	status = "okay";
-	clocks = <&uart_clk>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart0_default>;
 };
 
 &uart1 {
 	status = "okay";
-	clocks = <&uart_clk>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1_default>;
 };
 
 &uart2 {
 	status = "okay";
-	clocks = <&uart_clk>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2_default>;
 };
diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index 8471662413da..fa6e6905f588 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -174,6 +174,9 @@
 		uart0: serial@58018000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x58018000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -184,6 +187,9 @@
 		uart1: serial@5801A000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801a000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -194,6 +200,9 @@
 		uart2: serial@5801C000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801c000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -204,6 +213,9 @@
 		uart3: serial@5801E000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801e000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
