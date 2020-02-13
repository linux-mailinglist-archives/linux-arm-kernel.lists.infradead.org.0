Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBB915CD0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L0jHkXcSOFavDKDXRMezwUI9xkqxFNMFbnOhoAmxjdU=; b=Ol40KV7Inommh6
	bPGKXHYHDK/Ddwhm7oBFerFOI0UpU+PrdIU6rEnPepwt1soXLvt7IJ2nfD6TQQwh7NuKlFgVMcer1
	Oxp90zrTE9UNy9b1FrsXIMo8g0XUTrCflvQx86+Gihlw3u3f0Nx+D1pHls/B9LisqQbBTsRVUzOI2
	DGiV5WuC/OLquOUO1sgaKvEvIOjPevpbxhlAt7myD84eI0GIEP/deYb2WTDclnRF/aRFR+1yAUGUt
	hRfGvWgHjJ6FZjQg21RmFsugIBaxguhtnv8S9jEB9vjS1Kn3BNk956wb7K4HtrfQEBXLhvKHZ/K72
	5Hozely44jMClBd2XqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Lp3-0001A6-MJ; Thu, 13 Feb 2020 21:14:57 +0000
Received: from mailoutvs42.siol.net ([185.57.226.233] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Lot-00017t-16
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:14:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 029C5524C0C;
 Thu, 13 Feb 2020 22:14:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id kdriWTPBAfgS; Thu, 13 Feb 2020 22:14:37 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 993CE524BFE;
 Thu, 13 Feb 2020 22:14:37 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id E013B522D11;
 Thu, 13 Feb 2020 22:14:34 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/2] rtc: sun6i: Make external oscillator optional
Date: Thu, 13 Feb 2020 22:14:25 +0100
Message-Id: <20200213211427.33004-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_131447_230882_CCF9BF3F 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.233 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is implementation of idea discussed here:
https://lore.kernel.org/linux-arm-kernel/20200117183901.lkieha3hu6nz2hoj@gilmour.lan/T/

Part of first patch commit message:

Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
(H6) don't have external 32kHz oscillator. Till H6, it didn't really
matter if external oscillator was enabled because HW detected error and
fall back to internal one. H6 has same functionality but it's the first
SoC which have "auto switch bypass" bit documented and always enabled in
driver. This prevents RTC to work correctly if external crystal is not
present on board. There are other side effects - all peripherals which
depends on this clock also don't work (HDMI CEC for example).

In this series I fixed only H6 based boards since improper settings have
real impact due to explicitly forbidden fallback to internal oscillator.
Since most boards actually contain external oscillator, I wonder if it's
better to leave external oscillator in common H6 dtsi and just delete
clocks property in rtc node and ext. oscillator node in board dts file?

What do you think?

Best regards,
Jernej

Jernej Skrabec (2):
  rtc: sun6i: Make external 32k oscillator optional
  arm64: dts: allwinner: h6: Move ext. oscillator to board DTs

 .../boot/dts/allwinner/sun50i-h6-beelink-gs1.dts   | 11 +++++++++++
 .../boot/dts/allwinner/sun50i-h6-orangepi-3.dts    | 11 +++++++++++
 .../boot/dts/allwinner/sun50i-h6-orangepi.dtsi     | 11 +++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts      | 11 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi       |  8 --------
 drivers/rtc/rtc-sun6i.c                            | 14 ++++++--------
 6 files changed, 50 insertions(+), 16 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
