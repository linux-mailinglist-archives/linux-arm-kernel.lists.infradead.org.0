Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31FF1E34B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPKiYIq0URgWB7dPZKZF846IpI4u9OHxLdSbykngZZg=; b=Ae8Q9XdL+yrXtD
	Caba3/TNZQaRc1JBFRvI0OcR6Abm2KGTPXDw/DW2UFYtEoIw2R8gW5NkwEqAIpyC8uTWSSraNWrXn
	S3D9baFM/iuQA/H0pWqOskN59OYFA1q4TyOPdIPelJuVGtngu8iczcCWuglxgLcQUIsM0sWhILIco
	zhvHXyLtzap3jbvHXru4WqT7oUilG3mnG7ajxhjsuT2Kkd8s1hBwtlEumkL4UVkT5dc2uJC/ZFf3Z
	nVoYKIp3jbM6RtTy0xTUiswU5x5OdhSNo5gtPINUbJrzdVWOdtOtxShI/COorhPUkow7JJtLC/Q4a
	N9CpeI71ZM5XQC1K3uGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkqn-0008IH-VB; Wed, 27 May 2020 01:27:21 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkq0-0007o6-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:26:33 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ecdc1730001>; Tue, 26 May 2020 18:25:07 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 26 May 2020 18:26:30 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 26 May 2020 18:26:30 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 May
 2020 01:26:29 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 27 May 2020 01:26:29 +0000
Received: from sandstorm.nvidia.com (Not Verified[10.2.50.17]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ecdc1c50004>; Tue, 26 May 2020 18:26:29 -0700
From: John Hubbard <jhubbard@nvidia.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/3] misc: xilinx-sdfec: improve get_user_pages_fast() error
 handling
Date: Tue, 26 May 2020 18:26:26 -0700
Message-ID: <20200527012628.1100649-2-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527012628.1100649-1-jhubbard@nvidia.com>
References: <20200527012628.1100649-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590542707; bh=Z0H0NZ0azdDBw/pz6UaXScJeua7CgszsKUI21rNpIIc=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=A8UwiX4zwnd0jIKivrFW1WRvjUMNk0bhMGLDQydxVtXYlh9U/1D/h8QUT4RVJSryq
 BRY0WYKCu1Gcvx0n9z19TiS0jBZtZuVoHRyy+ZbyEQztjj66vY+dTPfRosbo2uSsgD
 ADGiYR4EScHloc8SrbdXxAfUgtaQLNAxZHmtgVtnKtxAJINkGsx7qlqC3Gb4YP4/UD
 aM+1SfGtF/Yy6j1DfnjNNcr+ASerSgFkpMfQsK/L6j4lztD5i8TOU4GShn8O8zWpab
 VAgP6OLlntY0JSi0Se/r9D9Q9r8lE1kyIantgllKdq77Np8d8b+qgAZJEUufvH8Sqh
 hRmQjiA9iUueg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_182632_542946_554D521D 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, John Hubbard <jhubbard@nvidia.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the case of get_user_pages_fast() returning a -errno.
The result needs to be stored in a signed integer. And for safe
signed/unsigned comparisons, it's best to keep everything signed.
And get_user_pages_fast() also expects a signed value for number
of pages to pin.

Therefore, change most relevant variables, from u32 to int. Leave
"n" unsigned, for convenience in checking for overflow. And provide
a WARN_ON_ONCE() and early return, if overflow occurs.

Also, as long as we're tidying up: rename the page array from page,
to pages, in order to match the conventions used in most other call
sites.

Fixes: 20ec628e8007e ("misc: xilinx_sdfec: Add ability to configure LDPC")
Cc: Derek Kiernan <derek.kiernan@xilinx.com>
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/xilinx_sdfec.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 71bbaa56bdb5..e2766aad9e14 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -602,10 +602,10 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 			      const u32 depth)
 {
 	u32 reg = 0;
-	u32 res;
-	u32 n, i;
+	int res, i, nr_pages;
+	u32 n;
 	u32 *addr = NULL;
-	struct page *page[MAX_NUM_PAGES];
+	struct page *pages[MAX_NUM_PAGES];
 
 	/*
 	 * Writes that go beyond the length of
@@ -622,15 +622,22 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 	if ((len * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE)
 		n += 1;
 
-	res = get_user_pages_fast((unsigned long)src_ptr, n, 0, page);
-	if (res < n) {
-		for (i = 0; i < res; i++)
-			put_page(page[i]);
+	if (WARN_ON_ONCE(n > INT_MAX))
+		return -EINVAL;
+
+	nr_pages = n;
+
+	res = get_user_pages_fast((unsigned long)src_ptr, nr_pages, 0, pages);
+	if (res < nr_pages) {
+		if (res > 0) {
+			for (i = 0; i < res; i++)
+				put_page(pages[i]);
+		}
 		return -EINVAL;
 	}
 
-	for (i = 0; i < n; i++) {
-		addr = kmap(page[i]);
+	for (i = 0; i < nr_pages; i++) {
+		addr = kmap(pages[i]);
 		do {
 			xsdfec_regwrite(xsdfec,
 					base_addr + ((offset + reg) *
@@ -639,7 +646,7 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 			reg++;
 		} while ((reg < len) &&
 			 ((reg * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE));
-		put_page(page[i]);
+		put_page(pages[i]);
 	}
 	return reg;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
