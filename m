Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4604F077
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 23:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=53TO2WQ++d+4AKTrereurWwFDiT7b4h4xC//ykztubg=; b=WNl2/BStpP5rLr
	B4WVOD8sV5JDAe32A9fScJg5dlO9cLe4/fZaXUqVnCRrhtWM7BSxbvxGr9C2FaatnX+etKbb/4sZr
	z2AJXEWtP4W7KqIGZKCe90jNGnIImi8fksWLriq9fLHhpsmlhvyUEUTXnvT+sK4+McyjPKqErBE5R
	Dw6U4QQunJxOV01YMAghbzklx4Sy5767iJMUfGzvyFSleQmmnRzEZ+ySqFJY8jQlu9UUqOvjOlI9s
	EchgXXWBwwBGci/sp7SdXcMcaOQmmDoxGZ0bBlOT8N73t52J/5AIGzTYvoa1NQSwJiX6m1XZCOQOa
	JcN28s8pRaykyhQCv0CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heR01-0002WK-1C; Fri, 21 Jun 2019 21:23:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQzr-0002Vu-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 21:23:00 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 129BFFF806;
 Fri, 21 Jun 2019 21:22:46 +0000 (UTC)
Date: Fri, 21 Jun 2019 23:22:46 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.3
Message-ID: <20190621212246.GA30172@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_142259_241323_F8FDE62E 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Still very few updates. It is mostly about removing DTC warnings by
switching the sckc to the proper bindings and converting the atmel
bindings to json-schema.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.3-dt

for you to fetch changes up to 271839b0a819cbb76ef3ce5c7237d6cb624b3eba:

  dt-bindings: arm: Convert Atmel board/soc bindings to json-schema (2019-06-20 11:13:52 +0200)

----------------------------------------------------------------
AT91 DT for 5.3

 - switch to new sckc bindings
 - convert soc bindings to json-schema

----------------------------------------------------------------
Alexandre Belloni (5):
      ARM: dts: at91sam9261ek: remove unused chosen nodes
      ARM: dts: at91: at91sam9x5: switch to new sckc bindings
      ARM: dts: at91: at91sam9g45: switch to new sckc bindings
      ARM: dts: at91: at91sam9rl: switch to new sckc bindings
      ARM: dts: at91: sama5d3: switch to new sckc bindings

Rob Herring (1):
      dt-bindings: arm: Convert Atmel board/soc bindings to json-schema

 .../devicetree/bindings/arm/atmel-at91.txt         |  73 -----------
 .../devicetree/bindings/arm/atmel-at91.yaml        | 134 +++++++++++++++++++++
 arch/arm/boot/dts/at91-wb50n.dtsi                  |   2 +-
 arch/arm/boot/dts/at91sam9261ek.dts                |   8 --
 arch/arm/boot/dts/at91sam9g45.dtsi                 |  25 +---
 arch/arm/boot/dts/at91sam9rl.dtsi                  |  25 +---
 arch/arm/boot/dts/at91sam9x5.dtsi                  |  23 +---
 arch/arm/boot/dts/sama5d3.dtsi                     |  27 +----
 8 files changed, 148 insertions(+), 169 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.txt
 create mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.yaml

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
