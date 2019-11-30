Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B644210DF3C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 21:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNFy64RwtIHhlaUxoKkd9z2CyheZ8nBgfBPClpaJWWI=; b=fesIfVB7u/2TGw
	0ZTtAgfKU3sXzkxsnXZYx/uY1DF7KnrrrwpBGpcBiga1GQLtB94itrNVn3ph0VQ6SvayZ5ITJf/RH
	sTyinV8aEoha+SJSSi4PpXgBFgwHvo84+N2W/i4TOROz+GKq3aMmFNN68DTuvQ1jtjVv8Vkv6bv3c
	YXC8rxua2CuOJM1P/XJcd4+0/unXd/BC1a3qujwDeyGHCMez2B0nbnKpVxWQl3sxb8JCNo8PwZ0jj
	t2unbU0c36lpKntIIqamev2kcT/TH0zNq228TpjpJuAMcOcAWfTdOC9nBRQ/m43k3zmG/H7EpXX4M
	kg589O2RcUuZhS4FiD8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib9HW-0000O1-Im; Sat, 30 Nov 2019 20:23:54 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib9HO-0000Mk-1F
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 20:23:47 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 90334BFBCC;
 Sat, 30 Nov 2019 20:23:37 +0000 (UTC)
Received: from localhost.localdomain (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id BB4D864C1B;
 Sat, 30 Nov 2019 21:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1575145416; x=1576355016;
 bh=KTDx3GIAk0BBY7Hm5xNIopsl0EDTIeBIgAhSNWOJzzw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UjacfKcEmbQNnDInHocp5tbE+wr0WT/estqa6bJNtRbZSfUdnGXRTWfpwC21fXuqc
 Q4VdN5W0fl5w8+pkpodLt696Bt8TzqwKvV7WrmcYaTCEOme4SpRMuX4sC55ypAyDSt
 3Qiu1RmJrOKHWlrI53/4QbH27j8BRJDVyVA/F7p9yDn85tGZOidoMAaNob2nAMptIu
 TL5Yrf6JiBrnbNMX9KhjKJRGnZlVYRgQHD19KwBpwHxUdwrP/SkZSBrai7hH/VS+A8
 BxADUTpyz8uB/67wH8brJ8SMVT9BfYqDOBjRLxsni9xb722ojAZGmc2clZ0QR2BLqX
 QaBiIl7Zj8JWA==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 3/3] arm64: dts: allwinner: a64: Enable Bluetooth on Teres-I
Date: Sat, 30 Nov 2019 21:23:14 +0100
Message-Id: <20191130202314.142096-4-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_122346_216754_47F2EDF3 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UART1 on the Teres-A64-I is connected to a rtl8723bs combo
WLAN/Bluetooth controller, with three GPIOs used for device reset,
host wake up and device wake up.

Currently, the host wake up feature is not supported by the HCI H5
driver.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 1069e7012c9c..b28e6d7cb227 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -325,6 +325,20 @@
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		powerdown-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
+		host-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+		device-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		firmware-name = "rtl8723bs_config-teres_a64_i.bin";
+	};
+};
+
 &usbphy {
 	usb1_vbus-supply = <&reg_usb1_vbus>;
 	status = "okay";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
