Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD12185BB1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WuMwEwG9OFukpLWK+dTB600AVBO+znzjpQzim7yYO/Y=; b=pj3SrtEHLow4r9
	HIdUNoB0KeCm8Rfma51ouh5UQT3oEGB1pDXeVbBL+bWPeyd+j7oylY2HHi9bK1wQTpzVhRcOuQ4lW
	H27LtUSbJCKU+3P8MyZW5I1sA0GbwFp/zEAfJH1pUx9RbcsTJr+s4NIDHHfIQoQrXJ2vllJbOBo+B
	pmYueaH34+6k08bYS2wvkIR+jn54AsHo49P8WHVpy+wHy25mj6fdAWp3ihv0KJmRzoPcAgDplvZEf
	Ky3U2EC5tHYoWE/MBAPeMvdN6HPhwnt+oxLLovwQuX36VD+bDAfUFRBXx193WPUO9g5DS9Bi6A6R/
	EoIxMno0oUFJvtjp8xYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPwi-0004ZB-CC; Sun, 15 Mar 2020 09:52:36 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPwb-0004Y6-7g
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:52:31 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6573720008;
 Sun, 15 Mar 2020 09:52:15 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.7 (#1)
Date: Sun, 15 Mar 2020 10:52:13 +0100
Message-ID: <87h7yqx7w2.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_025229_406925_91B1DFC5 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the first pull request for dt64 for mvebu for v5.7.

Gregory

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt64-5.7-1

for you to fetch changes up to d136d2588b21b1a07515632ed61120c9f262909b:

  arm64: dts: marvell: Fix cpu compatible for AP807-quad (2020-03-15 10:37:00 +0100)

----------------------------------------------------------------
mvebu dt64 for 5.7 (part 1)

Improve network support on two Armada 8040 based board:
Clearfog GT 8 and Macchiatobin.

Add ethernet alias on Espressobin for U-Boot support.

Fix various dt compilation issue or warning.

----------------------------------------------------------------
Amit Kucheria (1):
      arm64: dts: marvell: Fix cpu compatible for AP807-quad

Russell King (2):
      arm64: dts: clearfog-gt-8k: set gigabit PHY reset deassert delay
      arm64: dts: mcbin: support 2W SFP modules

Tomasz Maciej Nowak (3):
      arm64: dts: marvell: espressobin: add ethernet alias
      arm64: dts: marvell: espressobin: indicate dts version
      arm64: dts: marvell: build ESPRESSObin variants

Vadym Kochan (1):
      arm64: dts: marvell: fix non-existed cpu referrence in armada-ap806-dual.dtsi

 arch/arm64/boot/dts/marvell/Makefile                            | 3 +++
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts    | 2 ++
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts | 2 ++
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts      | 2 ++
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi        | 8 ++++++--
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts      | 1 +
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi              | 3 +++
 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi              | 5 +++++
 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi              | 8 ++++----
 9 files changed, 28 insertions(+), 6 deletions(-)

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
