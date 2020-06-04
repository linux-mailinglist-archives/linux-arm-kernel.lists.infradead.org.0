Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643411EE509
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aBPNXP6bYmRVyiGpzdsYFl3FBILjz3ENSOei7e1uNzM=; b=E7KzUscL1tsJTV
	hpAiwjyYxs57Tr7phdXjpf2gWrKf+x2/PhQ3wwWp02WAcMQrRjEyoDCnCz5P8ogz6URR1Yxcu3J75
	3GKvJt71u0xTv9bta/G1+ZvUQNzCRCUuuV0nPfuD1Gi1jkBy+E6ok3KBwMWU2IAm1ZzBhLfJ2R80m
	olQVJm45G68qqeb1iw/+zpKjcgUbxZ0vS03iSU3ZuTmbdRZulRg0uboIljOKT+KFFxU5DBxqhOtN6
	7PoWRYtHD5rk/fhsqvAbcszf1lZJYejFIqxTjNNeV4On9gg8elBZqLAmHc+tcFC8KmHn6UTn4K6YQ
	DNreA2kabzqszfqtLisA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpeV-0003iV-Az; Thu, 04 Jun 2020 13:11:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpeN-0003dL-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:11:17 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8BDEE67F332417D3604A;
 Thu,  4 Jun 2020 21:11:10 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 4 Jun 2020
 21:11:03 +0800
From: yu kuai <yukuai3@huawei.com>
To: <dinguyen@kernel.org>, <linux@armlinux.org.uk>, <khilman@linaro.org>,
 <atull@opensource.altera.com>
Subject: [PATCH] ARM: socfpga: add missing put_device() call in
 socfpga_setup_ocram_self_refresh()
Date: Thu, 4 Jun 2020 21:10:42 +0800
Message-ID: <20200604131042.3926006-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_061115_848601_351BD1CB 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: yukuai3@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

if of_find_device_by_node() succeed, socfpga_setup_ocram_self_refresh()
doesn't have a corresponding put_device(). Thus add a jump target to fix
the exception handling for this function implementation.

Fixes: 44fd8c7d4005 ("ARM: socfpga: support suspend to ram")
Signed-off-by: yu kuai <yukuai3@huawei.com>
---
 arch/arm/mach-socfpga/pm.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/pm.c b/arch/arm/mach-socfpga/pm.c
index 6ed887cf8dc9..7267f5da15a4 100644
--- a/arch/arm/mach-socfpga/pm.c
+++ b/arch/arm/mach-socfpga/pm.c
@@ -49,14 +49,14 @@ static int socfpga_setup_ocram_self_refresh(void)
 	if (!ocram_pool) {
 		pr_warn("%s: ocram pool unavailable!\n", __func__);
 		ret = -ENODEV;
-		goto put_node;
+		goto put_device;
 	}
 
 	ocram_base = gen_pool_alloc(ocram_pool, socfpga_sdram_self_refresh_sz);
 	if (!ocram_base) {
 		pr_warn("%s: unable to alloc ocram!\n", __func__);
 		ret = -ENOMEM;
-		goto put_node;
+		goto put_device;
 	}
 
 	ocram_pbase = gen_pool_virt_to_phys(ocram_pool, ocram_base);
@@ -67,7 +67,7 @@ static int socfpga_setup_ocram_self_refresh(void)
 	if (!suspend_ocram_base) {
 		pr_warn("%s: __arm_ioremap_exec failed!\n", __func__);
 		ret = -ENOMEM;
-		goto put_node;
+		goto put_device;
 	}
 
 	/* Copy the code that puts DDR in self refresh to ocram */
@@ -80,7 +80,12 @@ static int socfpga_setup_ocram_self_refresh(void)
 	     "could not copy function to ocram");
 	if (!socfpga_sdram_self_refresh_in_ocram)
 		ret = -EFAULT;
+
+	if (!ret)
+		goto put_node;
 
+put_device:
+	put_device(&pdev->dev);
 put_node:
 	of_node_put(np);
 
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
