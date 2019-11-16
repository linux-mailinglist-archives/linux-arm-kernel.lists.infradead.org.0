Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD477FEBBD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 12:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+L/nxB+35DaA/bVHfPYyNIFsk5eULGdCZUwsjkDVIQ4=; b=NfZhLMYw1bhpJP
	1Y6eVMadLliXbsIinQW7NQdgQB0wlDjUZ9VpBkFdH6uMzSPo2sVkfWuxhhXzaDAradoq1xSoVuWKW
	gCDOeZYvW7NUmmf2heIGyyUPgMv/k/X0Obj+EceH60Gsv1r+kPjSEsh2xyIN5nigxki/uxVniFKRq
	6x4wrXeIZ2yoHtMUKZK0SrbREE4ah46/X6+5msUUo33qpqMKDefuFlwMZoN50tx1STV/sJuEvG5LC
	iUObnMzHEH4k44gSAtMUkHII0C6svLHuv4VipqJgp+QUSduPjMQt2em56di9y4PJjknYsmtyuqWd8
	cjWHwipl7/PZIbB3bCIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVvvf-0001cN-C9; Sat, 16 Nov 2019 11:07:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVvvI-0001NA-Iq
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 11:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OctE5FvIy835G4DwtyE7u1YIdiiGzFepyWBHSoY2nX8=; b=T0BiAl+peEgFTgQQQ/QSvpy8bm
 g23kK4g25wUsK2QYNGYQzqJtz+GOlqxCHpIlTrcNnEemc5leCErWA0noHylQfz+xFUveDkOVLp/+y
 b1DzaWeOprGgpE6UXYwZRJXY8oHAuAPupsxa0lqyWervDdnFlbk5NFSQpQ58m763XlTSG4gd8xMcK
 iY2pgHIi9xQ8rc/b/sLFvSHYxAokfK3JG8+G6+VJSFfoqNENnx1Co8Lu9Q74y7QYmRzuMU97uABTa
 uNqmwlHNur12/xYi+qkIIPwM+mI6QQhNs+72gcuhzAua5Wl2Z3g8CjYHu6mUpMPwvX7G3Elgj5Bpw
 9zbrUX4w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37618 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iVvux-00078I-Fc; Sat, 16 Nov 2019 11:07:03 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iVvuv-0002sk-Sw; Sat, 16 Nov 2019 11:07:02 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: [PATCH 2/2] arm64: dts: uDPU: remove i2c-fast-mode
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iVvuv-0002sk-Sw@rmk-PC.armlinux.org.uk>
Date: Sat, 16 Nov 2019 11:07:01 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_030724_705169_DCA77797 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C bus violates the timing specifications when run in fast mode
on the uDPU, so switch to 100kHz mode.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index e31813a4f972..2ac1d9ae1e25 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -119,12 +119,14 @@
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1_pins>;
+	/delete-property/mrvl,i2c-fast-mode;
 };
 
 &i2c1 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2_pins>;
+	/delete-property/mrvl,i2c-fast-mode;
 
 	lm75@48 {
 		status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
