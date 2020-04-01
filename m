Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C98119B84C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Hp7kMg2s2GruyWIiwhehoqgi3a1bFfwvgmTSX44hYY=; b=QASrotCQkXnEgR
	U8gpY3XreRB8QG/Lh/WSDSZSFPAut+ZInh61daU8UZ4tgKRxC0sVGCact2tMoj5i8ytle9IA4WBrg
	3uCot1L4S3hBQPUNGWN4gQWwq8dHWWaJr6WoTENfK1NTcbxwITwX94PA8yBACyQJfPQnVClbaBAIk
	OrfJb8j/yElrF1/poeUZxIcjGNvf0p5rstioZskgNVYpHf6VYYj61TEmpENV3+jyM4TfyRhgo+dwF
	EMVdyMObiM5p+2lkuRnJ0X7fu0VdXtCxc2/NIomsDwxMwTBu+aYjt/lfgesncp7mJOPMHhmUUn9X3
	wm5tEA7gPtnVzJ9r7R7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJlec-0006dT-Uz; Wed, 01 Apr 2020 22:16:10 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJldq-00060d-UJ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779322; x=1617315322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BtF59sclgbkIUzvGZx2S7plS672x9H/QbHOQARgSAcU=;
 b=AnlXiIj9VXntqrlMWg/h8TffNOqeWxZHSrFOzgrQkttI/BqkAlFS5BWx
 OJIBbOKnMmjRGXiWrvpfNGocRrD+BSlX286nSJARYXftZ+zm2MubDfSaU
 YbsRIp/Oe2wCRaiM1bBK0sPdkTzgL4/r8bEneWzD7L66KXZOaf7P5zXiR
 6dgYJCg6yN26OsAvLnROof0g14beR9MYjINEMqj6PNJKDRgTOIgH0P7RK
 AAaMYsmb8Z21LAw61lWUxSBA8xE2CPW2dAvBuaai4uyZjSRfD1rXeGzn5
 IEKVybKSJn8y9UWfAZ0NseSxxrwztIKeCA+/a1v7vb1Ua6rBQBmbVXFxk A==;
IronPort-SDR: l8b7xfUpbftgwzw11go+/tr5dZfwAZG88vElC8C3BXAdVX7HONFdsjLmE2guogeTao6uCIOTBp
 +kXoiu0Bwi21uN0yd0AEpISP+Zeg91MO+mnY+jIhgI5SV+qJkXT9LA/APHxrNM0U87bozL7Bg/
 E7e3ifpr5u8AS4EC0NJTXz0Gx1j5e5Iq0yL9uNd8RVVZlq/27DraE8cdDh7joc2TrH4CFdywi+
 qGoVgfRmHio9ObfUtChNP5Jz/TgIN7rXPsUq+IgyVAam6WnPS4PSyXX3t0Vz/7FNFXK3sDziOR
 dbc=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="72005459"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:15:22 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:15:28 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:15:25 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH 4/5] ARM: dts: at91: sama5d27_som1_ek: enable i2c0
Date: Thu, 2 Apr 2020 00:15:03 +0200
Message-ID: <20200401221504.41196-4-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151523_008308_54777988 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Cristian.Birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable i2c0 controller.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index b0853bf7901ce..1a26e1a129319 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -115,6 +115,13 @@ uart2: serial@f8024000 {
 				status = "okay";
 			};
 
+			i2c0: i2c@f8028000 {
+				dmas = <0>, <0>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_i2c0_default>;
+				status = "okay";
+			};
+
 			pwm0: pwm@f802c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_mikrobus1_pwm &pinctrl_mikrobus2_pwm>;
@@ -281,6 +288,12 @@ pinctrl_flx3_default: flx3_default {
 					bias-disable;
 				};
 
+				pinctrl_i2c0_default: i2c0_default {
+					pinmux = <PIN_PD21__TWD0>,
+						 <PIN_PD22__TWCK0>;
+					bias-disable;
+				};
+
 				pinctrl_i2c1_default: i2c1_default {
 					pinmux = <PIN_PD4__TWD1>,
 						 <PIN_PD5__TWCK1>;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
