Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3149D1362B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6IYVKdFkBjaV7ndgDUcVKjSHbsobGTStxPp2lGKmCLg=; b=gzJUQmvEedmpem
	4eJUCfZDQQp4hea8hJzYke4fjwAgwEmqqObKmSJIHm0vKWMZfOOffybGHTk7EKKTobNKmOrQSxJO1
	u8UhhJ9KxxqrL+jlHCzdNjw1rqgOYl0cNJy2vFokXsJMevoBFunL1hWaN+uE1ZKdW5P6zcfv3bc15
	JvdygS91iWejXCXZCKWnNgjNqjGiPLJUSBB0ZPemYUdISbKW6q9ZjHCcdyv10S6fAwSr8ngxm9maI
	9ANQ4ozgCsnDmoIR20Kxsw/elGQ0yv28mG/HzspEY/5rjytPezKZa+Y6nXSLgR1Mbq5R7+enKUoSi
	DtDzYwEO5eBL65EIgzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfX1-0004x7-QO; Thu, 09 Jan 2020 21:39:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfWq-0004vq-43; Thu, 09 Jan 2020 21:39:45 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ipfWo-0000hT-RV; Thu, 09 Jan 2020 22:39:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.6
Date: Thu, 09 Jan 2020 22:39:42 +0100
Message-ID: <8215452.dU6eVM2tAM@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_133944_560297_83961A4D 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Hi Arnd, Kevin, Olof,

please find below and in the reply Rockchip devicetree changes for 5.6.
As always nothing earth shattering, but quite a bit of progress in some
areas.

Please pull

Thanks
Heiko

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.6-rockchip-dts32-1

for you to fetch changes up to a950c4c63cde7e5c9d849f6ced95f60ed163548d:

  ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger (2020-01-09 00:22:26 +0100)

----------------------------------------------------------------
Pin-name corrections for Veyron-Fievel, bluetooth for a number of veyron boards and
additional operating points for rk3288-tinker.

----------------------------------------------------------------
Abhishek Pandit-Subedi (1):
      ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron

Jack Chen (1):
      ARM: dts: rockchip: Add missing cpu operating points for rk3288-tinker

Matthias Kaehlcke (2):
      ARM: dts: rockchip: Use ABI name for write protect pin on veyron fievel/tiger
      ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger

 arch/arm/boot/dts/rk3288-tinker.dtsi               | 13 ++++-
 arch/arm/boot/dts/rk3288-veyron-brain.dts          |  9 ++++
 .../boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi    | 21 --------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts         | 14 +++--
 arch/arm/boot/dts/rk3288-veyron-jaq.dts            | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts          | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts         |  9 ++++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts         | 21 ++++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts          | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts         | 21 ++++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               | 59 +++-------------------
 12 files changed, 177 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
