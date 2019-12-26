Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C4A12AE0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 19:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E39IJ1wA6Ndri476MW7g2nx4DgkPfv2mEtlhXfCm1YA=; b=b8o8TTnRwor0+w
	kc5UNOyMijolqPU2DDZgFSc3cAY0JNPSIHTRwbt2DKtWNanhSXFrT2Wy5ixi8MGwbpjzqthCcliZs
	UhLflVOC5adcpar5bcSFZWen94uGPG/kn+GsxdGP9ruK5SGcAHyh7voP1SO/4eKYUZcs3zPm+O7w6
	XEgUjfskQNtkhP683sa5SblpaApwhFPsj+/vbXd0NwZUrmoCeK1vojoog2K+ltyVpyWkg+dztxHSf
	28RVCVTI9uip/DM8w/hNOZTtUd3FmNGLari0sbW4rKQ7s+ezBBWcu0Sll4NQKrNRYR7XLHAEYQ0dD
	RSJQpquXZ9f3h2XwvXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYFw-0002rf-80; Thu, 26 Dec 2019 18:53:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYFJ-0002Jj-U1; Thu, 26 Dec 2019 18:52:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id m24so6477747wmc.3;
 Thu, 26 Dec 2019 10:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tdk21lW1THUxHtY9vlZ1nRwe59sn6+TCzl9IK6kCrxY=;
 b=iy5TYbCSAWLEklxNjWcYw/NjNKf0lb/V+hYcCMh1kVbwFjgAETRmR2NieVU29nMbjG
 3ColCXXTQ0PqfbprUmdkgtLUaHb1vYj82WbM2M/V3MNOvimf47w7XFn01bmr4+V9CDLK
 VWhuREDvC+8s9OkXhnDIVropP7Wv9E2KuFnhipf4sMbrS+Q9h4uWq5HyeZz6go9/OJoM
 9KdREoM6V0gppd2Won4vWzgUqUB4sR9b9uYDLszLW0kvy0uU5a/C3zGcuBCdNegAsxsu
 mv9mWq+YqWxpj8gUDTonZkALbmA1v3Hu8iYaWXNZSoI9accUVyGZsewf/zxHDGFth1Qu
 mF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tdk21lW1THUxHtY9vlZ1nRwe59sn6+TCzl9IK6kCrxY=;
 b=Gtm7PwrLij88IqNVHjwFat/PEw1zI4U1Q2MM3H3Y8miX2c9sUWanL5h5x3fgRgh+6n
 OzIqTcieNsEzQ7TnhfgrEWH0hTuDZoAS5AaqeA5Qvw3WHk5DCBX7Bb+yG9QQTc0aZM8Q
 x8467qZYlp0c/tJ+xHcAwoGR0tUzX1XP17P8Ed4s3TvRmv1zgEvB4FCJ7iau6gCQzLcU
 gZP9QD9sYn89hSOSnymp0Ogyvu2BfloyXP1q/yX/LyngJkIpnM5RfinHEjpJ8PS+T6tV
 hoj1QxW/lBEihX09X46700W1LjFbCT9j7jkQQNrVZwwjeT6e3a0t/RxTcEMRI7XA+OOG
 H7Hg==
X-Gm-Message-State: APjAAAWrWPWbSe8E//DuNSgKwoPNcOlzxeCgsKhiDUpfF6sBDIdjBaT6
 CjmH0MycwjIUtdiMvOCOwAQ=
X-Google-Smtp-Source: APXvYqytWCvSfGTkES4SMiUhI/nM1xVgQh7JR7YbzW2kovtBSDGlDHHDJAYkz2oB1+Ao2XlCczoPDw==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr14592494wme.167.1577386348409; 
 Thu, 26 Dec 2019 10:52:28 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j12sm32129352wrt.55.2019.12.26.10.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 10:52:27 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, davem@davemloft.net,
 netdev@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 2/2] net: phy: realtek: add support for configuring the RX
 delay on RTL8211F
Date: Thu, 26 Dec 2019 19:51:48 +0100
Message-Id: <20191226185148.3764251-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226185148.3764251-1-martin.blumenstingl@googlemail.com>
References: <20191226185148.3764251-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_105229_966612_BE33F292 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On RTL8211F the RX and TX delays (2ns) can be configured in two ways:
- pin strapping (RXD1 for the TX delay and RXD0 for the RX delay, LOW
  means "off" and HIGH means "on") which is read during PHY reset
