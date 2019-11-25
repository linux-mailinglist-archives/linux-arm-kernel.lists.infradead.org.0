Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE72109291
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:05:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8GLd5avmvNSiNXhQFbySJnSI2I4CDveH1TgKmyB+nc=; b=uylIuodAhMkToV
	MnbBpubK8lwjDMatGPGE94xuSGLcPg+s9KcAhgKD4Tblx80ofrHo7DbBMEjR46hFUUn7c2LFKTA0Z
	e0yGJaWzzl2qD/s5U1zYSAFUkLH2cq1aqET22SHc3K2SMmqiznzNYnFkFVvM+pMcf1Wic4jqw6QNo
	Bb95zOasyFzBDssHRnsroyRUH00SAe2ZZxudKG9o7o/T9T6QKo5KJjpnUh7DD4BSyhQdpNhf3YCi8
	KxVtvEItpKG9SdA2zLKW3PQBmAUIGPNWqaqqj+Q5p57CGsXJgD12JiiwR3YTCk1PiRXiBLt0V4bAx
	dV/5wjTB/WXOW93H8ryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHo8-0003XS-9R; Mon, 25 Nov 2019 17:05:52 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHnz-0003Vt-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574701541;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=UhMf0lnVjOcfCEB7ic10qPMrUlMrwwMjTmGRUymYol8=;
 b=Ee1QqEoTu6JlOTgPuYtOPc4TSlR2k4/mfbvhbzBYgQPWnbASvO/x50zHappl6gqss1
 sXEGZ0BeqS+JoUB9mffzUAsoC2A7YMAobq/zHRJOjkwWeRc0jSCvYif5x9Lb2K9OCh87
 IpxUJcbuve8+cjANy53/+G9MvzNJKGae9aBabIi8V1gPzIrFibnZaUs/kusKhgsmZTTX
 LhQBEuYo2oE9yu4Ra9q6eDw/UAQsUEIfiQ0J1ONpJleUbxgWNEYowYOOyFACyzqxVR+1
 SXcvMjGS7AiZbWHQ9d1CATkLs+JG7q5P6EBjNQmUyzLHF9SxrazrXbDFAne0VJDaPtGq
 XjoA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPH5d2r9
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 18:05:39 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 4/4] ARM: dts: ux500: Remove ux500_ prefix from ux500_serial*
 labels
Date: Mon, 25 Nov 2019 18:04:28 +0100
Message-Id: <20191125170428.76069-4-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125170428.76069-1-stephan@gerhold.net>
References: <20191125170428.76069-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090544_221965_6CA9C439 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ux500_serial{0,1,2} are the only labels with ux500_ prefix in
ste-dbx5x0.dtsi, the other labels (gpio0, msp, ...) do not use
any prefix. Remove it for consistency.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 841934093c3b..d4a55369452d 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -24,9 +24,9 @@
 		spi1 = &spi1;
 		spi2 = &spi2;
 		spi3 = &spi3;
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
 	};
 
 	chosen {
@@ -838,7 +838,7 @@
 			status = "disabled";
 		};
 
-		ux500_serial0: uart@80120000 {
+		serial0: uart@80120000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x80120000 0x1000>;
 			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
@@ -853,7 +853,7 @@
 			status = "disabled";
 		};
 
-		ux500_serial1: uart@80121000 {
+		serial1: uart@80121000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x80121000 0x1000>;
 			interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -868,7 +868,7 @@
 			status = "disabled";
 		};
 
-		ux500_serial2: uart@80007000 {
+		serial2: uart@80007000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x80007000 0x1000>;
 			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
