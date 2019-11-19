Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E0C102F94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=axWXjt+i2ydP4uSH/al0jaqKYZ/TKG/jfD1vknoNUDc=; b=U9MvBGIVVKIM+M
	Ua8X8IbMOo3A3Qm66ShJGPp9nShWZRv37cSd9V3QwDbywfqsqve+eB53EEsQmmnHFXi3YEuo/uW2A
	b7e9bzLED562Zs0Oc8lyDghVgAXz2WhV+Q3FVuF41CGUJ2GYlhCUwJi/iEa1i1w6hYOHJWJklqUb7
	9re35VeeKXWcd6Xwm5HjFZzEptxoUCqpY8gzPcE9I0Rxkf2nR2E7ZgjciG9HgEmmml0S++5jm5wHQ
	dceu5yK44rS3LainSCqWRF6tjnRoE9U9RCBSWMT+BdritixtwGr67kFYo2J73w3q8a3kCdb6Pzian
	cQiIraZYZUjQX1DLtuCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCNJ-0006jD-So; Tue, 19 Nov 2019 22:53:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCN7-0006iT-7v
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 22:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0HyaIqYya6CA1uTTflYMH3tQcKHaSfwjbif8Y6O6VL0=; b=jE0yLV83/8kuXt8h0Grf1wN8AX
 qz2MkdtLgK0ABNRC38s45VUMVC1zz1qnbaeGQGTS/wCJahNp9cUaGz0toZxllfZMnFN1Q3k3V/XyI
 ilA/cZqqwS8s8Bs1lmf/+ya97GZsR8faMmNefGSqQJRdXZzq8WIPpXS2rc6YoxbuzukTtZSjgnJhC
 I3M9hSF74EGKUFo5zPFzYorL7DxKff/5CiSx4McqMXzXQrGTbaljum08wh9PduCF1lyIydX99EFuF
 VFkUieYyfITpWrjAZA41E/Pf2hDTGJkf1QyoJUcWR8Bi0IVQHhb54BUthhVvQg3EDWDBT5P/FW2cK
 CUiZsk8A==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:39670 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iXCMr-0004Ir-CI; Tue, 19 Nov 2019 22:53:05 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iXCMq-00040q-Bm; Tue, 19 Nov 2019 22:53:04 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: [PATCH] arm64: dts: uDPU: SFP cages support 3W modules
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iXCMq-00040q-Bm@rmk-PC.armlinux.org.uk>
Date: Tue, 19 Nov 2019 22:53:04 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_145321_441020_1A5A721D 
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The SFP cages are designed to support up to 3W modules, such as G.hn,
G.fast and MoCA modules. Although there is no way for such modules to
declare to software that they consume 3W, we document in DT that this
is the designed power level for these cages.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 2ac1d9ae1e25..7eb6c1796cef 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -69,6 +69,7 @@
 		mod-def0-gpio = <&gpiosb 3 GPIO_ACTIVE_LOW>;
 		tx-disable-gpio = <&gpiosb 4 GPIO_ACTIVE_HIGH>;
 		tx-fault-gpio = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <3000>;
 	};
 
 	sfp_eth1: sfp-eth1 {
@@ -78,6 +79,7 @@
 		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
 		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
 		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <3000>;
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