- using software to configure the TX and RX delay registers

So far only the configuration using pin strapping has been supported.
Add support for enabling or disabling the RGMII RX delay based on the
phy-mode to be able to get the RX delay into a known state. This is
important because the RX delay has to be coordinated between the PHY,
MAC and the PCB design (trace length). With an invalid RX delay applied
(for example if both PHY and MAC add a 2ns RX delay) Ethernet may not
work at all.

Also add debug logging when configuring the RX delay (just like the TX
delay) because this is a common source of problems.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/phy/realtek.c | 46 ++++++++++++++++++++++++++++++---------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 879ca37c8508..f5fa2fff3ddc 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -29,6 +29,8 @@
 #define RTL8211F_INSR				0x1d
 
 #define RTL8211F_TX_DELAY			BIT(8)
+#define RTL8211F_RX_DELAY			BIT(3)
+
 #define RTL8211E_TX_DELAY			BIT(1)
 #define RTL8211E_RX_DELAY			BIT(2)
 #define RTL8211E_MODE_MII_GMII			BIT(3)
@@ -172,38 +174,62 @@ static int rtl8211c_config_init(struct phy_device *phydev)
 static int rtl8211f_config_init(struct phy_device *phydev)
 {
 	struct device *dev = &phydev->mdio.dev;
-	u16 val;
+	u16 val_txdly, val_rxdly;
 	int ret;
 
-	/* enable TX-delay for rgmii-{id,txid}, and disable it for rgmii and
-	 * rgmii-rxid. The RX-delay can be enabled by the external RXDLY pin.
-	 */
 	switch (phydev->interface) {
 	case PHY_INTERFACE_MODE_RGMII:
+		val_txdly = 0;
+		val_rxdly = 0;
+		break;
+
 	case PHY_INTERFACE_MODE_RGMII_RXID:
-		val = 0;
+		val_txdly = 0;
+		val_rxdly = RTL8211F_RX_DELAY;
 		break;
-	case PHY_INTERFACE_MODE_RGMII_ID:
+
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		val = RTL8211F_TX_DELAY;
+		val_txdly = RTL8211F_TX_DELAY;
+		val_rxdly = 0;
+		break;
+
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		val_txdly = RTL8211F_TX_DELAY;
+		val_rxdly = RTL8211F_RX_DELAY;
 		break;
+
 	default: /* the rest of the modes imply leaving delay as is. */
 		return 0;
 	}
 
 	ret = phy_modify_paged_changed(phydev, 0xd08, 0x11, RTL8211F_TX_DELAY,
-				       val);
+				       val_txdly);
 	if (ret < 0) {
 		dev_err(dev, "Failed to update the TX delay register\n");
 		return ret;
 	} else if (ret) {
 		dev_dbg(dev,
 			"%s 2ns TX delay (and changing the value from pin-strapping RXD1 or the bootloader)\n",
-			val ? "Enabling" : "Disabling");
+			val_txdly ? "Enabling" : "Disabling");
 	} else {
 		dev_dbg(dev,
 			"2ns TX delay was already %s (by pin-strapping RXD1 or bootloader configuration)\n",
-			val ? "enabled" : "disabled");
+			val_txdly ? "enabled" : "disabled");
+	}
+
+	ret = phy_modify_paged_changed(phydev, 0xd08, 0x15, RTL8211F_RX_DELAY,
+				       val_rxdly);
+	if (ret < 0) {
+		dev_err(dev, "Failed to update the RX delay register\n");
+		return ret;
+	} else if (ret) {
+		dev_dbg(dev,
+			"%s 2ns RX delay (and changing the value from pin-strapping RXD0 or the bootloader)\n",
+			val_rxdly ? "Enabling" : "Disabling");
+	} else {
+		dev_dbg(dev,
+			"2ns RX delay was already %s (by pin-strapping RXD0 or bootloader configuration)\n",
+			val_rxdly ? "enabled" : "disabled");
 	}
 
 	return 0;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
