Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F94812DF91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l8vi81L4Q1tz4BtcSqwBk/3nZF5i21Ym6ZRSJ9sEyE=; b=aoiAGYoqtUTyI6
	OObRHI1U7gj0ZdVp86nK5No5SNI9kD0G6f8Tur3cjuIJNVihQtyGg6pIqOK4I6yW6M5+Q3YyKWC5f
	k5rykpwfi4p09Jp6XToGeHQ0ooh61tTYXtMOeWAz0+Jyhsi6xI6o2q46lfSRu20dY2+U6w54b/ish
	cJTLF6AJ3OcEoPxPYI/H3oj6EBBVWttcKigXCeVomNUP7Qo7OLDnUioFUW4iQdPjUWFatt5fVXUDs
	4qsYLOf/jUm8r+0XE7w+O8OdiF0WQwaypJ6xk8b7kbjDUgNAhB5w44gtKLvsN2rUjZ/4bTkpISXyh
	SoTO1L5718cAfSoX55Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imhBV-00086F-9U; Wed, 01 Jan 2020 16:49:25 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imhBN-00084v-Gs
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:49:19 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 022BA440789;
 Wed,  1 Jan 2020 18:49:10 +0200 (IST)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 2/2] arm64: dts: imx8mq-hummingboard-pulse: add eeprom
 description
Date: Wed,  1 Jan 2020 18:49:07 +0200
Message-Id: <4e1a15462b3a5377de7818067984a072af786f5e.1577897347.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <a1bcbe877b1c636fa773dbcd544252ba8e94c231.1577897347.git.baruch@tkos.co.il>
References: <a1bcbe877b1c636fa773dbcd544252ba8e94c231.1577897347.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_084917_798110_6AD553E8 
X-CRM114-Status: GOOD (  10.08  )
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

Add DT node for the eeprom data storage on SolidRun Hummingboard Pulse
carrier board.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
index b8cb20c01a79..bfd91c1ed6a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
@@ -84,6 +84,12 @@ &i2c3 {
 	clock-frequency = <100000>;
 	status = "okay";
 
+	eeprom@57 {
+		compatible = "atmel,24c02";
+		reg = <0x57>;
+		status = "okay";
+	};
+
 	rtc@69 {
 		compatible = "abracon,ab1805";
 		reg = <0x69>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
