Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B2D12CFDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEVo5nmoUXWzWuxdoWtN+Tb4px9BtQsjsBP6/AArJfA=; b=KqbPSY4U0z3OHb
	1BA/uOS2OhEHJCGubBq4p3d8XRzP8c1+UdoJcyavAraGWzhGjXhHt+C/CxwdeNnZS27C+jMh46TuX
	L+fHG8BELGJJdUdSWH/3sWmkhNgWENyXimYPVR/vBBzimSk6YdjXQUY8ehNJu+m2+Kd7M/2wskEXA
	coWTGhaB396O/tJRrXH4g3rHHWu6ee68Cg5Y3rZALDsNwFmCiBX5/hmWiAl8HZQb/3IFqWrI3De+m
	Kjzo/0je64YI9Ne91KbSTGuNTsYa59P7ahwGGoW1pCSAeCaIV76FOGN37T9MsoFCm9DwfvV44+USN
	cUCI4Z/5SyBV0xfKtvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltjg-0006dK-1W; Mon, 30 Dec 2019 12:01:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltj8-0006Ji-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:00:51 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j11so7731912pjs.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 04:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=loK+/2QBNqR4qI1aKCHvxn+umU8QIBnua/KHI6KiyXg=;
 b=jnDiCxSk1c87KihAaXtSKthEobvCB6cNk3t6zBEjYl77hfXDNXqmlmu4IGveLG5F4F
 iy11U7whJDdTG48Kqz2u7IivLRQu8tj1Mr3FQgUXQ0Hx7FE4XSMpFp3MOp1Nwk/zN0t8
 zPPay9PUqOEdJeBD2ztRaSKQGgH6FIguxcvKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=loK+/2QBNqR4qI1aKCHvxn+umU8QIBnua/KHI6KiyXg=;
 b=pT/FBHLHPR5tNLK+Z/4t80hOcvZQ85MUw/D/gMmSDRZ3nJwPY8TwmsECPQXR5B9KqR
 lbihsn1hwfD3aD/o2SiZZYQ4pMcrm4Fy3c4D6Ym4anxEUSswsgA5dQl+IYO9exPE3h3W
 o6dNGEf8yahPDVieYKvVPhni94vIvNED3Xy7GwwPvDD7VCFeQiImOO1qqqF8lyHjuQBa
 BKEOhXPxDTi26y/Hkk9+k2zeGN56ZWyuqioArPyxB+bP2HYjMBAB3MInEgVdJhPJMSNA
 G3uZkRdfvT4wtckhd7Cp95qjtL4sGMh4tslhWg75/ZJZFNObVNeYhcTN+tyJz7RyebMl
 vVRw==
X-Gm-Message-State: APjAAAXvFg596vihP5ZhAhY9NfjsCgZRpqdSdwa6xNeU/i1053lCkZQY
 GC8ldXTJb0NFzP9Isz1zQBXS5Q==
X-Google-Smtp-Source: APXvYqyKEwtlxrFaPIwook1+VfY0lSYSMcZTJ6WguwicU9oNLpY+et1Gxbqgky3XvCnScNe13ALFJQ==
X-Received: by 2002:a17:902:7c0f:: with SMTP id
 x15mr28595069pll.267.1577707249818; 
 Mon, 30 Dec 2019 04:00:49 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id 7sm41894122pfx.52.2019.12.30.04.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 04:00:49 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 3/3] ARM: dts: imx6qdl-icore: Add fec phy-handle
Date: Mon, 30 Dec 2019 17:30:21 +0530
Message-Id: <20191230120021.32630-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230120021.32630-1-jagan@amarulasolutions.com>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_040050_489687_A775002A 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Trimarchi <michael@amarulasolutions.com>

LAN8720 needs a reset of every clock enable. The reset needs
to be done at device level, due the flag PHY_RST_AFTER_CLK_EN.

So, add phy-handle by creating mdio child node inside fec.
This will eventually move the phy-reset-gpio which is defined
in fec node.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch.

 arch/arm/boot/dts/imx6qdl-icore.dtsi | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore.dtsi b/arch/arm/boot/dts/imx6qdl-icore.dtsi
index 7814f1ef0804..756f3a9f1b4f 100644
--- a/arch/arm/boot/dts/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore.dtsi
@@ -150,10 +150,23 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>, <&clks IMX6QDL_CLK_ENET>, <&rmii_clk>;
 	phy-mode = "rmii";
+	phy-handle = <&eth_phy>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		eth_phy: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <4000>;
+			reset-deassert-us = <4000>;
+		};
+	};
 };
 
 &gpmi {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
