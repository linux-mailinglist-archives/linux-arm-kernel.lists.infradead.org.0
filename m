Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03D1786F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m51rw17xhseBUjPy+HQ5BRWhGc3q3u6HlgTks1Y9o/A=; b=m7o
	kwMtGV4oW4zHi7PA8/7XqN8YuWxiX2ga+OKeYqh1D/EQiOv/BVipsHMpCbObCfhuBrG2e/rGFDmpR
	Ix3VN1LbVMsH6tg7nH3lcQtFhN5P2Pdp64pfqnP1d2FrexwmvqGub7AeiauqgYzofdz/rnxA/ClGO
	xxbk+JPY+2PwJuqGJNFASCdsdYvHW9fyGMhtA2G5mFYz+Mj89/UbaXDoiTVJ6nV7mzPk0t/z3oXYq
	15FYP4fJhz0zv8KUldPlbocHb/mQaOcG20VczVir66BLO+BTMiCvL5l3fuI0ES2syfvbZq2eGlct8
	IYMoemkpyr1Poa2VHayk7cZy3awixNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0dw-0003QY-E3; Mon, 29 Jul 2019 08:04:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0dk-0003Px-88
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:04:17 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 9E2CF25AD7E;
 Mon, 29 Jul 2019 18:04:10 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 7AEFB9403F0; Mon, 29 Jul 2019 10:04:08 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2] arm64: dts: renesas: ebisu,
 draak: Limit EtherAVB to 100Mbps
Date: Mon, 29 Jul 2019 10:03:56 +0200
Message-Id: <20190729080356.13023-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_010416_445954_0C066B9F 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrew Lunn <andrew@lunn.ch>, Wolfram Sang <wsa@the-dreams.de>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
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

Thus, the E3 based Ebisu and D3 based Draak boards can not reliably
use 1Gbps and the speed should be limited to 100Mbps.

Based on work by Kazuya Mizuguchi.

Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

---

Based on renesas-devel-2019-07-12-v5.2

v2:
* Add comment to dts as suggested by Wolfram Sang
* Correct changelog as suggested by Kieran Bingham

v1 (repost):

In earlier review Andrew Lunn suggested that we may be able to take a
different approach to this problem by using delays provided by the
KSZ9031RNX PHY. In particular MMD address 2h, Register 8h -
RGMII Clock Pad Skew.

I have consulted with Renesas regarding this suggestion, however,
unfortunately it appears that the delays provided by this solution
would be insufficient to allow for reliable 1Gbps communication.

At this point I believe the safest option is to apply this patch.
---
 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts | 8 ++++++++
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
index 83fc13ac3fa1..62203c0fc70d 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
@@ -271,6 +271,14 @@
 		interrupt-parent = <&gpio2>;
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
+		/*
+		 * TX clock internal delay mode is required for reliable
+		 * 1Gbps communication using the KSZ9031RNX phy present on
+		 * the Ebisu board, however, TX clock internal delay mode
+		 * isn't supported on r8a77990.  Thus, limit speed to
+		 * 100Mbps for reliable communication.
+		 */
+		max-speed = <100>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 0711170b26b1..4b651548b82b 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -175,6 +175,14 @@
 		reg = <0>;
 		interrupt-parent = <&gpio5>;
 		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		/*
+		 * TX clock internal delay mode is required for reliable
+		 * 1Gbps communication using the KSZ9031RNX phy present on
+		 * the Draak board, however, TX clock internal delay mode
+		 * isn't supported on r8a77995.  Thus, limit speed to
+		 * 100Mbps for reliable communication.
+		 */
+		max-speed = <100>;
 	};
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
