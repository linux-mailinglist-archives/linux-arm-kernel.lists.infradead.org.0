Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB18E1500ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 05:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zNsmcmYygrQUm5flGucSr9zAE/PCtHgF2jzQlyLLPDc=; b=dwsEgp+ZXWARoh
	vUn4+shH0Zf+FeXEg+uTOHgKTmxB+UTcGg/b1BZoPCzjNxzaGWOQf4xxqBFDj8+Y5WtiJhoMBlnGu
	c3ZyKJC1Co7qAzgZntHN0N4MG6LhbsBHEgEVQH5ao4cjapNbOCnAhOrxHOaJQadWxc3KfvRqSE8sm
	UnsnqMtH0ZZlv66n31gZXf/VPM31ZjTrMAuWRzUviQ0eurVkaowK6dD/rIaglZ4eMlWqdQUtRB+61
	yBEOlHZqApY2CsLfuEZpWq4hhTtBxHnDDtiy6UueY+DTstKEdC+xb2GHsC16Z5uEt8/WyL2u+DhHc
	Y3WnIsLwOGp4wpWoNJnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyTCR-0005Zf-Bn; Mon, 03 Feb 2020 04:19:03 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyTCK-0005Z5-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 04:18:58 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 67F0A88662C809797256;
 Mon,  3 Feb 2020 12:18:42 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Mon, 3 Feb 2020 12:18:34 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH RESEND] irqchip/gic-v3-its: Use the its_invall_cmd descriptor
 when building INVALL
Date: Mon, 3 Feb 2020 12:18:21 +0800
Message-ID: <20200203041821.1862-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_201856_913394_8EA48F94 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It looks like an obvious mistake to use its_mapc_cmd descriptor when
building the INVALL command block. It so far worked by luck because
both its_mapc_cmd.col and its_invall_cmd.col sit at the same offset of
the ITS command descriptor, but we should not rely on it.

Fixes: cc2d3216f53c ("irqchip: GICv3: ITS command queue")
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---

This patch has been originally posted at:
https://lore.kernel.org/r/20191202071021.1251-1-yuzenghui@huawei.com
but somehow has been missed for 5.5.  So repost it.

 drivers/irqchip/irq-gic-v3-its.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index f71758632f8d..e5a25d97f8db 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -661,7 +661,7 @@ static struct its_collection *its_build_invall_cmd(struct its_node *its,
 						   struct its_cmd_desc *desc)
 {
 	its_encode_cmd(cmd, GITS_CMD_INVALL);
-	its_encode_collection(cmd, desc->its_mapc_cmd.col->col_id);
+	its_encode_collection(cmd, desc->its_invall_cmd.col->col_id);
 
 	its_fixup_cmd(cmd);
 
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
