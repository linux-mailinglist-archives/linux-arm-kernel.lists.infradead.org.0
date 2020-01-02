Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347D612E3C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:24:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edg2A3ub7xQ30eekwywGEfTs2D7O1dBozatJSjU1JUM=; b=iywbabgN/qkIzZ
	nd9hr8obQ4SQuTnTzswhpiL194BwseOq1JvoiNfJIewmIOxdzVHhufAxBWWWAHkft5HCJ0xCitxMr
	lxEXocIWE1Q9fi4HcICmCclK5vIcHGV4ZsixACsiaVgPbQja6IML7mouZX0CLzXu/mmHKHDC1DwW9
	RtTKbPi2e3L0ku70fTz2WqDNh1tfudn1V6uehUlILt50FDDw01E8jM5PxqmazLd0ltI5zl4n1/CvV
	yVMB5vLFSln1DRpF3clrbQregWwVvBvWRmKA4i1MpKjRJ7E1rL2d61fymqWt2HnFa21bINPk2NRMz
	LBzCn4F3HU+fKc2q1zeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvlx-0004Hh-19; Thu, 02 Jan 2020 08:24:01 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvlX-0004BO-Mb
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 08:23:38 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id DB7D44407EF;
 Thu,  2 Jan 2020 10:23:32 +0200 (IST)
From: Baruch Siach <baruch@tkos.co.il>
To: Russell King <linux@armlinux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 3/3] ARM: dts: armada-388-clearfog: add eeprom
Date: Thu,  2 Jan 2020 10:23:28 +0200
Message-Id: <21cbe02a2b724c18888322c953e3fdf791b5569b.1577953408.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
References: <87fb5ab9674efaf5dbf5fed779926eccf248306b.1577953408.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_002335_972623_953A107E 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dennis Gilmore <dennis@ausil.us>, Baruch Siach <baruch@tkos.co.il>,
 Aditya Prayoga <aditya@kobol.io>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SolidRun Clearfog Pro rev 2.1 and Clearfog Base rev 1.3 added EEPROM.
Add DT node for EEPROM description in the .dtsi shared by Clearfog Pro
and Base.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/boot/dts/armada-388-clearfog.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/armada-388-clearfog.dtsi b/arch/arm/boot/dts/armada-388-clearfog.dtsi
index a6edea6f50d1..a0aa1d188f0c 100644
--- a/arch/arm/boot/dts/armada-388-clearfog.dtsi
+++ b/arch/arm/boot/dts/armada-388-clearfog.dtsi
@@ -178,6 +178,12 @@ mikrobus_adc: mcp3021@4c {
 		compatible = "microchip,mcp3021";
 		reg = <0x4c>;
 	};
+
+	eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+	};
 };
 
 &i2c1 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
