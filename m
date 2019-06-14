Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FBA456F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/1u6qcZ6sXM9AzUMpZzxOE2jepSdqfH3HwxwUoJYlqQ=; b=K7I
	zaWLVuwCBrepavREn89KGMlnhIiU1whs4JQtqtOlUj0i1veyly5JY/q/9/44OyeB3vOboXPodi7NT
	pPCWsDg+5jdgwoLUJdcwkn4bwSDfzVs8HOaJrqOSQbA6fPQ8Xp7qA25SNPrj1BG5HTFGOxjwrGTIm
	C4GaiatQB2JaSQC0B7eGrsOm3cGlYjspyy3y1pk6awvx2e/zCYvS5aCXErreMNCGE1DWQZZUkbIFH
	TZhAW1/c/owLgJQsIjFQwGHvy6d3xAEE3iWFXJxKCUi53WE3Xte+FarYl1DH2E2WcFqdk5Ep38Oa5
	qds8aswIKPTS71eqTqsWEqSOFstBobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhE5-0001ZC-2G; Fri, 14 Jun 2019 08:06:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhDq-0001N0-92
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:06:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AB11F200E44;
 Fri, 14 Jun 2019 10:06:02 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 37E1C2005D2;
 Fri, 14 Jun 2019 10:05:58 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BE37C402A0;
 Fri, 14 Jun 2019 16:05:52 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 abel.vesa@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] soc: imx8: Fix potential kernel dump in error path
Date: Fri, 14 Jun 2019 16:07:47 +0800
Message-Id: <20190614080748.32997-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_010606_464876_5BC917FE 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

When SoC's revision value is 0, SoC driver will print out
"unknown" in sysfs's revision node, this "unknown" is a
static string which can NOT be freed, this will caused below
kernel dump in later error path which calls kfree:

kernel BUG at mm/slub.c:3942!
Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
Modules linked in:
CPU: 2 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc4-next-20190611-00023-g705146c-dirty #2197
Hardware name: NXP i.MX8MQ EVK (DT)
pstate: 60000005 (nZCv daif -PAN -UAO)
pc : kfree+0x170/0x1b0
lr : imx8_soc_init+0xc0/0xe4
sp : ffff00001003bd10
x29: ffff00001003bd10 x28: ffff00001121e0a0
x27: ffff000011482000 x26: ffff00001117068c
x25: ffff00001121e100 x24: ffff000011482000
x23: ffff000010fe2b58 x22: ffff0000111b9ab0
x21: ffff8000bd9dfba0 x20: ffff0000111b9b70
x19: ffff7e000043f880 x18: 0000000000001000
x17: ffff000010d05fa0 x16: ffff0000122e0000
x15: 0140000000000000 x14: 0000000030360000
x13: ffff8000b94b5bb0 x12: 0000000000000038
x11: ffffffffffffffff x10: ffffffffffffffff
x9 : 0000000000000003 x8 : ffff8000b9488147
x7 : ffff00001003bc00 x6 : 0000000000000000
x5 : 0000000000000003 x4 : 0000000000000003
x3 : 0000000000000003 x2 : b8793acd604edf00
x1 : ffff7e000043f880 x0 : ffff7e000043f888
Call trace:
 kfree+0x170/0x1b0
 imx8_soc_init+0xc0/0xe4
 do_one_initcall+0x58/0x1b8
 kernel_init_freeable+0x1cc/0x288
 kernel_init+0x10/0x100
 ret_from_fork+0x10/0x18

This patch fixes this potential kernel dump when a chip's
revision is "unknown", it is done by checking whether the
revision space can be freed.

Fixes: a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- still need the "unknown" info for revision to avoid confusion, so fix this issue
	  by checking whether the revision space can be freed before freeing it.
---
 drivers/soc/imx/soc-imx8.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index 02309a2..5c7f330 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -155,7 +155,8 @@ static int __init imx8_soc_init(void)
 	return 0;
 
 free_rev:
-	kfree(soc_dev_attr->revision);
+	if (strcmp(soc_dev_attr->revision, "unknown"))
+		kfree(soc_dev_attr->revision);
 free_soc:
 	kfree(soc_dev_attr);
 	of_node_put(root);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
