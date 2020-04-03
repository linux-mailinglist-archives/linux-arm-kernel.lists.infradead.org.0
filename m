Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BCB19D243
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eoTOYTPgMwApPTrvNrDcnZkAEQduUrnlnXBzfismVw=; b=q663shYvphPPdT
	pwX8/f3SXYId28V/ZLBhgJsJmRIYLfXzJqDGL6BzyIs34G41mzjq/HxuF4ygN0qCMOhQqKNQ1459i
	lU5NsmG1hHiB5VqrEr9WDNyFY4d6cSQ5UrnT9Ml1jODLgV1nihuIzPCxayCDh01aiGoYXg8Q8oKn0
	yIoE2PnUVKtSscfMf1wz1kVvGMjE4XMIMITpcWBim7cU0Bau4v/Zfdc9fZD1FPL+y/qvBReCiPJPc
	nQ2Gt7UTe2PbDp+1BXyAMxEl2lIpAbNJEbwfji8aFcAf/KBPLxrjLwZxHiVBdiQxD6Zm3YJKBWs5I
	ALqk9KwBQG2o+hOyyA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHjR-0006U1-Bi; Fri, 03 Apr 2020 08:31:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHjJ-0006S0-0j
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 08:31:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 16B74FABA60339C7C46C;
 Fri,  3 Apr 2020 16:30:57 +0800 (CST)
Received: from localhost (10.173.223.234) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Fri, 3 Apr 2020
 16:30:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <michal.simek@xilinx.com>, 
 <rajan.vaja@xilinx.com>, <tejas.patel@xilinx.com>,
 <m.tretter@pengutronix.de>, <yuehaibing@huawei.com>
Subject: [PATCH -next] clk: zynqmp: Make zynqmp_clk_get_max_divisor static
Date: Fri, 3 Apr 2020 16:30:40 +0800
Message-ID: <20200403083040.37748-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.223.234]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_013109_223864_4A71B3F2 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

drivers/clk/zynqmp/divider.c:259:5: warning:
 symbol 'zynqmp_clk_get_max_divisor' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/clk/zynqmp/divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc76aa2e..1e93a4d32fa9 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -256,7 +256,7 @@ static const struct clk_ops zynqmp_clk_divider_ops = {
  * Return: Maximum divisor of a clock if query data is successful
  *	   U16_MAX in case of query data is not success
  */
-u32 zynqmp_clk_get_max_divisor(u32 clk_id, u32 type)
+static u32 zynqmp_clk_get_max_divisor(u32 clk_id, u32 type)
 {
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	struct zynqmp_pm_query_data qdata = {0};
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
