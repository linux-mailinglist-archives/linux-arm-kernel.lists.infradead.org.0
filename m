Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58528169582
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:17:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3n2Z7zzdj8qwIRpZGA9b3wp9911Z+VRBeQ7SMXBQ7jE=; b=ajCvdWH1mJ5L4t
	dD8mhoqgW0TFfy8nDqvP25qYpxa3ikcvBH2v+LsCcg8P1O8zqPxytSod2gdA+jCi9AWFdoOHywu7Y
	LA37iAMoUXLA/1g5goRZ65mOC01FyLj7vQcP8+pKGCZ0a+Uo2TOoOaoGXMk1nUWleJt1o/1xyHX8E
	xBhvhFvEd8ddX5XuO4dyyDy4rTElOwodWUZPTd5dtF2403GJKGvlgt7nxQA1aUNe8gtv9rpLnd177
	/yDVYsgp630T0kKU+v8NwbnnWsUPt+zXpT93xbqi6emv288mc70UfhvnD/C6PItwzeA4+YBWztLny
	Ee0Nz09uVRxwy5ubSfsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hlQ-0007ja-Gn; Sun, 23 Feb 2020 03:17:04 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hkh-0007GF-3O
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582427776; bh=x4ETbhklf9C5iN2AAibtBUXNgpDN11ycD8F1mG47eMs=;
 h=From:To:Cc:Subject:Date:From;
 b=l8Tf0h9KZfoXwcar7dNECQUNppL6t+Q2ZCVJyIc+Sm5Y/xzkaYlxhELRRlcAL8U6s
 E9Ye2E+H/QruMazofyY3hlsrJAsKOkngPI5oKipvVb9MqDeYLQPHk6z2d4UFj9DReT
 hek33f/l/90bKn+HzwcvfPnGB1cq0oJ9fAM+HI8c=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/3] Add support for PocketBook Touch Lux 3 e-book reader
Date: Sun, 23 Feb 2020 04:16:11 +0100
Message-Id: <20200223031614.515563-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_191619_486531_337538F5 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, Sunil Mohan Adapa <sunil@medhas.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds a fairly complete support for this e-book reader.

Missing parts are eink display driver and the touch panel driver.
Support for both is available out-of-tree for now at:
  https://megous.com/git/linux/log/?h=pb-5.6

The rest of the board is supported by the mainline drivers.

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (3):
  dt-bindings: vendor-prefixes: Add prefix for PocketBook International
    SA
  dt-bindings: arm: sunxi: Add PocketBook Touch Lux 3
  ARM: dts: sun5i: Add PocketBook Touch Lux 3 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/sun5i-a13-pocketbook-touch-lux-3.dts  | 257 ++++++++++++++++++
 4 files changed, 265 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun5i-a13-pocketbook-touch-lux-3.dts

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
