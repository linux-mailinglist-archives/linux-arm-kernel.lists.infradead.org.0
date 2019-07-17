Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB2F6BCB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 14:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0pto/L3L6CbRuHl6LMFT4hxwXl3B33wPasR72DbcYy8=; b=twI
	Yr4oI+iSq+QC916RHfaNqmMz/OIbJD2CG+0oizRh6kt1+93Igt+tHiW5N3osMWV6MwK2WUd3RgrYZ
	2waW290j5PqmABDb4zsuiuewL4q11bogZtPDPXNS22OUsM46/gLYQmhNA+WgYiJI06zP4xBYzEiIr
	l8AtAcyLNGtdGg8v5cFA5ZVpE6RgqMwhSH6pikXFgenQVmvoFnh5El+qEiETRsTTuPl2HhY3kilqN
	k/HrEpc8N5Se6QQBICISMARuJEIh+sugrMymYhECaArwuVYRWm9v2vZ4gzU7yiRVGGwxl9Xe1/ALD
	8zpmzOFieFmVBEOjA+elMeLhhThUCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjVQ-0002T6-CK; Wed, 17 Jul 2019 12:58:00 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjVI-0002Sk-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 12:57:53 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id ABF7525AD5F;
 Wed, 17 Jul 2019 22:57:46 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B55B8940270; Wed, 17 Jul 2019 14:57:44 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFC repost] arm64: dts: renesas: ebisu,
 draak: Limit EtherAVB to 100Mbps
Date: Wed, 17 Jul 2019 14:57:39 +0200
Message-Id: <20190717125739.21450-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_055752_391116_5ED43D43 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Wolfram Sang <wsa@the-dreams.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
  August 24, 2018, the TX clock internal delay mode isn't supported
  on R-Car E3 (r8a77990) and D3 (r8a77995).

* TX clock internal delay mode is required for reliable 1Gbps communication
  using the KSZ9031RNX phy present on the Ebisu and Draak boards.

Thus, the E3 based Ebisu and D3 based Draak boards reliably use 1Gbps and
the speed should be limited to 100Mbps.

Based on work by Kazuya Mizuguchi.

Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

---

This is a repost of this change.

In earlier review Andrew Lunn suggested that we may be able to take a
different approach to this problem by using delays provided by the
KSZ9031RNX PHY. In particular MMD address 2h, Register 8h -
RGMII Clock Pad Skew.

I have consulted with Renesas regarding this suggestion, however,
unfortunately it appears that the delays provided by this solution
would be insufficient to allow for reliable 1Gbps communication.

At this point I believe the safest option is to apply this patch.
---
 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts | 1 +
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
index 83fc13ac3fa1..3d3d6d438a05 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
@@ -271,6 +271,7 @@
 		interrupt-parent = <&gpio2>;
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
+		max-speed = <100>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 0711170b26b1..eb153323ed13 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -175,6 +175,7 @@
 		reg = <0>;
 		interrupt-parent = <&gpio5>;
 		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		max-speed = <100>;
 	};
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
