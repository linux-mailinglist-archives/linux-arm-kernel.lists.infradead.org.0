Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A35FD094B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d0wzeR8FwFdy2+pCo5yTA0/DNSUWDVA30dyD2CLR5AA=; b=XqAgnUGx/Tuk7KOIvFljL7om86
	0M/ZLK+MKR0fdQOSJb1rEVwcYCMSGauwFVdoTe6oplQ8at/ziBnFVDU6hxqCz4OKmkTVLouG20lxo
	mdbnggJvOcs1DLwqU7MtDiYo+X2os5YCDEriLWkf0JaA9uk1+GBgzX9q8gksLCvOGjP1o51V7vPlV
	lUleUZsygw3qlzTsg1WkbkwMRUJZwJzXkNhe35ke/KU8s568LhvpdoACcx6VuOxr/z5DfLDl7Th3F
	WqkTq+ED23LsxvEzBcSXo/xVbtoKQZqVmoiHakinEsMU9byHy8avvDd7CdP55Re/my3izgpbtz7Av
	j9kf3HGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI737-0001gR-IA; Wed, 09 Oct 2019 08:10:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI72W-000147-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:09:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 19C21200392;
 Wed,  9 Oct 2019 10:09:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 13F4420036C;
 Wed,  9 Oct 2019 10:09:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D4610402EC;
 Wed,  9 Oct 2019 16:09:32 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v6 1/4] mailbox: imx: Fix Tx doorbell shutdown path
Date: Wed,  9 Oct 2019 16:07:18 +0800
Message-Id: <1570608441-29651-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
References: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010944_408138_D4F51BDC 
X-CRM114-Status: UNSURE (   9.42  )
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Tx doorbell is handled by txdb_tasklet and doesn't
have an associated IRQ.

Anyhow, imx_mu_shutdown ignores this and tries to
free an IRQ that wasn't requested for Tx DB resulting
in the following warning:

[    1.967644] Trying to free already-free IRQ 26
[    1.972108] WARNING: CPU: 2 PID: 157 at kernel/irq/manage.c:1708 __free_irq+0xc0/0x358
[    1.980024] Modules linked in:
[    1.983088] CPU: 2 PID: 157 Comm: kworker/2:1 Tainted: G
[    1.993524] Hardware name: Freescale i.MX8QXP MEK (DT)
[    1.998668] Workqueue: events deferred_probe_work_func
[    2.003812] pstate: 60000085 (nZCv daIf -PAN -UAO)
[    2.008607] pc : __free_irq+0xc0/0x358
[    2.012364] lr : __free_irq+0xc0/0x358
[    2.016111] sp : ffff00001179b7e0
[    2.019422] x29: ffff00001179b7e0 x28: 0000000000000018
[    2.024736] x27: ffff000011233000 x26: 0000000000000004
[    2.030053] x25: 000000000000001a x24: ffff80083bec74d4
[    2.035369] x23: 0000000000000000 x22: ffff80083bec7588
[    2.040686] x21: ffff80083b1fe8d8 x20: ffff80083bec7400
[    2.046003] x19: 0000000000000000 x18: ffffffffffffffff
[    2.051320] x17: 0000000000000000 x16: 0000000000000000
[    2.056637] x15: ffff0000111296c8 x14: ffff00009179b517
[    2.061953] x13: ffff00001179b525 x12: ffff000011142000
[    2.067270] x11: ffff000011129f20 x10: ffff0000105da970
[    2.072587] x9 : 00000000ffffffd0 x8 : 0000000000000194
[    2.077903] x7 : 612065657266206f x6 : ffff0000111e7b09
[    2.083220] x5 : 0000000000000003 x4 : 0000000000000000
[    2.088537] x3 : 0000000000000000 x2 : 00000000ffffffff
[    2.093854] x1 : 28b70f0a2b60a500 x0 : 0000000000000000
[    2.099173] Call trace:
[    2.101618]  __free_irq+0xc0/0x358
[    2.105021]  free_irq+0x38/0x98
[    2.108170]  imx_mu_shutdown+0x90/0xb0
[    2.111921]  mbox_free_channel.part.2+0x24/0xb8
[    2.116453]  mbox_free_channel+0x18/0x28

This bug is present from the beginning of times.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 9f74dee..957c10c 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -214,8 +214,10 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 	struct imx_mu_con_priv *cp = chan->con_priv;
 
-	if (cp->type == IMX_MU_TYPE_TXDB)
+	if (cp->type == IMX_MU_TYPE_TXDB) {
 		tasklet_kill(&cp->txdb_tasklet);
+		return;
+	}
 
 	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
 		       IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
