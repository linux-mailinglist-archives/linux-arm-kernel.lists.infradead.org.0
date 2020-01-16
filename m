Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA213FCC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DoMqMJT/2ALsXO6oLnvvuAwTyZcfvndUfK/OxGjJePU=; b=fkH
	KoDq07lMQ4B+Amsl+HVKXOSlyI0RzNEbB3EIoBuqNxVJXh4gYLnm5SitftFMn57z+8LwLtS7CcNw0
	lHxvt9D5/hauxBfZO0JkXrV44xSTFyPeKoRHwceGCVyXipFY9RNy3cofV08/zTYF4Po3cxD+kaT0r
	WyujGtkoHP+1L7cH7fPTT2SOEbchRXexBREQRo2rQ2/462ZtahSkeYlLGRQ4AKT+kiRYSgO6Fb3xs
	GsDglAWE8LW2KR0296jipmkDWoivLyE1u4H1mEyYTcfRcxwpdsEP9xqBweIPZASl2aiflOOwfpyQf
	vZA+wLcQtTlBaL1BxfMxzhyxqg8mpYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEJI-0001oO-Q0; Thu, 16 Jan 2020 23:12:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEJ5-0001lj-0E
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:12:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8C3D11D4;
 Thu, 16 Jan 2020 15:12:05 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 009423F68E;
 Thu, 16 Jan 2020 15:12:03 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 0/3] arm64: dts: sun50i: H6: Enable SPI controller
Date: Thu, 16 Jan 2020 23:11:45 +0000
Message-Id: <20200116231148.1490-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_151207_088212_213DB059 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mark Brown <broonie@kernel.org>,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though the SPI controller in the Allwinner H6 SoC is more advanced
than in the previous generations (it supports 3-wire and 4-wire mode),
the register set stays backwards-compatible. So we can use the existing
driver to use the "normal" SPI mode, for instance to access the SPI
flash soldered on the Pine H64 board.

These two patches allow this by adding the SPI controller nodes to the
DT. The compatible strings include an H6 specific name, so that any
future 4-wire enhancements for instance would be automatically usable
once the driver learns this new trick. For now we use the H3 fallback
name to bind the current driver.

This time I tested this actual branch  (on top of sunxi/dt-for-5.6),
on a Pine H64, both the internal SPI flash as well with SPI flash
connected to the other SPI controller available on the GPIO headers.

As the SPI0-CS0 pin clashes with the eMMC CMD pin, we keep this
node disabled by default, to avoid losing the eMMC if it probes last.
People (or U-Boot) can enable it if needed.

Cheers,
Andre.

Changelog v2 ... v3:
- use a more maintainable compatible description in the dt-bindings

Changelog v1 ... v2:
- comment on pinmux clash between eMMC and SPI
- disable Pine H64 SPI flash node by default
- add binding doc for the new compatible string

Andre Przywara (3):
  arm64: dts: sun50i: H6: Add SPI controllers nodes and pinmuxes
  arm64: dts: allwinner: h6: Pine H64: Add SPI flash node
  dt-bindings: spi: sunxi: Document new compatible strings

 .../bindings/spi/allwinner,sun6i-a31-spi.yaml      | 11 +++--
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts      | 19 ++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi       | 55 ++++++++++++++++++++++
 3 files changed, 82 insertions(+), 3 deletions(-)

-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
