Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A876A9C615
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 22:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Bf+YG13lveEvLdc150yqt8k2zVt+rUtvm0jp7OLBOw=; b=nCBn7z3GyabNqY
	GFLSHLJs5t5E2O3mUbMZ8TjleVSNGAOdtvWzUEedD0M+4URDx6mMKyoXYBIxzZHkCPnFhhHmWF51V
	XIL1IsfSMLK2UfsnCfrNmsE3SFz6727YsCa3i2ZyxSIUBkIyFpAeyJ3lQ32C5+qFanlqLs8+STRor
	bczxIzdcdnNb/mteG8DZI3EAdyyBnsk+TCSATvV2ac3O5Pg2VyK2lb7+rDwdnTMVCqNfbqnU7uBJH
	iGXQGKkl2v3pT5F4vuCgzMuma6VjALhBs6K2RJVO799GACW1WHAHt8O524LgNcbbatr7J7MVNmDK5
	Kq8FGu/8hGr4dLVGzlTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1z6N-00016S-CN; Sun, 25 Aug 2019 20:27:03 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1z6D-000163-EH
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 20:26:55 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2DD261C0003;
 Sun, 25 Aug 2019 20:26:43 +0000 (UTC)
Date: Sun, 25 Aug 2019 22:26:42 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.4
Message-ID: <20190825202642.GA18853@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_132653_632972_A8C0294D 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

A few DT changes affecting only the style but not the DTB output. There
may be some late DT changes a bit later (but hopefully not too late).

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.4-dt

for you to fetch changes up to bb3e9c767c6134a5761470038e8c75cdb6f04867:

  ARM: dts: at91: at91sam9x5dm.dtsi: Style cleanup (2019-08-21 18:41:36 +02=
00)

----------------------------------------------------------------
AT91 DT for 5.4

 - style cleanup for at91sam9x5 based boards
 - avoid colliding node and property names

----------------------------------------------------------------
Rob Herring (1):
      ARM: dts: at91: Avoid colliding 'display' node and property names

Uwe Kleine-K=F6nig (10):
      dt-bindings: add vendor prefix "acme" for "Acme Systems srl"
      ARM: dts: at91: Add label for sam9x5's internal RTC
      ARM: dts: at91: ariag25: Style cleanup
      ARM: dts: at91: ariettag25: style cleanup
      ARM: dts: at91: cosino: Style cleanup
      ARM: dts: at91: kizboxmini: Style cleanup
      ARM: dts: at91: at91sam9g15: Style cleanup
      ARM: dts: at91: at91sam9xx5ek: Style cleanup
      ARM: dts: at91: at91sam9x5_lcd.dtsi: Style cleanup
      ARM: dts: at91: at91sam9x5dm.dtsi: Style cleanup

 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/at91-ariag25.dts                 | 255 ++++++++++-------=
---
 arch/arm/boot/dts/at91-ariettag25.dts              | 100 ++++----
 arch/arm/boot/dts/at91-cosino.dtsi                 | 203 ++++++++--------
 arch/arm/boot/dts/at91-cosino_mega2560.dts         |  93 ++++----
 arch/arm/boot/dts/at91-kizboxmini.dts              | 179 +++++++-------
 arch/arm/boot/dts/at91sam9261ek.dts                |   2 +-
 arch/arm/boot/dts/at91sam9263ek.dts                |   2 +-
 arch/arm/boot/dts/at91sam9g15.dtsi                 |  28 +--
 arch/arm/boot/dts/at91sam9g15ek.dts                |  12 +-
 arch/arm/boot/dts/at91sam9g25ek.dts                |  89 ++++---
 arch/arm/boot/dts/at91sam9g35ek.dts                |  22 +-
 arch/arm/boot/dts/at91sam9m10g45ek.dts             |   2 +-
 arch/arm/boot/dts/at91sam9rlek.dts                 |   2 +-
 arch/arm/boot/dts/at91sam9x25ek.dts                |  36 ++-
 arch/arm/boot/dts/at91sam9x35ek.dts                |  43 ++--
 arch/arm/boot/dts/at91sam9x5.dtsi                  |   2 +-
 arch/arm/boot/dts/at91sam9x5_lcd.dtsi              | 194 +++++++--------
 arch/arm/boot/dts/at91sam9x5dm.dtsi                |  86 ++++---
 arch/arm/boot/dts/at91sam9x5ek.dtsi                | 265 ++++++++++-------=
----
 20 files changed, 785 insertions(+), 832 deletions(-)

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
