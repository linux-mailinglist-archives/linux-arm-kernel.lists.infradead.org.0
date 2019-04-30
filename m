Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B39F00B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 07:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4C6NnxxSo3pWx0mWohUZTolEp2dmWdxsRXf8/+Y0/B4=; b=mHc2Kx5nvXn7r7
	qV6trV4Jt4vvNxWwmAHbIIDO2/Td4rBErxOkVu7FjT004fjIDUSqHdMFFCdaA9lGCin5c7c+c3i2w
	9GRl+wGkhoNeCLNqWLvsD8+ZO+bwtd9R4uqVr4ibvNNgIS+821EwLLeEEioUUdM8iXwKq4j23S2NO
	cOGU6QuK3o5Sompje0kHTrIMcBeG6gBxCSIqcQUDTBcUIsQS6yqiOrZfoD/XGbu9k4irNJ/J9fuzB
	9MJjGmjhxrYyqoFgXsmsoNjFKWpSIx6I83gCP5LLV2Sq2g/3ncCROjPCrC2CGZok9SArWexQIcqrj
	kBDUEz43aMdy2o9w1+LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLVg-00089j-G1; Tue, 30 Apr 2019 05:40:56 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLVa-00089P-8G
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 05:40:51 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,412,1549954800"; d="scan'208";a="31144311"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 29 Apr 2019 22:40:49 -0700
Received: from M43218.corp.atmel.com (10.10.76.4) by
 chn-sv-exch02.mchp-main.com (10.10.76.38) with Microsoft SMTP Server id
 14.3.352.0; Mon, 29 Apr 2019 22:40:48 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Kevin Hilman
 <khilman@kernel.org>, Olof Johansson <olof@lixom.net>
Subject: [RESEND GIT PULL] ARM: at91: defconfig for 5.2
Date: Tue, 30 Apr 2019 07:40:06 +0200
Message-ID: <20190430054006.32688-1-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423062611.27777-1-ludovic.desroches@microchip.com>
References: <20190423062611.27777-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_224050_424024_4265AA4F 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, Olof,

Resend using tag.

Regards

Ludovic

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git tags/at91-5.2-defconfig

for you to fetch changes up to c60fed1dfd4472bc8ac31b20c833c0ef3e049511:

  ARM: at91: sama5: make ov2640 as a module (2019-04-18 10:55:40 +0200)

----------------------------------------------------------------
AT91 defconfig for 5.2

 - ov2640 driver as module
 - selecting HAVE_FB_ATMEL for SAMA5 SoCs is useless

----------------------------------------------------------------
Nicolas Ferre (1):
      ARM: at91: remove HAVE_FB_ATMEL for sama5 SoC as they use DRM

Tudor Ambarus (1):
      ARM: at91: sama5: make ov2640 as a module

 arch/arm/configs/sama5_defconfig | 2 +-
 arch/arm/mach-at91/Kconfig       | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
