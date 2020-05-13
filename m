Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41EB1D16E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYWNs2um0u0gLWG7Scs7DVAkrrDU6/iFY9KoAWcSKJE=; b=eZFOej0aITA6am
	CFWhHpAHd5X02dp8r2Z4/wGLAWCMNHK/BSES/7P5iIIupZ/mdgsJYe2rWRSYLSR8DvF7PLSa06HlS
	X2kGgxpMX5g6AsQeBUUQFS7y/I55RRibN3SEMK5UfqJZrO693pnEpOijwR6I3QSslyVXhZ1GqMlkG
	4UW0zfZhBJHVY98KGOyK14r/oJbHNzWf6EEH6y0A/sbaQo+Z3ygM7tVzxRzNtcj+pzGvjybgv2O9p
	DsVkPJTHgmDzv/6t1+tp1gh9QtKy6sNOPFLt39QshNGe8v3t8fXurBQNs+lzXPPcmcrFxuOd/KYUn
	d9jNBFcX0bkm2TeOfrcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYryd-0008NT-NA; Wed, 13 May 2020 14:03:15 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwT-0006nX-TX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378462; x=1620914462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h6UFiTnJ9Oy1iMZ7I4rcTXbTcxTZni/KOI6fPLd+AIw=;
 b=ejP34e4MO3ys/R2PONdsujUO7iFtKy9QZ0FrHwUnbH3kXhQ/YR9n2IuZ
 eABfCAa3otaRHr/FXv+pb37bo577EKZYrlp0R/1289xNNuuCdQKj+jF6X
 KGzcEQ/lEf5LwOhG4/AbTZA+kR4XN9Bo/Dpe9Td5ghZ2UkbZ1Fsgyy3VB
 4xU7xjdOGlZVtvgZzPG+Yj6dRH2BlFUkR05jUaV/FgxxzAYc2Q2vMWNl/
 AmeElNBhB5Sk6aoz5W0wKp7SPrfHEVCBqqqRdrdtSnc8hirdjZ+ao/YGh
 iCSEd+6gVb18gni7oBZPigx3pcJnR83Od/5cZzU271sk6pAuZVaHxmub3 g==;
IronPort-SDR: HlVp/bUx3COZt5b24MB17cfUBlsg6OMd4kyzmGGBsHpcfAfTtdUWijiQPq4u+fV1GkIjiW8QgC
 2CAEzYO40CJIywFrL7DLUUaFH+QQUjXeGUs88+XDZg53jCGuWx/NU+t/a30jA4CUEUFD+YzblD
 7bm67KgFkoyd2FWPqQfoC5R7eiX/LdturQ9Zz+7xrjZAfhvOseiv20nVQt/lwIG6IKYlYBWOb2
 zHSXeRfLaDP4x4eJ70UgXsHXgk9rdsahLpuTXvPUlwLQPa+tKC+TYiSu3jEioLYlruhfoVyxlx
 X0w=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="75774926"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:01:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:01:02 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:57 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 08/10] arm64: dts: sparx5: Add SPI controller
Date: Wed, 13 May 2020 16:00:29 +0200
Message-ID: <20200513140031.25633-9-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070102_033972_CF8112BB 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a SPI controller to the Microchip Sparx5 SoC

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index b5f2d088af30e..daa216978887d 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -14,6 +14,7 @@ / {
 	#size-cells = <1>;

 	aliases {
+		spi0 = &spi0;
 		serial0 = &uart0;
 		serial1 = &uart1;
 	};
@@ -144,6 +145,21 @@ uart1: serial@600102000 {
 			status = "disabled";
 		};

+		spi0: spi@600104000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "microchip,sparx5-spi";
+			reg = <0x6 0x00104000 0x40>, <0 0 0>,
+			      <0x3 0x0 0x4000000>;
+			num-cs = <16>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			clocks = <&ahb_clk>;
+			interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+
+			status = "disabled";
+		};
+
 		timer1: timer@600105000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0x6 0x00105000 0x1000>;
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
