Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292B517D6BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 23:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DLjw1KzV8o6D2eS1OVHOM44cw3dMiKTeriyAFrdfx0Y=; b=tw/
	6C9NkqDMvk0XYwYwSdejTh39zZbTG7ffsuaDRRYZcKVVpJ1wnJQWv0z992pBcXC4Vow56KVJn6I2C
	Xn1pWO6EEGoLiMFCzAkQh4r7ex1K4tELnrZnmlabOr5HzYo+4ELm5O8/VBSJn9r4xy5N/4UMRrW0z
	o/VN7+lCR7OffWw/u5ufMUkTqfapAwAJKz8MOnEwkM4cYIlwjGr+GPcdJnSUxbTQd1Ukl01FYPXq5
	3+eTBEcp6BWGezDUb25+wxUJONBWxN7oPL2iwUS3/BpENdERbIU5sif0xwRjJKfUpIeC91QvOj9gL
	3rOl1HxCSc48rXgksjmsqjT0i6KLjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB4JW-0003Lb-0U; Sun, 08 Mar 2020 22:22:26 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB4JO-0003LD-52
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 22:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583706133;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=d9uANtqqjVRwOWMSyb++r8818TlXjH+7k+MeOvfjjAo=;
 b=tix8UU/oJfTHj6CEgk9YlbGjEFa2brHBENxmTz0t0cwSeoiPVIKouE5Zduwsn0WnFp
 yBLRTMKU8GjBp95X05PhGbUy9hQJc11QPSObGzcDrLeOiQubdOcMn/PiIftsbEkoncdS
 Ov90mIVQCNVZMf4VsdVKxF6G14oDdUa+F4dfFsxhMRiZmG0vgxIkZszbjEQCfhuPifss
 hEQmVk3LVJkW9IBesere2aS1N8FZ3J7xaC/0U0dd4map8iu4yzWCDue7ZxWeD1TxGH7T
 JNCc5G9+JqYNWrNPtAf+RjTPx9V+V0XGB2+LjqZf1JL0OxCnsn3bpCYQ7aTbNSDhtG7l
 xdjw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MuUOoWmb+wVC/S4hO3Q59Bxjg5s+JNFtEYYiw=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 46.2.0 AUTH)
 with ESMTPSA id Q06422w28MM4gKy
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 8 Mar 2020 23:22:04 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 6D0F71512E1;
 Sun,  8 Mar 2020 23:22:03 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: imx23: introduce mmc0_sck_cfg
Date: Sun,  8 Mar 2020 23:21:44 +0100
Message-Id: <20200308222144.24863-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_152218_784328_3244ABA7 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Olimex Olinuxino board has a user led connected to SSP1_DETECT.
But since this pin is listed in mmc0_pins_fixup, it is already claimed
by MMC driver and this results in this error during boot:

[    1.390000] imx23-pinctrl 80018000.pinctrl: pin SSP1_DETECT already
  requested by 80010000.spi; cannot claim for leds
[    1.400000] imx23-pinctrl 80018000.pinctrl: pin-65 (leds) status -22
[    1.410000] imx23-pinctrl 80018000.pinctrl: could not request pin 65
   (SSP1_DETECT) from group led_gpio2_1.0  on device 80018000.pinctrl
[    1.420000] leds-gpio leds: Error applying setting, reverse things back
[    1.430000] leds-gpio: probe of leds failed with error -22

This fix it, introduce mmc0_sck_cfg and switch the Olinuxino board to it.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 arch/arm/boot/dts/imx23-olinuxino.dts | 2 +-
 arch/arm/boot/dts/imx23.dtsi          | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx23-olinuxino.dts b/arch/arm/boot/dts/imx23-olinuxino.dts
index 4c9aafe00b5d..0729e72f2283 100644
--- a/arch/arm/boot/dts/imx23-olinuxino.dts
+++ b/arch/arm/boot/dts/imx23-olinuxino.dts
@@ -23,7 +23,7 @@
 			ssp0: spi@80010000 {
 				compatible = "fsl,imx23-mmc";
 				pinctrl-names = "default";
-				pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_pins_fixup>;
+				pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_sck_cfg>;
 				bus-width = <4>;
 				broken-cd;
 				status = "okay";
diff --git a/arch/arm/boot/dts/imx23.dtsi b/arch/arm/boot/dts/imx23.dtsi
index 8257630f7a49..e18ad74d5470 100644
--- a/arch/arm/boot/dts/imx23.dtsi
+++ b/arch/arm/boot/dts/imx23.dtsi
@@ -267,6 +267,14 @@
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				mmc0_sck_cfg: mmc0-sck-cfg@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX23_PAD_SSP1_SCK__SSP1_SCK
+					>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				mmc1_4bit_pins_a: mmc1-4bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
