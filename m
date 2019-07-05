Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6ED60908
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cY1AaOtYJ6cfBD2OQpo3s2pIVdoz39UYxoWdIM0a6OA=; b=d1apTinS3J/AAtG2UdQJ9EBknJ
	6RgJfkbqXujlBiLUtMF+moUMjF2dJQK/4ayebEl8kMTrMyEn3GTSR9BWE5aLQiDPpTglqgAXPlPzu
	IlnPCpNJMaqbDzwuHmp44+xVjJOURidaSNA/9frfg5E84NUbhHqBgq02VVohve1c5pCY96KkWbM6h
	bK8X+O0GrM4rV6JIpwOAJky3+rYGwLmWl9UH9q9GdgqCx8FWTNuXXC8Mye+tdZAD8gB8qArpwkc8c
	gMll/TPvOwnSbKlVl4Ih1Mh+vgzT3syGYMvB3vvNAGzQcWAG9fTwvwwAqTUhTT5Kz5EqFIFWGjODD
	GZnrJNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPwS-0002kW-2q; Fri, 05 Jul 2019 15:16:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPvn-0002HE-JC
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=skO3SVLCULqV725lDp5RSaTuL4Bi/TaYFURtZV70gok=; b=M3jvw69+ASL6bE8hmmO4lJlxw
 WSATnfY1x285moUgCFT15Ow6bBwjisg54eDgCPqpeGlhih54kOz+8HtvFevevyR9eiqFZn1ATsSiX
 Fy/w6CInugxWrTUqWUDShFtqBbR59dGoL5TIMOY5iD5lbTgz5a4RoP5+aQDVHuHcX50hEL5cwbgf2
 kBfb+m4lYWlIcmD+VtSac2ODsEV5retdK6Qf7LKrSHp9rD3ZJkMEylQj1KudmVoWJudzZ6OGPRcws
 QuyidqwpvHqcuXknBzzCss6Nn3hWSWpY4OhNbQLvNF+zMBch8xmjiDWC0Vzlw0qSAhZ5nxEVeqmRN
 0v76jgxGg==;
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPvk-0002q2-J4
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:15:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so442522pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=skO3SVLCULqV725lDp5RSaTuL4Bi/TaYFURtZV70gok=;
 b=Vt7j6L61rYAQf5Be/HraOnjt90etsMPttOB3DyLM8TEVV/tMk/SnBoIlHBeYH8IWaG
 AZPXZxTFgX1lg8QUCqDCJlBYLT9cCsDyoh9UpU6Th7gXTQKZtkLmFhjCyV6UiwRhzhPN
 peNkVujPMKyQWaYVIWE+UUp9ftVCjxDUhjYnh3JGlWVD6mMIVFxiJHCa2wMXDfy9QZdl
 KxAvZnTBdisUyTH7rc4nDhqJD6ZkZWZBDhlS7wfssCIJ+xIrnYMKQyi6YFJHIhpRt3ks
 id7aaCopcmhn0HOo1gmf+lzw+lalX+BhDzR0pQHWT9Bo6ITqx0JvhApqrsO5aU33lXkh
 UbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=skO3SVLCULqV725lDp5RSaTuL4Bi/TaYFURtZV70gok=;
 b=IOL4ISWLriH223C2S1ghggR/aAq1wEq5+sHcsvPjEe9ctWToN9WHb2kJFOZlpmlfdK
 SxsJddhZWNzSDuV1Wj0SO2vr9SKesk9EkfLivf+4R8nhzgFkWCFRqjGS/8QDheDM74Tc
 RZptJL9oiFN2O6H8kB3Yc+Oude6UPobpeshVUoFBwGh5lS8GuwFhUeHOyyRB1Cwuhlnr
 TuX5m87qJfAeZmdAE0etBrNblQvEdJf87DfssGmGsRqbym7bD9+BICmbJI8EMNmCWlXI
 JKIubn0VskXmy2a/Tt0IT6BJHWrK20+scqQxFy6V8INe4DUOIBk5X+7A/Q7t+GxlSRXu
 zVhw==
X-Gm-Message-State: APjAAAX4yxKsyPZnV/SvP+pAzd4NKgO2M23n+C2XLV1DTXW3UUP+h8jw
 SeNdWSSibtOCEEx6hSiN7DtR
X-Google-Smtp-Source: APXvYqxuwrnPnLD0ZqVJEGEjmNvmY38DXOXlqXwNHG3jKeadBVvXBNVdH3X7E+bo9GiSoKcovyaxsw==
X-Received: by 2002:a17:90a:2567:: with SMTP id
 j94mr6228538pje.121.1562339713648; 
 Fri, 05 Jul 2019 08:15:13 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
 by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.15.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 08:15:13 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH 3/5] arm64: dts: bitmain: Source common clock for UART
 controllers
Date: Fri,  5 Jul 2019 20:44:38 +0530
Message-Id: <20190705151440.20844-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
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
index d2edb2e28bf2..408b76087762 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -172,6 +172,9 @@
 		uart0: serial@58018000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x58018000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -182,6 +185,9 @@
 		uart1: serial@5801A000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801a000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -192,6 +198,9 @@
 		uart2: serial@5801C000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x5801c000 0x0 0x2000>;
+			clocks = <&clk BM1880_CLK_UART_500M>,
+				 <&clk BM1880_CLK_APB_UART>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
@@ -202,6 +211,9 @@
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
