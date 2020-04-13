Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21F1A63E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 09:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1JRB1G0iHayy7QqmMJDp7hw9YqgG+4sO126O1nFjD/c=; b=ncVN6vBN/NWprY
	s1NPZmTwRODq96c0rG2UjPKX0hVPRPc2MT4Ho2YUkxKUls6izAzOPOlR4q94Dumm/JckAdIVFIU0W
	b9DgfW0CagPTMLS2zAazcRuW0y6ZBNF3rzmqSHHk4GXt9quDbO7BUYonY3d1RWYOLzw1ralhWLD6G
	EDljVreCrl3yJoQCWDFNy0wKfLNyQfHBvxNabXxcV0soh0KlGg7vf7RROC1rzAkiwB3+Q56sFyOqI
	1haRnt90Nrn5d+I+0Ef0VkRHzfTFSAp4vtn6XnjVptYXx/SUloMy9VlACOGxgsRi2FwjUulMekHy4
	b2qR2/e3ZsfIQjvmSnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtwz-0001Ej-Ng; Mon, 13 Apr 2020 07:56:13 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtws-0001EG-LY
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 07:56:08 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9EA9480AB927C873579D;
 Mon, 13 Apr 2020 15:56:02 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Mon, 13 Apr 2020
 15:55:56 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
 <mike.leach@linaro.org>, <alexander.shishkin@linux.intel.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] coresight: cti: make some symbols static
Date: Mon, 13 Apr 2020 16:22:24 +0800
Message-ID: <20200413082224.23090-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_005606_873063_53F80F28 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Hulk Robot <hulkci@huawei.com>, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

drivers/hwtracing/coresight/coresight-cti.c:22:1: warning: symbol
'ect_net' was not declared. Should it be static?
drivers/hwtracing/coresight/coresight-cti.c:625:32: warning: symbol
'cti_ops_ect' was not declared. Should it be static?
drivers/hwtracing/coresight/coresight-cti.c:630:28: warning: symbol
'cti_ops' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/hwtracing/coresight/coresight-cti.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 9e262f5a85e3..7fc1fc8d7738 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -19,7 +19,7 @@
  */
 
 /* net of CTI devices connected via CTM */
-LIST_HEAD(ect_net);
+static LIST_HEAD(ect_net);
 
 /* protect the list */
 static DEFINE_MUTEX(ect_mutex);
@@ -622,12 +622,12 @@ int cti_disable(struct coresight_device *csdev)
 	return cti_disable_hw(drvdata);
 }
 
-const struct coresight_ops_ect cti_ops_ect = {
+static const struct coresight_ops_ect cti_ops_ect = {
 	.enable = cti_enable,
 	.disable = cti_disable,
 };
 
-const struct coresight_ops cti_ops = {
+static const struct coresight_ops cti_ops = {
 	.ect_ops = &cti_ops_ect,
 };
 
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
