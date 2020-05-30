Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E508F1E8EED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 09:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s0ZcRcdiVJ5iGVdwtmi8EluyGAE+JM1qIdKMmhbwA0Q=; b=ACoESjPispY/zf
	QA+PUkr5ULq3cd3Ppmfphna2697jkhIPLEkJVEtpiN9jTsZGgHQXhkW+BeaKOuhAezZ9AM9SZ5SQh
	kt1mAs7uuGxO3bSUPhoMpTr8j5miyGmz4o5fdOskeNGuWX7qFQlD3ojYI2UmoZN8H7inTETCLEABx
	XuANzQHyX9dXIExUcYVTotgnAZ8k6CvRK/c+4+yhAOGC9/NcQx37Qq0sWBDbnjmjGG5j0c0SVZ9YH
	vK5vVCHMwg6qDW43++jTmVUqWh/GItc3Wnh9xW/Ok9AhMnnHT6RgFi8FFh67WiGF/+H9yVaQ8k1et
	iXQBtd2yMk+R7/Z2duHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jew0n-00079h-MF; Sat, 30 May 2020 07:34:33 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jew0d-00079D-DJ
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 07:34:24 +0000
Received: from localhost.localdomain ([93.23.15.192]) by mwinf5d20 with ME
 id kvaL2200J48dfat03vaMsJ; Sat, 30 May 2020 09:34:21 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 30 May 2020 09:34:21 +0200
X-ME-IP: 93.23.15.192
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: linux@armlinux.org.uk,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Subject: [PATCH] scsi: eesox: Fix different dev_id between 'request_irq()' and
 'free_irq()'
Date: Sat, 30 May 2020 09:34:18 +0200
Message-Id: <20200530073418.577210-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_003423_732636_796E82BB 
X-CRM114-Status: GOOD (  14.90  )
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
 drivers/scsi/arm/eesox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/arm/eesox.c b/drivers/scsi/arm/eesox.c
index 6e204a2e0c8d..af0bb401ca23 100644
--- a/drivers/scsi/arm/eesox.c
+++ b/drivers/scsi/arm/eesox.c
@@ -546,7 +546,7 @@ static int eesoxscsi_probe(struct expansion_card *ec, const struct ecard_id *id)
 	if (ret)
 		goto out_free;
 
-	ret = request_irq(ec->irq, eesoxscsi_intr, 0, "eesoxscsi", info);
+	ret = request_irq(ec->irq, eesoxscsi_intr, 0, "eesoxscsi", host);
 	if (ret) {
 		printk("scsi%d: IRQ%d not free: %d\n",
 		       host->host_no, ec->irq, ret);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
