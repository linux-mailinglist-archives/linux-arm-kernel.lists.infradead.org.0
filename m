Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B661F9409
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4crc1WSikBdBEEind/eyj3ndpwzXdMK1K/MDBfxBfVA=; b=LvSKeyemhh6beO
	owj99xhHwX3k0Rkr7HPFhys35517CXGmu63789egCgaiLS8H6q8N7Y7hoZpJNr7VsFBPRL/h3uPXw
	yqAFE57I/Qhd5mb56xq/bCQ67Iveq46dlj4FrAWadmcJOVyH4jafGvYKQi3B1u+yZ+tw42YDM1+M8
	m+TiPfspg7B9u3aHyRPNrVO+CfvPIXmUOmclZ7qGjQpwkmvsMrNct7JC1gCIfAp0lkoJdzSGCYNGp
	QbO/Bp7k+X5JvcMpWhAsEIcx+sppd7sd9nE4xDCuLhzdHj+aJkePP1udF5n3p5Bl5i3/vOIruPJA7
	c0WDZoFcVm6A7HTo3tpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklqo-0007y7-29; Mon, 15 Jun 2020 09:56:22 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklqR-0007uL-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592214959; x=1623750959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=692fkDEuh1BmOmtP0c+bSMMGsuxUEiPJurUSSpS4uUw=;
 b=lWPr468GGPAs4VroLrv/jwBQxAqRNM00sHDyk3KraGVEIqCpAg/loQTE
 avQaQjIt7CjzCV8LYQC84lX42uxhizFVZu4sEB3QB/0GJmip4NhOlRBEq
 NDuabZr9p/NQxPUjleQRjrSiJWD4+8BuNq/nCb7uOHnRft+OJLrWs5Qyh
 uxbFliXTgOFqmgx8O1stA20d4fygZSswFmOmq6H7SmhKzJ7ut4KpaEoVB
 9KILV401IlN7i0Nz0NrKWl/FWpzQEsob9IwR2+EvGyfgCTel9YUdC00cA
 pmXa8EzNE6W6t8RzYFJIOFdInqiWi1CyilOgQy1MF1qazZxgiModpQxg6 g==;
IronPort-SDR: rLYBr+VslBxEOPYBjxUKEiYArqrXdl9kzqgrpURDyTHV2dKN/ngSX3uyqdBTUkBqCkl/1lr0xw
 BrLv8RVagFWn3O4YnP872q1Mh8APTyh86pbT858yl0HVl+FTLRdCiyCxL6Dsbqa2XDa9ruKkGN
 gN3PUdg8PZPxdyuXLzock7a4rHmjYn7p7zAflOPDYIXnlpe/MXcM3RrJ27RF8G0E9EPJfYIFvU
 /3f9df31Sd7y4Hb2IMxza02O8Be5Cc/J2f0v8eNdcezxJZ3Ktx/VszckxGyYgIaCjBXyFzkb6J
 2eo=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="76588062"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 02:55:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 02:55:40 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 02:55:40 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] Revert "ARM: at91/dt: sama5d2 Xplained: add pdmic node"
Date: Mon, 15 Jun 2020 12:55:25 +0300
Message-ID: <20200615095525.43414-3-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
References: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025559_572402_EFD88E94 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are no PDM microphones on SAMA5D2 Xplained, to exercize the
PDMIC.

This reverts commit ca6349a8c51f2e3d6f2acdb36431e7d7328261f7.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 54d96649da77..c0a255bda477 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -109,16 +109,6 @@ timer1: timer@1 {
 				};
 			};
 
-			pdmic@f8018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pinctrl_pdmic_default>;
-				atmel,model = "PDMIC @ sama5d2_xplained";
-				atmel,mic-min-freq = <1000000>;
-				atmel,mic-max-freq = <3246000>;
-				atmel,mic-offset = <0x0>;
-				status = "okay";
-			};
-
 			uart1: serial@f8020000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart1_default>;
@@ -533,12 +523,6 @@ pinctrl_macb0_phy_irq: macb0_phy_irq {
 					bias-disable;
 				};
 
-				pinctrl_pdmic_default: pdmic_default {
-					pinmux = <PIN_PB26__PDMIC_DAT>,
-						<PIN_PB27__PDMIC_CLK>;
-					bias-disable;
-				};
-
 				pinctrl_sdmmc0_default: sdmmc0_default {
 					cmd_data {
 						pinmux = <PIN_PA1__SDMMC0_CMD>,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
