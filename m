Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7121B3537
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDZWGPFHgCdxGi4+UUpFQq2AWWwXKnjlTg6Iho89XhQ=; b=tfY0/khT0HwD5R
	6adaSb9fY15qDvNcIXPmcJtjM4rnxzkmlb0u0UJ5zGOXc6Ii4jJObp+LEIheQ3iAC8p64W+EX9blu
	Z6Z4wBUCvDQ8UUd63k+Wif123l7eEtMdo6/1E6sQJtPQ+9gUewS9fjVxifk9xjzpVK77lrCQnJX+D
	Y0W+eBOqI+r6z0CXaGtwkWaVl2Z8BuC6b2EwsujuhHL6MHzAnpQBxEbrVwnilH3Y4aoGD2+E2IFY9
	D0vKgQlDateqUZs+bZs9g+6BLGNu/AEdxeNPaNmN91wwER+sJ3nGtM7Ob0iD9pIqoxDfm7ZQM27ZW
	ZuaeildRnHBLZYUPmAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR5VU-0004Ua-9G; Wed, 22 Apr 2020 02:53:00 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR5VK-0004TK-J0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:52:52 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 99E05367F653A2B1F84D;
 Wed, 22 Apr 2020 10:52:42 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Wed, 22 Apr 2020 10:52:36 +0800
From: Zou Wei <zou_wei@huawei.com>
To: <derek.kiernan@xilinx.com>, <dragan.cvetic@xilinx.com>, <arnd@arndb.de>,
 <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>
Subject: [PATCH -next] misc: xilinx_sdfec: Use memdup_user() as a cleanup
Date: Wed, 22 Apr 2020 10:58:50 +0800
Message-ID: <1587524330-119776-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_195250_803605_3B0C3A17 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zou Wei <zou_wei@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix coccicheck warning which recommends to use memdup_user().

This patch fixes the following coccicheck warnings:

drivers/misc/xilinx_sdfec.c:652:8-15: WARNING opportunity for memdup_user

Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zou Wei <zou_wei@huawei.com>
---
 drivers/misc/xilinx_sdfec.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 71bbaa5..7a75894 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -649,14 +649,9 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	struct xsdfec_ldpc_params *ldpc;
 	int ret, n;
 
-	ldpc = kzalloc(sizeof(*ldpc), GFP_KERNEL);
-	if (!ldpc)
-		return -ENOMEM;
-
-	if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
-		ret = -EFAULT;
-		goto err_out;
-	}
+	ldpc = memdup_user(arg, sizeof(*ldpc));
+	if (IS_ERR(ldpc))
+		return PTR_ERR(ldpc);
 
 	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
 		ret = -EIO;
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
