Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0FC1C3846
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OIlGKrLFKkPIw2xBf1/geys9C9dU2VfRxV5O7O16+t0=; b=CW6kNuk2w/kxwF
	KD/51w5hEbFkhEd/VbguD7jlRJjMLzdWYKq2vVNERYbGG552+lhpd6bUbg9ctmigz4e2yHGpeJNHp
	MuwyHWokA9soGJuLim3oWAVcQNNGkFWhGLWHRHgk2elibTnIDsWgpOdh+Z//VThcvYFhTb1pq+X3Y
	sasUOeaV/FVaaFSdp3Msjrq4lJJFpjHx7alvleHNVjKomUz9WjomFE7aHC5U4VWUqe1H84y6D7SRB
	ak6Pcq0/yVDtZyVqCWjWnV/g9wtwn1b2vY18cX6r7Oj3GnkjDFGrHl14TDVRhLOKIPcrf9MU5Frgr
	RNPsD9U8gLkXEz/mAiww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZNR-0003Cc-Mr; Mon, 04 May 2020 11:35:13 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZN8-0003Bp-Uz
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:34:56 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 96B418D5E6CF843B1EDC;
 Mon,  4 May 2020 19:34:52 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 19:34:43 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <okaya@kernel.org>, <agross@kernel.org>, <bjorn.andersson@linaro.org>,
 <vkoul@kernel.org>, <dan.j.williams@intel.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <dmaengine@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] dmaengine: qcom_hidma: use true,false for bool variable
Date: Mon, 4 May 2020 19:34:06 +0800
Message-ID: <20200504113406.41530-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043455_162953_C5F4E373 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/dma/qcom/hidma.c:553:1-17: WARNING: Assignment of 0/1 to bool
variable

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/dma/qcom/hidma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/qcom/hidma.c b/drivers/dma/qcom/hidma.c
index 87490e125bc3..0a6d3ea08c78 100644
--- a/drivers/dma/qcom/hidma.c
+++ b/drivers/dma/qcom/hidma.c
@@ -550,7 +550,7 @@ static void hidma_free_chan_resources(struct dma_chan *dmach)
 		kfree(mdesc);
 	}
 
-	mchan->allocated = 0;
+	mchan->allocated = false;
 	spin_unlock_irqrestore(&mchan->lock, irqflags);
 }
 
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
