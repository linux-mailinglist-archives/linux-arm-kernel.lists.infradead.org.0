Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA241386BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 14:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xwqNqZq3D03drhgrKucG6L50kXljyJiNeMsXK5J6LHo=; b=mzcO7jOh2t6Ab1
	GhLet48r9jJK17x2rq0KmMQCeuALCEa9/FG/aUSzW+aWx1DbBUqCGMam/klEbncorKQvfFhNtjInV
	ax9M3ZOgWwERzh1eYs11XCVgHfxOpe4LJ/OVTENKunJm/bbqsYr32tVerC1DNlJJcBImwSZpScFca
	wd9/gsHw7AmJV/IcFG+I+pPowYf/8NNnflfy4/uD/OVIsiZkUWkiT1R8QK9sCHjRYcfqKp4KBU7F5
	NtC6fNPJ5vJZN4lEHin3I1GZqfVczwkuqcG3cmOddLCT5c969jt1Woh6OgNz2jJG2BFSdQ02/LbEk
	atWhbbRS5XGvXueGHaHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqdkx-0007CW-BA; Sun, 12 Jan 2020 13:58:19 +0000
Received: from mail.kapsi.fi ([2001:67c:1be8::25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqdkq-0007BT-3p
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 13:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7oOpo2inSu8WG7brh9iGn0I2sFswOBV0OELwq4Ouxes=; b=zQUnJnEyN6kRhonzsM291O0LyZ
 M4lAmlz3OkbmSpJL0m80g5MNxJ6UzwpcPrbg0AccWgFHUBaj++GDiLWoB4brzLwiYXuWZ6f9XULj6
 hADta4Ulp9jG+sKyBCZruEFzRfE2/6rufihbgNqZneNpvwUP1g0v5rZzLacV0S7cyblMvEaUtSmaa
 eDr0Lh8HhU2SvhJXfu15iX6VQ6LlY39WBhOQqbhADIO5fivqus5wVqfuk7wdhSEhmvvs+h99bnPVl
 1tX95obSbVfdOZbZg/FtFQk2mTM2Wq8qtheOkeG7/MlHfsWTH5lJMfOPFLopWUKhvjVYru5LXUDiG
 9PWjZ0zw==;
Received: from puh7.kyla.fi ([82.130.43.239] helo=localhost)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <aapo.vienamo@iki.fi>)
 id 1iqdka-0003LW-Os; Sun, 12 Jan 2020 15:57:56 +0200
From: Aapo Vienamo <aapo.vienamo@iki.fi>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2] ARM: mxs: Enable usbphy1 and usb1 on apx4devkit DTS
Date: Sun, 12 Jan 2020 15:57:41 +0200
Message-Id: <20200112135741.24840-1-aapo.vienamo@iki.fi>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.130.43.239
X-SA-Exim-Mail-From: aapo.vienamo@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_055812_329721_2004AC38 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:67c:1be8:0:0:0:0:25 listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Aapo Vienamo <aapo.vienamo@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the USB host port on the APx4 development board.

Signed-off-by: Aapo Vienamo <aapo.vienamo@iki.fi>
---
 arch/arm/boot/dts/imx28-apx4devkit.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx28-apx4devkit.dts b/arch/arm/boot/dts/imx28-apx4devkit.dts
index 3a184d13887b..f00d201ce242 100644
--- a/arch/arm/boot/dts/imx28-apx4devkit.dts
+++ b/arch/arm/boot/dts/imx28-apx4devkit.dts
@@ -183,6 +183,12 @@ auart2: serial@8006e000 {
 				pinctrl-0 = <&auart2_2pins_a>;
 				status = "okay";
 			};
+
+			usbphy1: usbphy@8007e000 {
+				pinctrl-names = "default";
+				pinctrl-0 = <&usb1_pins_a>;
+				status = "okay";
+			};
 		};
 	};
 
@@ -193,6 +199,10 @@ mac0: ethernet@800f0000 {
 			pinctrl-0 = <&mac0_pins_a>;
 			status = "okay";
 		};
+
+		usb1: usb@80090000 {
+		      status = "okay";
+		};
 	};
 
 	regulators {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
