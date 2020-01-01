Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74AE12DF92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:49:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQ1DfBczXa7FTUTqcYLUHfXaFkA2eA3qaK2Z067slx0=; b=h0otxujTlKfBM0
	WKOHWMnwXki/D188syadqJBtEUVuczyTO7e/5MFLnLzw7tQV3HTjtydhj1hBrQCm3OhalB0H8fZbD
	h2tpES+v7SNX9z5wYJIu2ae4RHhgcaPYwmMwjILSvjdSAwZQI1bV8FuIfPKUs/JwrlDfcTg43XimZ
	jR+INLW/n+w6qSZQ+X94x4rf1YeaBbT5ic89S7019pZ/BGnjcsy+Y/oQo2AAiH4ql/jodFb2yeE4/
	kBTks8ZxzsLkTNQvn4O2vGdNJlpG27RCHpCqaCwHWNHrcRHUmqWOMWj6h+VI0nigernFeDD/5yBgK
	YK5YSlmsVql7JpBDB/4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imhBh-0008DB-Cu; Wed, 01 Jan 2020 16:49:37 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imhBN-00084u-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:49:19 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id A3C5C440020;
 Wed,  1 Jan 2020 18:49:10 +0200 (IST)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 1/2] arm64: dts: imx8mq-sr-som: add eeprom description
Date: Wed,  1 Jan 2020 18:49:06 +0200
Message-Id: <a1bcbe877b1c636fa773dbcd544252ba8e94c231.1577897347.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_084917_800805_7D8AFF84 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT node for the eeprom data storage on SolidRun i.MX8M SOM.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
index 3dc44114da0e..602c870a7ccb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-sr-som.dtsi
@@ -125,6 +125,12 @@ vgen6_reg: vgen6 {
 			};
 		};
 	};
+
+	eeprom@50 {
+		compatible = "atmel,24c01";
+		reg = <0x50>;
+		status = "okay";
+	};
 };
 
 &pgc_gpu{
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
