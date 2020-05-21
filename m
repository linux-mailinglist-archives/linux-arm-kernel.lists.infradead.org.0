Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F41DC47E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 03:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaEjbgOGsf+GWOIC9M49fO3NtI9btkBhaEyhy7Qb0aw=; b=G974m3xOjb7enf
	oBWX6jDMkdmGPQGqHdHqqFJjAJoXnMdSA7/THxWYxZtRKY0iZQ9DS0uqbVHMuaY/M1E7E67PPbGMw
	88yjOYKkVA4T9jsJ6GukLXuK6uXrfvdPET7Zgu0Ed+Limu1g5a4BdrnXEtHMcOzVkBqa1WynDox32
	7ZKIcgPHqNJdf7iqS86tQpkQCxhzF0lyKlI8XrmkuxwkIOb9hrQhhlcTNNgAREFCwh6gjza4kLyfs
	rkuLmMzFLDmXgAZXDd/S5NlFFMCv125irWRViL6JNzAmv9P/vmXACqGzn/Dixg1Kol2kt1EqwDj7H
	xS+9t2+TSD/RU0oTVJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZqf-0002t9-2K; Thu, 21 May 2020 01:18:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZqS-0002rJ-On; Thu, 21 May 2020 01:18:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbZqQ-0005g6-GP; Thu, 21 May 2020 03:17:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/3] Rockchip dt32 changes for 5.8
Date: Thu, 21 May 2020 03:17:58 +0200
Message-ID: <3735080.6Cexqc3t0Y@phil>
In-Reply-To: <1970481.V9vR1fIhX2@phil>
References: <1970481.V9vR1fIhX2@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_181800_800633_9FB5071F 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-dts32-1

for you to fetch changes up to 54b1a4e070330c3fba5becfb0b619bf360bc2657:

  ARM: dts: rockchip: add rga node for rk322x (2020-05-19 00:50:21 +0200)

----------------------------------------------------------------
RGA node for rk322x, wifi node for rk3229-xms6 and some cleanups.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: rename and label gpio-led subnodes
      ARM: dts: rockchip: remove identical #include from rk3288.dtsi

Justin Swartz (3):
      ARM: dts: enable WLAN for Mecer Xtreme Mini S6
      ARM: dts: remove disable-wp from rk3229-xms6 emmc
      ARM: dts: rockchip: add rga node for rk322x

 arch/arm/boot/dts/rk3036-kylin.dts          |  2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts         |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts      |  6 +++---
 arch/arm/boot/dts/rk3229-xms6.dts           | 19 +++++++++++++++++--
 arch/arm/boot/dts/rk322x.dtsi               | 10 ++++++++++
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 12 ++++++------
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 12 ++++++------
 arch/arm/boot/dts/rk3288-miqi.dts           |  2 +-
 arch/arm/boot/dts/rk3288-phycore-som.dtsi   |  6 +++---
 arch/arm/boot/dts/rk3288-rock2-square.dts   |  4 ++--
 arch/arm/boot/dts/rk3288-tinker.dtsi        |  6 +++---
 arch/arm/boot/dts/rk3288.dtsi               |  1 -
 12 files changed, 53 insertions(+), 29 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
