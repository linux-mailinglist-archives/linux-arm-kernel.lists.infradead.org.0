Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACADA58DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hoa5gEfShzCv4GygzNc0lSyHqtueYyK7q7639H++e8o=; b=ITWBaC9dMEChDR
	Y4R0WIb+pi7Wvz2Wot36SBgGAOgDWfvH0Z1n8QfqZsjRveD38dR7e+BQKzX2bbDBS7eReayP3eDIL
	ksA6+iUmNVCUT3Gx7GQRFJTWrmNqSHR+pRNXAHL2Gr7lBro7XRmhxwPp/9SkKSo5WqpB6yjbmemH9
	hstzYda+zgiVb2CpKg2YWEDowpyLe0Qjs+ZjJ8RiWMEuyljMAgcy2wzvVzmZIsCLxuISWskuRj4zN
	hV6SYYeTPz7OV/tdOZU89WpOjByREmaYok3VLOtgTlvGIas7vpVWLkLm1GU19qNYprXa1QZj81/9J
	GWAPXH+Pg6pFRMkWZ3NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4n3h-0001iI-6F; Mon, 02 Sep 2019 14:11:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4n2o-0000yU-Jq; Mon, 02 Sep 2019 14:11:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40930AF24;
 Mon,  2 Sep 2019 14:10:57 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v3 4/4] mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum
 zone_type'
Date: Mon,  2 Sep 2019 16:10:42 +0200
Message-Id: <20190902141043.27210-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902141043.27210-1-nsaenzjulienne@suse.de>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_071058_948807_5ED6EFC5 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, will@kernel.org, linux-kernel@vger.kernel.org,
 mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 robin.murphy@arm.com, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These zones usage has evolved with time and the comments were outdated.
This joins both ZONE_DMA and ZONE_DMA32 explanation and gives up to date
examples on how they are used on different architectures.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Christoph Hellwig <hch@lst.de>

---

Changes in v3:
- Update comment to match changes in arm64

Changes in v2:
- Try another approach merging both ZONE_DMA comments into one
- Address Christoph's comments
- If this approach doesn't get much traction I'll just drop the patch
  from the series as it's not really essential

 include/linux/mmzone.h | 45 ++++++++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 19 deletions(-)

diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 3f38c30d2f13..bf1b916c9ecb 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -357,33 +357,40 @@ struct per_cpu_nodestat {
 #endif /* !__GENERATING_BOUNDS.H */
 
 enum zone_type {
-#ifdef CONFIG_ZONE_DMA
 	/*
-	 * ZONE_DMA is used when there are devices that are not able
-	 * to do DMA to all of addressable memory (ZONE_NORMAL). Then we
-	 * carve out the portion of memory that is needed for these devices.
-	 * The range is arch specific.
+	 * ZONE_DMA and ZONE_DMA32 are used when there are peripherals not able
+	 * to DMA to all of the addressable memory (ZONE_NORMAL).
+	 * On architectures where this area covers the whole 32 bit address
+	 * space ZONE_DMA32 is used. ZONE_DMA is left for the ones with smaller
+	 * DMA addressing constraints. This distinction is important as a 32bit
+	 * DMA mask is assumed when ZONE_DMA32 is defined. Some 64-bit
+	 * platforms may need both zones as they support peripherals with
+	 * different DMA addressing limitations.
+	 *
+	 * Some examples:
+	 *
+	 *  - i386 and x86_64 have a fixed 16M ZONE_DMA and ZONE_DMA32 for the
+	 *    rest of the lower 4G.
+	 *
+	 *  - arm only uses ZONE_DMA, the size, up to 4G, may vary depending on
+	 *    the specific device.
+	 *
+	 *  - arm64 has a fixed 1G ZONE_DMA and ZONE_DMA32 for the rest of the
+	 *    lower 4G.
 	 *
-	 * Some examples
+	 *  - powerpc only uses ZONE_DMA, the size, up to 2G, may vary
+	 *    depending on the specific device.
 	 *
-	 * Architecture		Limit
-	 * ---------------------------
-	 * parisc, ia64, sparc	<4G
-	 * s390, powerpc	<2G
-	 * arm			Various
-	 * alpha		Unlimited or 0-16MB.
+	 *  - s390 uses ZONE_DMA fixed to the lower 2G.
 	 *
-	 * i386, x86_64 and multiple other arches
-	 * 			<16M.
+	 *  - ia64 and riscv only use ZONE_DMA32.
+	 *
+	 *  - parisc uses neither.
 	 */
+#ifdef CONFIG_ZONE_DMA
 	ZONE_DMA,
 #endif
 #ifdef CONFIG_ZONE_DMA32
-	/*
-	 * x86_64 needs two ZONE_DMAs because it supports devices that are
-	 * only able to do DMA to the lower 16M but also 32 bit devices that
-	 * can only do DMA areas below 4G.
-	 */
 	ZONE_DMA32,
 #endif
 	/*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
