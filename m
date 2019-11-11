Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9779F78E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 17:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W/2bMeChQlDmeQbOzinA/Cq2+OL3M9zLz2lrT7yT7QU=; b=pnWKQIOSxk+BhxwuYGMF8jVgUq
	Pz5FvMVdCcy3nD6aN7kpEJ6axLW/3sQFPdOFA3PfufXnb6L/0V4XwjmSqj9UYmyIQ/xFh73yLxUJs
	zxp5gkddSdkamyOlZlf96/8AwfT4Co/s5fPpphVi3OsITTbYC1e/aiU8xyWUwhSyZTZ0ePeuLz+Qa
	WE0Ft0cgupA1TXAq4QZ11Rl1q0NumbPeU5yGKaUUC1owFd4eiRx2zNe/QcDTu8LgAkz1jueDyIIZZ
	DsCtz0sS2+vNwsNuB3iZ0RArTaqOrqaf3+yQxJebcI49YXvEJICtg8GwhPD1eePHha/vs6Nx56Ujm
	cbltRINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCg4-0005oH-E3; Mon, 11 Nov 2019 16:36:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCfx-0005nu-3i
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 16:36:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65D5831B;
 Mon, 11 Nov 2019 08:36:24 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 97E9E3F534;
 Mon, 11 Nov 2019 08:36:23 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT
Date: Mon, 11 Nov 2019 16:36:17 +0000
Message-Id: <20191111163617.7305-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191110103010.117132-1-zhengyongjun3@huawei.com>
References: <20191110103010.117132-1-zhengyongjun3@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_083625_192896_872C50E0 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: zhengyongjun3@huawei.com, hulkci@huawei.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The logic to ring the scmi performance fastchannel ignores the
value read from the doorbell register in case of !CONFIG_64BIT.
This bug also shows up as warning with '-Wunused-but-set-variable' gcc
flag:

drivers/firmware/arm_scmi/perf.c: In function scmi_perf_fc_ring_db:
drivers/firmware/arm_scmi/perf.c:323:7: warning: variable val set but
			not used [-Wunused-but-set-variable]

Fix the same by aligning the logic with CONFIG_64BIT as used in the
macro SCMI_PERF_FC_RING_DB().

Fixes: 823839571d76 ("firmware: arm_scmi: Make use SCMI v2.0 fastchannel
	for performance protocol")
Reported-by: Hulk Robot <hulkci@huawei.com>
Reported-by: Zheng Yongjun <zhengyongjun3@huawei.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Hi Zheng,

Thanks for the bug report, but the fix is incorrect as discussed.
This is proper fix, let me know if this fixes the gcc warning you found.

Regards,
Sudeep

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 4a8012e3cb8c..601af4edad5e 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -323,7 +323,7 @@ static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)

 		if (db->mask)
 			val = ioread64_hi_lo(db->addr) & db->mask;
-		iowrite64_hi_lo(db->set, db->addr);
+		iowrite64_hi_lo(db->set | val, db->addr);
 	}
 #endif
 }
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
