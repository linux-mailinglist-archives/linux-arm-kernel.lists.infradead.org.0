Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28878D137B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/IHVaThX3WMEPJOqtJ/u3gJ5BJSnLAZvQee3Ht9j5WI=; b=CEPmYjCDAF3Inr
	M5eTc8QMelMNjfPxxky8Cq5NApkXlkt8iueO43S3Nlbc+c+3E9s6S+9if4qUsTIyrO2liIgGLydpo
	wy/ysasOEyoYfvtpVwsqs5dHluPYF9kMS1IS+JEItHyKBjXN53wmeYdHXRTaXuwbhgZ74UXuKWaHR
	f7QcJReGaY+0b63HGvkSrC0Wj9sTe4esZzAS/j1dj+1IV5U1966BHE1XOFyuHtai6PUpFpodFEWfn
	P9INxKoJTbIRj2F9F9eYVuc/Elk2OX9leH+mjs54LfDmLN9rOuiyxYf/CKyQAYIFeyjsz0z3MLEW8
	mT32nWytM3ftfUMgOXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEPj-0001fb-DX; Wed, 09 Oct 2019 16:02:11 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEPY-0001b2-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:02:01 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIEPT-0003ZA-Bb; Wed, 09 Oct 2019 17:01:55 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIEPS-0001eM-Kr; Wed, 09 Oct 2019 17:01:54 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] zImage: atags_to_fdt: fix __be32 and __be64 types
Date: Wed,  9 Oct 2019 17:01:53 +0100
Message-Id: <20191009160153.6298-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090200_352977_2D64B5A2 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change types of some the uint32_t to __be32 or __be64 to
avoid the following sparse warnings:

arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:182:60: warning: incorrect type in assignment (different base types)
arch/arm/boot/compressed/atags_to_fdt.c:182:60:    expected unsigned long long [usertype]
arch/arm/boot/compressed/atags_to_fdt.c:182:60:    got restricted __be64 [usertype]
arch/arm/boot/compressed/atags_to_fdt.c:184:60: warning: incorrect type in assignment (different base types)
arch/arm/boot/compressed/atags_to_fdt.c:184:60:    expected unsigned long long [usertype]
arch/arm/boot/compressed/atags_to_fdt.c:184:60:    got restricted __be64 [usertype]
arch/arm/boot/compressed/atags_to_fdt.c:187:62: warning: incorrect type in assignment (different base types)
arch/arm/boot/compressed/atags_to_fdt.c:187:62:    expected unsigned int
arch/arm/boot/compressed/atags_to_fdt.c:187:62:    got restricted __be32 [usertype]
arch/arm/boot/compressed/atags_to_fdt.c:189:62: warning: incorrect type in assignment (different base types)
arch/arm/boot/compressed/atags_to_fdt.c:189:62:    expected unsigned int
arch/arm/boot/compressed/atags_to_fdt.c:189:62:    got restricted __be32 [usertype]

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/compressed/atags_to_fdt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
index 330cd3c2eae5..13407d0243b9 100644
--- a/arch/arm/boot/compressed/atags_to_fdt.c
+++ b/arch/arm/boot/compressed/atags_to_fdt.c
@@ -60,7 +60,7 @@ static uint32_t get_cell_size(const void *fdt)
 {
 	int len;
 	uint32_t cell_size = 1;
-	const uint32_t *size_len =  getprop(fdt, "/", "#size-cells", &len);
+	const __be32 *size_len =  getprop(fdt, "/", "#size-cells", &len);
 
 	if (size_len)
 		cell_size = fdt32_to_cpu(*size_len);
@@ -129,7 +129,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
 	struct tag *atag = atag_list;
 	/* In the case of 64 bits memory size, need to reserve 2 cells for
 	 * address and size for each bank */
-	uint32_t mem_reg_property[2 * 2 * NR_BANKS];
+	__be32 mem_reg_property[2 * 2 * NR_BANKS];
 	int memcount = 0;
 	int ret, memsize;
 
@@ -138,7 +138,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
 		return 1;
 
 	/* if we get a DTB here we're done already */
-	if (*(u32 *)atag_list == fdt32_to_cpu(FDT_MAGIC))
+	if (*(u32 *)atag_list == fdt32_to_cpu((fdt32_t)FDT_MAGIC))
 	       return 0;
 
 	/* validate the ATAG */
@@ -177,8 +177,8 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
 				/* if memsize is 2, that means that
 				 * each data needs 2 cells of 32 bits,
 				 * so the data are 64 bits */
-				uint64_t *mem_reg_prop64 =
-					(uint64_t *)mem_reg_property;
+				__be64 *mem_reg_prop64 =
+					(__be64 *)mem_reg_property;
 				mem_reg_prop64[memcount++] =
 					cpu_to_fdt64(atag->u.mem.start);
 				mem_reg_prop64[memcount++] =
@@ -207,7 +207,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
 	}
 
 	if (memcount) {
-		setprop(fdt, "/memory", "reg", mem_reg_property,
+		setprop(fdt, "/memory", "reg", (uint32_t *)mem_reg_property,
 			4 * memcount * memsize);
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
