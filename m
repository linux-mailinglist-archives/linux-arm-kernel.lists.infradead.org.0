Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3131A158091
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cdOJK8tDfq0iy2/0XP1hbUKRg0nLK9a87h5UJmtdNE=; b=jUO4X+5OUb8Szu
	246bl2wXm7YIpI3enfNJ8ES0P4EeOrRzlrIwihTNFMBYAd5LCz4Z4ttzAMwCTf1fffMP4bH3n8N2M
	OFiN76kWRoad9U5q8qvxptYXtQSag91PlcrlRgYsu9gh2sZ/7vLI2CTs5emzZeZIGPYtrOPBvjWrD
	WtXtMztpVsXA/4IdcOrmuAUWpoUYXekVnV5MPV+nIiZYehZU73OXuQ+y2jd670trbgon/YQp5ecdb
	0pidK4wjgrsOeo1bWcksbwqkP8Bet27SBVLNUr5ufYRyMfSyCbIykVmFYM3j5eej5ixTmi1t/4o7/
	L6+ZjCWG4slGGdJHSTtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CXK-0001Xp-My; Mon, 10 Feb 2020 17:07:54 +0000
Received: from mailoutvs62.siol.net ([185.57.226.253] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CWm-00015Y-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:07:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DB565521B09;
 Mon, 10 Feb 2020 18:07:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id poTaMWmvvD3k; Mon, 10 Feb 2020 18:07:15 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9271C521B82;
 Mon, 10 Feb 2020 18:07:15 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id ECC8A521AFF;
 Mon, 10 Feb 2020 18:07:12 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 2/5] clk: sunxi-ng: a64: Export MBUS clock
Date: Mon, 10 Feb 2020 18:06:53 +0100
Message-Id: <20200210170656.82265-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210170656.82265-1-jernej.skrabec@siol.net>
References: <20200210170656.82265-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090720_833900_05C1F647 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.253 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MBUS clock will be referenced in MBUS controller node.

Export it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.h      | 4 ----
 include/dt-bindings/clock/sun50i-a64-ccu.h | 2 +-
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.h b/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
index 116e6f826d04..54d1f96f4b68 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.h
@@ -55,10 +55,6 @@
 
 /* All the DRAM gates are exported */
 
-/* Some more module clocks are exported */
-
-#define CLK_MBUS			112
-
 /* And the DSI and GPU module clock is exported */
 
 #define CLK_NUMBER			(CLK_GPU + 1)
diff --git a/include/dt-bindings/clock/sun50i-a64-ccu.h b/include/dt-bindings/clock/sun50i-a64-ccu.h
index e512a1c9b0fc..318eb15c414c 100644
--- a/include/dt-bindings/clock/sun50i-a64-ccu.h
+++ b/include/dt-bindings/clock/sun50i-a64-ccu.h
@@ -131,7 +131,7 @@
 #define CLK_AVS			109
 #define CLK_HDMI		110
 #define CLK_HDMI_DDC		111
-
+#define CLK_MBUS		112
 #define CLK_DSI_DPHY		113
 #define CLK_GPU			114
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
