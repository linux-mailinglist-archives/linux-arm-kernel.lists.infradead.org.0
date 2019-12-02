Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC7710E64A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 08:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ag61gVpi8ofdJytQsNNLqhV12hI6KWkrzhZZDmGeEcQ=; b=doh+1HiFSskrjR
	mOZKoFRwTUGPYJ57fHxaLZbqpfMHgtJgWWQONAvbRSh0GHpSR+zFTy9+M3OK9qbUZVWUwCbhdRpso
	/p/D1sDhOJ3LeFPJT72dikASteqptbzEFFtXK7g3MOmFA21TPLSGkOANFAMquV5SBQ1uyn/DVFl4r
	qAaOohvMYraWanWy0URZ585OuHj5+P0xumyDBb6mbZUF8V7kwSKyOx1MsvrthKttk+tmMdP2gtYH9
	+3QgeewhJJBY4mr5/zttXiIyv/fPs4i0SVYWLg3SOv09tq5rgewhhqp5hi96zPjbTJFuT30FBmZfw
	w7wUgLpsuzbUe0mi+c4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibfsY-0007zr-Uv; Mon, 02 Dec 2019 07:12:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibfsU-0007zk-Ly
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Dec 2019 07:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2WFFLvHD6qvFEmLtTM2OGfPoLKybfIr+XMW9V+4ukxY=; b=gQXegWZMvcDhVj32AjKvTFIAyn
 rCcSl8eLESWLBvucHXjQzWe/ebXiMTxWT/CrhGJW8iDv0K7JsYqeOE7OqebudwttMiTmLZE/AIMmz
 uh5alyQq4qZ3dGilOPGyq1Uc6C+KahNzy1nh01cxfg5rcyEb7KaOUOcZgZLk5c/FceTL0V0GhqFiW
 96QwIFdIjjoQHxnULEQ43t8prM3VjSoL/nTmZTKhBcSK3RUeHRyzonP24uI4B0S4BNR9VuxKSj4Gn
 kijzahUzofBgxWPzVW6uTKEic8uMiBekQKOEutK+mBfbJE27yQrAdXbCXtfCf4yB7Zhmj88Zy6MLt
 3C2vq2xQ==;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibfsr-00036M-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 07:12:39 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D8F3DDBDE415BFDF1FFD;
 Mon,  2 Dec 2019 15:11:30 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Mon, 2 Dec 2019 15:11:22 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH] irqchip/gic-v3-its: Reference to its_invall_cmd descriptor
 when building INVALL
Date: Mon, 2 Dec 2019 15:10:21 +0800
Message-ID: <20191202071021.1251-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_071237_845501_C868CC18 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index c52cc8d6d6b8..b3fec78b2226 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -598,7 +598,7 @@ static struct its_collection *its_build_invall_cmd(struct its_node *its,
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
