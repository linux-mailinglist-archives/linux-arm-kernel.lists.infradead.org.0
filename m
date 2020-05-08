Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF61CB172
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 16:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZghhUCZXGrXL208xyfu0zZLhEyg4pAN6KGXfJdZJP0o=; b=l23z+80XhEltYF
	e4V4Mdu1PxPxbsdowrYtxtvwGSY3oojRXlTgOHmjnEcWpk1GRNAjogGrSz1D4q7UU6MPuYu825TfB
	9mEUUAbXg4g0LTHdbtwV0wZ4R8fUDJMOaDOaeNhDflUs/7I6pX2GXGPafIwHEFMHvxCXIqh0umD3/
	Yg60N+h4RQbZSk5wPRSTS4eWFX8ntFbgNZxb0TQfbxk9Kz5UgP3W2WQkK18VMWBgdYu6CzQLyKj6l
	XYBqq+L80SeRMD7giojYEg10Co/bVIj6YfV46I6Jb3C6Cs6ecWR04kjeDyXtT3Mt9kVHVcIeZO95p
	sa+22sN+rNwH6AwWcv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3hm-0005jc-Ev; Fri, 08 May 2020 14:10:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3hd-000579-9w
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 14:10:16 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EC0DB1A56182C8F5F6C2;
 Fri,  8 May 2020 22:10:00 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Fri, 8 May 2020
 22:09:53 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <Roy.Pledge@nxp.com>, <leoyang.li@nxp.com>, <youri.querry_1@nxp.com>
Subject: [PATCH -next] soc: fsl: dpio: Remove unused inline function
 qbman_write_eqcr_am_rt_register
Date: Fri, 8 May 2020 22:09:47 +0800
Message-ID: <20200508140947.28712-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_071013_537523_3ACD9961 
X-CRM114-Status: UNSURE (   5.54  )
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no callers in-tree anymore since commit
3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue")

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/soc/fsl/dpio/qbman-portal.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
index 804b8ba9bf5c..e2e9fbb58a72 100644
--- a/drivers/soc/fsl/dpio/qbman-portal.c
+++ b/drivers/soc/fsl/dpio/qbman-portal.c
@@ -572,18 +572,6 @@ void qbman_eq_desc_set_qd(struct qbman_eq_desc *d, u32 qdid,
 #define EQAR_VB(eqar)      ((eqar) & 0x80)
 #define EQAR_SUCCESS(eqar) ((eqar) & 0x100)
 
-static inline void qbman_write_eqcr_am_rt_register(struct qbman_swp *p,
-						   u8 idx)
-{
-	if (idx < 16)
-		qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT + idx * 4,
-				     QMAN_RT_MODE);
-	else
-		qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT2 +
-				     (idx - 16) * 4,
-				     QMAN_RT_MODE);
-}
-
 #define QB_RT_BIT ((u32)0x100)
 /**
  * qbman_swp_enqueue_direct() - Issue an enqueue command
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
