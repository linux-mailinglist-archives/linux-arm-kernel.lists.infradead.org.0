Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC81E1F02FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+omUWRFPRyLLukmYokGaVj5uB6BlXwxIdQpdFU7z7P0=; b=cBYWDnhCF4H9rG
	m+YhBBfZWkf/sEdv9V/elEuyQj/Pce4BuKXmoHrnpYGu4zWfUXOJi/8mREAmH7v8bI/83GrBuUwDJ
	1mVv4Y1r23lxNydLp2AcnPxWZ9hyKosRvXZETF5TRYYqM6DqJmxywcktQ564mRHhnSaNvFJWNfrkz
	tQntDWm7GEw/umfyQcUR0SQqAxp7Jv57PtTU2r+BuET5gEIObTAH4rXMNlc/sQePjusjkod9aW+qw
	tGUVdHec++580sWV0Ome8dwOvHyy9PMq/dHWVmH97gX92tnB5SWr/ylm5ofemXopGtU4O7sFxAIlv
	JW2cc57rntqfQWa6KJCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL4c-0006X7-Mf; Fri, 05 Jun 2020 22:44:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4N-0006VO-0L
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 49BB02A51AC
Received: by jupiter.universe (Postfix, from userid 1000)
 id 249E1480101; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 0/6] misc. gpio-charger patches
Date: Sat,  6 Jun 2020 00:43:57 +0200
Message-Id: <20200605224403.181015-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154411_174023_447DD20B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is v2 of a patchset for gpio-charger. The patches are
mostly unrelated to each other, but have some dependencies.

Merge plan is:

Assuming there are no huge blockers, the plan is to merge
patches 1-3 through power-supply subsystem for 5.9. The
ARM patches can go via ARM subsystem for 5.9 and the final
patch can simply be postponed for 5.10.

Changelog since PATCHv1:
 * Fixed the YAML binding as suggested by Rob
 * Implemented the suggestions from Emil
 * Split making "gpios" optional into separate patch, which
   simplifies reviewing and follows "one change per patch"
   style
 * Add two new patches converting platform data users to
   use GPIO descriptor tables
 * Add final patch removing gpio from platform data

-- Sebastian

Sebastian Reichel (6):
  dt-bindings: power: supply: gpio-charger: convert to yaml
  power: supply: gpio-charger: Make gpios optional
  power: supply: gpio-charger: add charge-current-limit feature
  ARM: pxa: Use GPIO descriptor for gpio-charger
  ARM: sa1100: Use GPIO descriptor for gpio-charger
  power: supply: gpio-charger: drop legacy GPIO support

 .../bindings/power/supply/gpio-charger.txt    |  31 ---
 .../bindings/power/supply/gpio-charger.yaml   |  94 ++++++++
 arch/arm/mach-pxa/tosa.c                      |  24 +--
 arch/arm/mach-sa1100/collie.c                 |  11 +-
 drivers/power/supply/gpio-charger.c           | 200 ++++++++++++++----
 include/linux/power/gpio-charger.h            |   5 -
 6 files changed, 275 insertions(+), 90 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.txt
 create mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.yaml

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
