Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414D92CF13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lWE8oMNcwmKdVy2OHFUaWn0d4dWOYFZ399MdRP0nPm8=; b=YwL6cXj1mHHP+hPoNUDno9yohd
	OTwR0zjbEpHwEdiPHAnszKDfMY/JLrNI6c0kWr8LDf0u+W3c8GXC/rwqAwEM0bzEAcJ00coRRSHRJ
	yzP6JZ063JF65z/RmL2oi5JVu5lk1LOnqhPccLcI6T0ah+Q6CCchKnd+ISeLT3GWmnO8EiwpAjTui
	x2XOkoG4Ia/CwV6fgxfyX8MbpLQh3JfNSA6XRaOAD0p6DzyS7c6Yls7dSx/Gsu5kCoPsoFxm5BQm7
	c1H9Io+l6KiJagTLhi1jTNwqGV7nXLrEgkruQCO/cZ/6rxnnoEWcF6ulPJGDYc2fz964HsGDqIRdA
	jTXaDHyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhLR-0004Zc-Aa; Tue, 28 May 2019 19:01:09 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhKz-0004EI-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 19:00:45 +0000
Received: by mail-qk1-x743.google.com with SMTP id j1so1800858qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 12:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u8s+1NAXvqD9JBSU+JBxk7zmqvm3gdnRdVq+CFd8JrA=;
 b=l3fukH66HGnbMXDV+BvgnU72UfUBUg+rKK2KFIsYjBGtjVQwHtY/DSJD/mk2Xt1wwE
 ic2kVjW4RfWdNdP2zM/qPfD/tC42alTaYH+cG67hAmyId9WuptynzXpsgHqbCJwWb9fi
 TvymjShUfrlE1BD/u97M0sDT+T4kuQ14X2GgrEzZfD93Vy87K8bLpiJGFhc2VKM63rvt
 7Xzr6M4udEPeX8tKq6VBQY8Z/l9rpFA1rvQHHDi+wWBqbi6lQ7CUcrI61foBScr3dUkj
 kQHxhq6pEvuox7BGDZCUoacqYlJc+R2biCG1+QFnVFITYyF8PuP41camvzLuR5EJ1Flp
 sy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u8s+1NAXvqD9JBSU+JBxk7zmqvm3gdnRdVq+CFd8JrA=;
 b=tIo5qgyyV6cvzXhg7K68uPX+JsMTGI+w69XwvgJrrW3aaMppJoLoad2HBLRdDt0uDW
 LTvdAV3Ok37CrKMJMwmhJuf6sndIcflRIRa6dtPEOG7kXWKKvT6+Eix0SEA3N2/eGuQb
 Z0WDQD+eJDc4wsKTfSp4BMIB/6V3vnmyWCcGREwv16ZxJWyrSgbHFsDJukxarTscNv0u
 0Ajrt8/3sRLWD+JEO2PI/MvuhTUqSU+duKrf1FbsdMB8DFLB/oSNOuSz21JhY7tAfjsx
 JEIr6C3KNOKdKY5ibe7kTWfblHZ3Ex8hlU58AEIgfYZwmzOES7lqqVDqi8Fe6MoCaw2B
 Z3jg==
X-Gm-Message-State: APjAAAWp5JXH/TXAoKhyVFbgqdyfYDLxrp9or4aHdShzoFTEVXxd4mBX
 YXOrRf+x37OqGRNELyGDiDE=
X-Google-Smtp-Source: APXvYqwMZfHxVkPejLya/eLJCWilUlHUsE7D7i7C1UdY9BudsqcAEvWnaY8E9U9fzIQWz8wjo94nzQ==
X-Received: by 2002:a37:660b:: with SMTP id a11mr4849028qkc.342.1559070040271; 
 Tue, 28 May 2019 12:00:40 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id c16sm5388086qkb.15.2019.05.28.12.00.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:00:39 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH  v2 3/3] arm64: dts: imx8mm: Move usbphy out of soc node
Date: Tue, 28 May 2019 16:00:23 -0300
Message-Id: <20190528190023.7176-3-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528190023.7176-1-festevam@gmail.com>
References: <20190528190023.7176-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_120041_600228_AE22C8C7 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Changes since v1:
- None

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
