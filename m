Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F0F2CF0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QtCGZCErJJosu94rrIN7A8kNGZpHZOU1Oe85sdiM6Yw=; b=tTG1CZ+NStROoWq50ll44JKgio
	lXxud/z3ehud7JQGaapcUZWyUNhIcEKSmnp/lMs+E2Ip6vGt60Ng8b3y7TG9Z9T8GhV4YDFat8B1s
	ehGPVL/UIf4l/016CQ2b1CVS/+lZP7wv3TOu1C4hCNB5YO/n4Fc0lP1bQ5MNRnv+qGEViAfNGwHYZ
	UBwLhDLaa70IYK9yEikZ/LCEQoCkT4dofSZ8VrOZpalF1CZrW17ZFZVKoWvg28DOLoUxq63EfUG+a
	9I3w/mgdbU7kT4kTkR52QvtHB5w+I3DniXYT5jfOOIooKJVyjA4tcxCyEGXAs/VpM7c4D9PT7RJ5T
	mt4JEe5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhJI-00029o-QB; Tue, 28 May 2019 18:58:56 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhIr-0001oz-FY
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:58:32 +0000
Received: by mail-qk1-x742.google.com with SMTP id w187so13997112qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 11:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=01n81j7rbJTrR5oKLGYPfKO0BbvpTmvKjTOodBkZma8=;
 b=FLoeUl/iKUNJntY4XFvFpQ5pdB/Phgc07bgB4YQl6Etg6f4IHTF5R6/kjpEes+onqe
 BXjIQeTpSXSpSas3Uwk9FP8NrUoMsCOmAcTQF7m0m6FT2//CerROw6p5LbcPiJ0Ii/mZ
 X4EujicBiySQcLVgLIrnNbUuqMNxyeo3gDZETHGMGnIpq14MlnVHNOBDYzodbEJh/DWN
 Mq/Xrwa0tNmeIYjoxVdAsyj4qTIaC8f0E5fzeAIjKZNL6DO5zLWddBTSGD+/nZW8n7mm
 RwSv4eKRL3LFjPHFyNvZn55kdzps7TSzTDh0Ragobxs7jGL+fOYfkavucAAvqr7SsBcy
 fe3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=01n81j7rbJTrR5oKLGYPfKO0BbvpTmvKjTOodBkZma8=;
 b=jty/AroNFy1SPOk1Dzynm8w+a5aubpA6SGSRuKs+ZmGtr7sq8GEuUD6UMm6CDnux43
 TSn6YbspEJQhaItpOn8R7Xy71DPTG+xweo1heTgsK/Dzy/7XczmpnOlemEr9aulAUgWf
 /Riu4Raz92e8bevGuaRKHFccnSS8jYHBQIDMHwa/cmV5EHyOZ4lR+4g9I+kfIrkfkT3z
 J+fQ9EjXRgqmMSpkemgkzqPDDE0yNULWUePsc/Z+NQdK2MA9bVzwCAIqb/WDW6vWD+kr
 D6TZvdX4ToVzgqQSmINDOAyKjQXP2ngD0qRhbG46ZXVliwJiFZhp2wpyaB+3OYzdHkSQ
 RIYg==
X-Gm-Message-State: APjAAAXBwpJS34gAYMgYrjvTiH9e47ilprj7P46ME1M5Jn5KgXoGnfh0
 DBKrezzYVqxQyIfwJQ+RKpc=
X-Google-Smtp-Source: APXvYqwFAPCwjbrVF+ue8yo4bW88H73/jYs2X0SroKhGILhil91HlVmIWb1g3L6yc+nA3yDg8yyIwQ==
X-Received: by 2002:a0c:8a38:: with SMTP id 53mr80370769qvt.141.1559069907800; 
 Tue, 28 May 2019 11:58:27 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id a139sm5135901qkb.48.2019.05.28.11.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 11:58:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 3/3] arm64: dts: imx8mm: Move usbphy out of soc node
Date: Tue, 28 May 2019 15:58:12 -0300
Message-Id: <20190528185812.7103-3-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528185812.7103-1-festevam@gmail.com>
References: <20190528185812.7103-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_115829_666275_5176A06D 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

usbphy nodes do not have any register properties and thus
shouldn't be placed inside the bus.

Move usbphy nodes from soc node to root node in order to fix
the following build warnings with W=1:

arch/arm64/boot/dts/freescale/imx8mm.dtsi:681.27-687.6: Warning (simple_bus_reg): /soc/bus@32c00000/usbphynop1: missing or empty reg/ranges property
arch/arm64/boot/dts/freescale/imx8mm.dtsi:710.27-716.6: Warning (simple_bus_reg): /soc/bus@32c00000/usbphynop2: missing or empty reg/ranges property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index b62d7aec8dc2..e497ad8c5ef7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -200,6 +200,22 @@
 		arm,no-tick-in-suspend;
 	};
 
+	usbphynop1: usbphynop1 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		clock-names = "main_clk";
+	};
+
+	usbphynop2: usbphynop2 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
+		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
+		clock-names = "main_clk";
+	};
+
 	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -678,14 +694,6 @@
 				status = "disabled";
 			};
 
-			usbphynop1: usbphynop1 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
-				clock-names = "main_clk";
-			};
-
 			usbmisc1: usbmisc@32e40200 {
 				compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
 				#index-cells = <1>;
@@ -707,14 +715,6 @@
 				status = "disabled";
 			};
 
-			usbphynop2: usbphynop2 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
-				clock-names = "main_clk";
-			};
-
 			usbmisc2: usbmisc@32e50200 {
 				compatible = "fsl,imx8mm-usbmisc", "fsl,imx7d-usbmisc";
 				#index-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
