Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FCF1AD72E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+WGl0ZkYhx8CygYqlz9Y5MoDbKpCFwsDWvrmVlJ8L4=; b=D3hEDK1MxjxeI2
	yftMJ/47NkiuPQaDg3sRf2xzuaa0UiWC+kjWT/t4ShaI6anqk1dYSmfJ7nOtwmYHxbJ7RMFinWBai
	VbG626dVjLbmxklZD2T3ijIhZaRbRlfvmimGNdukhj4egQncaNdvdaSaVi3hIBI1sjPjZvUefnF99
	v/yhum0Q9XyxULe0i+Wdj/DC4StoNc97sdaACKyYIamQ1xyJOCWAcfVwPK7g+kyRftJlnIuFRfAWm
	3lhKH6zC0d7cKaf7FIkS+HiqtUikOcTLeAiB7earhPQvhDYuElrgDqtquM974i81dtmiPevxhWWvx
	68pMU+B1mN+0EZeSObxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLD0-00075h-FR; Fri, 17 Apr 2020 07:14:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLCs-00070d-7B
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:14:35 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5C4A73C7CB44FA9D5B9C;
 Fri, 17 Apr 2020 15:14:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 15:14:19 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jason@lakedaemon.net>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <tglx@linutronix.de>, <maz@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] irqchip/irq-mvebu-icu: make legacy_bindings static
Date: Fri, 17 Apr 2020 15:40:46 +0800
Message-ID: <20200417074046.46771-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_001434_436671_BA272195 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Hulk Robot <hulkci@huawei.com>, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

drivers/irqchip/irq-mvebu-icu.c:69:1: warning: symbol 'legacy_bindings'
was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/irqchip/irq-mvebu-icu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-mvebu-icu.c b/drivers/irqchip/irq-mvebu-icu.c
index 547045d89c4b..91adf771f185 100644
--- a/drivers/irqchip/irq-mvebu-icu.c
+++ b/drivers/irqchip/irq-mvebu-icu.c
@@ -66,7 +66,7 @@ struct mvebu_icu_irq_data {
 	unsigned int type;
 };
 
-DEFINE_STATIC_KEY_FALSE(legacy_bindings);
+static DEFINE_STATIC_KEY_FALSE(legacy_bindings);
 
 static void mvebu_icu_init(struct mvebu_icu *icu,
 			   struct mvebu_icu_msi_data *msi_data,
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
