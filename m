Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C23706D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Anw1AD1d0WGPy/Tl/N259gwQyc6JLrJoDgPVXLg7Ck0=; b=lO37GAf/dgzF49
	njcaqI5NdkGH6JGu0BRDW7oOX9jYSbrHSOyHkJqCU88UUBFHiDIq18ayjkiaODzAQ/kV/VxB198dP
	f6sL5+akIP6KtVGlUEcjMw1qBelGbM22emw1egewwVLBZk+3euqcz0isqINYHZc/g6Kw0ueUsDt++
	XlDXCBQUsqAnFuVVwpToUFtVh1a5SnhPTIpfC+t7LOKqgfCvl029/OFGF621iSkPLvJOBbeFElv05
	SweV/jzDQqo04LKAhYTROx+G6a78d4URtEh1HIr0hSd6mFaCCT+hoFsdQakTzBbTsvE6xNMT7DZHp
	dn93nqb1JJut3H85zGSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc5L-0002zg-JB; Mon, 22 Jul 2019 17:26:51 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc4z-0002yM-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:26:31 +0000
Received: from localhost (p54B33E22.dip0.t-ipconnect.de [84.179.62.34])
 by pokefinder.org (Postfix) with ESMTPSA id C43EE4A149D;
 Mon, 22 Jul 2019 19:26:25 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 03/14] mfd: ab3100-core: convert to i2c_new_dummy_device
Date: Mon, 22 Jul 2019 19:26:10 +0200
Message-Id: <20190722172623.4166-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722172623.4166-1-wsa+renesas@sang-engineering.com>
References: <20190722172623.4166-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102629_582210_305CFB8D 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move from i2c_new_dummy() to i2c_new_dummy_device(), so we now get an
ERRPTR which we use in error handling.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Generated with coccinelle. Build tested by me and buildbot. Not tested on HW.

 drivers/mfd/ab3100-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/ab3100-core.c b/drivers/mfd/ab3100-core.c
index e350ab64238e..7e007df857b8 100644
--- a/drivers/mfd/ab3100-core.c
+++ b/drivers/mfd/ab3100-core.c
@@ -896,10 +896,10 @@ static int ab3100_probe(struct i2c_client *client,
 		 &ab3100->chip_name[0]);
 
 	/* Attach a second dummy i2c_client to the test register address */
-	ab3100->testreg_client = i2c_new_dummy(client->adapter,
+	ab3100->testreg_client = i2c_new_dummy_device(client->adapter,
 					       client->addr + 1);
-	if (!ab3100->testreg_client) {
-		err = -ENOMEM;
+	if (IS_ERR(ab3100->testreg_client)) {
+		err = PTR_ERR(ab3100->testreg_client);
 		goto exit_no_testreg_client;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
