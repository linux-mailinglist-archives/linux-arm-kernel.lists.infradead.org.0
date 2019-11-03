Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE87ED50D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 22:14:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WwoADqd9tA006LYt+0rnEAjg2Fs79E+394rfT/iBGRA=; b=XWWPOaZ2LRFpCG
	6GqtMQFNjekqy5NMRV7lJlgfDN/7AZ4ZcGwRQ/k/vK2ei5S5HPRVbNZ6VXyRbDBbndHVrLXSUmeYh
	mQF+QlbqhIIx7m9wZkSndFPHTQUYcxhVSx0UsZg1jN79puxG5fM+v4gChH45CMEdORNsLB2vFBwlx
	4JiSKGRaCZqQ8/shCPgQ+3ukbZo88wM65IMwBDhZ9bcB0WRFkTxyqmpYi4vVbwNbktaLDrKTtrwVh
	6sUqojsxTKK9oajChYm+aRtvq4jvMUZUOTbcSmbPfpw7oZNx1Lw1b6kZsQKSQbU4AX1o4rtTN3pNg
	bVUo/EKQ9gvPvDvJCKwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRNCI-0003yz-IQ; Sun, 03 Nov 2019 21:14:06 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRNCA-0003yC-Hu
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 21:14:00 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C82DBC0006;
 Sun,  3 Nov 2019 21:13:42 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: dt for v5.5 (#1)
Date: Sun, 03 Nov 2019 22:13:42 +0100
Message-ID: <8736f44q9l.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_131358_727033_D61EDB28 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

Here is the first pull request for dt for mvebu for v5.5.

Gregory

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.5-1

for you to fetch changes up to 90b9dc96940cb8a23f2aac307a7cb3e036d79c47:

  ARM: dts: armada-xp: add label to sdram-controller node (2019-10-08 11:49:16 +0200)

----------------------------------------------------------------
mvebu dt for 5.5 (part 1)

 - Enable L2 cache parity and ECC on a Armada XP SoC family and allow
   to use in on the Armada 38x SoCs too.
 - Use correct name for the rs5c372a on synology (Kirkwood based)
 - Rename "sa-sram" node to "sram" on dove

----------------------------------------------------------------
Chris Packham (3):
      ARM: dts: armada-xp: enable L2 cache parity and ecc on db-xc3-24g4xg
      ARM: dts: mvebu: add sdram controller node to Armada-38x
      ARM: dts: armada-xp: add label to sdram-controller node

Krzysztof Kozlowski (1):
      ARM: dts: dove: Rename "sa-sram" node to "sram"

Walter Schweizer (1):
      ARM: dts: kirkwood: synology: Fix rs5c372 RTC entry

 arch/arm/boot/dts/armada-38x.dtsi             | 5 +++++
 arch/arm/boot/dts/armada-xp-98dx3236.dtsi     | 2 +-
 arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts | 5 +++++
 arch/arm/boot/dts/armada-xp.dtsi              | 2 +-
 arch/arm/boot/dts/dove.dtsi                   | 2 +-
 arch/arm/boot/dts/kirkwood-synology.dtsi      | 2 +-
 6 files changed, 14 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
