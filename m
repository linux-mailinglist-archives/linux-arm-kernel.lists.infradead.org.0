Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1381B78257
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJ14DhEPmNxS53VF6mSGK242slD5vJ6S5GX2J+DAMk8=; b=l0XHC0BajczBCC
	J7aG++Q75jxUyaNDZEoTjg/FqUldzYmOs403KsFmw/VDFlSsCYyLa1ANjapq57eGha/UMzGj+H3gk
	1xskPJpFedN52EoGLN5prJpmA0wkgywEGX4lDaBrQg0/c9u6/pRDmZExz0gRWLRlbBoWByiX7JROm
	OBPARDp0OdHwFZfvm7oydu7ghays7UfeY46Mfqi7Zrp8eYvFErLOos6URvd8IBqAxJVpHobIYGCnm
	sTQeFoWUSVF5x4AyDi5kB4D9rO84tcc+MKIpgFZamM15wYsd6Gtsuj7kYCauGRJwwScsTlo1V8f11
	fxWfSy5GFAYJUq7zk+uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsVA-0001dx-Tg; Sun, 28 Jul 2019 23:22:52 +0000
Received: from gateway22.websitewelcome.com ([192.185.46.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsV1-0001de-3U
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:22:44 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 3C5E1367F
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:22:42 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rsV0hQpnH2PzOrsV0hWx2k; Sun, 28 Jul 2019 18:22:42 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BmW2RfoXAHRi8AOdRBXZg9reqgHBod2XI3YMj7+4uaI=; b=Epbc1QFhThpWOZMLwZuxgHekBO
 1kEPn4X/U819iKB9MWl9+NktSUaAv6zJiAo7vkElUrWtyldYi0WnVCTYDX1W0yCYgcBursoP6oYgx
 zRfM6njao97ObDBR7j+EPWjfbZWwp2b4qQbpRcBed8m1nhYGTkeAWAWfBKEEORS6ADlSWshKn+e1I
 MaGJmoxaIbq8fRJy6t+E8Zu8kTVdvuAVBxNxE42oTEN9uHBz88Nqp7V/jbS50CL1E7lIDBpQeYGb1
 RNqNsH40FR/0N442DXnNrPvPu2xw9jocTXnex/iq46qefUfvyxRFrUOGiPbbIeMUv+ui9oK/bm4eG
 Kk1dQZJg==;
Received: from [187.192.11.120] (port=39072 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrsUz-003Z6H-25; Sun, 28 Jul 2019 18:22:41 -0500
Date: Sun, 28 Jul 2019 18:22:40 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: OMAP: dma: Mark expected switch fall-throughs
Message-ID: <20190728232240.GA22393@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrsUz-003Z6H-25
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39072
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 24
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_162243_230525_4DA57765 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.46.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings:

arch/arm/plat-omap/dma.c: In function 'omap_set_dma_src_burst_mode':
arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (dma_omap2plus()) {
      ^
arch/arm/plat-omap/dma.c:393:2: note: here
  case OMAP_DMA_DATA_BURST_16:
  ^~~~
arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (dma_omap2plus()) {
      ^
arch/arm/plat-omap/dma.c:402:2: note: here
  default:
  ^~~~~~~
arch/arm/plat-omap/dma.c: In function 'omap_set_dma_dest_burst_mode':
arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (dma_omap2plus()) {
      ^
arch/arm/plat-omap/dma.c:481:2: note: here
  default:
  ^~~~~~~

Notice that, in this particular case, the code comment is
modified in accordance with what GCC is expecting to find.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/plat-omap/dma.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/plat-omap/dma.c b/arch/arm/plat-omap/dma.c
index 79f43acf9acb..08c99413d02c 100644
--- a/arch/arm/plat-omap/dma.c
+++ b/arch/arm/plat-omap/dma.c
@@ -388,17 +388,15 @@ void omap_set_dma_src_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
 		/*
 		 * not supported by current hardware on OMAP1
 		 * w |= (0x03 << 7);
-		 * fall through
 		 */
+		/* fall through */
 	case OMAP_DMA_DATA_BURST_16:
 		if (dma_omap2plus()) {
 			burst = 0x3;
 			break;
 		}
-		/*
-		 * OMAP1 don't support burst 16
-		 * fall through
-		 */
+		/* OMAP1 don't support burst 16 */
+		/* fall through */
 	default:
 		BUG();
 	}
@@ -474,10 +472,8 @@ void omap_set_dma_dest_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
 			burst = 0x3;
 			break;
 		}
-		/*
-		 * OMAP1 don't support burst 16
-		 * fall through
-		 */
+		/* OMAP1 don't support burst 16 */
+		/* fall through */
 	default:
 		printk(KERN_ERR "Invalid DMA burst mode\n");
 		BUG();
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
