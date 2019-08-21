Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2DD97F46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SBPtzHBJsGYalMcTP2+Fv43f1qXQgTAv9/E/l1+n/lE=; b=kV0JruGW+rAXzO
	maNJ+gGsf/3S6KszfESR2jJVZRnOL1I/0TByqFYrL3kvi7l8BX/qr00iIu2bM0r1XBZT+9x7t/vY2
	pkSfZnZf6spWWmrxxbT932E4Ns9/WtPbOGpI75LX6YvBGLvZw1ds2c1e+Ve5X3U7gRP7tJ3AHLp7g
	4dMT8RKPiVKvwEkE29z2NZr/TpVsArmZ+kBpNh2IU9OHF59tj3T5ui5fwUOkLFB4cJV/fPzSKjr7t
	SGAvGTpPnmt7ZVoEqVw8qpBowS4KJgn1dyP3pGE4M6G92W9FiCnZL8hO4N01fGujIxRZoOIO/Wfp1
	dhVcup4HPPv3Tv2dqDVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SoI-0007Bg-OP; Wed, 21 Aug 2019 15:46:06 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0So5-00075w-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:45:58 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 29FB042ED0;
 Wed, 21 Aug 2019 15:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:date:date:from:from:subject:subject
 :message-id:received:received:received; s=mta-01; t=1566402346;
 x=1568216747; bh=l6hXSToi6B7BPKUDMLc5WGRAC3dF5cH6u+mmAmA9gVY=; b=
 tySjT9PuYDuZltTGkMIgAmsuKDAn5Lesh6Yz4K/aaOcdtzZDmZWhXzOGiLX/bojz
 HRcM4z5hfMNcAC7t/1d6pQVQ1rn1mlOxb7cFRs0esW7n4vaWp6BZXz2U5USIHDoe
 7AGCufUvZuDaurjkQ1jaweSwcy14N5E8n4rhBGeIocM=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKKO0pJygjwO; Wed, 21 Aug 2019 18:45:46 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id E2FAB4120B;
 Wed, 21 Aug 2019 18:45:43 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Wed, 21 Aug 2019 18:45:43 +0300
Message-ID: <2d690bc4d00a3b911d7c50a909aa7f27870ea092.camel@yadro.com>
Subject: 
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>
Date: Wed, 21 Aug 2019 18:45:36 +0300
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084556_782199_9B9DC9A8 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Alexander
 Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From 1687adb615ceb7a4013712604f177dc906059667 Mon Sep 17 00:00:00 2001
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Date: Wed, 21 Aug 2019 18:21:05 +
Subject: [PATCH 0/3] add dual-boot support

ASPEED SoCs support dual-boot feature for SPI Flash.
When strapped appropriately, the SoC starts wdt2 (/dev/watchdog1)
and if within a minute it is not disabled, it goes off and reboots
the SoC from an alternate SPI Flash chip by changing CS0 controls
to actually drive CS1 line.

When booted from alternate chip, in order to access the main chip
at CS0, the user must reset the appropriate bit in the watchdog
hardware. There is no interface that would allow to do that from
an embedded firmware startup script.

This commit implements support for that feature:

* Enable 'alt-boot' option for wdt2

* Enable secondary SPI flash chip

* Make it possible to get access to the primary SPI flash chip at CS0
  after booting from the alternate chip at CS1. A sysfs interface is added
  to provide an easy way for embedded firmware startup scripts to clear
  the chip select bit to gain access to the primary flash chip in order
  to allow for recovery of its contents.

Ivan Mikhaylov (3):
  vesnin: add wdt2 section with alt-boot option
  vesnin: add secondary SPI flash chip
  watchdog/aspeed: add support for dual boot

 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 12 +++++++++
 drivers/watchdog/aspeed_wdt.c               | 30 +++++++++++++++++++++
 2 files changed, 42 insertions(+)

-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
