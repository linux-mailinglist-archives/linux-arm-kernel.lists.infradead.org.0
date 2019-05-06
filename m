Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B4215080
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gbcm6sv1wv5A4EiYzH3PrXwNk7iV9He3V3CFZZm5G2c=; b=Td4TyZLurmkqrk
	l/mPzZlL22n/jXSHeXagsYG87amxcukgEI6oramwUyyrF4GWh5hs4PJS8u9HGbWV9XSTzDvv5WRS9
	KK1FYNT/rzv4LnGZoz7xkaF2pJa+51obEnuIm2FI+zOaDXpFwHNxTML8rJZwDLk2nPCwCx2lA6OpM
	E+HgzGT6WDaWp/ukXT1xCmCsJUA+01QANcCG9k0PNX2QX6aRUOiXdlnLt2Wf6UZ9tjYqukKfxxyLg
	DRaUL2wAtHt13kVV7tS50s6Ey19ro9DZ8Ae6MMHlnirtSZ8nHiOlfYKGd0srdTvwDX5fygoFK/Qyd
	SoKjTPqW5byB0hUV/j1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfkz-00031E-F2; Mon, 06 May 2019 15:42:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfkr-00030T-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 15:42:15 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CB542087F;
 Mon,  6 May 2019 15:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557157332;
 bh=PtmpuGOeIicQRSUwwLz9NFjLtxTlVLkPV+jDZGoRwMk=;
 h=From:To:Cc:Subject:Date:From;
 b=Gd+EbvqR1ct1GF5zlSs12noqtWR4TIPWLyMFH6+PtuNeP8r2Wwe7X7e4IPQ079iY1
 y3zQIZBrU17Ey73HHS0yux1CDdUfBI3l/YuMQaieJ42yiYluDPnyp5n51wDr5Hp96Z
 q4efR4oFLbCBJOOGVGGyqkMVww3us0IJlWZZWeeo=
From: Dinh Nguyen <dinguyen@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL LATE 1/2] ARM: socfpga_defconfig: updates for v5.2
Date: Mon,  6 May 2019 10:42:04 -0500
Message-Id: <20190506154205.32759-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084214_442247_71D634EA 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these updates to socfpga_defconfig for v5.2.

Thanks,
Dinh


The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_arm32_defconfig_for_v5.2

for you to fetch changes up to fce638e85350852294096d82d57a696b7cbb22b5:

  ARM: socfpga_defconfig: enable LTC2497 (2019-04-24 12:52:47 -0500)

----------------------------------------------------------------
arm32 socfpga_defconfig updates for v5.2
- Enable LTC2497 driver
- Enable support for large block devices

----------------------------------------------------------------
Alan Tull (1):
      ARM: socfpga_defconfig: enable LTC2497

Andrey Zhizhikin (1):
      ARM: socfpga_defconfig: enable support for large block devices

 arch/arm/configs/socfpga_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
