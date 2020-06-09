Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3628F1F358B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trSIpxmTg+KKYcY+pe1NeCOVSEVv6qgXcffFyeKA8mQ=; b=NF89favKjIMsLh
	+Vq28TZEyIlq4lJ6/z53h7oeI0l3rqD8sI8BXjF7Mdm94kVsHCH7hl5/CZUVAKFM8fzZjaiAmhD4k
	Gy+nA5EgubN/vJ4WXIt7XnhyuT1uzJrVPlYkNtWE3sbs+0cbkSOTRo9+xGcXoVdX6HBELkmfZyOOJ
	aOiqyXmpC+Cil7K2wqiVDysTdz31TI8M580fw0UDK49dvBkZ3Rc2yTLGlkNaxo5vWo3T4jmo3wCJm
	oAWbGFwJgvCiKKpk3kzmW0lm4rPP5Ksqp5YQXLo1HGgAmVWV28LoQA+DP4VzBtjBM78Xoj8LHoCg/
	HkzSqEhCyRNggQtOogFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ39-0007KU-BG; Tue, 09 Jun 2020 07:51:59 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ0r-0002sj-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591688977; x=1623224977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=riLN+R9+iea9la5DRgv4JxkKdYjJMTBI001pP1e5cEU=;
 b=awCXjBNVfoh9tEoeAXZkRE60S5zFgRhmM2IzgkqYniLWw825xGdl4hqF
 PXluU5udUJ/Z0+zmuEnNxGpdt8PxnzVRX4mdm6zbJePhHJGuLuBwFhPOc
 /6Bf9LZ/aHG3gLMOjYWbF3icQabHDZsUyAgsNqG61XM64iZ/pt1VoAEUd
 Gw9MT0cxq212BV4w4hpa0x1gTx5B6AJ/g2vSv5bhOkltw0fNc6EuVgBsQ
 rq4/o4GxwuHPBhCQuPojyedjFsFguz5cj0elWmy27fFg65MOZKMFYcWF9
 HzuoV2c5gPH3QQppCLYU9bY+9OT8c7NWODRpOQMo/EW0V9cyjeULM+io0 Q==;
IronPort-SDR: u/jmM1FPykEZ1aKwXTZLWoWTz4ttUjy+gONedKqZpbf7ePKo0mEHe5gM2FCBb0ige6IbnJA9Fo
 wT13tW373AwExbPjqRO/Fui/+wO+xfNT6SiwZo4cL8vnWdAMtJBDbAz21+rNkZHwKusytjfR2w
 Qr7T2fznQ8z6/gViSMb6jyyZFb1A3Ii0FfdkW7NF6DlLs3Br60EZa/tUO5gihGfDe4AnUGvFni
 ygs9hWkLdGHmQx5ir4bunlz2UeCyUUvk04cveyQmN4jo8Nigupb2XY3k8VlCigBUbLGH2FMeEI
 YW8=
X-IronPort-AV: E=Sophos;i="5.73,490,1583218800"; d="scan'208";a="79410256"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 00:49:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 00:49:30 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 00:49:28 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v2 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Date: Tue, 9 Jun 2020 09:49:25 +0200
Message-ID: <20200609074925.9481-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609072828.9088-1-lars.povlsen@microchip.com>
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004937_770992_47B122AB 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
index c9dbd1a8b22b6..49d4f289b9026 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -244,5 +244,11 @@ i2c1: i2c@600103000 {
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
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
