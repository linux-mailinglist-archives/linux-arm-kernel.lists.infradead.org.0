Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA22D1868F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DyIt4/W05f/xDXR9YZyEtdb5h9bRZe1ZU/tyxAWyP2A=; b=MFIX/TPBQy5lANwqjdfSP50bKd
	qCRJqt9iRUf7DMefJQgstN76Et0MukYlSvaWJYrq2YgeFGHYIRDNDdDEdGfhAJLts58xEyk02+VtY
	X3Fu+o60q5wvJsKFvx2NZpx1uZwyPozXz1Y/3wy0oNfl47zhhx+STLspy4zA8Hy+o6bBsATnNv/9O
	AYzcjRG+8N4NbGE9JaBJYLDSdzPSjenD92movACiEMOkQw3WOIgI4fe7W/tYflpa1LByMBzJN73v5
	oEamtoWL8g+/eyMliJgizX35hupktgHKwwNgXyJnCKy15K1PD8MCx6fg0+f72+QAkV+LgdwZ4CqX7
	5GXZcIqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmxB-0004qP-9U; Mon, 16 Mar 2020 10:26:37 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmwa-0004Rt-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:26:01 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id EyRk2200P5USYZQ06yRkjM; Mon, 16 Mar 2020 11:25:47 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jDmwK-00069l-85; Mon, 16 Mar 2020 11:25:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jDmwK-0007Wi-6i; Mon, 16 Mar 2020 11:25:44 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 1/2] ARM: dts: r8a7791: Add TPU device node
Date: Mon, 16 Mar 2020 11:25:39 +0100
Message-Id: <20200316102540.28887-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316102540.28887-1-geert+renesas@glider.be>
References: <20200316102540.28887-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_032600_812689_4CF2E6BA 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for the 4 PWM channels provided by the 16-bit Timer Pulse
Unit on R-Car M2-W, by adding a device node describing the TPU.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/boot/dts/r8a7791.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/r8a7791.dtsi b/arch/arm/boot/dts/r8a7791.dtsi
index e38a5f01490d70a1..a508098af205ee3e 100644
--- a/arch/arm/boot/dts/r8a7791.dtsi
+++ b/arch/arm/boot/dts/r8a7791.dtsi
@@ -292,6 +292,17 @@
 			reg = <0 0xe6060000 0 0x250>;
 		};
 
+		tpu: pwm@e60f0000 {
+			compatible = "renesas,tpu-r8a7791", "renesas,tpu";
+			reg = <0 0xe60f0000 0 0x148>;
+			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 304>;
+			power-domains = <&sysc R8A7791_PD_ALWAYS_ON>;
+			resets = <&cpg 304>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
 		cpg: clock-controller@e6150000 {
 			compatible = "renesas,r8a7791-cpg-mssr";
 			reg = <0 0xe6150000 0 0x1000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
