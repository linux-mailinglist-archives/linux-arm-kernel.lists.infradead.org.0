Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CAD11FD0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7BINkZ63ds2blWrL3UlBvw4uz1PU4pHkYF5iJ9KFqyQ=; b=YlNgxV6Rfj1TV7
	FlOxscGtK0en/YEb8F3q9S0XHpyfeQRrHPw2aJLJwH8FzXpw7fmhWRhV3fSIrgKETRW5UBzdZ3/k+
	5U9mTJ5a1kfrQoTmSKX6QzWEtRKnBjme0x/gXGdUBLeaMbLTIf/0zOfC2IVxKCv2Aw6iG2DS5JLNt
	F9oQ805FpYofPxPXUR+Oslbwcb3EqUJjErLiwXkD6wrt6iJ9+2nOVDlP7oK/NhQOtG+Dyylgq9cg8
	EIbttnzDnnRtcyvxOEviXnrxHMZL5GqF9C+RGuUE9AmY8110X3r1lqVevqD4iNuoh93R7iMDCy2Bq
	pgmlap4dGXUpWD/cu+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iggdL-0008OA-GS; Mon, 16 Dec 2019 03:01:19 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iggdA-0008N1-Tv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 03:01:10 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 103CD5BF3767129BBC6A;
 Mon, 16 Dec 2019 11:00:52 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Mon, 16 Dec 2019
 11:00:43 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] firmware: ti_sci: Remove unneeded semicolon
Date: Mon, 16 Dec 2019 11:08:04 +0800
Message-ID: <1576465684-30829-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_190109_141983_55A99E53 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/firmware/ti_sci.c:1809:2-3: Unneeded semicolon
drivers/firmware/ti_sci.c:2241:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/firmware/ti_sci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 4126be9..a063a08 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -1806,7 +1806,7 @@ static int ti_sci_get_resource_range(const struct ti_sci_handle *handle,
 	} else {
 		*range_start = resp->range_start;
 		*range_num = resp->range_num;
-	};
+	}

 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
@@ -2238,7 +2238,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
 			*size = resp->size;
 		if (order_id)
 			*order_id = resp->order_id;
-	};
+	}

 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
