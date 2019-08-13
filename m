Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176238B91B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppArbSa658xx9PI37XGDSLSL3/UxRsocSnL7GXC5hd8=; b=W+4ksEhdqYnMGn
	vwFAFlZPTXwg6ev0JCcTREvSzXqi2Zld6wTKQhr6O/gQhogHRxsyB0Oms5Z/y9eQ2eT9dMkektyAT
	No5OoAdhhneCMPbJ4WG6/7zIxPvWh/wjyMc4k3u1auuNnQfhcgLkPOjWH8hkyiVP4oCLldrYZcS8k
	AkM2NFVa5mleWtNlnwJ4vR5tRCIbRrDFtCL+n5s1IgcQ1U8xflGlRjki6IJ8JdW/R79T0/kHI9PWl
	dvt65MNRxchn50gIpIPak4TPzWwsaswpxfWb8bF1v8SGU1r2saAxVyYlsuOUbyp41ienw7qxAC/01
	Eb+42UFmzM2HKmv9c69w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWED-0006bi-Iw; Tue, 13 Aug 2019 12:48:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWDU-0005yP-0T
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:47:57 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A517216F4;
 Tue, 13 Aug 2019 12:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565700475;
 bh=ilqdbBkmC8mviANEBAHJR8WnhkGo3fc+YhnzggL1Lh4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nf6SxuXehUmubL2ek/KGJ6mdvZN4mizTKzEoe2qYpYt1t0VPRC4TlejEuoEH4RR/X
 RdEwInJ8jnhdOmVqxq5PHi3fZ11d8GWg9u1aWLkPmIMtlKLIBV9fIA6FOILjcvlhzQ
 AGhUrEkbTvQWiCN9uMVjWFJI391fBuZXwfMVo7SM=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH 4/5] ARM: dts: sun8i: a83t: Remove the watchdog clock
Date: Tue, 13 Aug 2019 14:47:43 +0200
Message-Id: <20190813124744.32614-4-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813124744.32614-1-mripard@kernel.org>
References: <20190813124744.32614-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054756_116807_35636103 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The watchdog binding doesn't define a clock, and it indeed looks like
there's no explicit clock feeding it.

Let's remove it from our DT.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 523be6611c50..15f8c80f69a5 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -817,7 +817,6 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
 			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&osc24M>;
 		};
 
 		spdif: spdif@1c21000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
