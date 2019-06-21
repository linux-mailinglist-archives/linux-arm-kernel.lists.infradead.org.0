Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B654E6C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z+LQ7wLxN0TK3EuWzXUtDquS2RQG21IYQDl81fggXAU=; b=IIKYl777DDFgOh
	tnXI0KqX5wbLEQ9hIUjAIId4QVK2l129yvnekTJpwAoZpMqd6ExhFZT2gDz5RfBbSZv0uEKQlhCaN
	OG4sgNPIGS7ZDz03AxrNztBEYj79Z4/FiH/jQI6bPjIfE0crEtpc+v8R3BmKmqLFxpUyWRfRzHW7q
	LzGi4invAaxl+t+Fg6V+xRQAvfwABSRCtKi7LiY5nGwJTk1Oq/9N5WRSJ7LNaD9mJYoTKR28Ux+1K
	EThD45bq2VP8rRfJR7dE3PcEA3aIZpHUFDmSk4Aqx/hH87q8YebRbqo/NVzksVEWl2Tf+22nc1O7S
	Jkf+q3AS2aoTkj4xMVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHOc-0005yH-8P; Fri, 21 Jun 2019 11:07:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHOA-0005uA-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:07:27 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 963A220008;
 Fri, 21 Jun 2019 11:07:10 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.3 (#1)
Date: Fri, 21 Jun 2019 13:07:09 +0200
Message-ID: <87d0j7mc2q.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_040726_417683_CD90DF0B 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the first pull request for dt64 for mvebu for v5.3.

Gregory

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt64-5.3-1

for you to fetch changes up to 200f5c4081e03b068ceac8b5418fb5160274b547:

  arm64: dts: marvell: add missing #interrupt-cells property (2019-06-18 10:17:39 +0200)

----------------------------------------------------------------
mvebu dt64 for 5.3 (part 1)

For Armada 7K/8K:
 - enable AP806 thermal throttling with CPUfreq
 - add missing #interrupt-cells property allowing configuring
   interrupt for GPIO

On Armada 8040 based board:
- Fix PCI memory window on Mcbin board
- Set SFP power limit on clearfog GT board
- Disable AP I2C on Armada-8040-DB

On Armada 3720 based board espressobin correct the SPI node used for
NOR flash

On Armada 7040 DB board add USB current regulators

----------------------------------------------------------------
Baruch Siach (1):
      arm64: dts: marvell: clearfog-gt-8k: set SFP power limit

Heinrich Schuchardt (1):
      arm64: dts: marvell: mcbin: enlarge PCI memory window

Konstantin Porotchkin (1):
      arm64: dts: marvell: Disable AP I2C on Armada-8040-DB

Miquel Raynal (3):
      arm64: dts: marvell: Change core numbering in AP806 thermal-node
      arm64: dts: marvell: Enable AP806 thermal throttling with CPUfreq
      arm64: dts: marvell: armada-7040-db: Add USB current regulators

Russell King (1):
      arm64: dts: marvell: add missing #interrupt-cells property

Tomasz Maciej Nowak (1):
      arm64: dts: armada-3720-espressobin: correct spi node

 .../boot/dts/marvell/armada-3720-espressobin.dts   |  18 +---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts     |  28 +++++
 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     |   1 +
 arch/arm64/boot/dts/marvell/armada-8040-db.dts     |   7 +-
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi |   2 +
 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi |   2 +
 arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi |   5 +
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi      | 118 ++++++++++++++++++---
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi      |   2 +
 9 files changed, 147 insertions(+), 36 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
