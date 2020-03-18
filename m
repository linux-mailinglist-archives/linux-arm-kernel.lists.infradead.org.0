Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A571899C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xC3OQ4TOQFynWc7JC6IAY1SZVHnb029v81zVqXUs7Z8=; b=afKxXK3CDF9hb9
	DtknfKLVXEGuOtdgDsF5YzeiH1qI8gSOQ9yPEjBJ6uetwVof/eB9e4mYSuVIOm1RuM7Bpk+tzpr9/
	9xkbPmWybS+g/757wupgaGZGerxQ7XBS7v4iy5qxdJwGfTyRs4dRMLXrKjawnAjFmijOaQChvfv3/
	uVMFzWjsLvSYraJqGIBwNNGItnikspfjJTY+f6ca3dOmWynGfs6TGdJGD9gu0UmNN20JtKpIeG2ry
	OP2gYRzk/f20nn2irJKpSjZOKOY6cKPAgOKpTuniQF7h5Ut4E77z7k54Cu7pxy7zpqF1qzmvN05nw
	7eKKdiKvMhutuBqR52jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWAn-0001mp-I5; Wed, 18 Mar 2020 10:43:41 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWAf-0001lH-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:43:35 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0zvM3WYQSKGglrOZe4qS9nW731ZR99ZYSOTnB9obzkpu7Fa7oUWoFakKB88/Mt53am09je59e6
 vLKhxRsckpIA9/gL91TlxjWTJui5T3F6cWQ03qIQye5nU1V4ylM07D14KIrY2NOzYvIXQysdlr
 5AsMjzeWjWJBIJtlcLsgA2xso+WeEGH4qVLBVT6rJBlS94gVitMcCPaIq38odYzrzF6kim/YiG
 wVkOg2SF40rhk9hI/xHGKKBB7nZYxm/Lqz937naM/I1UBD2hS8jfznkxyPjIL9bY1jZ01F9f9y
 RLE=
X-IronPort-AV: E=Sophos;i="5.70,566,1574146800"; d="scan'208";a="69337725"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Mar 2020 03:43:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 03:43:20 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 18 Mar 2020 03:43:09 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: dts: at91: sama5d27_wlsom1_ek: add USB device node
Date: Wed, 18 Mar 2020 12:42:36 +0200
Message-ID: <20200318104236.21114-1-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_034333_175860_931BAF16 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eugen.hristev@microchip.com, cristian.birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

Add USB device node for WLSoM1 EK and enable it.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
[eugen.hristev@microchip.com: ported to 5.4]
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
index 0b9fa2942dff..6b8461278950 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
@@ -186,6 +186,11 @@
 		pinmux = <PIN_PA10__GPIO>;
 		bias-disable;
 	};
+
+	pinctrl_usba_vbus: usba_vbus {
+		pinmux = <PIN_PA16__GPIO>;
+		bias-disable;
+	};
 };
 
 &pwm0 {
@@ -248,6 +253,13 @@
 	status = "okay";
 };
 
+&usb0 {
+	atmel,vbus-gpio = <&pioA PIN_PA16 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usba_vbus>;
+	status = "okay";
+};
+
 &usb1 {
 	num-ports = <3>;
 	atmel,vbus-gpio = <0
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
