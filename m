Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707421DB952
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mekTwjRxTDg4ArRDlIjZZcRaGnlkNo09gEHrRJgdPfk=; b=nlm7ShYXN5T/qt
	7vPYLzmiGi4bY4/Jh9ktM9RZRZ5Sme3iyHknvSphj0XwaZVVTWsgXxuNHI0CL4aR1PH5cEQ1itTCs
	pRe8fKZYVUoPLSDvp+PZqS1O0lrMXn4YQaein1j2bOAClLrTSVm5a3bluNL/yCw5vevTTsNwlJY24
	by2cDmHHKn0LpY4NP0jPRIRrrwVimUC4qpj7xJPnFmHkndWjh67140FWE0fJFymBR6j6AMwQOeSPs
	QBSrmKnPq5YfMNWXUuL3O59YS/IN/GaMrPgOwcR4AmkBIuhLXLfEAaqX43pgZYAtOEfWEP2+AHXBD
	SH5uy5P+pD7iTuhFvnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRcP-0003cb-KF; Wed, 20 May 2020 16:30:57 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRcD-0003bz-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 16:30:47 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 327CDC0005;
 Wed, 20 May 2020 16:30:40 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt for v5.8 (#1)
Date: Wed, 20 May 2020 18:30:39 +0200
Message-ID: <87blmiefgw.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_093046_153443_BF3A4627 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

Here is the first pull request for dt for mvebu for v5.8.

Gregory

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.8-1

for you to fetch changes up to 1383d42cffa68c03d886ae846b3e3f6e3bbd784c:

  ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel (2020-05-17 18:51:46 +0200)

----------------------------------------------------------------
mvebu dt for 5.8 (part 1)

Add LCP panel support on ReadyNAS NV+v2
Add new board: Check Point L-50, kirkwood based SoC router
Remove unused property 'timeout-ms' in i2c nodes

----------------------------------------------------------------
Baruch Siach (1):
      ARM: dts: marvell: drop i2c timeout-ms property

Brian J. Tarricone (1):
      ARM: dts: kirkwood: ReadyNAS NV+v2: Add LCD panel

Pawel Dembicki (1):
      ARM: dts: kirkwood: Add Check Point L-50 board

 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/armada-370-xp.dtsi               |   2 -
 arch/arm/boot/dts/armada-375.dtsi                  |   2 -
 arch/arm/boot/dts/armada-38x.dtsi                  |   2 -
 arch/arm/boot/dts/armada-39x.dtsi                  |   4 -
 arch/arm/boot/dts/dove.dtsi                        |   1 -
 arch/arm/boot/dts/kirkwood-l-50.dts                | 438 +++++++++++++++++++++
 .../boot/dts/kirkwood-netgear_readynas_nv+_v2.dts  |  14 +
 8 files changed, 453 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/boot/dts/kirkwood-l-50.dts

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
