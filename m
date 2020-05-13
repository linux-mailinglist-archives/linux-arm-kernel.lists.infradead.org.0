Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13421D1662
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5lNunwr1pKZupW9storehRTNi4gak0wj8yxpKMDNQ0=; b=f6w2yTh24uz1nt
	Y4U2fi2zYU8Rj2J/+uFaNLdBGLnof+ybf/jQNIuCMffpxVJYy3o4PJeIKpH6xrhk4zV0bnObaTePj
	b3YcFkeyF2JJw19AANceIt/JsSqz8RkkMDS0BvXPIZyLkP4DB1uJgxsgm9u9n9hkecC0iWGfiIrJF
	eM7teks5fIqvjdQuwl+rolqLVDlK1hRPwvPBuOvmHlVuCHpUfJpEeQFz57jzao+u18bxzCodvTtGR
	krOskWSG5r4XXlLcuZUDE+YokD5bamFkwb0RjWT0DtsAkSvM0WkJm7BH3WNhAhHrLcW31i8qqy2YR
	lW7u0l4Wuq+71b3teLpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrkZ-0005Br-KB; Wed, 13 May 2020 13:48:43 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYreY-0005fo-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589377352; x=1620913352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PV07J/wAT10xDYr9kx06zNqja/xgCGRaYSoB57UP5EA=;
 b=l5FONp08tx7D/yX85Uclz/LPTTiAk/3D7783+JQ8GtV7zYmIoWM1/2wr
 O1Q8YRoyHDeo5YfbZopkHXBV31+u+mubXZGOqspafoixSoR9EDPNihFpx
 qSXc4v5o3ldNOmeLGPJ7QBDidDT0mF7mYDTIhQevlbDm7ehTrUCdSlNdp
 nCX6el71i9iwy9ULNWrI7SpZ5IeFbeSJP6f+sZeymeNVKX+OcQ2vUOtCY
 fQhJl3p/UTQfqt1tYylBle+BMIau4PGY5R8mfKsRT5ZWfIg6gcsQ7eOU0
 vDuwCISH5kTBaZQDK4P1utEQcw4a60KY0hppXDEQYIbsNTPLyxAlhuJjI w==;
IronPort-SDR: G9KdmkzZxo6j5xx25DGIDDmDefKyX/w0bsG8CdPIn9a7RBFlaLp2vc0dkyZa4XLPoBOrBXuZGg
 CY87CN9ml9fv7a9axPhgMkERYAcnXBh2MAKZlDARR7BdY7lcK3qBYJvsYXyhUybUomFPjFzLBe
 Tw1O5C+jE5+AO4u5VEYTBhKteWPbnnr91XKTO91NfAHrwxMbTxtOs8IPJ887vLcal9YVO13RZ/
 fqZvORksXotyjqiGYNIzioj1uG4UvI0XXMJpqnIhcnJy2G8msgEoU+gEysh2QMhaovgs5A7rRs
 GL0=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75771963"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:41:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:41:55 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:41:53 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>, SoC Team <soc@kernel.org>
Subject: [PATCH 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Date: Wed, 13 May 2020 15:41:39 +0200
Message-ID: <20200513134140.25357-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513134140.25357-1-lars.povlsen@microchip.com>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_064231_006550_6B7B9CB1 
X-CRM114-Status: UNSURE (   9.10  )
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a hwmon temperature node sensor to the Sparx5 SoC.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index f09a49c41ce19..b5f2d088af30e 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -233,5 +233,11 @@ i2c1: i2c@600103000 {
 			clock-frequency = <100000>;
 			clocks = <&ahb_clk>;
 		};
+
+		tmon0: tmon@610508110 {
+			compatible = "microchip,sparx5-temp";
+			reg = <0x6 0x10508110 0xc>;
+			#thermal-sensor-cells = <0>;
+		};
 	};
 };
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
