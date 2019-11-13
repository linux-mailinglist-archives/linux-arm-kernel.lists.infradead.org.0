Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AB9FAE78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UWkdUOIfiF9nEh4B2bQ4RX+UdNi3MkHVXV+3shePKAM=; b=K6g
	y4DIOtebu8vzcRDVKxWJ/4HxQz8EdCFRmpZC95N8QaQc+J1A/5YeSJCY/ANyKpCX1DJsQYA0tza3U
	HZJykS3BGyCMQnPKTvRTJn7w3sxnMWA/vuQ+C2KJHokJmclUb1TLjI2n6414kDK0sQsXmkFDTgS00
	Hb7nJYR6bWgefhSz4ulMaSHyAt+UJYquc+2nB7/iFq5+8YkfPEbdXuY+w7/cIpYMadJMxbwWhhBGO
	sjIZv76lvXQWmkZ55Nu3UJJ38zTaARWrqoK3dAuhJvdL8tf8o3niiLiMH2TF/nkp40LUNCs4NX+o7
	Ns6WXwpf85GKAELP1KI7UfNocQIbhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpsN-0006mb-Hv; Wed, 13 Nov 2019 10:27:51 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpsF-0006kr-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:27:45 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id RNTW2100M5USYZQ01NTWQT; Wed, 13 Nov 2019 11:27:32 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iUps2-0002S2-Lf; Wed, 13 Nov 2019 11:27:30 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iUps2-0007dR-Ic; Wed, 13 Nov 2019 11:27:30 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Eric Miao <eric.miao@nvidia.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A with CS3
 SDRAM
Date: Wed, 13 Nov 2019 11:27:29 +0100
Message-Id: <20191113102729.29303-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_022743_851921_87B12A63 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
the system will crash because it will try to decompress a zImage or
uImage to a non-RAM garbage address.

Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
No idea what to do with the rest of the comment, or if this breaks
existing platforms.

Thanks for your comments!
---
 arch/arm/boot/compressed/head.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 93dffed0ac6e02b4..cfee6bd1e7a0a582 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -231,10 +231,10 @@ not_angel:
 		 * address.
 		 *
 		 * This alignment is a balance between the requirements of
-		 * different platforms - we have chosen 128MB to allow
+		 * different platforms - we have chosen 64MB to allow
 		 * platforms which align the start of their physical memory
-		 * to 128MB to use this feature, while allowing the zImage
-		 * to be placed within the first 128MB of memory on other
+		 * to 64MB to use this feature, while allowing the zImage
+		 * to be placed within the first 64MB of memory on other
 		 * platforms.  Increasing the alignment means we place
 		 * stricter alignment requirements on the start of physical
 		 * memory, but relaxing it means that we break people who
@@ -242,7 +242,7 @@ not_angel:
 		 * of this range.
 		 */
 		mov	r4, pc
-		and	r4, r4, #0xf8000000
+		and	r4, r4, #0xfc000000
 		/* Determine final kernel image address. */
 		add	r4, r4, #TEXT_OFFSET
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
