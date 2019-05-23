Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78741285AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ET8nFX5sTrQ7CTtBuUVxZrwwwbq2hpa8kAeXUVpl2cQ=; b=OngfD9A9+fjbHh
	iV8m/NzIQxQ/Ujk0HHO40pgvsy4tOZW2QGw85PTmmNnu9dBEu5tJirg6iWk6k3/w6+TDXfGbvpIrQ
	wvRJkkAtA9NLb3na6B2uaglTH8OJFf4/NSvtoFqPcgnC27C6lOiKOmZzCPNekuoFfwyJJIx9AWILO
	K5McBBMTzjy86SJNoJO73C5wCjiCO+w1O1YZXaG43fVjShu6bupOArHUlxzcdsccQZCS0hhu3vwRB
	nMGbZslXXN7ih7Nkx67a+oraw4gWJbMI/J6DPSNAHhqQsF4U+k8aE3i1aFjPHhJicePT6WyrewiQC
	OXiI5I3tOfRPdGY2g+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsAC-0003Up-Nb; Thu, 23 May 2019 18:10:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTs9d-0002z4-Si
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:09:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id f10so7293535wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 11:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MUoTI3lFf39uXeM0VMygbT8Su2qPCBrpSTIiYNMYwMo=;
 b=rr02zRjWHPqO2iKOD8uh3r3TDWyeBMV2gm4f8JstYzBGZAVHOzfjcHXFyB95eJlnMc
 dL8XAkDoWzYcc7kBADW3J5ATrKlhXVlg9G1zneiH5N6x/yEO7FbzEsKyR5ch1bQrsJoB
 1VzQ+Jzdwkp/i6jm9V5+z9M3VJfa2X20K6I3sM9OTEpZcOXVvCG7E2KBd4t753EBf7i1
 TpTuyu0q30SBw4RRwL1AuzYiDk/xF832kDs3Vs2MLeczRxm+QxIT71muIg3U95bNMDAL
 ucBJ7TeAwEmjmU8Wm7iXmJEz8BBkZ4Lt1ZGVcqoPR+cLHbsPPUEllfK2wlmG/et4K5N+
 dS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MUoTI3lFf39uXeM0VMygbT8Su2qPCBrpSTIiYNMYwMo=;
 b=uAARXDaG7tbuSMEUMmPS3huwvzh1U0RxtKQZDIONtXmhFiSlYddaQU5WTsASqmyzmq
 Sux8r6tEoieOPxVBhXYD2aXuowmR4vpZOjUJQ67pzJYVmz6C4GYAvZIPz+wkC93XQyBt
 X4QMx+L8FMpOuk1RaMyDtqUCzDBX7BLEsm/NYVJ6oPjkPZUXz1ZzVBH/pcli71rHH1eU
 8At3CWhuoLPTLIvyfKwcACNSYftrjk+OuQvpG5u3AFwmII0me+5dt5lj+jkobgEGgPuJ
 oLBG1SJlukFK4TmuZ/rT6GtK35XyQjlT3lIpbSvZ6IDBVMKEOYvYeD8OHM5coVZvHw+7
 MLog==
X-Gm-Message-State: APjAAAW7eJ1SD/AqEVpTYiPZyGYNgffQ1+3BOUjLEOL7V9/jCu3u/e+u
 tW0qhBpHoxQ6ZEkTobsr+jQ=
X-Google-Smtp-Source: APXvYqw7fovl5AhusgJmiVAm3W+wCGx8IE3r1LsoQJIUn2wT4olUeQsRIvDQvuLXGpmYD62Gu1I1pw==
X-Received: by 2002:adf:a4d8:: with SMTP id h24mr3714696wrb.171.1558634964298; 
 Thu, 23 May 2019 11:09:24 -0700 (PDT)
Received: from ?IPv6:2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0?
 (p200300EA8BE97A003CD1E8FED810B3F0.dip0.t-ipconnect.de.
 [2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0])
 by smtp.googlemail.com with ESMTPSA id b10sm64526588wrh.59.2019.05.23.11.09.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:09:23 -0700 (PDT)
Subject: [PATCH net-next v2 3/3] net: phy: aquantia: add USXGMII support and
 warn if XGMII mode is set
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
References: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Message-ID: <96437cfa-b1f9-eeae-f9ca-c658c81f61c0@gmail.com>
Date: Thu, 23 May 2019 20:09:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_110926_312230_0A7C357A 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

So far we didn't support mode USXGMII, and in order to not break few
boards mode XGMII was accepted for the AQR107 family even though it
doesn't support XGMII. Add USXGMII support to the Aquantia PHY driver
and warn if XGMII mode is set.

v2:
- add warning if XGMII mode is set

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/aquantia_main.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/phy/aquantia_main.c b/drivers/net/phy/aquantia_main.c
index 0fedd28fd..3b29d3811 100644
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
@@ -488,9 +492,13 @@ static int aqr107_config_init(struct phy_device *phydev)
 	if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
 	    phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
 	    phydev->interface != PHY_INTERFACE_MODE_XGMII &&
+	    phydev->interface != PHY_INTERFACE_MODE_USXGMII &&
 	    phydev->interface != PHY_INTERFACE_MODE_10GKR)
 		return -ENODEV;
 
+	WARN(phydev->interface == PHY_INTERFACE_MODE_XGMII,
+	     "Your devicetree is out of date, please update it. The AQR107 family doesn't support XGMII, maybe you mean USXGMII.\n");
+
 	ret = aqr107_wait_reset_complete(phydev);
 	if (!ret)
 		aqr107_chip_info(phydev);
-- 
2.21.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
