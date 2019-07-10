Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1144864059
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 07:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hupis0xzTUIeV+OiOZK340748pRdqe9f7hUJC1mRcyI=; b=R+miFiZJvEdsqvuz+Be0HlwxQz
	GACSRJmikrt+PpgO4q5LIqekDnrsDqHc5QM6Pq+K6nDIKQq8nevo+A2JQxS8MpPBdiPpOEiNkYjb/
	jzdujGb0d7KRGu1UuDFO1PQC3vcIbUYJd8liC4G3x3f75Ly+SEbyJVpzX9tjwwrG743c2x2VVGq4k
	GCUhRkL/SEnPdDrsFB9BF+mgWCKOOdRdMfKPCp+9ciJ4nWtcKOop2tnCok07wWHlyfOerYiRrZEzi
	bku7UEOh+pGSRfHBWxZq0UbPZf0YMzUmuX3ingpUhaTLO/SmHWSQONDrQZjmerNNifszUE6+wL1Bu
	NlU2sbyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl4oD-0000fG-A9; Wed, 10 Jul 2019 05:06:25 +0000
Received: from smtprelay0197.hostedemail.com ([216.40.44.197]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl4mj-0006y8-69; Wed, 10 Jul 2019 05:04:54 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 8C625180A68C9;
 Wed, 10 Jul 2019 05:04:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1345:1359:1437:1534:1540:1567:1711:1714:1730:1747:1777:1792:2198:2199:2393:2559:2562:3138:3139:3140:3141:3142:3867:5007:6261:6642:10004:10848:11026:11473:11658:11914:12043:12297:12438:12555:12895:13069:13311:13357:14096:14181:14384:14394:14721:21080:21451:21627:30054,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:32,
 LUA_SUMMARY:none
X-HE-Tag: field67_c1e6bf171f03
X-Filterd-Recvd-Size: 1754
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 05:04:43 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 06/12] mmc: meson-mx-sdio: Fix misuse of GENMASK macro
Date: Tue,  9 Jul 2019 22:04:19 -0700
Message-Id: <94dcbeb13b08a67ae9f404aa590c1c1459bc5287.1562734889.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1562734889.git.joe@perches.com>
References: <cover.1562734889.git.joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_220453_360735_8168BC2B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.197 listed in list.dnswl.org]
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
Cc: linux-amlogic@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arguments are supposed to be ordered high then low.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/mmc/host/meson-mx-sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index 2d736e416775..ba9a63db73da 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -73,7 +73,7 @@
 	#define MESON_MX_SDIO_IRQC_IF_CONFIG_MASK		GENMASK(7, 6)
 	#define MESON_MX_SDIO_IRQC_FORCE_DATA_CLK		BIT(8)
 	#define MESON_MX_SDIO_IRQC_FORCE_DATA_CMD		BIT(9)
-	#define MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK		GENMASK(10, 13)
+	#define MESON_MX_SDIO_IRQC_FORCE_DATA_DAT_MASK		GENMASK(13, 10)
 	#define MESON_MX_SDIO_IRQC_SOFT_RESET			BIT(15)
 	#define MESON_MX_SDIO_IRQC_FORCE_HALT			BIT(30)
 	#define MESON_MX_SDIO_IRQC_HALT_HOLE			BIT(31)
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
