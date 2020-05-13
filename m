Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4900E1D13A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIs91/Arx9exqXUOOcNbKKRKHfe4eejQUK8LDpEqRtg=; b=Kfnc3T9I5H4wkE
	iLwBueLJw4to/gFGlSe2tKo1pepI0ul/myNBxLWFY+7Bd+EfUvjhoCpI/jScMgdZdRPqBDUTiKvAY
	Gr3aTY8gj0MYypHpQlHVbsigJ5aMgJjZMUWOmlbCZvBFchZhpYur1Av2g0TWr70tRplV6AcaO9NLf
	LPYW8cr9Ejvc3xRt9geS1+Ueieni5N12lqUrljnUYFEE16X1YLQiLT3njTnSB7L4k2c1v45d++DSe
	o5l58my2pEXl9FnZpiFlwnnVY+annl9wJvwW7CvpHYd6GAGNnV8hoYQuQk1XggX0I1CJZlOoqCqvw
	Jy+kgWPRGeaBTelsYxug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqxg-00030n-Eu; Wed, 13 May 2020 12:58:12 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwP-00027t-EM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374613; x=1620910613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cITEJ59bnrRIpIir228tQCWYR/7bB39ICzxe18qqo8c=;
 b=iJ0lAY6TD3M99Zc6W7HXLB9xFBb5mSdwBVbGG9lA3GTIIsHtpjaPepbx
 Kz79PsARPHUdvEGFKn2fLzO3ROSSTmpYjl608FlmMKc0zVZjW4N09gPAV
 QZzMX1o4/1vQt5wAL0+fIg7zmCb5QB5G8jJ94pNRLXjpMpUlaN6sWGYi0
 1GahheFsQK/R7Rudb8dce4lWstrhnSMYTYLdlsZkJ/p6/+JbVTS1/Q3RV
 s4jupITG+D7PHYh1wmdnjh7B6boYRgAIzcUeJ/Pj5Cv7pLfblcabkXMY2
 OegWgvh13ZX+XKNiy1ZD6UY9wP0Vc9xbjxMaP6fh3gKZnbUVlCSWTFkxq Q==;
IronPort-SDR: QXtlxX7NyirgBub3OISAMGW9qKQT642hpZ1yT3JRhXxIVl8H14pGuLTHjq6CjlWacEjvDqLaMt
 OJmicgPs4QfAyPqiacyrmxjxxxX2LuQAna0XK/69Mw8To41S/EbVBoHnnkh7qfBlujkwjtT81r
 tq3INKPS6L+hywv59717IMTQcVt9Yr7rGBoIS70/dQ46KkIkAvzLPIa75DL0SFM6dkAZrXPx9n
 LWdxB9TO2l94M0ejWWrVx9voNth2G5NDx+EG6VNmLQL00z9Fqsbyxfz0vpJEMHUWhiyLLl6/H7
 7jY=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75132817"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:52 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:55 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:49 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 07/14] dt-bindings: pinctrl: ocelot: Add Sparx5 SoC support
Date: Wed, 13 May 2020 14:55:25 +0200
Message-ID: <20200513125532.24585-8-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055653_570350_7A6B0FB1 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds documentation for the "compatible" value designated for Sparx5

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.txt       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.txt
index 32a8a8fa7805d..00912449237bd 100644
--- a/Documentation/devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.txt
@@ -2,8 +2,8 @@ Microsemi Ocelot pin controller Device Tree Bindings
 ----------------------------------------------------

 Required properties:
- - compatible		: Should be "mscc,ocelot-pinctrl" or
-				"mscc,jaguar2-pinctrl"
+ - compatible		: Should be "mscc,ocelot-pinctrl",
+			  "mscc,jaguar2-pinctrl" or "microchip,sparx5-pinctrl"
  - reg			: Address and length of the register set for the device
  - gpio-controller	: Indicates this device is a GPIO controller
  - #gpio-cells		: Must be 2.
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
