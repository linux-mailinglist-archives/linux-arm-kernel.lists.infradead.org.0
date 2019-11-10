Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973C8F6884
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 11:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekoTx8ALl/CwZDKhPSRUDSBSuSPMkjMTaeNEkW5MtQs=; b=UDK93k0qogkUCv
	5LWG2GKB+V76kQlT7cqUTkI0FC2Rbu+Y6qqgARVXOySanYZ+lpYp55YivUiRpWWHEDI8VMFRzfmZK
	p7ELGu9RKrL2e5R64mlaykFPhAk3PdCjFzm62eAgmKIroIEbWaoA2Nrpj99HIhhVjreG3Y5NO1mMd
	8PjIYAG+T9E5F+ywyNJfzMqsDeCa3OTLGHQCfG/+meirJ5Ql/AVgVqCvnImSzgmBJv5S1MCOjjedI
	85BX/bkRXgBzHixJd0bWBP6FbBbE9nzBaN1wA51cfrk3ZkQyeLUnUD1+8s9Z67VhGPmMBNFCJdEjC
	TAwc+zJk83ARCwA/JjEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTkVZ-0008Fa-9J; Sun, 10 Nov 2019 10:31:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTkVP-0008ET-Ol
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 10:31:41 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 25439E7F0BEA32D02061;
 Sun, 10 Nov 2019 18:31:25 +0800 (CST)
Received: from localhost.localdomain (10.175.104.82) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Sun, 10 Nov 2019 18:31:18 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <sudeep.holla@arm.com>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] firmware: arm_scmi: Remove set but not used variable 'val'
Date: Sun, 10 Nov 2019 18:30:10 +0800
Message-ID: <20191110103010.117132-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Originating-IP: [10.175.104.82]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_023139_969983_C3FD7A7A 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: zhengyongjun3@huawei.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/firmware/arm_scmi/perf.c: In function scmi_perf_fc_ring_db:
drivers/firmware/arm_scmi/perf.c:323:7: warning: variable val set but not used [-Wunused-but-set-variable]

val is never used, so remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/firmware/arm_scmi/perf.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 4a8012e3cb8c..efa98d2ee045 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -319,10 +319,8 @@ static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
 		SCMI_PERF_FC_RING_DB(64);
 #else
 	{
-		u64 val = 0;
-
 		if (db->mask)
-			val = ioread64_hi_lo(db->addr) & db->mask;
+			ioread64_hi_lo(db->addr) & db->mask;
 		iowrite64_hi_lo(db->set, db->addr);
 	}
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
