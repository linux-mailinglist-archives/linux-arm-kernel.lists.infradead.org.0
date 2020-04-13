Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B11A63E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 09:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zwVqBZRpb2ee/0zT6Idh9n/uQG/mMlKo+za7ZVGyRFg=; b=fsObEOvwYpM2Wt
	EnGVc0cK0tW5LkR2uKRo312+MO0jVbh93EGo3Wh1JwFW3Dm5PDW0/hX0Nqv/hal++ystlNwcOePeX
	By+/D7fAeYoyrHPgTHIeSC9UwTCzMrlk+t+H8e6unCG3+swHnNuDuxsBcpSWEvaTB3G+VhUEj0KpO
	EjrclGMh9lT5DKqxQzq5BFMjmM2L/XfOqSjQ3J2hbLTv0hbbKlqNAuHyHQtFBbNGzIZ5aM/6/BC/d
	l71InCBrDFTVkVtYIzvNoKYzCsu6RaaogdVio7kfaPK79WN4rvSogmr74Y+L77Uz872xHf0VrCRjj
	zBqIvUq3iLyyZ8xcHTrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtxI-0001SG-Gs; Mon, 13 Apr 2020 07:56:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtx6-0001Q3-GO
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 07:56:21 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CE4BDF7C65130F819AE5;
 Mon, 13 Apr 2020 15:56:18 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Mon, 13 Apr 2020
 15:56:09 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
 <mike.leach@linaro.org>, <alexander.shishkin@linux.intel.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] coresight: etb10: make coresight_etb_groups static
Date: Mon, 13 Apr 2020 16:22:37 +0800
Message-ID: <20200413082237.23177-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_005620_728514_79F15EFF 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

drivers/hwtracing/coresight/coresight-etb10.c:720:30: warning: symbol
'coresight_etb_groups' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 3810290e6d07..03e3f2590191 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -717,7 +717,7 @@ static const struct attribute_group coresight_etb_mgmt_group = {
 	.name = "mgmt",
 };
 
-const struct attribute_group *coresight_etb_groups[] = {
+static const struct attribute_group *coresight_etb_groups[] = {
 	&coresight_etb_group,
 	&coresight_etb_mgmt_group,
 	NULL,
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
