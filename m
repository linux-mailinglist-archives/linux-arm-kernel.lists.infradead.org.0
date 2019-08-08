Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1985F91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RVuP26ziBx5gyvBcPSCSpx9+0uvIBnldVP5P/nweIbg=; b=qkB
	T4ORXnsDCiMPWO9grSoI5ULirbL549C0yK8xdfqjeKw6xMcZfty9AQw4GMoPRqx0o3kWNa+jJlqG4
	xLrYaWh2S0lGQT+ZCDG3jz6pBnPdXV307s17yQrdbEjG96NsUkINd/mbzl4hNzz3PHmmv63GXFjDH
	xzOZ/CWzHVmxhH/7Q4RpNmF4C9ZvLNwAMh98lPJBcSLPvhliXockpZBNiGrw/iR9BZHXj2poGANt5
	NJVbBS3GulwySlQ9pRnTlHfYPSUEUPWZpWEzTMRknCH6dhWgDuSGxuoHJBy3yjcoPlgxPejmYQmYb
	O/chL5HO6qY3VhUt9D+3Mz3RZYJvDIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfdC-0001UB-1R; Thu, 08 Aug 2019 10:26:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfcc-0001Bm-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:26:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D8F8200921;
 Thu,  8 Aug 2019 12:26:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 359BA2000E0;
 Thu,  8 Aug 2019 12:26:06 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B0CAF402D8;
 Thu,  8 Aug 2019 18:25:59 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v1 1/3] gpio: mpc8xxx: add ls1088a platform gpio node DT
 binding description
Date: Thu,  8 Aug 2019 18:16:26 +0800
Message-Id: <20190808101628.36782-1-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_032615_032349_6726B298 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Song Hui <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Song Hui <hui.song_1@nxp.com>

ls1088a and ls1028a platform share common gpio node.

Signed-off-by: Song Hui <hui.song_1@nxp.com>
---
 Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt b/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
index baf95d9..cd28e93 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
@@ -4,7 +4,7 @@ Required properties:
 - compatible : Should be "fsl,<soc>-gpio"
   The following <soc>s are known to be supported:
 	mpc5121, mpc5125, mpc8349, mpc8572, mpc8610, pq3, qoriq,
-	ls1021a, ls1043a, ls2080a, ls1028a.
+	ls1021a, ls1043a, ls2080a, ls1028a, ls1088a.
 - reg : Address and length of the register set for the device
 - interrupts : Should be the port interrupt shared by all 32 pins.
 - #gpio-cells : Should be two.  The first cell is the pin number and
@@ -39,10 +39,10 @@ gpio0: gpio@2300000 {
 };
 
 
-Example of gpio-controller node for a ls1028a SoC:
+Example of gpio-controller node for a ls1028a/ls1088a SoC:
 
 gpio1: gpio@2300000 {
-	compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
+	compatible = "fsl,ls1028a-gpio", "fsl,ls1088a-gpio", "fsl,qoriq-gpio";
 	reg = <0x0 0x2300000 0x0 0x10000>;
 	interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
 	gpio-controller;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
