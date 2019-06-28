Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2962C59E36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P8qcCjpwtXv1ET8gAScNiL4k1icXOPJM5+FT/ueSQ5A=; b=ZEQh2TOglzeNo3
	lcnqz2dNQ/E+ijAT86bwnutVwlFIK6xI2c7MPB3Twmh9QUS3lFt1jgHBZ5WGRLipGlLb/uxILxbCA
	QGpVdPzALCyQgt409y6cWWAYSx+4xsNqcipBoxgdHqDqlkABzg5uynB7baXjw03A/GlKq5GYuvBkF
	LuMqyBiQ+mzrkSz+gVR8zr+wXLSKSi/jDu0/0xrqrMejsrnUvatYywW2/1ofWAxMr7YE4GJ9gGJLG
	9kOF+vHFn3GPf7I46gdtvg8Emv/IAvCyIqVfzio+1jOvSouuz921Zp54w8ERjnGCuQlFrqP+FtahI
	gMitcrq5emyXOeZIH/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgsCd-0001im-Fq; Fri, 28 Jun 2019 14:50:15 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgsCQ-0001IN-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:50:03 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 61688100006;
 Fri, 28 Jun 2019 14:49:46 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: fixes for v5.2 (#2)
Date: Fri, 28 Jun 2019 16:49:45 +0200
Message-ID: <87k1d5hiie.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_075002_441069_EAE661B0 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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

Here is the second pull request for fixes for mvebu for v5.2.

Gregory

The following changes since commit cc538ca4308372e81b824be08561c466b1d73b72:

  ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog (2019-06-12 10:36:36 +0200)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-fixes-5.2-2

for you to fetch changes up to 80031361747aec92163464f2ee08870fec33bcb0:

  ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart serial node (2019-06-27 17:34:38 +0200)

----------------------------------------------------------------
mvebu fixes for 5.2 (part 2)

Use the armada-38x-uart compatible strings for Armada XP 98dx3236 SoCs
in order to not loose character anymore.

----------------------------------------------------------------
Joshua Scott (1):
      ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart serial node

 arch/arm/boot/dts/armada-xp-98dx3236.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
