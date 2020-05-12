Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DE21CEA52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P84ki8MKsxGOf7uny40WqTrpM/tPPY+2tJjy0W/0USk=; b=Xnn3LKDuhm1819
	jRHcu8etmJjSrhXRg0HlsQ9feP/SQxpmJIfy4LW7dUUcCWTTOYjVCyqqzczC+bY3623AG5jr3nCnx
	IMvPP8fAMuSoj81/5j/kFS4C0AMR6l89kn6GbzSCCmIDqKo+ZtuMyELatUv/S/CZBxdevuiCXkms5
	kFvnuadz56cviv+/Ffnz+A3Biezde5zAcNydXNn6ayjWFxdvoNzAuXgJemEFl9isbZnkIYG10LDRQ
	8LaZ7ioauIXxuSGVZzk5GcayJAq0Fig4n5dTlYX2czTMVkQuxR6cFdyl51aVEUwZ07RlMPtULHU6V
	JUhCpthX/dYUSeUey+RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYK7y-0002xO-0z; Tue, 12 May 2020 01:54:38 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYK7q-0002ve-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 01:54:31 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E8BA2F1F82839A34A387;
 Tue, 12 May 2020 09:54:15 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 09:54:07 +0800
From: Samuel Zou <zou_wei@huawei.com>
To: <cristian.birsan@microchip.com>, <balbi@kernel.org>,
 <gregkh@linuxfoundation.org>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH -next] usb: gadget: udc: atmel: Make some symbols static
Date: Tue, 12 May 2020 10:00:13 +0800
Message-ID: <1589248813-105323-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_185430_557018_EA9E2FC3 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Samuel Zou <zou_wei@huawei.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warnings:

drivers/usb/gadget/udc/atmel_usba_udc.c:188:30: warning: symbol 'queue_dbg_fops' was not declared.
drivers/usb/gadget/udc/atmel_usba_udc.c:196:30: warning: symbol 'regs_dbg_fops' was not declared.

queue_dbg_fops and regs_dbg_fops have only call within atmel_usba_udc.c
They should be static

Fixes: 914a3f3b3754 ("USB: add atmel_usba_udc driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Samuel Zou <zou_wei@huawei.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 2220034..b771a85 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -185,7 +185,7 @@ static int regs_dbg_release(struct inode *inode, struct file *file)
 	return 0;
 }
 
-const struct file_operations queue_dbg_fops = {
+static const struct file_operations queue_dbg_fops = {
 	.owner		= THIS_MODULE,
 	.open		= queue_dbg_open,
 	.llseek		= no_llseek,
@@ -193,7 +193,7 @@ const struct file_operations queue_dbg_fops = {
 	.release	= queue_dbg_release,
 };
 
-const struct file_operations regs_dbg_fops = {
+static const struct file_operations regs_dbg_fops = {
 	.owner		= THIS_MODULE,
 	.open		= regs_dbg_open,
 	.llseek		= generic_file_llseek,
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
