Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642891CF458
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IM61OXprQ9sakOM9YZeXManJ6mpev88sX8nn/N0eQoo=; b=CN1
	xWkbsIPxa2JpejWbBjGBBTdfxgLZLCi8jVT9/CLBT1khWLa/T74D/Fc7XrNSOpJ3I+S1a+w/AkPJ2
	bAxKpvseUTV4aObqub3Z10sdqymHP0o/b2yzLQxhNVRgwSsqUYBXQC5ZeGDU7Twd2e4Yj6RZuwYCZ
	L4L0p2Tzcpp5DVE4wEDeIhEV0N3XvWti522pDbc5bK/YddDrF7UJDpVzQbFlEZ6r4bKDES7AIBx90
	ywGBO6CFNcd1NlT90pyL+omDrPIhuiDuKRUhyotduwkWU5gXpv5MZjonrUAHPNpSbRSgGM3KoknXk
	rYDgiO6nh1LmmUc1XqTs4FBH3DnHkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU2Z-0000VH-Gl; Tue, 12 May 2020 12:29:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU2Q-0000UY-2l
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:29:35 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCB3F20675;
 Tue, 12 May 2020 12:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589286572;
 bh=cEwExRALqT8Nl7XOONURqnTlaMAeCA3sZw+3+KcEvPs=;
 h=From:List-Id:To:Cc:Subject:Date:From;
 b=ZpU0EWVH9PuhOlMaah9Quu3E2baHsk/+f7/lzj86ygg/1TtToC/c1cHYfzR+YdAar
 OGW52KlnWRCCOEwpY7vBctlDkrfjpvlmUvzwLlifGbaeq1rV+0kqbZgG4p75qKqC+u
 v8k4prAxi2jtaz+hizsjxCZzQzr98E756sf2CPjI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/3] ARM: defconfig: Samsung for v5.8
Date: Tue, 12 May 2020 14:29:20 +0200
Message-Id: <20200512122922.5700-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_052934_142897_D01A7DF0 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.8

for you to fetch changes up to a8360727870bce0b4adb6f08a94bb6bc4cdf6c39:

  ARM: exynos_defconfig: Compile MAC80211/CFG80211 as modules (2020-04-13 12:22:04 +0200)

----------------------------------------------------------------
Samsung defconfig changes for v5.8

1. Enable drivers for Exynos3250 Rinato Bluetooth,
2. Build WiFi mac80211 framework as module so it will get loaded the
   same time as regulatory data.

----------------------------------------------------------------
Marek Szyprowski (2):
      ARM: exynos_defconfig: Enable serial bus and BCM HCIUART drivers
      ARM: exynos_defconfig: Compile MAC80211/CFG80211 as modules

 arch/arm/configs/exynos_defconfig | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
