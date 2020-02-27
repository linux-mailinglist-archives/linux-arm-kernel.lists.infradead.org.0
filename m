Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB682170DD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 02:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P5rbxa4U6+cxXgfrY5/+62dns00v3mMSL5Q6idc6zK4=; b=TWgvFzVW6ZkKGt
	n5zW010byjYPCK6D/V7REsnI5EavhQAAGl0talX2LFCsuAqZzFEcPfjL5UzvBnOYhqIENT4tcycXt
	uE7+wpcdFk/6GY/GsbrhYHx9o+xijwS+b9JGdYsaWHoJVsDTT9XtL+4Tgp8Hzb49MtzXPrqe7fpqz
	Q1+FIRTb5yEX9KxkDQKP0vwR+V+rnh34/rXBY4VESgQH0nNpNHnWnlPi6K2sneS7ATZIkJ/1ZSnNH
	xqzzG30tV8zch/8dI84bMNXH7d4WU2v4X6kp/ExNUaNWmmiXNgHJsvXb2VETIQ3Xz7d9US8Jbjgkd
	UQq9d1wEEJKsKtDtdeNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77yE-0007jt-26; Thu, 27 Feb 2020 01:28:10 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77xJ-00075Y-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 01:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582766828; bh=u1U5biX1YBQymIrRPcMlcQ+pX+ofoeqYtiKTMcwGEkk=;
 h=From:To:Cc:Subject:Date:From;
 b=CXFGnn7LldFRSTbl8VIBS9TBOVvyh4Cdp1xET3TKP+izNCKdFiQ4JfJH3pTQN56GC
 pvcfcDrInjqUXrShZzqsPoeLG01k6zfyiUTB72i6a/dO5Z+tEK6QtEAXRYWmxiaPW7
 bLs5SWzYcsggp9am9AShglyt2TiqMF37o3u0MPYc=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 0/3] Add support for Pine64 PinePhone Linux Smartphone
Date: Thu, 27 Feb 2020 02:26:47 +0100
Message-Id: <20200227012650.1179151-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_172713_464710_12516BD3 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds an initial support for Pine64 PinePhone.

Please take a look.

thank you and regards,
  Ondrej Jirman


Changes in v2:
- make i2c2_pins default pinctrl config for i2c2 node
- add description of the differences between 1.0 and 1.1 to the
  commit message
- added copyright header for Martijn Braam
- drop pinctrl config from i2c1 and i2c2 nodes, since it's
  now the default
- extend comments on i2c2 and uart3 nodes to be more clear
- rebased on top of linux-next and resolved conflicts
- dropped the function-enumerator from leds

Changes not made:
- I didn't drop pinctrl configs on mmc0, mmc2 and uart3
  - these are actually not default in dtsi, as was suggested
- gpio-leds kept with the new function/color binding, but I dropped
  the function-enumerator

It seems intention for the future (since about 06-2019[0]) is for LEDs to not
have a devicename in their class name, because that's determinable
from the sysfs in other ways, and to use the function and color
properties instead of label in DT.

[0] https://lore.kernel.org/lkml/20190609190803.14815-5-jacek.anaszewski@gmail.com/T/

function-enumerator is supposed to be used if function/color don't
make the LED name unique for the board. [1] So I dropped function-enumerator
from my series, as it just added a numeric suffix to the LED name
for no reason.

[1] https://lore.kernel.org/patchwork/patch/1063388/

This follow the recent new board binding additions to the kernel (in 5.6):

https://elixir.bootlin.com/linux/v5.6-rc3/source/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi#L96

Ondrej Jirman (3):
  arm64: dts: sun50i-a64: Add i2c2 pins
  dt-bindings: arm: sunxi: Add PinePhone 1.0 and 1.1 bindings
  arm64: dts: allwinner: Add initial support for Pine64 PinePhone

 .../devicetree/bindings/arm/sunxi.yaml        |  10 +
 arch/arm64/boot/dts/allwinner/Makefile        |   2 +
 .../allwinner/sun50i-a64-pinephone-1.0.dts    |  11 +
 .../allwinner/sun50i-a64-pinephone-1.1.dts    |  11 +
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 379 ++++++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   8 +-
 6 files changed, 420 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
