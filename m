Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE7D1E8EF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 09:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5xOQPm9aw1Ek76/1T705bDd/aLZXOfekFMpQFdTfY3w=; b=isvVkAxGwTvpkt
	ZKhGPjkN3shGI5jjGA+CQjC42Q6Qb5Goq8IdfMXneQlUT4s/mWLIODu1h3e4Z+ot/ZdiHBBGPmdTl
	QKvZakj0gNicvCJbgbSfN2XGFja6OJ3Ugrjac3R6lGfAzzOiUacxWEPjLdulYNrw43z9VQu8PsMNU
	Yw5Y3j/FxZHp4T4D6uHkgq04aMz94MyNT+6/RDveVKg1aJMGLDelwQq/ucDt6OiDu3r96Ic8YW9H/
	aCSvG7BjMW+tyJQVK0iR3y+J3Hc+tlo/5Ll0GkNaKBFL9GKoJFCh4JcyQQJwNrhsS0pPauPe5ZmDu
	in/RbDY8TC3Mp39RVkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jew2H-0001PZ-Nv; Sat, 30 May 2020 07:36:05 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jew2C-0001Or-4i
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 07:36:01 +0000
Received: from localhost.localdomain ([93.23.15.192]) by mwinf5d20 with ME
 id kvbx2200848dfat03vbyza; Sat, 30 May 2020 09:35:58 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 30 May 2020 09:35:58 +0200
X-ME-IP: 93.23.15.192
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: linux@armlinux.org.uk,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Subject: [PATCH] scsi: cumana_2: Fix different dev_id between 'request_irq()'
 and 'free_irq()'
Date: Sat, 30 May 2020 09:35:55 +0200
Message-Id: <20200530073555.577414-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_003600_458538_734E2B3C 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dev_id used in 'request_irq()' and 'free_irq()' should match.
So use 'host' in both cases.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/scsi/arm/cumana_2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/arm/cumana_2.c b/drivers/scsi/arm/cumana_2.c
index 65691c21f133..3a3bf53fa925 100644
--- a/drivers/scsi/arm/cumana_2.c
+++ b/drivers/scsi/arm/cumana_2.c
@@ -426,7 +426,7 @@ static int cumanascsi2_probe(struct expansion_card *ec,
 		goto out_free;
 
 	ret = request_irq(ec->irq, cumanascsi_2_intr,
-			  0, "cumanascsi2", info);
+			  0, "cumanascsi2", host);
 	if (ret) {
 		printk("scsi%d: IRQ%d not free: %d\n",
 		       host->host_no, ec->irq, ret);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
