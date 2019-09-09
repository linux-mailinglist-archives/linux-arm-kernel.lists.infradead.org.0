Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A60ADFE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 22:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLDS+xau2BC6OYBjSzHxXP7cKX+AU6F/H+Za5XNZqs4=; b=nRfm5ozSssHpCw
	28ZClCpaHg1rbahuvJhoHien0XLJ7V+CT0ooMzUuffra9Y3Nlh7LnHUwBzQtoGAa/61XNjzNOO/1s
	x67G2/H7q9TiLKdDmhIhB6+zL92HPwYDPI6B1dWyI7XqynxvXpIj/6siS5KMXTy/FmXgrjWbev3JC
	V+RJSiIWeCqONABJdJ/lsW1UZ4JeSiDplvzliToTYTBu7vSvk80O9l2CgpSzF/8WI2tiCdeD4JHJG
	3JYHBD5R62MsbJIzmWy3V+D4HH9eDsgxAzO/ziOJeyCtHT5RxcXBrxiV1GidFl9P3oziuHXnvimd0
	NOtwTaCnmlLRGcC6kXow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Q8Y-0006sC-Vf; Mon, 09 Sep 2019 20:19:47 +0000
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Q8Q-0006r4-Ks
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 20:19:40 +0000
Received: from localhost.localdomain ([90.126.97.183]) by mwinf5d12 with ME
 id zYKM2000H3xPcdm03YKMxP; Mon, 09 Sep 2019 22:19:24 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 09 Sep 2019 22:19:24 +0200
X-ME-IP: 90.126.97.183
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: will@kernel.org,
	robin.murphy@arm.com,
	joro@8bytes.org
Subject: [PATCH] iommu/io-pgtable: Move some initialization data to
 .init.rodata
Date: Mon,  9 Sep 2019 22:19:19 +0200
Message-Id: <20190909201919.5841-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_131938_964927_93472FB2 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.128 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 iommu@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The memory used by '__init' functions can be freed once the initialization
phase has been performed.

Mark some 'static const' array defined and used within some '__init'
functions as '__initconst', so that the corresponding data can also be
discarded.

Without '__initconst', the data are put in the .rodata section.
With the qualifier, they are put in the .init.rodata section.

With gcc 8.3.0, the following changes have been measured:

Without '__initconst':
   section      size
  .rodata       00000720
  .init.rodata  00000018

With '__initconst':
   section      size
  .rodata       00000660
  .init.rodata  00000058

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Adding __initconst "within" a function is not in line with kernel/include/init.h
which states that:
 * Don't forget to initialize data not at file scope, i.e. within a function,
 * as gcc otherwise puts the data into the bss section and not into the init
 * section.
However, having the array within the function or out-side the function
seems to have no impact in the generated code and in the section used.
According to my test, both put the data in .init.rodata.

Maybe the comment is outdated or related to some older vesion of gcc.
---
 drivers/iommu/io-pgtable-arm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 161a7d56264d..24076f0560c6 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -1109,7 +1109,7 @@ static void __init arm_lpae_dump_ops(struct io_pgtable_ops *ops)
 
 static int __init arm_lpae_run_tests(struct io_pgtable_cfg *cfg)
 {
-	static const enum io_pgtable_fmt fmts[] = {
+	static const enum io_pgtable_fmt fmts[] __initconst = {
 		ARM_64_LPAE_S1,
 		ARM_64_LPAE_S2,
 	};
@@ -1208,13 +1208,13 @@ static int __init arm_lpae_run_tests(struct io_pgtable_cfg *cfg)
 
 static int __init arm_lpae_do_selftests(void)
 {
-	static const unsigned long pgsize[] = {
+	static const unsigned long pgsize[] __initconst = {
 		SZ_4K | SZ_2M | SZ_1G,
 		SZ_16K | SZ_32M,
 		SZ_64K | SZ_512M,
 	};
 
-	static const unsigned int ias[] = {
+	static const unsigned int ias[] __initconst = {
 		32, 36, 40, 42, 44, 48,
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
