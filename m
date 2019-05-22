Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ABD26FA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 21:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCP3/xzH/Y5LTasfVEGTl97f+QwlQlQED78XhCEHfms=; b=RioAGZpZaWpT7N
	H265u/wW2Wu4tpLo/4SqKqRe+Z6It4Q61WgiQfd5H3svZ4uz25G3tJsRD/Rmhu7LOSMs764dqjmKn
	OEvU6L22bzS14s4blgkGsgyjNYbGrYo9kOeY7kW64QAuqMNrAl8fr8ldzOZ5keUxun7olJMQ+Cqz0
	yGZAS+eaxS0G18pYFHFjnbCALRAm2VyYofXKHvw2aLgAMVAjsOF09po/iuGpIOpH74o7iY0vEJReB
	QLRhm+5ZZmmP7Zn0FOYKMxXV4CQtrG398Xn80642hBAewdnCYSdRTnHM2msAQ8Ubh9bJUqjwjZU02
	D0m+Zxoho1di8OvMkWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXO7-0000R6-I6; Wed, 22 May 2019 19:58:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXNp-0000Dj-Ap
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 19:58:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id g12so262857wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g1DmrJlOLku8E3I8oZwgTYcADUuj7Aq6P5SSPkrvsoo=;
 b=KahAeuoY6RPMjOeOSjxdHwH78OBfIeVDAuHsN1cyR/4SrtUU7pR9GOGCKHUAoGWJCI
 qgMBveRGFAej90StDrhHQzQKYdS15NV50m8hDD6PzId0JjHxafeNAdPq46nK+eHJiTR/
 pIhD7ke+VVHOOpQiVn4AEmSOvwMEApWpN36N4QJWQF/05xAvTD2YxqOviIRQxKTJJk6S
 /rrJdEPhCY3QUyDlWU6XSBl936wX7gUOZvyAQCjkeu5X7tUbSoPJjpTh4HfxjRr+iNcu
 w/Sfa4ZDAgqNlVnE2NzijbwMmXtd1k3W0R6ZHk14Xr/TaiYDNUQ4wX8a1i+wKjKCvvZt
 O2vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g1DmrJlOLku8E3I8oZwgTYcADUuj7Aq6P5SSPkrvsoo=;
 b=rH49LVuxu2gl1v3nqlhGWZqwkZM7e8Ee5xe5UvN9Jg2922uoYQ+ne/YLvzdbbw9PHr
 CHnb/NMu38A/4ohv7XVTVk9POGxBAAK1yTObRyu5LiYsQCLRST3kKDCMkkt+NKbolkRf
 M8v3togJIyWGBiQ7EnSZZPHG2akWPZcidziamiNBnT4j8QmNXmP1Pi+SHVfBxYHKTXmm
 HuGvSv6i/Gy454bOEJ1iaA5zkmdLI9/fmSog2pcgWDVTIOFCAmsKI4HwgF5Q9Bexkcoy
 +ESqVk4UDhS3Sys3oqyFSi3NsB9AmAQzjjYvx+gfmYaJrWr32/ULs7e3MK7nAjAsSrwz
 VrBA==
X-Gm-Message-State: APjAAAXB23QD0+HDQmFpNC+mDbyH6BUYyaFarox6n+xscBGi1Sc2OsE9
 r5vi1FK8Y3NjdL30v6S2BzQ=
X-Google-Smtp-Source: APXvYqzeJaVgpDVaeK6cbzvhz3KyzXjThTUPOYvRGfCdDwJqXeHidd/sGH+/GZkbjODnwb9Mf0mVkA==
X-Received: by 2002:adf:8385:: with SMTP id 5mr41014547wre.194.1558555119239; 
 Wed, 22 May 2019 12:58:39 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:3029:8954:1431:dc1e?
 (p200300EA8BD45700302989541431DC1E.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:3029:8954:1431:dc1e])
 by smtp.googlemail.com with ESMTPSA id j82sm9102066wmj.40.2019.05.22.12.58.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:58:38 -0700 (PDT)
Subject: [PATCH net-next 2/2] net: phy: aquantia: add USXGMII support
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
Message-ID: <2c68bdb1-9b53-ce0b-74d3-c7ea2d9e7ac0@gmail.com>
Date: Wed, 22 May 2019 21:58:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_125841_381649_CDF8F94B 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far we didn't support mode USXGMII, and in order to not break the
two Freescale boards mode XGMII was accepted for the AQR107 family
even though it doesn't support XGMII. Add USXGMII support to the
Aquantia PHY driver and change the phy connection type for the two
boards.

As an additional note: Even though the handle is named aqr106
there seem to be LS1046A boards with an AQR107.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
 drivers/net/phy/aquantia_main.c                   | 6 +++++-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
index 4223a2352..c2ce1a611 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts
@@ -139,7 +139,7 @@
 
 	ethernet@f0000 { /* 10GEC1 */
 		phy-handle = <&aqr105_phy>;
-		phy-connection-type = "xgmii";
+		phy-connection-type = "usxgmii";
 	};
 
 	mdio@fc000 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 6a6514d0e..f927a8a25 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -147,7 +147,7 @@
 
 	ethernet@f0000 { /* 10GEC1 */
 		phy-handle = <&aqr106_phy>;
-		phy-connection-type = "xgmii";
+		phy-connection-type = "usxgmii";
 	};
 
 	ethernet@f2000 { /* 10GEC2 */
diff --git a/drivers/net/phy/aquantia_main.c b/drivers/net/phy/aquantia_main.c
index 0fedd28fd..3f24c42a8 100644
--- a/drivers/net/phy/aquantia_main.c
+++ b/drivers/net/phy/aquantia_main.c
@@ -27,6 +27,7 @@
 #define MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK	GENMASK(7, 3)
 #define MDIO_PHYXS_VEND_IF_STATUS_TYPE_KR	0
 #define MDIO_PHYXS_VEND_IF_STATUS_TYPE_XFI	2
+#define MDIO_PHYXS_VEND_IF_STATUS_TYPE_USXGMII	3
 #define MDIO_PHYXS_VEND_IF_STATUS_TYPE_SGMII	6
 #define MDIO_PHYXS_VEND_IF_STATUS_TYPE_OCSGMII	10
 
@@ -360,6 +361,9 @@ static int aqr107_read_status(struct phy_device *phydev)
 	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_XFI:
 		phydev->interface = PHY_INTERFACE_MODE_10GKR;
 		break;
+	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_USXGMII:
+		phydev->interface = PHY_INTERFACE_MODE_USXGMII;
+		break;
 	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_SGMII:
 		phydev->interface = PHY_INTERFACE_MODE_SGMII;
 		break;
@@ -487,7 +491,7 @@ static int aqr107_config_init(struct phy_device *phydev)
 	/* Check that the PHY interface type is compatible */
 	if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
 	    phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
-	    phydev->interface != PHY_INTERFACE_MODE_XGMII &&
+	    phydev->interface != PHY_INTERFACE_MODE_USXGMII &&
 	    phydev->interface != PHY_INTERFACE_MODE_10GKR)
 		return -ENODEV;
 
-- 
2.21.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
