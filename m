Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34BA13829F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 18:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x3SP8OPQM1xFpvcrdlOB50XygEq6oZj+tD4Eh94r6eg=; b=WhGPqFF9VYhmwe
	fQxAmm2rsE9iKp76y6xSLnc6alPD6cq9nv9xvZot+YVLLTR5+0x+lzEi8v4PSvo26NH98RnNApQua
	FG9+7Vjm2+3OhRgmvPbpzATvhyUB4yC/5aZsR7NDxdpRgcG10drRgLWdXW7v2ZvVmDIpPALHF95Jk
	iHOnK/Kmn9cjXuI6O7vVDsG+7JwLND4Wd8BGCMCkGBXQggWVcaTdPTXVdwRFp7R0f+lvjJQpebB7w
	8oEReBE2Zk0iItyDqzMrYP2/39Ce50gkR8Ej89+zqpAedUgK9F7OEIq1wJ15kYFkjptwUp9Oy4kvm
	S0CY5XXdHwLJnnZFEMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqKXY-0003KG-A6; Sat, 11 Jan 2020 17:27:12 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqKXO-0003Ib-Hz
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 17:27:04 +0000
X-Originating-IP: 81.185.160.252
Received: from localhost (252.160.185.81.rev.sfr.net [81.185.160.252])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2E22640006;
 Sat, 11 Jan 2020 17:27:00 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt for v5.6 (#1)
Date: Sat, 11 Jan 2020 18:26:58 +0100
Message-ID: <874kx13nvh.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_092702_733857_C393E54B 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Here is the first pull request for dt for mvebu for v5.6.

Gregory

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.6-1

for you to fetch changes up to e4018a496b721e0401b8cf2d583bb0d897f9ce5d:

  ARM: dts: armada-388-clearfog: add eeprom (2020-01-08 10:56:54 +0100)

----------------------------------------------------------------
mvebu dt for 5.6 (part 1)

 - Add support for SolidRun Clearfog GTR (Armada 385 based board)
 - Move i2c0 to the SoliRrun Microsom dtsi (Armada 38x based)
 - Add EEPROM node on SoliRrun Microsom (rev 2.1)
 - Add EEPROM node on SoliRrun ClearFog Pro

----------------------------------------------------------------
Baruch Siach (4):
      ARM: dts: mvebu: add support for SolidRun Clearfog GTR
      ARM: armada-38x-solidrun-microsom: move i2c0 to SOM DT
      ARM: dts: armada-38x-solidrun-microsom: add eeprom
      ARM: dts: armada-388-clearfog: add eeprom

 arch/arm/boot/dts/Makefile                         |   2 +
 arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts   | 115 ++++++
 arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts   |  79 ++++
 arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi     | 450 +++++++++++++++++++++
 arch/arm/boot/dts/armada-388-clearfog.dtsi         |  11 +-
 arch/arm/boot/dts/armada-388-helios4.dts           |   5 -
 .../arm/boot/dts/armada-38x-solidrun-microsom.dtsi |  13 +
 7 files changed, 665 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr-l8.dts
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr-s4.dts
 create mode 100644 arch/arm/boot/dts/armada-385-clearfog-gtr.dtsi

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
