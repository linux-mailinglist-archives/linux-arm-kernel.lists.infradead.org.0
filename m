Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237F0180F60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8ECsFTzKb+cifHjYvGLrLr75P2hLB69rUjeinMwkDc=; b=hX8kDu0PPGPfX2
	fLhDw2sLd5CXPZQ5QjeQe7bvLDdar4C9dx+0kPmK9Jo/VUCe/2co3YON1EWBcKwbDoIxWA6JuKZX6
	N0Uqr4vc/3ztlxIYZ3fs6DTVTEQiCs3c3q24syH9HZjQ6K/r/fb6STsIno230rh2/yTZUXPrgoRE1
	6a6XJGo+PNCdQ5gJdSKsogCertdjI79rtVU3jRZXilL1uZnEakBqlmoIJd8avWNPK2VDMeFctDt5l
	NOFZ78gUSRkrgryWnSUSQMTHm3EpQQ+5JAErQmzTx0Ws14N0iVwBTe31GSQ3GeYN9BWZmnrDpbb4o
	DapIdnL6tRlhJGXohuzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtbd-0008MF-QY; Wed, 11 Mar 2020 05:08:33 +0000
Received: from smtprelay0043.hostedemail.com ([216.40.44.43]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBta6-0007Ae-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:07:00 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 57E448413;
 Wed, 11 Mar 2020 05:06:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:967:973:982:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1540:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2859:2892:2902:2903:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3350:3865:3866:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6261:7903:9025:9592:10004:10848:11026:11473:11658:11914:12043:12296:12297:12438:12555:12679:12895:12986:13069:13255:13311:13357:13894:14096:14181:14384:14394:14721:14877:21080:21433:21451:21627:21811:21939:21987:30045:30054:30075,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: stem01_1f5a992920a20
X-Filterd-Recvd-Size: 1729
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:06:55 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Subject: [PATCH -next 008/491] ARM/CIRRUS LOGIC EP93XX ARM ARCHITECTURE: Use
 fallthrough; 
Date: Tue, 10 Mar 2020 21:51:22 -0700
Message-Id: <e26a22c41c72290be469229f578e80c9e6dae5ed.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220659_008114_E468FE20 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.43 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/arm/mach-ep93xx/crunch.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-ep93xx/crunch.c b/arch/arm/mach-ep93xx/crunch.c
index 1c05c5b..f02e978 100644
--- a/arch/arm/mach-ep93xx/crunch.c
+++ b/arch/arm/mach-ep93xx/crunch.c
@@ -49,8 +49,7 @@ static int crunch_do(struct notifier_block *self, unsigned long cmd, void *t)
 		 * FALLTHROUGH: Ensure we don't try to overwrite our newly
 		 * initialised state information on the first fault.
 		 */
-		/* Fall through */
-
+		fallthrough;
 	case THREAD_NOTIFY_EXIT:
 		crunch_task_release(thread);
 		break;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
