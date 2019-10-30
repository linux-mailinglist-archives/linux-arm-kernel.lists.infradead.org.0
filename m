Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00345EA68D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 23:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeXOdGR22U3BbHzD89qldGC83sBaqn59kAqZonCX/gM=; b=WcSmnflnwkolOE
	7W80WJI704Ja929ONp1f3tTwlWyyhrXa7h4MsIazQLmdl9cw8Jfw55+fjEgG4vPhluOLD1bD9l8eQ
	qe+dKLmgG8JCwmR1KZIzTmIMB9LS6qCXaNNAsAgxikl5EAnbKHh7anwdneYHOdbTluqvwJRXBWTfJ
	C69dIo0uZygK9Qi/LloBx3qGS6v1BPQPgMDhRFNvip+tUTgI9fbgzfxorMvUhFZQYr0Ki4u6xrMMA
	M6ijZlcRU6vDPjHXt4rhtr1P3gPRq7eh040nSvsSnNtH8pHqkWdJcGvlJa9+7mJSJdNRj3ze6DG5+
	ynQsaiBm2cukWaVRoJcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPwii-00024d-4i; Wed, 30 Oct 2019 22:45:40 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPwhm-0000H8-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 22:44:43 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 28C66BFCB4;
 Wed, 30 Oct 2019 22:44:24 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 799DF60919;
 Wed, 30 Oct 2019 23:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572475462; x=1573685062;
 bh=WcI1lb2HPbE6I47E0pUdS9lIXhqiufvTf994SqCaSoQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jsJXY1/j/UCI2FROIU9mDLmA6WYMaWfy73EICqeoanir22oEHD8AkQzuiKuCYFpwQ
 LsWrD6za3n/k+snlTZz+2wYpEvAskfY9Y9g4jQss/WeXZkO7/GbgpHf9klZusfGAAB
 Y5coHDGF0LOrrWGCd6cTGqOt+gbH9dzvVObatkPUgbX4vPfFM6Ot+V1A0I1aHNaD0B
 3hQRgDsoy9GQuH4uQ+r+GMRTLLT4OEWy4GvYi5RWuPpz8OLnzuf0MuEgwaSj6uFEI2
 miX0EvjU+a1tOIHUcptLiY8Hm/mh3RHRoL8g1uqg5wlHX0JZTEHL26uHtw+uKPEXRO
 sKcEgmpPZU60g==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Date: Wed, 30 Oct 2019 23:43:31 +0100
Message-Id: <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_154442_636751_622E0B4A 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rtl_bt driver already supports some Realtek controllers on ACPI
platforms.
This commit adds bindings for DT-only platforms.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 .../bindings/net/realtek-bluetooth.txt        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.txt

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.txt b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
new file mode 100644
index 000000000000..01d4ed146705
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
@@ -0,0 +1,25 @@
+Realtek Bluetooth controllers
+=============================
+
+This documents the binding structure and properties for the serial
+attached Bluetooth controllers from Realtek.
+
+Required properties:
+- compatible: currently, only "realtek,rt8723bs-bt" is supported
+
+Optional properties:
+- enable-gpio: gpio line controlling the power down (BT_DIS#) signal
+- device-wake: gpio line controlling the device wakeup (BT_WAKE) signal
+- config-name: postfix added to the name of the firmware file
+  containing the chip configuration
+
+Example:
+
+&uart1 {
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		enable-gpio = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+		device-wake-gpio = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		config-name = "teres_a64_i";
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
