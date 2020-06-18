Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C0D1FE07F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tciZ0GD1/d4N4dRC6n65wHIHdgv55mYl7FtCoIyA+rQ=; b=T39AWX/o0uCIBs
	Yvfl624rQk9BKCfWXgLDOKaVpciUC5ycuwvhuJegT+g+QnahkqKbVv3VyAuY39nq90BKr0TUEfpBi
	vi3bazKuSDdkRX6NV9RUI+t5yOlT7hMHOAJYVUs/9HN2SP/PD+os1/wH8nF1xSpjuod01CphX/3xx
	fkSnC/xaKAuGH0GSun6n87hdKYHMp2n2ifZ6SYMWMDRIGlIrOkwrc6ZZpod5j18vyF0iMPHR5RiRq
	o2oJKP+v0ryaxXXNso5g9AvK0G5UMA/sHtWlyKFS99ac3jKe6lWjUoO1QGXimuPa2OpHOEbv+IRIv
	qtEnMAAj3nP8cY4VBbuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljgY-0007wS-HT; Thu, 18 Jun 2020 01:49:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljEZ-0004dA-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:20:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0B9021D80;
 Thu, 18 Jun 2020 01:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443250;
 bh=p1QxLNtIiF1Wd6fV8oE0kvXASll9STFxqv84ZPOaiNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lqDt3RbiHV38RhGzp1J/y2fNFPiT2fV9TiSmnxltWWEw7UGAFKGYvaejecGyTs+bn
 IOKVKT3Eu6pmfQgf/v/5Ytpnxmy+AbBxxJUabutXRAHKpejon+M0bbKvHVvM3TYmJX
 FwzehTmQSBSuh/uvfU/+c5HLx+/J/+ste7bpN22o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 199/266] misc: xilinx-sdfec: improve
 get_user_pages_fast() error handling
Date: Wed, 17 Jun 2020 21:15:24 -0400
Message-Id: <20200618011631.604574-199-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182051_188753_B2547C3A 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

[ Upstream commit 57343d51613227373759f5b0f2eede257fd4b82e ]

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
Link: https://lore.kernel.org/r/20200527012628.1100649-2-jhubbard@nvidia.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/xilinx_sdfec.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 48ba7e02bed7..d4c14b617201 100644
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
