Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB9139583
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bogWNRO3l58AHZLg47NlQCwQIxNo9sRLEVo4RDtLSAE=; b=EYepQuiL9bvsBu
	AHZoJbMOFnXU80g/d9tTdbRIkmZaaNvDko9rwlemHMAA8G26rJVMTg9t0xYG+ySNiGQqiedzrmLob
	zPQnoyHLs5akPTveNeKz/9cPtgVgBRmmwMVRvoD4vv9UuDvGv57cpfMAjOfeT11y57Q6k4Jg9khu7
	g1EhkKjV8d1i/V42FX2siy1HywWvmTtNVb0Bb0aU454hvtQDOgUPw5umbyMr4hdntVvRkkAS2hvfj
	fWxgdvrc0oktpVsW0fcjb0xLNQbCsMsi6P3f0WPwZpyTYbM02VCQ7vxZcfv6C1YJmvpldVw237Xa5
	YN6xrCJ9qqLNjyHqArZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2JM-0003C1-Hb; Mon, 13 Jan 2020 16:11:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2JF-0003BF-Go
 for linux-arm-kernel@bombadil.infradead.org; Mon, 13 Jan 2020 16:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PHLyHoNaNDumpWIs22q7qevR62dDejKBbleShv7ggjM=; b=1bw0IENxQauwmg+7w5TQEZX8wq
 S002QYAhchlzo4LGbmwbatdmPrZj9Dzj+DOalOhwt4uz6vPNebK3rfYDI6T8G0TO8APj8hJpv5slY
 n+gHIKK194daQMAab/1OFRyPVfm+eQHVb87+Qe6akdI1cuDYo+6bdQI4RnIEXkIHZ2bD3TY+raCBy
 ZNA3HGgC8F0EgkE82iQ0pJnmXlPcXPnpTx3im68UKiatBWoAy++QsM8GdAB/UC1jIF5WmMLKsgk8p
 XYzJWnHO5uixm1Sf70h45VHJZACQiBEZoF3baze7Jah6h9sZZTIIYCzw5+FEWHB8J7YhRCB/mSx+9
 jnUZHC1w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2JB-0000Se-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:11:19 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 70DB9200019;
 Mon, 13 Jan 2020 16:10:33 +0000 (UTC)
Date: Mon, 13 Jan 2020 17:10:33 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: defconfig for 5.6
Message-ID: <20200113161033.GA1358651@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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

A simple update to at91_dt_defconfig adding sam9x60 support.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.6-defconfig

for you to fetch changes up to f013dbe4e7205b44ce057ef6aab8853d1c63513d:

  ARM: configs: at91: enable config flags for sam9x60 SoC (2020-01-10 23:40:03 +0100)

----------------------------------------------------------------
AT91 defconfig for 5.6

 - Add sam9x60 to at91_dt_defconfig

----------------------------------------------------------------
Claudiu Beznea (2):
      ARM: configs: at91: use savedefconfig
      ARM: configs: at91: enable config flags for sam9x60 SoC

 arch/arm/configs/at91_dt_defconfig | 55 ++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 29 deletions(-)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
