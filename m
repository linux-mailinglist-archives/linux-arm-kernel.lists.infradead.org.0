Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B7D3FDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vnnQmOueAmr0+GW4xist6MjLc7MDXh05jd8KbVMuYWU=; b=lg/xoKEqsFh1wW
	r0y6ZnXE+ATtQs0XBv0w4NeN7GFs3NlGsqYT3QBrKjlbE4ZoRK/7NWDB5Y23AUCduie56JzpFCat2
	WGVoRgi32h6Wj1Bipb1ztw0p78/D3ti6GRzj4D5XN+qk/BUhLEztn5yTSlss2WvbadkD3JlRQTTdF
	LIcAMv8xWho+Iwcfje0mDzfbvnds/ykNjqvp6rwlxbVqs9mZbb0DAfWNTMbD+Q7tGadz9r0sbu+Mq
	4P5BEriI/BKFIDpANfqljwX59b3LknRmwrlCIkcC/W/cu0mKoqB9T/7WpXg9Gx2TCyFfV11TOGE31
	x5HHJleg9UWJ+WMaMInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuM7-0004fj-NV; Fri, 11 Oct 2019 12:49:15 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuLz-0004a0-2c
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:49:08 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIuLu-0003qN-Uw; Fri, 11 Oct 2019 13:49:03 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIuLu-0004WU-A5; Fri, 11 Oct 2019 13:49:02 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk,
	patches@arm.linux.org.uk
Subject: zImage: atags_to_fdt: fix __be32 and __be64 types
Date: Fri, 11 Oct 2019 13:49:01 +0100
Message-Id: <20191011124901.17342-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_054907_269394_9B6D275A 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>

There are some sparse warnings about type conversion in
the atags_to_fdt.c code, due to __be32 and __be64, so
fix the following:

- Change _be32 and __be64 where appropriate
- Change setprop() to take a 'void *'
- Change incorrect fdt32_to_cpu() on FDT_MAGIC

Fixes the following sparse warnings:

arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
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
KernelVersion: 5.4-rc2
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org

Changes since v1:
- Fix setprop() type to void *
- Fix ftd32_to_cpu on FDT_MAGIC

Changes since v2:
- Undo uint32_t to setprop() now setprop() takes void *
---
 arch/arm/boot/compressed/atags_to_fdt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
index 330cd3c2eae5..64c49747f8a3 100644
--- a/arch/arm/boot/compressed/atags_to_fdt.c
+++ b/arch/arm/boot/compressed/atags_to_fdt.c
@@ -19,7 +19,7 @@ static int node_offset(void *fdt, const char *node_path)
 }
 
 static int setprop(void *fdt, const char *node_path, const char *property,
-		   uint32_t *val_array, int size)
+		   void *val_array, int size)
 {
 	int offset = node_offset(fdt, node_path);
 	if (offset < 0)
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
+	if (*(__be32 *)atag_list == cpu_to_fdt32(FDT_MAGIC))
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
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
