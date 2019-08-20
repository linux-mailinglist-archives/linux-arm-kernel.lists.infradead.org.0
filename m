Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2469641C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xBHB6hpHBg5OLyJhZcSZh7F7EIFRZ2ioF7Bzd24StzU=; b=i90lD/Bi/rVZD8
	MXj46VTuPOr0tx1adhWgS5oOeMMkONTqzQP5zbPHcnazbcf44whFnKdkIb9/7BiUvSkyLF4njjpDz
	E/tJ8zLfCUpI3WLOBV1mW446FVKeuHAxLgHTv3mndTFaMqYBapTYaA9iXX2HaB5bH58NVZcs3fHRi
	UJJb2X4U+yJ6RURYquKOxkcNZHotPrLxBIaTRq0zL4UykSWqAbThS796wvkQIqIQGEaGVVuoSetqZ
	j1E8FcE5fs5teOtgywvpx0PkB1PBeJ2ql+8vn+RGUm2sygHnblLpK/ZON3kwEoH/PBm6Nt4osWnk/
	L0T1fm5wHUZG3+sJrdMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05vc-00084b-7p; Tue, 20 Aug 2019 15:20:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05v7-0007sm-BP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566314375; bh=3n0q7CBc9P4bQG/G0hfq9MsM1NWknDFFdma8+IRC/cg=;
 h=From:To:Cc:Subject:Date:From;
 b=RqPDvgDPVzlnaRwp8M3IghFK1wQglwVFc5+QYKZLLecgLDG5Wil2dozlnMco/EYls
 /tTRCmZRHy22lpoHwy9E9Fr/ySqpCuyc55Qs9fnt0P+1UVmbOrWTAtsc86mOFmndqh
 t3CYfwOjHBGp7SjGsGvlX8D7XF7SfRw54iJgeEMc=
From: megous@megous.com
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 0/3] Add basic support for RTC on Allwinner H6 SoC
Date: Tue, 20 Aug 2019 17:19:31 +0200
Message-Id: <20190820151934.3860-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_081937_566430_21A2F474 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

I went through the datasheets for H6 and H5, and compared the differences.
RTCs are largely similar, but not entirely compatible. Incompatibilities
are in details not yet implemented by the rtc driver though.

I also corrected the clock tree in H6 DTSI.

This patchset is necessary for implementing the WiFi/Bluetooth support
on boards using H6 SoC.

There was some discussion previously of describing HOSC, DCXO and XO
oscillators and clocks as part of RTC in DT, but I decided against it
because it's not necessary, becuse information that would be provided
as a part of DT can already be determined at runtime from RTC registers,
so this woudn't add any value and would only introduce complications
to the driver. See: https://patchwork.kernel.org/cover/10898083/

Please take a look.


Thank you and regards,
  Ondrej Jirman


Changes in v2:
- bindings converted to yaml
- added reviewed by tags

Ondrej Jirman (3):
  dt-bindings: Add compatible for H6 RTC
  rtc: sun6i: Add support for H6 RTC
  arm64: dts: sun50i-h6: Add support for RTC and fix the clock tree

 .../bindings/rtc/allwinner,sun6i-a31-rtc.yaml | 13 ++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 30 +++++++-------
 drivers/rtc/rtc-sun6i.c                       | 40 ++++++++++++++++++-
 3 files changed, 67 insertions(+), 16 deletions(-)

-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
