Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8303FC53C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qYmrGUflMtfyJnAcVHoLdfK+vb6zKawHFQ961M5ZHp0=; b=M2e
	2Q9V3DS/32Pk57eHN6uERq5dGxbTfQAIaxjCmf2Ym5I2ri7kJwWtst9d5x3nlFmCzN6Y3OnAUiHuT
	vHHmHx+9H5jnRp1t01YApiXB7teEhOFNZ9e/YwySwTKfdf/ATTnwrPdVtN+Ijou1MquD2fyAbWKO3
	Sna+gJT+Ehsjbu2eNejhygzJz8/Y1fJJKDTXVRPajShvc3R4VMfnIYnbgktCVJmI02v9svf2zsud6
	KIYazE8YcG9K2KOITlikLsQk+Y74zzTL93Tz74GiTvY7KHeifvY2IvRGOF1hDxICRt+LyHLUgdVhW
	eEyFqGIy3q+9Eh5yC8HbxPSpdlc81zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDE9-0005Lw-Dg; Thu, 14 Nov 2019 11:23:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDE0-0005Kn-45
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:23:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DE89D20001C;
 Thu, 14 Nov 2019 12:23:34 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6079D200428;
 Thu, 14 Nov 2019 12:23:30 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 73723402DE;
 Thu, 14 Nov 2019 19:23:24 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, robh@kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Input: keyboard - imx_sc: Correct SCU message structure to
 avoid stack corruption
Date: Thu, 14 Nov 2019 19:21:39 +0800
Message-Id: <1573730499-2224-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_032344_303641_D11F4F13 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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

The SCU message's data field used for receiving response data
from SCU should be 32-bit width, as SCU will send back 32-bit
width data, correct it to avoid kernel panic of stack protection
when CONFIG_CC_HAVE_STACKPROTECTOR_SYSREG is enabled.

[    1.950768] Kernel panic - not syncing: stack-protector: Kernel stack is corrupted
[    1.980607] Workqueue: events imx_sc_check_for_events
[    1.985657] Call trace:
[    1.988104]  dump_backtrace+0x0/0x140
[    1.991768]  show_stack+0x14/0x20
[    1.995090]  dump_stack+0xb4/0xf8
[    1.998407]  panic+0x158/0x324
[    2.001463]  print_tainted+0x0/0xa8
[    2.004950]  imx_sc_check_for_events+0x18c/0x190
[    2.009569]  process_one_work+0x198/0x320
[    2.013579]  worker_thread+0x48/0x420
[    2.017252]  kthread+0xf0/0x120
[    2.020394]  ret_from_fork+0x10/0x18
[    2.023977] SMP: stopping secondary CPUs
[    2.027901] Kernel Offset: disabled
[    2.031391] CPU features: 0x0002,2100600c
[    2.035401] Memory Limit: none

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/input/keyboard/imx_sc_key.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
index dd57daa..5379952 100644
--- a/drivers/input/keyboard/imx_sc_key.c
+++ b/drivers/input/keyboard/imx_sc_key.c
@@ -35,7 +35,7 @@ struct imx_key_drv_data {
 
 struct imx_sc_msg_key {
 	struct imx_sc_rpc_msg hdr;
-	u8 state;
+	u32 state;
 };
 
 static int imx_sc_key_notify(struct notifier_block *nb,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
