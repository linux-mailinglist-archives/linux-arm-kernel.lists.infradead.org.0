Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92C31CEA83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rf8wnvCi2FyLOk2hzXIBonp3LOjwVFW3PseYv7PwcbE=; b=Avij64OUYXsUOZ
	jOjbyezfXdpC/eR1fQNATR/ukjezQ4Dy9Hf2eaWC8HQpbMQ3qQQZmqrs7qAm/vCFFinIQ2FV0VnLj
	6DfYRZOtTgiMKM4jiL0KO0mv75gM+nKVG9d+sWk5rJ2vDzenYcXdESAW+J/CeBCPKiyaUQPGE5LEN
	tIg/iE8tXIOIz636Pn14Ht5SkWEvCeszN8Uc8SLcZP633/D9m7ZgwNXjFbnBPfy21qb4HpMk1uqj5
	lc6oGsufO5cNeE8NN+u3NizdQiTSgmHK9i40ISFviTNGqinpYh05gzHKV6zkaAjcWFvqger8yeqfJ
	pCCd8pYb0clsMUROrtxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKJT-0004AS-DL; Tue, 12 May 2020 02:06:31 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKJL-00049Y-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:06:24 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B9529A8BC8D1999137CE;
 Tue, 12 May 2020 10:06:19 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 10:06:13 +0800
From: Samuel Zou <zou_wei@huawei.com>
To: <ssantosh@kernel.org>
Subject: [PATCH -next] drivers: soc: ti: knav_qmss_queue: Make
 knav_gp_range_ops static
Date: Tue, 12 May 2020 10:12:20 +0800
Message-ID: <1589249540-105611-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_190623_322744_F6DBF71C 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Samuel Zou <zou_wei@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

drivers/soc/ti/knav_qmss_queue.c:412:23: warning: symbol 'knav_gp_range_ops' was not declared.

The knav_acc_firmwares has only call site within knav_qmss_queue.c
It should be static

Fixes: 41f93af900a2 ("soc: ti: add Keystone Navigator QMSS driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Samuel Zou <zou_wei@huawei.com>
---
 drivers/soc/ti/knav_qmss_queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
index 37f3db6..aa071d9 100644
--- a/drivers/soc/ti/knav_qmss_queue.c
+++ b/drivers/soc/ti/knav_qmss_queue.c
@@ -409,7 +409,7 @@ static int knav_gp_close_queue(struct knav_range_info *range,
 	return 0;
 }
 
-struct knav_range_ops knav_gp_range_ops = {
+static struct knav_range_ops knav_gp_range_ops = {
 	.set_notify	= knav_gp_set_notify,
 	.open_queue	= knav_gp_open_queue,
 	.close_queue	= knav_gp_close_queue,
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
