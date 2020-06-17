Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38211FD28E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0aQkidKr4T0KMGDMgt0Va8icDrW6tfCW1SoRcNQIYo=; b=rhFFNANj5CIQaL
	CFdjDbuTvQ0vLg8WV8JNhmeza7Z6AfsT5CSB9hQxwYBoxlaXRxwRGoQczIingDiIKjR0nyjlrnTnF
	AgZMM/7qscACmmbiGG3jW90xJ5O73kOINQclE/W4QMDCqHYtVgdQh1S/KWePzgu7bgv+qPtdjH+/j
	WICblhIJJhRMRvP8lhC4A3+lH/sh0q4P+HM/7DMin17hiI46rD8gbUaXn1/i3AtEcviSXRGXeOBIE
	vPSHldpHf5EEdHyjjHPtJmY+ARDhbDwCrFF4FTa96R64yLDEtDwCBrGwvgP4BhDEYseQLLB29Ni1o
	dVHHzf9p7kwV5S81S9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbFg-0006UY-TW; Wed, 17 Jun 2020 16:49:28 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEZ-0005gw-VT; Wed, 17 Jun 2020 16:48:21 +0000
Received: by mail-ej1-x644.google.com with SMTP id k11so3113512ejr.9;
 Wed, 17 Jun 2020 09:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WbtFhwo2fqQ8/gIQgNvQA6jb7MjlC2oHnaaRv7v1IUo=;
 b=A07pKi2LYvpXZf86f3a4g7sReKjO1U7SOzTgDaNnc/97/L9D0FW47EJvtPHPstA309
 2mIVuhTx3sOVsqo2afHlc+SVcwD8uYqdgBOjn3iRWrMODrsZZr/IyDt+/F1o/+5BgYbi
 5kerLNuB7Kyo1xTxHuR/6ABuvfGG7qM7CkTh7wf9lTJNQIJmFvGnb/Mf+hOz0JsKAiPM
 rGHLrX2dsO8GB0b57TVodqMtY773pdHL5UFR8SxTswSh5WAuvJ4/XGkv6reN5iXBuG8M
 CYAnohV2Gsvt32oYF4MO612scOWHHNfAW45MnaoaqIFu9XbuOLNUmpyipMnDLQktP5RU
 cTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WbtFhwo2fqQ8/gIQgNvQA6jb7MjlC2oHnaaRv7v1IUo=;
 b=uM3Gdt3DlJ81auiPdeRZSJ6v53rFsOxgu1hDGAbY8AS2asvA3ixPlG/WRYY747cx+I
 p+5oY78IxNBwE7yH10TtdAPaJvon1+kE/aU83DOY6GJm2Da5P9G7WZXufd+3yQhLTwYz
 8bzw5G5cbtLxqveXKtIOOSV/Lbm84SOErvJn9KJDFSSVOfymjX0myvyjTQWDhirIFmc6
 dVjAUDd4A5gAuLxNFNvP44VvxYrzohvAtV5JlWD3ZYzaXJ546chsWF+4v6jX7gu/e2hm
 hKBKUJnVthdNmJ0zcl5jnJGUYooLTFvTghOnpNLY8jJKSodOHhdCNZJ3bnpLFlbH+nLm
 //BA==
X-Gm-Message-State: AOAM533kqLa5lOcAvGB6zG13zqf3kkVaX49e4OuxANYGpqevXqhYNzrO
 WMn6V/VxLpp//rhm73a9ZtQ=
X-Google-Smtp-Source: ABdhPJwpe09uu45N6nr4qcBknRYME+IG2U1ApAgHIb2wdtB6mfX4FJC13WILYduRAMnTW86xDre4wg==
X-Received: by 2002:a17:906:148b:: with SMTP id
 x11mr85532ejc.282.1592412498710; 
 Wed, 17 Jun 2020 09:48:18 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:18 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 03/11] arm: dts: owl-s500: Set UART clock refs from CMU
Date: Wed, 17 Jun 2020 19:48:03 +0300
Message-Id: <0dcd4186d4ecc420ce382977dd6624f6e63fefc7.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094820_035294_8A87BE2C 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable using Clock Management Unit clocks for every UART node
of the Actions Semi S500 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/owl-s500.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
index 5d5ad9db549b..ac3d04c75dd5 100644
--- a/arch/arm/boot/dts/owl-s500.dtsi
+++ b/arch/arm/boot/dts/owl-s500.dtsi
@@ -131,6 +131,7 @@ uart0: serial@b0120000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb0120000 0x2000>;
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART0>;
 			status = "disabled";
 		};
 
@@ -138,6 +139,7 @@ uart1: serial@b0122000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb0122000 0x2000>;
 			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART1>;
 			status = "disabled";
 		};
 
@@ -145,6 +147,7 @@ uart2: serial@b0124000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb0124000 0x2000>;
 			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART2>;
 			status = "disabled";
 		};
 
@@ -152,6 +155,7 @@ uart3: serial@b0126000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb0126000 0x2000>;
 			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART3>;
 			status = "disabled";
 		};
 
@@ -159,6 +163,7 @@ uart4: serial@b0128000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb0128000 0x2000>;
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART4>;
 			status = "disabled";
 		};
 
@@ -166,6 +171,7 @@ uart5: serial@b012a000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb012a000 0x2000>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART5>;
 			status = "disabled";
 		};
 
@@ -173,6 +179,7 @@ uart6: serial@b012c000 {
 			compatible = "actions,s500-uart", "actions,owl-uart";
 			reg = <0xb012c000 0x2000>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_UART6>;
 			status = "disabled";
 		};
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
