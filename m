Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE618169221
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 23:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRtP/Lw2XMKdpxMABAJb6m2jZsbkqzIXi2gRfTDzDNs=; b=rBjDSudnqtECzc
	nz8MyLXheVxbb3oAQ1ZkZRnauzm5xXKD3412GDG+8QD7M6nfKSuClzZtAGdl3Eu8BdPRljfrhHFO8
	3eXFMis4DO4r8IR7rqPNH2Dvp7GLruQk8LG8blG4NR4TJwkjmltXY1Cfbka1UtlLrLYn0e/iNeECW
	v4hXkCM/38ynHl+n2boLPQYkrBZ2l7C2A6zOTAD951x/d5WaqBqZ1gRNHc/K8/qIJcohu5BWY3tLs
	qfHeqgDJC6iNko20hXeF6AEM6SIJJWqfuYmFRsRfqgJ5cOn82hTDaYyDTrukQcnAEi+Ddq4/RtX4e
	xQcOpTAeUBnelXhtuLZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dKV-0002Ye-Ia; Sat, 22 Feb 2020 22:32:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dJW-0001rW-UX
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 22:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582410717; bh=TCCzp1xrm/SgtBEqTC1+PUvJ6AXuX1dC7GgiBOhdayE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=QfZeBXNTsdU36p1AqOKCSv6wS4fFa0WfFSwlwkexX9QFPaToUWYTTUXkM18CIORgf
 +IxUQD36zqs+WjQ/KEAUmzk08fDN1wSJlASjdPN5A7AtX5eKyK1nXAe+9+qsT8iAig
 KTNUDtvmexHEMxOyQVvc+Ap4vR5zuM5r6D/2gICg=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 3/4] ARM: dts: sun8i-a83t-tbs-a711: Fix USB OTG mode detection
Date: Sat, 22 Feb 2020 23:31:53 +0100
Message-Id: <20200222223154.221632-4-megous@megous.com>
In-Reply-To: <20200222223154.221632-1-megous@megous.com>
References: <20200222223154.221632-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_143159_158400_187F18FF 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

USB-ID signal has a pullup on the schematic, but in reality it's not
pulled up, so add a GPIO pullup. And we also need a usb0_vbus_power-supply
for VBUS detection.

This fixes OTG mode detection and charging issues on TBS A711 tablet.
The issues came from ID pin reading 0, causing host mode to be enabled,
when it should not be, leading to DRVVBUS being enabled, which disabled
the charger.

Fixes: f2f221c7810b824e ("ARM: dts: sun8i: a711: Enable USB OTG")
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index ae1fd2ee3bcce..32fa64a44d8b4 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -495,7 +495,8 @@ &usb_otg {
 };
 
 &usbphy {
-	usb0_id_det-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>; /* PH11 */
+	usb0_id_det-gpios = <&pio 7 11 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PH11 */
+	usb0_vbus_power-supply = <&usb_power_supply>;
 	usb0_vbus-supply = <&reg_drivevbus>;
 	usb1_vbus-supply = <&reg_vmain>;
 	usb2_vbus-supply = <&reg_vmain>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
