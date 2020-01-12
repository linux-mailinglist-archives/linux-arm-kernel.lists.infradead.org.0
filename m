Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6C1386C1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 15:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uJfGJjMtL3XtEN9fzW3oAr4cV1iyFv3d82GtcGutLI=; b=VkMVWOipMVoxHf
	Ase+DvZ7xHLE3UKgXWeAndxVRggWqYSiwfazHgkJ33wQnwyy5Ff736rnYj+r09QQ3wn2HBLbcqmqp
	Qiex6vWSF8vv5PzlT80HC7frxDIRoWhycTcLTSu7xgZdefYFQo0/kZWifcYlkX/6eETvdVaTuWcZI
	E+S8sZ38oE/LS0MWglPAWuqIjSMMS5uBUxot85ImjS3Kl1gehRTC9FXGZk75/XaVyggl0B5Ddzlr0
	FK7K/KIVikNyMLEZ04PMXPv5jOdU5DxGjmr30AzJrZNyPEXZtAeZOWOqqXu3SNA4cWO23xUQ1b9hI
	a0+oveow0xCJKwhlJ36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqdnc-0000JN-Oc; Sun, 12 Jan 2020 14:01:04 +0000
Received: from mail.kapsi.fi ([2001:67c:1be8::25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqdnV-0000Ie-K4
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 14:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x/nFsgxdZk2EqfYZUP7PzEgKBJXPtYD799bZSXKee+k=; b=PeFHqgnJWiimG9LrZ3vLnHxqif
 oYhJwWGkITCb/A2EvB/FCHV1/EfHeVVA3JePB5swfYvm+mVI0ZnxlFCz0ZUcPuZ+G2XNKB5Gmbq4V
 XUh+2MiZxMMO1yExblF8UO+tqO0DPVONvEMNU8q6jEcI4p0wWptjevLW9W90qIqvOq1qR0/Bvw8ML
 X+6zlocRWHQZh4HV4i0uB0GxmrKVmKUWpjonBUha48JK4IhnFehltEcNDBquiLRwl+2E7ufZoeoTy
 lSaAN14TswxPNNcTHdYLmGgBEIMBBz28pNthx1MfE9ABK7aPMSmpAiUVS9XDLut1/6bJeMCi0Yo32
 sWqEe6yQ==;
Received: from puh7.kyla.fi ([82.130.43.239] helo=localhost)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <aapo.vienamo@iki.fi>)
 id 1iqdnQ-0004c3-Q3; Sun, 12 Jan 2020 16:00:52 +0200
From: Aapo Vienamo <aapo.vienamo@iki.fi>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v3] ARM: mxs: Enable usbphy1 and usb1 on apx4devkit DTS
Date: Sun, 12 Jan 2020 16:00:39 +0200
Message-Id: <20200112140039.25420-1-aapo.vienamo@iki.fi>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.130.43.239
X-SA-Exim-Mail-From: aapo.vienamo@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_060057_835561_0A70E21F 
X-CRM114-Status: GOOD (  11.04  )
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
index 3a184d13887b..c5acc19c982d 100644
--- a/arch/arm/boot/dts/imx28-apx4devkit.dts
+++ b/arch/arm/boot/dts/imx28-apx4devkit.dts
@@ -183,10 +183,20 @@ auart2: serial@8006e000 {
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
 
 	ahb@80080000 {
+		usb1: usb@80090000 {
+		      status = "okay";
+		};
+
 		mac0: ethernet@800f0000 {
 			phy-mode = "rmii";
 			pinctrl-names = "default";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
