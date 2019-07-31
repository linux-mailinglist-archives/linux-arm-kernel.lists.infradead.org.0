Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95AE7C78E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUdFDbPITL67Vt8i/TsdQydNfJr+V+pRI5SRAbhDdNE=; b=R+IHpQ0jP82aJP
	5/ZPuVvb2bbETgsFJ3JWoL+w7ZVTsWMKTZMIEeYk0Fd0JxkHHY2tBesWUd54LdaXxkOBDlUk/XQq9
	5RliYjht8lyyZR5QJ3UZnrMAVQl11mqtErdzXEYZXOFFggU8/UzZg5HLt44V9bkGryXPW90gbqovx
	ac2oU2WmcwYJMUf4C1ZlOWpZ72ESH/9boxNvFfWTlUE3ne1nDIvgPMVx1gTLADwOjkn9OukooIUnV
	qycMsuTfJK7ITk9hwcaxm925JL7N0jEzxyA79EuNZqWK+P9djEJpXs/wJlnBdSjF6IJ/S+DE7055u
	3Qnf73dLJgRExtRudFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqu4-0005vY-Nm; Wed, 31 Jul 2019 15:52:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqpo-0007kO-GO; Wed, 31 Jul 2019 15:48:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1CBAEB05E;
 Wed, 31 Jul 2019 15:48:11 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] mm: comment arm64's usage of 'enum zone_type'
Date: Wed, 31 Jul 2019 17:47:51 +0200
Message-Id: <20190731154752.16557-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731154752.16557-1-nsaenzjulienne@suse.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084812_701693_4FD59263 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, mbrugger@suse.com,
 frowand.list@gmail.com, eric@anholt.net, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 uses both ZONE_DMA and ZONE_DMA32 for the same reasons x86_64
does: peripherals with different DMA addressing limitations. This
updates both ZONE_DMAs comments to inform about the usage.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

 include/linux/mmzone.h | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index d77d717c620c..8fa6bcf72e7c 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -365,23 +365,24 @@ enum zone_type {
 	 *
 	 * Some examples
 	 *
-	 * Architecture		Limit
-	 * ---------------------------
-	 * parisc, ia64, sparc	<4G
-	 * s390, powerpc	<2G
-	 * arm			Various
-	 * alpha		Unlimited or 0-16MB.
+	 * Architecture			Limit
+	 * ----------------------------------
+	 * parisc, ia64, sparc, arm64	<4G
+	 * s390, powerpc		<2G
+	 * arm				Various
+	 * alpha			Unlimited or 0-16MB.
 	 *
 	 * i386, x86_64 and multiple other arches
-	 * 			<16M.
+	 *				<16M.
 	 */
 	ZONE_DMA,
 #endif
 #ifdef CONFIG_ZONE_DMA32
 	/*
-	 * x86_64 needs two ZONE_DMAs because it supports devices that are
-	 * only able to do DMA to the lower 16M but also 32 bit devices that
-	 * can only do DMA areas below 4G.
+	 * x86_64 and arm64 need two ZONE_DMAs because they support devices
+	 * that are only able to DMA a fraction of the 32 bit addressable
+	 * memory area, but also devices that are limited to that whole 32 bit
+	 * area.
 	 */
 	ZONE_DMA32,
 #endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
