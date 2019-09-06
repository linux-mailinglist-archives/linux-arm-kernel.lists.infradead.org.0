Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B71CABB2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tu0HyIuuvQ94Wdx6Cntm3Gg709xbzMEkc+gHVH/E65k=; b=slRL5/dXTNO8yt
	ele0/oE0M1HlgJjAUIAMnfb/tdgwHQOHwIvZeNh6EGxwklClHxGjuSy7EX2JAFNiD+E6zsmmbLGM3
	W9BydOCoJ+CWSqZ/PAP2Dm62xkZoQE3I+ixUuFWzEwfoHJOok4orTMlqS7pFv3k8FZnVw46BXUbII
	fm3827wbJ48jgdWvPnreY9GRifk41iZr7vAGTZhUsBQGiZGMQX+piDs1pL2WfHP3KG0zL6iWnup0x
	S1mX9NZdANLjY0h9oalUUdsVghNGD3Mmg2XpD96rEU0XJnjZ4/FWhgRYi13jtbQcLconaNhzpy8mb
	vMwL7L3haJUt3nV0zwjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FPX-0003F6-A2; Fri, 06 Sep 2019 14:40:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FP8-0002Do-Ae
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:40:03 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7CAAB2AE8DB8E0933910;
 Fri,  6 Sep 2019 22:39:50 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Sep 2019
 22:39:42 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH -next] perf/arm-ccn: use devm_platform_ioremap_resource() to
 simplify code
Date: Fri, 6 Sep 2019 22:39:28 +0800
Message-ID: <20190906143928.28412-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_074002_730114_1DC5233A 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/perf/arm-ccn.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index 6fc0273..fee5cb2 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -1477,8 +1477,7 @@ static int arm_ccn_probe(struct platform_device *pdev)
 	ccn->dev = &pdev->dev;
 	platform_set_drvdata(pdev, ccn);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ccn->base = devm_ioremap_resource(ccn->dev, res);
+	ccn->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ccn->base))
 		return PTR_ERR(ccn->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
