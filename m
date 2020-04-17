Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E81AE83E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 00:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OPH98aD6O1nxwhV9VULbgMo+a6Y5QIhP9eh8i6xw3ts=; b=j1Jrmmy61apU8G
	SLgo0nT28fI5SKgD/hYldivpHLdixT5ZWyv/JzkvMuqqrrCVTaQUfJJMxX7+AIu69VgRTiyR+P/Yq
	awMlLZL8ek2Vrpt9jf7Mq7zwYly3yh4kei0Aj2n/eL8xjmlEMS6l4+zKAZm+dOf6inrnZIJJJ+Xi7
	dpiWsP2QFE4NG4rJZPCiRpPZ/W6Mj8Y3DF0JQUVRayBRJuInH4GHXDnNnKCeMe6USUyxYiTMDofgo
	NBkw/dG3s1o7eR/zVmq72MdgK0/DqE+uzEBD+T1CNLp0IZqjTd4AfSBlmfa18SSWOavwYCXZkyD+4
	KHPoNc27uxaQJpvswNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZUD-0005us-Hs; Fri, 17 Apr 2020 22:29:25 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZU3-0005u0-Fv
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 22:29:16 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:9d4d:940e:6b9e:3deb:4])
 by plaes.org (Postfix) with ESMTPSA id E48EC404A6;
 Fri, 17 Apr 2020 22:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587161871; bh=Et23DSQX+mYnPBoOaUK80Omdf6ErKOl84UqRoFglySE=;
 h=From:To:Cc:Subject:Date:From;
 b=VMv0txaDabnlDJtPEbe/qgBuhJXoBNCTYURXJYKEtGgcXzNxYwh0grJ/5uFNtWlDM
 Wmq4RGo2277lZ8nYq0Wlpb6ZWXL3Tmzi8knUm0ZwTrfZ+qXoKFqfHd01BnRnJbp9FL
 T130y4RuP7JUG0iqzwAzV6zhPmpzQW8805DTsNotayGIPj0e4B23jvu3Ex0lr+kIQ7
 SbEByUN4KXl9uhr+J+cGZcwjJzxdKCes1lvw9e5LQ9Pe998QxoPJABh6m2suAczpH3
 3ZgXqE9XkS8zINO1S4yPEUQcv7lPYixHVqJ/dE79tdgchxo6+jsUY8zNWU1ZIjFTaJ
 PSSF1sajUKRAg==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH 0/4] ARM: sun7i: Convert A20 GMAC driver to CCU
Date: Sat, 18 Apr 2020 01:17:26 +0300
Message-Id: <20200417221730.555954-1-plaes@plaes.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_152915_670650_13BF18B6 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie converts Allwinner A20 (sun7i) GMAC driver to CCU
while still retaining compatibility with existing devicetrees.

First two patches contain preliminary work which convert
sun4i/sun7i clock drivers to platform devices and creates regmap
to access gmac register from the sun7i gmac driver.

Third patch implements syscon-based regmap to allow driver manage
its own clock source.

Fourth patch updates the devicetree and drops the unused clocks.

While testing the driver I noticed following bugs with the existing
sun7i gmac driver:
- driver relies on u-boot for initialization (fixed in this
  implementation)
- `systemctl restart networking` fails to bring the link up again.


Priit Laes (4):
  clk: sunxi-ng: a10/a20: rewrite init code to a platform driver
  clk: sunxi-ng: a20: export a regmap to access the GMAC register
  net: stmmac: dwmac-sunxi: Implement syscon-based clock handling
  ARM: dts: sun7i: Use syscon-based implementation for gmac

 arch/arm/boot/dts/sun7i-a20.dtsi              |  36 +----
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c          | 108 ++++++++++++---
 .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 124 ++++++++++++++++--
 3 files changed, 206 insertions(+), 62 deletions(-)

-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
