Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628391BF755
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zQ/EbjXkt5OkWaP7yV62XitwZLbUP5SPDFuBhb/DGDY=; b=DfZa+wDAVv3eAt
	4RdZBu9HwPIkL8Y9f20Wrz2KBiL7JqqXmbaJ9Z+2ChbtoVIOYlsYKdpMh3+8ZeGV/h/NQNynBsTOK
	yDxb/zhFB2/O0BRaCUsc2epN9oHzHK8ELpxIOx+TSkJNzbKPSRWDvRJbf04iLf4vuZjGsRPk9Xz/T
	Y8jDp8Jk38dbF2k6Y8NCbHEo/QrAkGjgI0NuLzutOqopQiBiXhZRtgW7YarNq4jEQwJqDHZrQJ3RK
	EsEvOswamxaSEqgydb2jBCM5tT9doNnlE8jgjTcm6wWXxmwWwkHfsq+NAqzQrbPxQJfLmze9xh2/R
	oD7Xs/+1t2pS7hkFNRjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7p2-0005ks-7g; Thu, 30 Apr 2020 11:57:44 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7oX-0005an-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:57:15 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id BE84340020;
 Thu, 30 Apr 2020 11:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588247827; bh=9ytpHlutDRoUSh496p21AHYxrRL9x3p+AfLf7VwScpI=;
 h=From:To:Cc:Subject:Date:From;
 b=PZnDZsL8HLNYJpzeW6lPXaNSKVBxBuZWZn3UyrJxNKlokN2Ckj0PNMi7/J06UfrNz
 UEMk1fD0LJQDrOWRTWk631RYhGm1SSrl3FLiC8nsgz4EZ7TdiD8rDT7skIjmgNLgg9
 RkdSJiYvge5C4GeEKMGXZRLBHZqllnkcTxAlMqlnDXsDwob+6p2QZrCNGHQ9xBs24C
 PgPxhhTcbHyi00zbWuQIXjldu8/ayw6NeB4uwMBrHeKCiKXJpj5tITfc46Ep4zTSyi
 akHL875ivcDwCWMO2LPDDb4qAfpVDiqdY8y+iUfCP8xGs7Kddzt+XZA8PoqkNmin1u
 fK+U8KiV2hkDw==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 0/6] ARM: sunxi: Clean up sun7i-a20-gmac-clk usage 
Date: Thu, 30 Apr 2020 14:56:56 +0300
Message-Id: <20200430115702.5768-1-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_045713_880756_9298CF6D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This serie implements syscon-based regmap access to dwmac-sunxi driver,
allowing to deprecate the allwinner,sun7i-a20-gmac-clk clock driver.

In order to register regmap, we firstly need to change existing clock
setups (sun7i-a20 and sun6i-a31) from CLK_OF_DECLARE to
CLK_OF_DECLARE_DRIVER to allow probing the same driver again via the
platform driver framework.

This patchset touches 3 areas:
- sun7i and sun6i CCUs now set up regmap to allow dwmac-sunxi driver
to access GMAC clock register.
- dwmac-sunxi can now handle syscon-based clock register to handle
its own clock.
- sun7i and sun6i devicetrees are converted to use the new syscon-based
access.

After this patchset:
- sun7i-a20 works fully without legacy sunxi clocks (CLK_SUNXI)
- only sun9i-a80 SoC remains as a single sun7i-a20-gmac-clk user.

Please note that sun6i-a31 changes are only build-tested, as I lack
the hardware to test this.

Changes since v2:
* Fix broken sun6i-a31 CCU patch.
* Rename series to "Clean up sun7i-a20-gmac-clk usage"

Changes since v1:
* Use CLK_OF_DECLARE_DRIVER to make it possible to probe again and set up
regmap using platform device probe.
* Clarify the meaning of "legacy" in dwmac-sunxi driver.
* Make sure we don't mess with the RX/TX delay settings when updating
clock registers.
* Update devicetree bindings
* Add sun6i-A31 support. (not tested due to lack of hardware)

Priit Laes (6):
  clk: sunxi-ng: a20: Register regmap for sun7i CCU
  clk: sunxi-ng: a31: Register regmap for sun6i CCU
  net: stmmac: dwmac-sunxi: Implement syscon-based clock handling
  dt-bindings: net: sun7i-gmac: Add syscon support
  ARM: dts: sun7i: Use syscon-based implementation for gmac
  ARM: dts: sun6i: Use syscon-based implementation for gmac

 .../net/allwinner,sun7i-a20-gmac.yaml         |  15 +-
 arch/arm/boot/dts/sun6i-a31.dtsi              |  35 +----
 arch/arm/boot/dts/sun7i-a20.dtsi              |  36 +----
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c          |  62 ++++++++-
 drivers/clk/sunxi-ng/ccu-sun6i-a31.c          |  62 ++++++++-
 .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 130 ++++++++++++++++--
 6 files changed, 261 insertions(+), 79 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
